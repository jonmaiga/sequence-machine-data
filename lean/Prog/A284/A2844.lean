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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A284400: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A284400, there is no canonical definition to state claims against.
-/

/-! ## A284400.P14793767169063028405

`A007088(A284402(n))`
-/

namespace A284400.P14793767169063028405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284402 n).toNat

end

end A284400.P14793767169063028405

/-! ## A284400.P14652564705186539228

`A305989(A284401(n))`
-/

namespace A284400.P14652564705186539228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284401 n).toNat

end

end A284400.P14652564705186539228

/-! ## A284400.P17820478534047749016

`A185544(2*A284402(n))`
-/

namespace A284400.P17820478534047749016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284402 n).toNat

end

end A284400.P17820478534047749016

/-! ## A284400.P4092619899478429078

`A185544(lcm(2, A284402(n)))`
-/

namespace A284400.P4092619899478429078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284402 n))

end

end A284400.P4092619899478429078

/-! ## A284400.P4577102259965745401

`A284541(A004892(n+1))`
-/

namespace A284400.P4577102259965745401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284541 (A004892 (n + 1)).toNat

end

end A284400.P4577102259965745401

/-!
# A284401: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A284401, there is no canonical definition to state claims against.
-/

/-! ## A284401.P18334166846643163153

`A057889(A284402(n))`
-/

namespace A284401.P18334166846643163153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284402 n).toNat

end

end A284401.P18334166846643163153

/-! ## A284401.P1836380100138253363

`A325401(2*A284402(n))`
-/

namespace A284401.P1836380100138253363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284402 n).toNat

end

end A284401.P1836380100138253363

/-! ## A284401.P7913338139355672159

`A325401(lcm(2, A284402(n)))`
-/

namespace A284401.P7913338139355672159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A284402 n))

end

end A284401.P7913338139355672159

/-! ## A284401.P5890994023722475164

`A030101(or(1, A284402(n)))`
-/

namespace A284401.P5890994023722475164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A284402 n)).toNat

end

end A284401.P5890994023722475164

/-! ## A284401.P16780761075827174424

`A056539(or(1, A284402(n)))`
-/

namespace A284401.P16780761075827174424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.lor 1 (A284402 n)).toNat

end

end A284401.P16780761075827174424

/-!
# A284402: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A284402, there is no canonical definition to state claims against.
-/

/-! ## A284402.P8094243121749333889

`A057889(A284401(n))`
-/

namespace A284402.P8094243121749333889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284401 n).toNat

end

end A284402.P8094243121749333889

/-! ## A284402.P10692415034840999580

`A325401(2*A284401(n))`
-/

namespace A284402.P10692415034840999580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284401 n).toNat

end

end A284402.P10692415034840999580

/-! ## A284402.P2372291104378854269

`A325401(lcm(2, A284401(n)))`
-/

namespace A284402.P2372291104378854269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A284401 n))

end

end A284402.P2372291104378854269

/-! ## A284402.P8852067647782592407

`A030101(or(1, A284401(n)))`
-/

namespace A284402.P8852067647782592407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A284401 n)).toNat

end

end A284402.P8852067647782592407

/-! ## A284402.P8079439683654668372

`A056539(or(1, A284401(n)))`
-/

namespace A284402.P8079439683654668372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.lor 1 (A284401 n)).toNat

end

end A284402.P8079439683654668372

/-!
# A284403: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

The programs for A284403, there is no canonical definition to state claims against.
-/

/-! ## A284403.P5227270147913165651

`A283589(n)+A130543(n)`
-/

namespace A284403.P5227270147913165651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283589 n + A130543 n

end

end A284403.P5227270147913165651

/-! ## A284403.P15690464031354148964

`or(A267870(n), A283589(n))`
-/

namespace A284403.P15690464031354148964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267870 n) (A283589 n)

end

end A284403.P15690464031354148964

/-! ## A284403.P274627151153305950

`or(A283523(n)%2, A283589(n))`
-/

namespace A284403.P274627151153305950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A283523 n) 2) (A283589 n)

end

end A284403.P274627151153305950

/-! ## A284403.P8650055075269114124

`or(A130543(A007918(n)), A283589(n))`
-/

namespace A284403.P8650055075269114124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130543 (A007918 n).toNat) (A283589 n)

end

end A284403.P8650055075269114124

/-! ## A284403.P10405258541677397968

`or(A130543(A028310(n)), A283589(n))`
-/

namespace A284403.P10405258541677397968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130543 (A028310 n).toNat) (A283589 n)

end

end A284403.P10405258541677397968

/-! ## A284403.P3724938391646412979

`A283589(n)+A267870(A267870(n)+n)`
-/

namespace A284403.P3724938391646412979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283589 n + A267870 (A267870 n + (n : ℤ)).toNat

end

end A284403.P3724938391646412979

/-! ## A284403.P17882493542975500767

`A283523(n)+A283589(n)-A283591(n)`
-/

namespace A284403.P17882493542975500767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283523 n + (A283589 n - A283591 n)

end

end A284403.P17882493542975500767

/-! ## A284403.P15366266494975717914

`A283589(n)-A130543(n)*A260196(n)`
-/

namespace A284403.P15366266494975717914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283589 n - A130543 n * A260196 n

end

end A284403.P15366266494975717914

/-! ## A284403.P3431093994096892136

`or(A131209(n)-n, A283589(n))`
-/

namespace A284403.P3431093994096892136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131209 n - (n : ℤ)) (A283589 n)

end

end A284403.P3431093994096892136

/-! ## A284403.P16780585673415531715

`or(A130543(A131209(n)), A283589(n))`
-/

namespace A284403.P16780585673415531715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130543 (A131209 n).toNat) (A283589 n)

end

end A284403.P16780585673415531715

/-!
# A284404: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

The programs for A284404, there is no canonical definition to state claims against.
-/

/-! ## A284404.P639002274769014188

`A283590(floor(atan(n/2))+n)`
-/

namespace A284404.P639002274769014188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283590 (⌊Real.arctan ((n : ℚ) / 2 : ℝ)⌋ + (n : ℤ)).toNat

end

end A284404.P639002274769014188

/-! ## A284404.P9698074258046003848

`A283590(A130543(n)+n)`
-/

namespace A284404.P9698074258046003848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283590 (A130543 n + (n : ℤ)).toNat

end

end A284404.P9698074258046003848

/-! ## A284404.P3763126171258639806

`A283590(round(log2(A083329(n))))`
-/

namespace A284404.P3763126171258639806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283590 (SequenceMachineLib.roundAway (Real.logb 2 (A083329 n : ℝ))).toNat

end

end A284404.P3763126171258639806

/-! ## A284404.P15436561858004427330

`A284403(n)/gcd(10, A284403(n))`
-/

namespace A284404.P15436561858004427330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284403 n : ℚ) / (Int.gcd 10 (A284403 n) : ℚ)

end

end A284404.P15436561858004427330

/-! ## A284404.P12702856623451900511

`A283590(and(A131209(n), A283523(n+1)))`
-/

namespace A284404.P12702856623451900511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283590 (Int.land (A131209 n) (A283523 (n + 1))).toNat

end

end A284404.P12702856623451900511

/-!
# A284405: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

The programs for A284405, the canonical program `A284405.P3409159133462653285` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284405 has offset 0).

The definition of A284405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284405.P3409159133462653285

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=7, a(4)=31, a(5)=63`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284405

/-- `3*a(n-1)-2*a(n-2)` -/
def P3409159133462653285.Spec : Prop :=
  ∀ n, P3409159133462653285.a n = A284405 n

theorem P3409159133462653285.correct : P3409159133462653285.Spec := by
  intro n
  simp only [A284405]

end A284405

/-! ## A284405.P6751137094779496163

`A283592(n+1-round(3/(n+3)))`
-/

namespace A284405.P6751137094779496163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283592 ((n + 1 : ℤ) - SequenceMachineLib.roundAway (3 / (n + 3 : ℚ))).toNat

end

end A284405.P6751137094779496163

namespace A284405

/-- `A283592(n+1-round(3/(n+3)))` -/
def P6751137094779496163.Spec : Prop :=
  ∀ n, P6751137094779496163.a n = A284405 n

end A284405

/-! ## A284405.P2237702234796548639

`A283523(n)/gcd(2, A283523(n))`
-/

namespace A284405.P2237702234796548639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283523 n : ℚ) / (Int.gcd 2 (A283523 n) : ℚ)

end

end A284405.P2237702234796548639

namespace A284405

/-- `A283523(n)/gcd(2, A283523(n))` -/
def P2237702234796548639.Spec : Prop :=
  ∀ n, P2237702234796548639.a n = (A284405 n : ℚ)

end A284405

/-! ## A284405.P8634343324561854876

`or(A052515(n+1), A283592(n))`
-/

namespace A284405.P8634343324561854876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052515 (n + 1)) (A283592 n)

end

end A284405.P8634343324561854876

namespace A284405

/-- `or(A052515(n+1), A283592(n))` -/
def P8634343324561854876.Spec : Prop :=
  ∀ n, P8634343324561854876.a n = A284405 n

end A284405

/-! ## A284405.P1119311624828028647

`or(A283523(n)-A283592(n), A283592(n))`
-/

namespace A284405.P1119311624828028647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283523 n - A283592 n) (A283592 n)

end

end A284405.P1119311624828028647

namespace A284405

/-- `or(A283523(n)-A283592(n), A283592(n))` -/
def P1119311624828028647.Spec : Prop :=
  ∀ n, P1119311624828028647.a n = A284405 n

end A284405

/-! ## A284405.P1372581313126202021

`lcm(2, A283523(n))/2`
-/

namespace A284405.P1372581313126202021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A283523 n) : ℚ) / 2

end

end A284405.P1372581313126202021

namespace A284405

/-- `lcm(2, A283523(n))/2` -/
def P1372581313126202021.Spec : Prop :=
  ∀ n, P1372581313126202021.a n = (A284405 n : ℚ)

end A284405

/-! ## A284405.P18021775753699635133

`A267877(n)%A198633(n)`
-/

namespace A284405.P18021775753699635133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267877 n) (A198633 n)

end

end A284405.P18021775753699635133

namespace A284405

/-- `A267877(n)%A198633(n)` -/
def P18021775753699635133.Spec : Prop :=
  ∀ n, P18021775753699635133.a n = A284405 n

end A284405

/-! ## A284405.P17985212936966805242

`and(A126646(n), A267877(n))`
-/

namespace A284405.P17985212936966805242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A267877 n)

end

end A284405.P17985212936966805242

namespace A284405

/-- `and(A126646(n), A267877(n))` -/
def P17985212936966805242.Spec : Prop :=
  ∀ n, P17985212936966805242.a n = A284405 n

end A284405

/-! ## A284405.P4326866912403968221

`and(A267877(n), A281482(n))`
-/

namespace A284405.P4326866912403968221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267877 n) (A281482 n)

end

end A284405.P4326866912403968221

namespace A284405

/-- `and(A267877(n), A281482(n))` -/
def P4326866912403968221.Spec : Prop :=
  ∀ n, P4326866912403968221.a n = A284405 n

end A284405

/-! ## A284405.P7402256433417201136

`and(A267877(n), A286521(n))`
-/

namespace A284405.P7402256433417201136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267877 n) (A286521 n)

end

end A284405.P7402256433417201136

namespace A284405

/-- `and(A267877(n), A286521(n))` -/
def P7402256433417201136.Spec : Prop :=
  ∀ n, P7402256433417201136.a n = A284405 n

end A284405

/-! ## A284405.P15088174921011472385

`and(A267877(n), A290683(n))`
-/

namespace A284405.P15088174921011472385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267877 n) (A290683 n)

end

end A284405.P15088174921011472385

namespace A284405

/-- `and(A267877(n), A290683(n))` -/
def P15088174921011472385.Spec : Prop :=
  ∀ n, P15088174921011472385.a n = A284405 n

end A284405

/-! ## A284405.P4907857311371688036

`and(∑[A000079(n)], A267877(n))`
-/

namespace A284405.P4907857311371688036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A267877 n)

end

end A284405.P4907857311371688036

namespace A284405

/-- `and(∑[A000079(n)], A267877(n))` -/
def P4907857311371688036.Spec : Prop :=
  ∀ n, P4907857311371688036.a n = A284405 n

end A284405

/-!
# A284406: Odd numbers k such that lambda(k) < phi(k) and gcd(lambda(k), k-1) = gcd(phi(k), k-1).

The programs for A284406, there is no canonical definition to state claims against.
-/

/-! ## A284406.P13866291880812974573

`∩[A257591(n+1), A375738(n+1)]`
-/

namespace A284406.P13866291880812974573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284406.P13866291880812974573

/-! ## A284406.P7228315343666787674

`lt[A318809(n+1), A318829(n+1)]+1`
-/

namespace A284406.P7228315343666787674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A284406.P7228315343666787674

/-! ## A284406.P7302537973012124514

`A257591(comp[(1-n)*A242480(3*n+4)])`
-/

namespace A284406.P7302537973012124514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A242480 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257591 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A284406.P7302537973012124514

/-! ## A284406.P8083870848809460291

`A329589(n+1)-A221146(A000225(n+4))`
-/

namespace A284406.P8083870848809460291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329589 (n + 1) - A221146 (A000225 (n + 4)).toNat

end

end A284406.P8083870848809460291

/-! ## A284406.P9790856409790909145

`A109613(lt[A318809(n+1), A318829(n+1)])`
-/

namespace A284406.P9790856409790909145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284406.P9790856409790909145

/-!
# A284407: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A284407, there is no canonical definition to state claims against.
-/

/-! ## A284407.P12647320352310667028

`A007088(A284409(n))`
-/

namespace A284407.P12647320352310667028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284409 n).toNat

end

end A284407.P12647320352310667028

/-! ## A284407.P4107218670812142129

`A305989(A284410(n))`
-/

namespace A284407.P4107218670812142129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284410 n).toNat

end

end A284407.P4107218670812142129

/-! ## A284407.P211315409964697601

`A185544(2*A284409(n))`
-/

namespace A284407.P211315409964697601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284409 n).toNat

end

end A284407.P211315409964697601

/-! ## A284407.P4677784393958671205

`A185544(lcm(2, A284409(n)))`
-/

namespace A284407.P4677784393958671205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284409 n))

end

end A284407.P4677784393958671205

/-! ## A284407.P11000283972504196617

`A185544(A284409(n)+A284409(n))`
-/

namespace A284407.P11000283972504196617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A284409 n + A284409 n).toNat

end

end A284407.P11000283972504196617

/-!
# A284408: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A284408, there is no canonical definition to state claims against.
-/

/-! ## A284408.P12108947539696507893

`A007088(A284410(n))`
-/

namespace A284408.P12108947539696507893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284410 n).toNat

end

end A284408.P12108947539696507893

/-! ## A284408.P3776282731723678064

`A305989(A284409(n))`
-/

namespace A284408.P3776282731723678064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284409 n).toNat

end

end A284408.P3776282731723678064

/-! ## A284408.P15880286770623748346

`A185544(2*A284410(n))`
-/

namespace A284408.P15880286770623748346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284410 n).toNat

end

end A284408.P15880286770623748346

/-! ## A284408.P11544034978736028191

`A185544(lcm(2, A284410(n)))`
-/

namespace A284408.P11544034978736028191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284410 n))

end

end A284408.P11544034978736028191

/-!
# A284409: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A284409, there is no canonical definition to state claims against.
-/

/-! ## A284409.P7372960346004094626

`A057889(A284410(n))`
-/

namespace A284409.P7372960346004094626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284410 n).toNat

end

end A284409.P7372960346004094626

/-! ## A284409.P1577523040847132729

`A325401(2*A284410(n))`
-/

namespace A284409.P1577523040847132729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284410 n).toNat

end

end A284409.P1577523040847132729

/-! ## A284409.P5890121069613327168

`A325401(lcm(2, A284410(n)))`
-/

namespace A284409.P5890121069613327168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A284410 n))

end

end A284409.P5890121069613327168

/-! ## A284409.P2941387988398718565

`A030101(or(1, A284410(n)))`
-/

namespace A284409.P2941387988398718565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A284410 n)).toNat

end

end A284409.P2941387988398718565

/-! ## A284409.P8604332620759944806

`A322464(or(1, A284410(n)))`
-/

namespace A284409.P8604332620759944806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322464 (Int.lor 1 (A284410 n)).toNat

end

end A284409.P8604332620759944806

/-!
# A284410: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A284410, there is no canonical definition to state claims against.
-/

/-! ## A284410.P5250210167713229149

`A057889(A284409(n))`
-/

namespace A284410.P5250210167713229149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284409 n).toNat

end

end A284410.P5250210167713229149

/-! ## A284410.P11671481991774996333

`A325401(2*A284409(n))`
-/

namespace A284410.P11671481991774996333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284409 n).toNat

end

end A284410.P11671481991774996333

/-! ## A284410.P2558617748626587632

`A325401(lcm(2, A284409(n)))`
-/

namespace A284410.P2558617748626587632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A284409 n))

end

end A284410.P2558617748626587632

/-! ## A284410.P18273498447172248340

`A030101(or(1, A284409(n)))`
-/

namespace A284410.P18273498447172248340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A284409 n)).toNat

end

end A284410.P18273498447172248340

/-! ## A284410.P10794089663399022933

`A322464(or(1, A284409(n)))`
-/

namespace A284410.P10794089663399022933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322464 (Int.lor 1 (A284409 n)).toNat

end

end A284410.P10794089663399022933

/-!
# A284413: Exponent of 3 in 2^n + 1.

The programs for A284413, the canonical program `A284413.P8063191821426559762` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284413 has offset 1).

The definition of A284413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284413.P8063191821426559762

`val(or(1, 3*(n+1)), 3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284413

/-- `val(or(1, 3*(n+1)), 3)` -/
def P8063191821426559762.Spec : Prop :=
  ∀ n, (P8063191821426559762.a n : ℤ) = A284413 (n + 1)

theorem P8063191821426559762.correct : P8063191821426559762.Spec := by
  intro n
  simp only [A284413, Nat.add_sub_cancel]

end A284413

/-! ## A284413.P4251253557032805542

`val(xor(3, 2*n)+n, 3)`
-/

namespace A284413.P4251253557032805542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.xor 3 (2 * n) + n) 3

end

end A284413.P4251253557032805542

namespace A284413

/-- `val(xor(3, 2*n)+n, 3)` -/
def P4251253557032805542.Spec : Prop :=
  ∀ n, (P4251253557032805542.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P432682478859472286

`val(n-xor(2*n, -3), 3)`
-/

namespace A284413.P432682478859472286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n : ℤ) - Int.xor (2 * n : ℤ) (-3)).toNat 3

end

end A284413.P432682478859472286

namespace A284413

/-- `val(n-xor(2*n, -3), 3)` -/
def P432682478859472286.Spec : Prop :=
  ∀ n, (P432682478859472286.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P13422746445665769034

`val(∑[5/a(n-1)], 3)` with `a(0)=6, a(1)=2, a(2)=1`
-/

namespace A284413.P13422746445665769034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [6, 2, 1] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A284413.P13422746445665769034

namespace A284413

/-- `val(∑[5/a(n-1)], 3)` -/
def P13422746445665769034.Spec : Prop :=
  ∀ n, (P13422746445665769034.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P12926214741122952996

`val(A136320(n), 3)`
-/

namespace A284413.P12926214741122952996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A136320 n).toNat 3

end

end A284413.P12926214741122952996

namespace A284413

/-- `val(A136320(n), 3)` -/
def P12926214741122952996.Spec : Prop :=
  ∀ n, (P12926214741122952996.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P14774924801197316179

`val(A297165(n+1), 2)`
-/

namespace A284413.P14774924801197316179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A297165 (n + 1)).toNat 2

end

end A284413.P14774924801197316179

namespace A284413

/-- `val(A297165(n+1), 2)` -/
def P14774924801197316179.Spec : Prop :=
  ∀ n, (P14774924801197316179.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P9754298667222106413

`val(A389909(n+1), 2)`
-/

namespace A284413.P9754298667222106413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A389909 (n + 1)).toNat 2

end

end A284413.P9754298667222106413

namespace A284413

/-- `val(A389909(n+1), 2)` -/
def P9754298667222106413.Spec : Prop :=
  ∀ n, (P9754298667222106413.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P8001104313232431800

`val(A047230(n+1), 3)`
-/

namespace A284413.P8001104313232431800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A047230 (n + 1)).toNat 3

end

end A284413.P8001104313232431800

namespace A284413

/-- `val(A047230(n+1), 3)` -/
def P8001104313232431800.Spec : Prop :=
  ∀ n, (P8001104313232431800.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P6790324225724508382

`val(A047270(n+1), 3)`
-/

namespace A284413.P6790324225724508382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A047270 (n + 1)).toNat 3

end

end A284413.P6790324225724508382

namespace A284413

/-- `val(A047270(n+1), 3)` -/
def P6790324225724508382.Spec : Prop :=
  ∀ n, (P6790324225724508382.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P7205813833284075981

`val(A269863(n+2), 2)`
-/

namespace A284413.P7205813833284075981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A269863 (n + 2)).toNat 2

end

end A284413.P7205813833284075981

namespace A284413

/-- `val(A269863(n+2), 2)` -/
def P7205813833284075981.Spec : Prop :=
  ∀ n, (P7205813833284075981.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P5834575400665883199

`val(A269379(n+2), 3)`
-/

namespace A284413.P5834575400665883199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A269379 (n + 2)).toNat 3

end

end A284413.P5834575400665883199

namespace A284413

/-- `val(A269379(n+2), 3)` -/
def P5834575400665883199.Spec : Prop :=
  ∀ n, (P5834575400665883199.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P17294338796257266588

`val(lt[3, A020639(n+2)], 3)`
-/

namespace A284413.P17294338796257266588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 3

end

end A284413.P17294338796257266588

namespace A284413

/-- `val(lt[3, A020639(n+2)], 3)` -/
def P17294338796257266588.Spec : Prop :=
  ∀ n, (P17294338796257266588.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P2059845543723827017

`char[2*n]*A051064(n+1)`
-/

namespace A284413.P2059845543723827017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A051064 (n + 1)

end

end A284413.P2059845543723827017

namespace A284413

/-- `char[2*n]*A051064(n+1)` -/
def P2059845543723827017.Spec : Prop :=
  ∀ n, P2059845543723827017.a n = A284413 (n + 1)

end A284413

/-! ## A284413.P11208112824215292905

`char[2*n]*A072078(n+1)`
-/

namespace A284413.P11208112824215292905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A072078 (n + 1)

end

end A284413.P11208112824215292905

namespace A284413

/-- `char[2*n]*A072078(n+1)` -/
def P11208112824215292905.Spec : Prop :=
  ∀ n, P11208112824215292905.a n = A284413 (n + 1)

end A284413

/-! ## A284413.P12933169424856815310

`A051064(n+1)*A059841(n)`
-/

namespace A284413.P12933169424856815310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1) * A059841 n

end

end A284413.P12933169424856815310

namespace A284413

/-- `A051064(n+1)*A059841(n)` -/
def P12933169424856815310.Spec : Prop :=
  ∀ n, P12933169424856815310.a n = A284413 (n + 1)

end A284413

/-! ## A284413.P10058685552052836504

`lcm(A051064(n+1), A056594(n))`
-/

namespace A284413.P10058685552052836504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051064 (n + 1)) (A056594 n)

end

end A284413.P10058685552052836504

namespace A284413

/-- `lcm(A051064(n+1), A056594(n))` -/
def P10058685552052836504.Spec : Prop :=
  ∀ n, (P10058685552052836504.a n : ℤ) = A284413 (n + 1)

end A284413

/-! ## A284413.P66956537271668906

`A051064(n+1)-A168570(n+1)`
-/

namespace A284413.P66956537271668906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1) - A168570 (n + 1)

end

end A284413.P66956537271668906

namespace A284413

/-- `A051064(n+1)-A168570(n+1)` -/
def P66956537271668906.Spec : Prop :=
  ∀ n, P66956537271668906.a n = A284413 (n + 1)

end A284413

/-! ## A284413.P9283655951960074871

`(A007949(n+1)+1)*A059841(n)`
-/

namespace A284413.P9283655951960074871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007949 (n + 1) + 1) * A059841 n

end

end A284413.P9283655951960074871

namespace A284413

/-- `(A007949(n+1)+1)*A059841(n)` -/
def P9283655951960074871.Spec : Prop :=
  ∀ n, P9283655951960074871.a n = A284413 (n + 1)

end A284413

/-!
# A284415: Number of self-avoiding planar walks of length n starting at (0,0), ending on the x-axis, remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal.

The programs for A284415, there is no canonical definition to state claims against.
-/

/-! ## A284415.P9010191190096280817

`A318229(n+1)+A001787(A213980(n+2))`
-/

namespace A284415.P9010191190096280817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) + A001787 (A213980 (n + 2)).toNat

end

end A284415.P9010191190096280817

/-!
# A284416: Number of self-avoiding planar walks of length 2n starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal.

The programs for A284416, there is no canonical definition to state claims against.
-/

/-! ## A284416.P9239774822245321617

`A284414(∑[∑[n-1]]+3*n+1)`
-/

namespace A284416.P9239774822245321617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284414 (∑ j ∈ Finset.range (n + 1), f1 j + (3 * n + 1 : ℤ)).toNat

end

end A284416.P9239774822245321617

/-! ## A284416.P8194753715307451639

`A319713(comp[or(2, n)]^n+n+1)`
-/

namespace A284416.P8194753715307451639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n + (n + 1))

end

end A284416.P8194753715307451639

/-!
# A284417: Triangular array read by rows. T(n,k) is the number of rooted labeled trees on n nodes with exactly k vertices whose unique descendent is a leaf, n >= 1, 0 <= k <= floor((n-1)/2) + delta_{2,n}.

The programs for A284417, there is no canonical definition to state claims against.
-/

/-! ## A284417.P4030547151892838073

`A001462(A174085(n))-A055363(n+3)`
-/

namespace A284417.P4030547151892838073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A174085 n).toNat - A055363 (n + 3)

end

end A284417.P4030547151892838073

/-!
# A284418: Number of self-avoiding planar walks of length n*(n+1)/2 starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal.

The programs for A284418, there is no canonical definition to state claims against.
-/

/-! ## A284418.P5160171497677073595

`A284414(∑[∑[n]])`
-/

namespace A284418.P5160171497677073595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284418.P5160171497677073595

/-! ## A284418.P16615224644976474227

`A284414(A000292(n))+(2*n)%2`
-/

namespace A284418.P16615224644976474227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284414 (A000292 n).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A284418.P16615224644976474227

/-! ## A284418.P8359453800513224535

`gcd(A151909(n), A284414(A000292(n)))`
-/

namespace A284418.P8359453800513224535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151909 n) (A284414 (A000292 n).toNat)

end

end A284418.P8359453800513224535

/-! ## A284418.P955434534997932676

`gcd(2, A000040(n+2))*A284414(A000292(n))`
-/

namespace A284418.P955434534997932676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A284414 (A000292 n).toNat

end

end A284418.P955434534997932676

/-! ## A284418.P13640796765327369990

`A007318(gcd(n, n+1))*A284414(A000292(n))`
-/

namespace A284418.P13640796765327369990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A284414 (A000292 n).toNat

end

end A284418.P13640796765327369990

/-!
# A284419: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A284419, there is no canonical definition to state claims against.
-/

/-! ## A284419.P15188764871745762091

`A007088(A284421(n))`
-/

namespace A284419.P15188764871745762091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284421 n).toNat

end

end A284419.P15188764871745762091

/-! ## A284419.P10527683813268741855

`A305989(A284422(n))`
-/

namespace A284419.P10527683813268741855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284422 n).toNat

end

end A284419.P10527683813268741855

/-! ## A284419.P3906365915149074623

`A305989(or(A086893(n+1), A283588(n)))`
-/

namespace A284419.P3906365915149074623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A086893 (n + 1)) (A283588 n)).toNat

end

end A284419.P3906365915149074623

/-! ## A284419.P2091446799128678100

`A305989(or(A096773(n+1), A283588(n)))`
-/

namespace A284419.P2091446799128678100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A096773 (n + 1)) (A283588 n)).toNat

end

end A284419.P2091446799128678100

/-!
# A284420: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A284420, there is no canonical definition to state claims against.
-/

/-! ## A284420.P14348028648313733080

`A007088(A284422(n))`
-/

namespace A284420.P14348028648313733080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284422 n).toNat

end

end A284420.P14348028648313733080

/-! ## A284420.P17921418915326340315

`A305989(A284421(n))`
-/

namespace A284420.P17921418915326340315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284421 n).toNat

end

end A284420.P17921418915326340315

/-! ## A284420.P15824556112448676669

`A305989(or(A001045(n), A283587(n)))`
-/

namespace A284420.P15824556112448676669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A001045 n) (A283587 n)).toNat

end

end A284420.P15824556112448676669

/-! ## A284420.P10815313131704399445

`A305989(or(A001045(n), A283705(n)))`
-/

namespace A284420.P10815313131704399445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A001045 n) (A283705 n)).toNat

end

end A284420.P10815313131704399445

/-! ## A284420.P8363039688382765476

`A305989(or(A052997(n), A283587(n)))`
-/

namespace A284420.P8363039688382765476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A052997 n) (A283587 n)).toNat

end

end A284420.P8363039688382765476

/-!
# A284421: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A284421, there is no canonical definition to state claims against.
-/

/-! ## A284421.P9542137864448098876

`A057889(A284422(n))`
-/

namespace A284421.P9542137864448098876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284422 n).toNat

end

end A284421.P9542137864448098876

/-! ## A284421.P5937185437170437557

`or(A002264(A000051(n)), A283587(n))`
-/

namespace A284421.P5937185437170437557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002264 (A000051 n).toNat) (A283587 n)

end

end A284421.P5937185437170437557

/-! ## A284421.P17461221751289248032

`or(A002264(A000079(n)), A283587(n))`
-/

namespace A284421.P17461221751289248032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002264 (A000079 n).toNat) (A283587 n)

end

end A284421.P17461221751289248032

/-! ## A284421.P15172552324687697171

`or(A004525(A000975(n)), A283587(n))`
-/

namespace A284421.P15172552324687697171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A000975 n).toNat) (A283587 n)

end

end A284421.P15172552324687697171

/-! ## A284421.P16450206198876416367

`or(A001045(n), A057889(A283588(n)))`
-/

namespace A284421.P16450206198876416367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 n) (A057889 (A283588 n).toNat)

end

end A284421.P16450206198876416367

/-!
# A284422: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A284422, there is no canonical definition to state claims against.
-/

/-! ## A284422.P882323347326049010

`A057889(A284421(n))`
-/

namespace A284422.P882323347326049010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284421 n).toNat

end

end A284422.P882323347326049010

/-! ## A284422.P2475489607830554267

`or(A030101(A000975(n)), A283588(n))`
-/

namespace A284422.P2475489607830554267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030101 (A000975 n).toNat) (A283588 n)

end

end A284422.P2475489607830554267

/-! ## A284422.P7561255329878744517

`A057889(or(A001045(n), A283587(n)))`
-/

namespace A284422.P7561255329878744517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.lor (A001045 n) (A283587 n)).toNat

end

end A284422.P7561255329878744517

/-! ## A284422.P38529665056939765

`A057889(or(A052997(n), A283587(n)))`
-/

namespace A284422.P38529665056939765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.lor (A052997 n) (A283587 n)).toNat

end

end A284422.P38529665056939765

/-! ## A284422.P224200885474722397

`or(A115273(A000079(n)), A283588(n))`
-/

namespace A284422.P224200885474722397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115273 (A000079 n).toNat) (A283588 n)

end

end A284422.P224200885474722397

/-!
# A284423: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A284423, there is no canonical definition to state claims against.
-/

/-! ## A284423.P5465553894228936094

`A007088(A284425(n))`
-/

namespace A284423.P5465553894228936094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284425 n).toNat

end

end A284423.P5465553894228936094

/-!
# A284424: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A284424, there is no canonical definition to state claims against.
-/

/-! ## A284424.P1351885159268468210

`A007088(A284426(n))`
-/

namespace A284424.P1351885159268468210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284426 n).toNat

end

end A284424.P1351885159268468210

/-!
# A284425: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A284425, there is no canonical definition to state claims against.
-/

/-! ## A284425.P4543408643470552567

`and(A126646(n), A264618(A284426(n)))`
-/

namespace A284425.P4543408643470552567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284426 n).toNat)

end

end A284425.P4543408643470552567

/-! ## A284425.P5328662761013537511

`A057889(A284426(n))`
-/

namespace A284425.P5328662761013537511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284426 n).toNat

end

end A284425.P5328662761013537511

/-! ## A284425.P11249039340867410176

`A325402(A284426(n)+A184946(n))`
-/

namespace A284425.P11249039340867410176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (A284426 n + A184946 n).toNat

end

end A284425.P11249039340867410176

/-! ## A284425.P9693320781394679945

`A325402(A284426(n)%A344657(n+1))`
-/

namespace A284425.P9693320781394679945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (Int.tmod (A284426 n) (A344657 (n + 1))).toNat

end

end A284425.P9693320781394679945

/-! ## A284425.P3403849444760857347

`A325402(A284426(n))%A003945(n+2)`
-/

namespace A284425.P3403849444760857347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325402 (A284426 n).toNat) (A003945 (n + 2))

end

end A284425.P3403849444760857347

/-!
# A284426: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A284426, there is no canonical definition to state claims against.
-/

/-! ## A284426.P7970146752553836318

`and(A126646(n), A264618(A284425(n)))`
-/

namespace A284426.P7970146752553836318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284425 n).toNat)

end

end A284426.P7970146752553836318

/-! ## A284426.P18383750699488532688

`A057889(A284425(n))`
-/

namespace A284426.P18383750699488532688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284425 n).toNat

end

end A284426.P18383750699488532688

/-! ## A284426.P1896199429939503416

`A325401(or(1, A284425(n)))`
-/

namespace A284426.P1896199429939503416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A284425 n)).toNat

end

end A284426.P1896199429939503416

/-! ## A284426.P18369636570479471267

`A325401(∏{p}[A284425(n), #])`
-/

namespace A284426.P18369636570479471267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A284426.P18369636570479471267

/-! ## A284426.P14727692683253203366

`A325401(gcd(2, n)*A284425(n))`
-/

namespace A284426.P14727692683253203366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 ((Nat.gcd 2 n : ℤ) * A284425 n).toNat

end

end A284426.P14727692683253203366

/-!
# A284429: A quasilinear solution to Hofstadter's Q recurrence.

The programs for A284429, the canonical program `A284429.P16281881491673464462` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284429 has offset 1).

The definition of A284429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284429.P16281881491673464462

`2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=1, a(2)=3, a(3)=5, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284429

/-- `2*a(n-3)-a(n-6)` -/
def P16281881491673464462.Spec : Prop :=
  ∀ n, P16281881491673464462.a n = A284429 (n + 1)

theorem P16281881491673464462.correct : P16281881491673464462.Spec := by
  intro n
  simp only [A284429, Nat.add_sub_cancel]

end A284429

/-! ## A284429.P9216174842578409493

`(2*n%3+n+2)%(n+3)`
-/

namespace A284429.P9216174842578409493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n % 3) + (n + 2)) % (n + 3)

end

end A284429.P9216174842578409493

namespace A284429

/-- `(2*n%3+n+2)%(n+3)` -/
def P9216174842578409493.Spec : Prop :=
  ∀ n, (P9216174842578409493.a n : ℤ) = A284429 (n + 1)

end A284429

/-! ## A284429.P10963494422680746155

`a(n-3)+3%a(n-3)` with `a(0)=2, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A284429.P10963494422680746155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 5] fun n a =>
  a (n - 3) + 3 % a (n - 3)

end

end A284429.P10963494422680746155

namespace A284429

/-- `a(n-3)+3%a(n-3)` -/
def P10963494422680746155.Spec : Prop :=
  ∀ n, (P10963494422680746155.a n : ℤ) = A284429 (n + 1)

end A284429

/-! ## A284429.P1404241666983085480

`floor(a(n-3)+3/a(n-2)²)` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A284429.P1404241666983085480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  ⌊(a (n - 3) : ℚ) + 3 / (a (n - 2) ^ 2 : ℚ)⌋

end

end A284429.P1404241666983085480

namespace A284429

/-- `floor(a(n-3)+3/a(n-2)²)` -/
def P1404241666983085480.Spec : Prop :=
  ∀ n, P1404241666983085480.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P6038562898882596394

`3*A186731(n)+2-n`
-/

namespace A284429.P6038562898882596394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A186731 n + (2 - (n : ℤ))

end

end A284429.P6038562898882596394

namespace A284429

/-- `3*A186731(n)+2-n` -/
def P6038562898882596394.Spec : Prop :=
  ∀ n, P6038562898882596394.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P5943954512471963346

`A004483(a(n-3)+1)` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A284429.P5943954512471963346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  A004483 (a (n - 3) + 1).toNat

end

end A284429.P5943954512471963346

namespace A284429

/-- `A004483(a(n-3)+1)` -/
def P5943954512471963346.Spec : Prop :=
  ∀ n, P5943954512471963346.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P10371251203010716235

`gcd(A101000(n), A330396(n))`
-/

namespace A284429.P10371251203010716235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101000 n) (A330396 n)

end

end A284429.P10371251203010716235

namespace A284429

/-- `gcd(A101000(n), A330396(n))` -/
def P10371251203010716235.Spec : Prop :=
  ∀ n, (P10371251203010716235.a n : ℤ) = A284429 (n + 1)

end A284429

/-! ## A284429.P7103742282002330365

`A016777(A186731(n))+1-n`
-/

namespace A284429.P7103742282002330365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A186731 n).toNat + (1 - (n : ℤ))

end

end A284429.P7103742282002330365

namespace A284429

/-- `A016777(A186731(n))+1-n` -/
def P7103742282002330365.Spec : Prop :=
  ∀ n, P7103742282002330365.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P8728463905936774798

`2-A091684(A064429(n))+n`
-/

namespace A284429.P8728463905936774798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A091684 (A064429 n).toNat + (n : ℤ)

end

end A284429.P8728463905936774798

namespace A284429

/-- `2-A091684(A064429(n))+n` -/
def P8728463905936774798.Spec : Prop :=
  ∀ n, P8728463905936774798.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P11434833452898561695

`2-A091684(A279318(n))+n`
-/

namespace A284429.P11434833452898561695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A091684 (A279318 n).toNat + (n : ℤ)

end

end A284429.P11434833452898561695

namespace A284429

/-- `2-A091684(A279318(n))+n` -/
def P11434833452898561695.Spec : Prop :=
  ∀ n, P11434833452898561695.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P3930263875559502076

`2-(A064429(A091684(n))-n)`
-/

namespace A284429.P3930263875559502076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A064429 (A091684 n).toNat - (n : ℤ))

end

end A284429.P3930263875559502076

namespace A284429

/-- `2-(A064429(A091684(n))-n)` -/
def P3930263875559502076.Spec : Prop :=
  ∀ n, P3930263875559502076.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P10807071191187846327

`2-A091684(A113655(n+1))+n`
-/

namespace A284429.P10807071191187846327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A091684 (A113655 (n + 1)).toNat + (n : ℤ)

end

end A284429.P10807071191187846327

namespace A284429

/-- `2-A091684(A113655(n+1))+n` -/
def P10807071191187846327.Spec : Prop :=
  ∀ n, P10807071191187846327.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P5782089801048716937

`A047245(n+2)-n*A130196(n)`
-/

namespace A284429.P5782089801048716937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047245 (n + 2) - (n : ℤ) * A130196 n

end

end A284429.P5782089801048716937

namespace A284429

/-- `A047245(n+2)-n*A130196(n)` -/
def P5782089801048716937.Spec : Prop :=
  ∀ n, P5782089801048716937.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P10908088424030161631

`A091684(A091684(n+1)+1)+n%3`
-/

namespace A284429.P10908088424030161631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A091684 (n + 1) + 1).toNat + ((n % 3 : ℕ) : ℤ)

end

end A284429.P10908088424030161631

namespace A284429

/-- `A091684(A091684(n+1)+1)+n%3` -/
def P10908088424030161631.Spec : Prop :=
  ∀ n, P10908088424030161631.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P7212320018620690363

`A064429(C(A064429(n+1), n+1))+1`
-/

namespace A284429.P7212320018620690363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (Nat.choose (A064429 (n + 1)).toNat (n + 1)) + 1

end

end A284429.P7212320018620690363

namespace A284429

/-- `A064429(C(A064429(n+1), n+1))+1` -/
def P7212320018620690363.Spec : Prop :=
  ∀ n, P7212320018620690363.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P7681194019681665616

`A244477(A244477(A244477(n+2)))`
-/

namespace A284429.P7681194019681665616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A244477 (A244477 (n + 2)).toNat).toNat

end

end A284429.P7681194019681665616

namespace A284429

/-- `A244477(A244477(A244477(n+2)))` -/
def P7681194019681665616.Spec : Prop :=
  ∀ n, P7681194019681665616.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P1419010116841419614

`A117571(A117571(n))+1-A091684(n)`
-/

namespace A284429.P1419010116841419614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (A117571 n).toNat + (1 - A091684 n)

end

end A284429.P1419010116841419614

namespace A284429

/-- `A117571(A117571(n))+1-A091684(n)` -/
def P1419010116841419614.Spec : Prop :=
  ∀ n, P1419010116841419614.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P11168663655197844807

`gcd(A004442(1-A064429(n)+n), A064429(n+1))`
-/

namespace A284429.P11168663655197844807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (1 - A064429 n + (n : ℤ)).toNat) (A064429 (n + 1))

end

end A284429.P11168663655197844807

namespace A284429

/-- `gcd(A004442(1-A064429(n)+n), A064429(n+1))` -/
def P11168663655197844807.Spec : Prop :=
  ∀ n, (P11168663655197844807.a n : ℤ) = A284429 (n + 1)

end A284429

/-! ## A284429.P7101512917694518250

`A275363(A283878(n+3))-A010872(n+1)`
-/

namespace A284429.P7101512917694518250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275363 (A283878 (n + 3)).toNat - A010872 (n + 1)

end

end A284429.P7101512917694518250

namespace A284429

/-- `A275363(A283878(n+3))-A010872(n+1)` -/
def P7101512917694518250.Spec : Prop :=
  ∀ n, P7101512917694518250.a n = A284429 (n + 1)

end A284429

/-! ## A284429.P14001216853934540812

`A143097(A064429(n+2)+1)%A080782(n+2)`
-/

namespace A284429.P14001216853934540812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143097 (A064429 (n + 2) + 1).toNat) (A080782 (n + 2))

end

end A284429.P14001216853934540812

namespace A284429

/-- `A143097(A064429(n+2)+1)%A080782(n+2)` -/
def P14001216853934540812.Spec : Prop :=
  ∀ n, P14001216853934540812.a n = A284429 (n + 1)

end A284429

/-!
# A284432: The number of positive integer sequences of length n with no duplicate substrings (forward or backward) of length greater than 1 and a minimal sum (= A282168(n)).

The programs for A284432, there is no canonical definition to state claims against.
-/

/-! ## A284432.P4658020689078097204

`A327987(A321772(n+1))`
-/

namespace A284432.P4658020689078097204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327987 (A321772 (n + 1)).toNat

end

end A284432.P4658020689078097204

/-! ## A284432.P10902501999827939640

`∏[A115627(A274174(2*n+3))]`
-/

namespace A284432.P10902501999827939640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115627 (A274174 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A284432.P10902501999827939640

/-! ## A284432.P6840610580474548174

`gcd(A008724(A052787(n)), A284435(n+1))`
-/

namespace A284432.P6840610580474548174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008724 (A052787 n).toNat) (A284435 (n + 1))

end

end A284432.P6840610580474548174

/-! ## A284432.P3759636616212305426

`gcd(A000142(n), A040587(A063990(n+2)))`
-/

namespace A284432.P3759636616212305426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A040587 (A063990 (n + 2)).toNat)

end

end A284432.P3759636616212305426

/-! ## A284432.P1660771530009342669

`gcd(A269172(A242820(n)), A367137(n+2))`
-/

namespace A284432.P1660771530009342669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269172 (A242820 n).toNat) (A367137 (n + 2))

end

end A284432.P1660771530009342669

/-!
# A284434: The number of positive integer sequences of length n with no duplicate substrings of length greater than 1, every number different from its neighbors, and a minimal product (= A282169(n)).

The programs for A284434, there is no canonical definition to state claims against.
-/

/-! ## A284434.P715898782150892586

`∏{e}[A164300(n), #!]`
-/

namespace A284434.P715898782150892586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164300 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A284434.P715898782150892586

/-! ## A284434.P7769747556004972506

`∑{e}[C(A099330(n+5), 3)-1, #]!`
-/

namespace A284434.P7769747556004972506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A099330 (n + 5)).toNat 3 : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A284434.P7769747556004972506

/-! ## A284434.P7182294048541028318

`(A154701(n+1)-ceil(xor(1, n)/2))!`
-/

namespace A284434.P7182294048541028318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A154701 (n + 1) - ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

end

end A284434.P7182294048541028318

/-! ## A284434.P10262708278370078291

`A269224(A192382(n+1))`
-/

namespace A284434.P10262708278370078291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269224 (A192382 (n + 1)).toNat

end

end A284434.P10262708278370078291

/-!
# A284435: The number of positive integer sequences of length n with no duplicate substrings (forward or backward) of length greater than 1 and a minimal product (= A282193(n)).

The programs for A284435, there is no canonical definition to state claims against.
-/

/-! ## A284435.P13217255802734118888

`A284432(A280880(n)+A239218(n+1))`
-/

namespace A284435.P13217255802734118888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284432 (A280880 n + A239218 (n + 1)).toNat

end

end A284435.P13217255802734118888

/-! ## A284435.P430681480336230700

`A284432(A324935(n+1)*A368167(2*n+5))`
-/

namespace A284435.P430681480336230700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284432 (A324935 (n + 1) * A368167 (2 * n + 5)).toNat

end

end A284435.P430681480336230700

/-! ## A284435.P17732185627381652764

`A206941(A103439(n+1))`
-/

namespace A284435.P17732185627381652764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (A103439 (n + 1)).toNat

end

end A284435.P17732185627381652764

/-! ## A284435.P1459815865548109689

`A284432(A087027(n+1))`
-/

namespace A284435.P1459815865548109689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284432 (A087027 (n + 1)).toNat

end

end A284435.P1459815865548109689

/-! ## A284435.P8233122107064452417

`A284432(A353658(n+1))`
-/

namespace A284435.P8233122107064452417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284432 (A353658 (n + 1)).toNat

end

end A284435.P8233122107064452417

/-!
# A284437: Number of primes between n and 2^n inclusive.

The programs for A284437, there is no canonical definition to state claims against.
-/

/-! ## A284437.P1102910619847473498

`A007053(n)-A230980(abs(1-n))`
-/

namespace A284437.P1102910619847473498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n - A230980 |1 - (n : ℤ)|.toNat

end

end A284437.P1102910619847473498

/-! ## A284437.P16983543551022451511

`A007053(n)-∑[char[A008864(n+1)]]`
-/

namespace A284437.P16983543551022451511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A284437.P16983543551022451511

/-! ## A284437.P17873919019522485083

`A007053(n)-A000720(abs(n-(char[1]+1)))`
-/

namespace A284437.P17873919019522485083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n - A000720 |(n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)|.toNat

end

end A284437.P17873919019522485083

/-! ## A284437.P2788077976317350053

`A007053(n)-∑[char[A000040(n+1)+1]]`
-/

namespace A284437.P2788077976317350053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A284437.P2788077976317350053

/-! ## A284437.P2008516041603472640

`A007053(n)-∑[char[A006530(n+2)+1]]`
-/

namespace A284437.P2008516041603472640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A284437.P2008516041603472640

/-!
# A284438: a(n) = phi(n)^n.

The programs for A284438, there is no canonical definition to state claims against.
-/

/-! ## A284438.P13518184718317579919

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^ceil(sqrt(n²+4))`
-/

namespace A284438.P13518184718317579919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ (⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉ : ℤ)

end

end A284438.P13518184718317579919

/-! ## A284438.P15455451139707874750

`A106476(∑[n])^(n+1)`
-/

namespace A284438.P15455451139707874750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A284438.P15455451139707874750

/-! ## A284438.P2415117306926524722

`Δ[A002088(n)]^(n+1)`
-/

namespace A284438.P2415117306926524722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A284438.P2415117306926524722

/-! ## A284438.P1723361811877541461

`Δ[A005728(n)]^(n+1)`
-/

namespace A284438.P1723361811877541461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A284438.P1723361811877541461

/-! ## A284438.P17089990379882731108

`A000010(n+1)^(n+1)`
-/

namespace A284438.P17089990379882731108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ (n + 1)

end

end A284438.P17089990379882731108

/-! ## A284438.P15055195599561362103

`A067541(Δ[n²])^(n+1)`
-/

namespace A284438.P15055195599561362103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ (n + 1)

end

end A284438.P15055195599561362103

/-! ## A284438.P9085929794458035591

`A309563(Δ[n²])^(n+1)`
-/

namespace A284438.P9085929794458035591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309563 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ (n + 1)

end

end A284438.P9085929794458035591

/-! ## A284438.P16616986255226868211

`A349137(Δ[n²])^(n+1)`
-/

namespace A284438.P16616986255226868211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ (n + 1)

end

end A284438.P16616986255226868211

/-! ## A284438.P12943015721777099794

`A057828((n+1)²)^(n+1)`
-/

namespace A284438.P12943015721777099794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 ((n + 1) ^ 2) ^ (n + 1)

end

end A284438.P12943015721777099794

/-! ## A284438.P5413943900600844246

`A390752((n+1)²)^(n+1)`
-/

namespace A284438.P5413943900600844246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390752 ((n + 1) ^ 2) ^ (n + 1)

end

end A284438.P5413943900600844246

/-!
# A284441: Base-3 generalized Pascal triangle P_3 read by rows (see Comments for precise definition).

The programs for A284441, there is no canonical definition to state claims against.
-/

/-! ## A284441.P9649120167114529899

`and(A091255(A085478(n)²), A320508(n))`
-/

namespace A284441.P9649120167114529899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091255 (A085478 n ^ 2).toNat) (A320508 n)

end

end A284441.P9649120167114529899

/-! ## A284441.P17963982520947221924

`and(A104563(A141696(n+1)), A320508(n))`
-/

namespace A284441.P17963982520947221924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104563 (A141696 (n + 1)).toNat) (A320508 n)

end

end A284441.P17963982520947221924

/-! ## A284441.P15454254204324634672

`A000122(A048158(n+1)*A085707(n+4))`
-/

namespace A284441.P15454254204324634672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A048158 (n + 1) * A085707 (n + 4)).toNat

end

end A284441.P15454254204324634672

/-! ## A284441.P47021498080449263

`A294220(A047888(n+1)+3)`
-/

namespace A284441.P47021498080449263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294220 (A047888 (n + 1) + 3).toNat

end

end A284441.P47021498080449263

/-! ## A284441.P12467159698538509581

`A219551(n+2)^A055641(A127093(n+1))`
-/

namespace A284441.P12467159698538509581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219551 (n + 2) : ℚ) ^ (A055641 (A127093 (n + 1)).toNat : ℤ)

end

end A284441.P12467159698538509581

/-!
# A284442: Number of nonzero terms in first n rows of the base-3 generalized Pascal triangle P_3 (A284441).

The programs for A284442, there is no canonical definition to state claims against.
-/

/-! ## A284442.P16548529019498961659

`∑[A282715(n)]-A282715(n)`
-/

namespace A284442.P16548529019498961659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A282715 n

end

end A284442.P16548529019498961659

/-! ## A284442.P13763014613870586725

`∑[A282715(n)]+-A282715(n)%A017377(n)`
-/

namespace A284442.P13763014613870586725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (-A282715 n) (A017377 n)

end

end A284442.P13763014613870586725

/-! ## A284442.P18322243452523131717

`∑[A106490(A026644(n))]`
-/

namespace A284442.P18322243452523131717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (A026644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284442.P18322243452523131717

/-! ## A284442.P2265014795891090817

`∑[A001222(A340250(2^n))]`
-/

namespace A284442.P2265014795891090817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A340250 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284442.P2265014795891090817

/-! ## A284442.P8363355837970893070

`∑[A325225(A042963(floor(5*2^n/3)))]`
-/

namespace A284442.P8363355837970893070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A042963 ⌊5 * ((2 ^ n : ℚ) / 3)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284442.P8363355837970893070

/-!
# A284443: a(n) = Sum_{d|n, d == 2 (mod 7)} d.

The programs for A284443, the canonical program `A284443.P13197412432002274483` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284443 has offset 1).

The definition of A284443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284443.P13197412432002274483

`∑{d}[n+1, #*A144601(2*#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284443

/-- `∑{d}[n+1, #*A144601(2*#)]` -/
def P13197412432002274483.Spec : Prop :=
  ∀ n, P13197412432002274483.a n = A284443 (n + 1)

theorem P13197412432002274483.correct : P13197412432002274483.Spec := by
  intro n
  simp only [A284443, Nat.add_sub_cancel]

end A284443

/-! ## A284443.P10639004431671677057

`A007388(A235872(n+1))*A255825(A239047(n+1))`
-/

namespace A284443.P10639004431671677057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (A235872 (n + 1)).toNat * A255825 (A239047 (n + 1)).toNat

end

end A284443.P10639004431671677057

namespace A284443

/-- `A007388(A235872(n+1))*A255825(A239047(n+1))` -/
def P10639004431671677057.Spec : Prop :=
  ∀ n, P10639004431671677057.a n = A284443 (n + 1)

end A284443

/-! ## A284443.P10544028010715772106

`A348453((n+1)/∏{p}[n+1, #]*∏{e}[n+1, #])-(-1)^n`
-/

namespace A284443.P10544028010715772106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ))).toNat - (-1) ^ n

end

end A284443.P10544028010715772106

namespace A284443

/-- `A348453((n+1)/∏{p}[n+1, #]*∏{e}[n+1, #])-(-1)^n` -/
def P10544028010715772106.Spec : Prop :=
  ∀ n, P10544028010715772106.a n = A284443 (n + 1)

end A284443

/-! ## A284443.P16908882567107422779

`A115364(A287621(n+1))-1`
-/

namespace A284443.P16908882567107422779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A287621 (n + 1)).toNat - 1

end

end A284443.P16908882567107422779

namespace A284443

/-- `A115364(A287621(n+1))-1` -/
def P16908882567107422779.Spec : Prop :=
  ∀ n, P16908882567107422779.a n = A284443 (n + 1)

end A284443

/-! ## A284443.P15094762137448372997

`A239009(A082067(3*n+1)%A131551(n+1))`
-/

namespace A284443.P15094762137448372997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239009 (Int.tmod (A082067 (3 * n + 1)) (A131551 (n + 1))).toNat

end

end A284443.P15094762137448372997

namespace A284443

/-- `A239009(A082067(3*n+1)%A131551(n+1))` -/
def P15094762137448372997.Spec : Prop :=
  ∀ n, P15094762137448372997.a n = A284443 (n + 1)

end A284443

/-!
# A284444: a(n) = Sum_{d|n, d == 3 (mod 7)} d.

The programs for A284444, the canonical program `A284444.P14860939798542868921` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284444 has offset 1).

The definition of A284444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284444.P14860939798542868921

`∑{d}[n+1, #*A082784(#+4)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284444

/-- `∑{d}[n+1, #*A082784(#+4)]` -/
def P14860939798542868921.Spec : Prop :=
  ∀ n, P14860939798542868921.a n = A284444 (n + 1)

theorem P14860939798542868921.correct : P14860939798542868921.Spec := by
  intro n
  simp only [A284444, Nat.add_sub_cancel]

end A284444

/-! ## A284444.P9830930099684324340

`A357778(gcd(n+1, A128947(2*(n+1))))`
-/

namespace A284444.P9830930099684324340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (Int.gcd (n + 1 : ℤ) (A128947 (2 * (n + 1))))

end

end A284444.P9830930099684324340

namespace A284444

/-- `A357778(gcd(n+1, A128947(2*(n+1))))` -/
def P9830930099684324340.Spec : Prop :=
  ∀ n, P9830930099684324340.a n = A284444 (n + 1)

end A284444

/-! ## A284444.P5181531342359714314

`A076355(gcd(A002921(n), A091088(n)))`
-/

namespace A284444.P5181531342359714314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076355 (Int.gcd (A002921 n) (A091088 n))

end

end A284444.P5181531342359714314

namespace A284444

/-- `A076355(gcd(A002921(n), A091088(n)))` -/
def P5181531342359714314.Spec : Prop :=
  ∀ n, P5181531342359714314.a n = A284444 (n + 1)

end A284444

/-! ## A284444.P14749551375829400099

`A076355(gcd(A017281(n), A146135(n+1)))`
-/

namespace A284444.P14749551375829400099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076355 (Int.gcd (A017281 n) (A146135 (n + 1)))

end

end A284444.P14749551375829400099

namespace A284444

/-- `A076355(gcd(A017281(n), A146135(n+1)))` -/
def P14749551375829400099.Spec : Prop :=
  ∀ n, P14749551375829400099.a n = A284444 (n + 1)

end A284444

/-! ## A284444.P13043750815777756056

`A288425(gcd(A015052(n+1), A083858(n)))`
-/

namespace A284444.P13043750815777756056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288425 (Int.gcd (A015052 (n + 1)) (A083858 n))

end

end A284444.P13043750815777756056

namespace A284444

/-- `A288425(gcd(A015052(n+1), A083858(n)))` -/
def P13043750815777756056.Spec : Prop :=
  ∀ n, P13043750815777756056.a n = A284444 (n + 1)

end A284444

/-!
# A284447: Permutation of the positive integers: a(n) = A258996(A092569(n)) = A092569(A258996(n)).

The programs for A284447, the canonical program `A284447.P16300961384300992767` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284447 has offset 1).

The definition of A284447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284447.P16300961384300992767

`A092569(A258996(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A284447

/-- `A092569(A258996(n+1))` -/
def P16300961384300992767.Spec : Prop :=
  ∀ n, P16300961384300992767.a n = A284447 (n + 1)

theorem P16300961384300992767.correct : P16300961384300992767.Spec := by
  intro n
  simp only [A284447, Nat.add_sub_cancel]

end A284447

/-! ## A284447.P3827400537391070211

`A258996(A054429(n+1)+n-A014681(n))`
-/

namespace A284447.P3827400537391070211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A054429 (n + 1) + ((n : ℤ) - A014681 n)).toNat

end

end A284447.P3827400537391070211

namespace A284447

/-- `A258996(A054429(n+1)+n-A014681(n))` -/
def P3827400537391070211.Spec : Prop :=
  ∀ n, P3827400537391070211.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P15838118893390473743

`A258996(A284460(A258996(A284459(n+1))))`
-/

namespace A284447.P15838118893390473743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A284460 (A258996 (A284459 (n + 1)).toNat).toNat).toNat

end

end A284447.P15838118893390473743

namespace A284447

/-- `A258996(A284460(A258996(A284459(n+1))))` -/
def P15838118893390473743.Spec : Prop :=
  ∀ n, P15838118893390473743.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P8683515044560526956

`A284460(A258996(n+1))+A284460(n+1)-A258996(n+1)`
-/

namespace A284447.P8683515044560526956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284460 (A258996 (n + 1)).toNat + (A284460 (n + 1) - A258996 (n + 1))

end

end A284447.P8683515044560526956

namespace A284447

/-- `A284460(A258996(n+1))+A284460(n+1)-A258996(n+1)` -/
def P8683515044560526956.Spec : Prop :=
  ∀ n, P8683515044560526956.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P16283654946478119588

`A258996(A054429(A014681(n)+1))`
-/

namespace A284447.P16283654946478119588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A054429 (A014681 n + 1).toNat).toNat

end

end A284447.P16283654946478119588

namespace A284447

/-- `A258996(A054429(A014681(n)+1))` -/
def P16283654946478119588.Spec : Prop :=
  ∀ n, P16283654946478119588.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P7262314996127362984

`A258996(A284460(A231551(n+1)))`
-/

namespace A284447.P7262314996127362984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A284460 (A231551 (n + 1)).toNat).toNat

end

end A284447.P7262314996127362984

namespace A284447

/-- `A258996(A284460(A231551(n+1)))` -/
def P7262314996127362984.Spec : Prop :=
  ∀ n, P7262314996127362984.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P16914696389650419440

`A332769(A014681(n)+1)`
-/

namespace A284447.P16914696389650419440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A014681 n + 1).toNat

end

end A284447.P16914696389650419440

namespace A284447

/-- `A332769(A014681(n)+1)` -/
def P16914696389650419440.Spec : Prop :=
  ∀ n, P16914696389650419440.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P8329564814459517094

`A332769(A065190(n+1))`
-/

namespace A284447.P8329564814459517094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A065190 (n + 1)).toNat

end

end A284447.P8329564814459517094

namespace A284447

/-- `A332769(A065190(n+1))` -/
def P8329564814459517094.Spec : Prop :=
  ∀ n, P8329564814459517094.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P10570725820293356633

`A332769(A062157(n)+1+n)`
-/

namespace A284447.P10570725820293356633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A062157 n + 1 + (n : ℤ)).toNat

end

end A284447.P10570725820293356633

namespace A284447

/-- `A332769(A062157(n)+1+n)` -/
def P10570725820293356633.Spec : Prop :=
  ∀ n, P10570725820293356633.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P2566897540834115264

`A332769(xor(1, A057427(n)+n))`
-/

namespace A284447.P2566897540834115264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (Int.xor 1 (A057427 n + (n : ℤ))).toNat

end

end A284447.P2566897540834115264

namespace A284447

/-- `A332769(xor(1, A057427(n)+n))` -/
def P2566897540834115264.Spec : Prop :=
  ∀ n, P2566897540834115264.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P11475709230969234415

`A258996(2*A065190(n+1))/2`
-/

namespace A284447.P11475709230969234415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258996 (2 * A065190 (n + 1)).toNat : ℚ) / 2

end

end A284447.P11475709230969234415

namespace A284447

/-- `A258996(2*A065190(n+1))/2` -/
def P11475709230969234415.Spec : Prop :=
  ∀ n, P11475709230969234415.a n = (A284447 (n + 1) : ℚ)

end A284447

/-! ## A284447.P4221375810126610836

`xor(char[A059893(n+1)], A332769(n+1))`
-/

namespace A284447.P4221375810126610836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A332769 (n + 1))

end

end A284447.P4221375810126610836

namespace A284447

/-- `xor(char[A059893(n+1)], A332769(n+1))` -/
def P4221375810126610836.Spec : Prop :=
  ∀ n, P4221375810126610836.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P5307732194580371982

`A258996(A065190(A054429(n+1)))`
-/

namespace A284447.P5307732194580371982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A065190 (A054429 (n + 1)).toNat).toNat

end

end A284447.P5307732194580371982

namespace A284447

/-- `A258996(A065190(A054429(n+1)))` -/
def P5307732194580371982.Spec : Prop :=
  ∀ n, P5307732194580371982.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P6217048253101055312

`A065190(A154437(A231550(n+1)))`
-/

namespace A284447.P6217048253101055312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A154437 (A231550 (n + 1)).toNat).toNat

end

end A284447.P6217048253101055312

namespace A284447

/-- `A065190(A154437(A231550(n+1)))` -/
def P6217048253101055312.Spec : Prop :=
  ∀ n, P6217048253101055312.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P15756023379168990014

`A092569(A054429(A332769(n+1)))`
-/

namespace A284447.P15756023379168990014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A054429 (A332769 (n + 1)).toNat).toNat

end

end A284447.P15756023379168990014

namespace A284447

/-- `A092569(A054429(A332769(n+1)))` -/
def P15756023379168990014.Spec : Prop :=
  ∀ n, P15756023379168990014.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P3597898537080577470

`A092569(A231551(A284460(n+1)))`
-/

namespace A284447.P3597898537080577470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A231551 (A284460 (n + 1)).toNat).toNat

end

end A284447.P3597898537080577470

namespace A284447

/-- `A092569(A231551(A284460(n+1)))` -/
def P3597898537080577470.Spec : Prop :=
  ∀ n, P3597898537080577470.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P14486381121876395761

`A258996(A117120(A065190(A063946(n+1))))`
-/

namespace A284447.P14486381121876395761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A117120 (A065190 (A063946 (n + 1)).toNat).toNat).toNat

end

end A284447.P14486381121876395761

namespace A284447

/-- `A258996(A117120(A065190(A063946(n+1))))` -/
def P14486381121876395761.Spec : Prop :=
  ∀ n, P14486381121876395761.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P15680264375927104666

`A332769(A092569(A063946(A117120(n+1))))`
-/

namespace A284447.P15680264375927104666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A092569 (A063946 (A117120 (n + 1)).toNat).toNat).toNat

end

end A284447.P15680264375927104666

namespace A284447

/-- `A332769(A092569(A063946(A117120(n+1))))` -/
def P15680264375927104666.Spec : Prop :=
  ∀ n, P15680264375927104666.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P6301868084453684457

`A258996(A154438(A153154(n+1)))`
-/

namespace A284447.P6301868084453684457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A154438 (A153154 (n + 1)).toNat).toNat

end

end A284447.P6301868084453684457

namespace A284447

/-- `A258996(A154438(A153154(n+1)))` -/
def P6301868084453684457.Spec : Prop :=
  ∀ n, P6301868084453684457.a n = A284447 (n + 1)

end A284447

/-! ## A284447.P6066281915134578893

`A332769(A154438(A284459(n+1)))`
-/

namespace A284447.P6066281915134578893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A154438 (A284459 (n + 1)).toNat).toNat

end

end A284447.P6066281915134578893

namespace A284447

/-- `A332769(A154438(A284459(n+1)))` -/
def P6066281915134578893.Spec : Prop :=
  ∀ n, P6066281915134578893.a n = A284447 (n + 1)

end A284447

/-!
# A284448: Number of n X n 0..1 arrays with the number of 1's king-move adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284448, there is no canonical definition to state claims against.
-/

/-! ## A284448.P2785877244261999452

`A284455(∑[4*n]+1)`
-/

namespace A284448.P2785877244261999452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284448.P2785877244261999452

/-! ## A284448.P2182821020991850495

`A000041(C(2, n))*A284455(A001844(n))`
-/

namespace A284448.P2182821020991850495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A284455 (A001844 n).toNat

end

end A284448.P2182821020991850495

/-! ## A284448.P16541893862698754237

`A284455(A001844(n))^A014963(∑[n+1])`
-/

namespace A284448.P16541893862698754237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284455 (A001844 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A284448.P16541893862698754237

/-! ## A284448.P4680654348302679900

`char[A000005(n+1)]*A284455(A001844(n))`
-/

namespace A284448.P4680654348302679900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A284455 (A001844 n).toNat

end

end A284448.P4680654348302679900

/-! ## A284448.P15777193519011150161

`A000040(n+1)%2*A284455(A001844(n))`
-/

namespace A284448.P15777193519011150161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A284455 (A001844 n).toNat

end

end A284448.P15777193519011150161

/-!
# A284449: Number of n X 1 0..1 arrays with the number of 1's king-move adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284449, there is no canonical definition to state claims against.
-/

/-! ## A284449.P5389687606934513617

`A285152(C(n, 2)+1)`
-/

namespace A284449.P5389687606934513617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (Nat.choose n 2 + 1)

end

end A284449.P5389687606934513617

/-! ## A284449.P4594998794372501555

`A285152(∑[abs(1-n)])`
-/

namespace A284449.P4594998794372501555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284449.P4594998794372501555

/-! ## A284449.P4924578117942867177

`A285030(C(n, 2)+1)`
-/

namespace A284449.P4924578117942867177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (Nat.choose n 2 + 1)

end

end A284449.P4924578117942867177

/-! ## A284449.P15658664814978130492

`A285030(∑[abs(1-n)])`
-/

namespace A284449.P15658664814978130492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284449.P15658664814978130492

/-! ## A284449.P5109770190100495417

`A284455(C(n, 2)+1)`
-/

namespace A284449.P5109770190100495417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (Nat.choose n 2 + 1)

end

end A284449.P5109770190100495417

/-!
# A284450: Number of n X 3 0..1 arrays with the number of 1's king-move adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284450, there is no canonical definition to state claims against.
-/

/-! ## A284450.P1883287926047300032

`A284455(∑[n+2]+4)`
-/

namespace A284450.P1883287926047300032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A284450.P1883287926047300032

/-! ## A284450.P11410533938470499795

`lcm((-1)^n, A284455(A167614(n+1)))`
-/

namespace A284450.P11410533938470499795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A284455 (A167614 (n + 1)).toNat)

end

end A284450.P11410533938470499795

/-! ## A284450.P5134765283778242179

`A284455(A167614(n+1))+A025443(n)`
-/

namespace A284450.P5134765283778242179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A167614 (n + 1)).toNat + A025443 n

end

end A284450.P5134765283778242179

/-! ## A284450.P18027321059897499637

`A284455(A167614(n+1))%A013731(n)`
-/

namespace A284450.P18027321059897499637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284455 (A167614 (n + 1)).toNat) (A013731 n)

end

end A284450.P18027321059897499637

/-! ## A284450.P5857618788482210959

`gcd(A000038(n), A284455(A167614(n+1)))`
-/

namespace A284450.P5857618788482210959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284455 (A167614 (n + 1)).toNat)

end

end A284450.P5857618788482210959

/-!
# A284451: Number of n X 4 0..1 arrays with the number of 1's king-move adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284451, there is no canonical definition to state claims against.
-/

/-! ## A284451.P17991568948302057607

`A284455(A141214(n)+7)`
-/

namespace A284451.P17991568948302057607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A141214 n + 7).toNat

end

end A284451.P17991568948302057607

/-! ## A284451.P1242013557094803477

`A284455(A052905(n)+9)`
-/

namespace A284451.P1242013557094803477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A052905 n + 9).toNat

end

end A284451.P1242013557094803477

/-! ## A284451.P11171179996786316641

`A284455(A055999(n)+10)`
-/

namespace A284451.P11171179996786316641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A055999 n + 10).toNat

end

end A284451.P11171179996786316641

/-! ## A284451.P11083769423825669093

`A284455(A167614(n+2)+1)`
-/

namespace A284451.P11083769423825669093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A167614 (n + 2) + 1).toNat

end

end A284451.P11083769423825669093

/-! ## A284451.P8319457624540037300

`A284455(A112355(n+1)+4)`
-/

namespace A284451.P8319457624540037300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A112355 (n + 1) + 4).toNat

end

end A284451.P8319457624540037300

/-!
# A284452: Number of n X 5 0..1 arrays with the number of 1's king-move adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284452, there is no canonical definition to state claims against.
-/

/-! ## A284452.P3312023789200757160

`A284455(A155212(n)+13)`
-/

namespace A284452.P3312023789200757160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A155212 n + 13).toNat

end

end A284452.P3312023789200757160

/-! ## A284452.P6496438206404571746

`A284455(Δ[A264443(n)])`
-/

namespace A284452.P6496438206404571746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (f1 (n + 1) - f1 n).toNat

end

end A284452.P6496438206404571746

/-! ## A284452.P15675838349719338993

`A284455(A374005(n+1))`
-/

namespace A284452.P15675838349719338993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A374005 (n + 1)).toNat

end

end A284452.P15675838349719338993

/-! ## A284452.P13343657253684649310

`A284455(eq[4, A193592(n)])`
-/

namespace A284452.P13343657253684649310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284452.P13343657253684649310

/-! ## A284452.P17926881677118788826

`A284455(Δ[A023545(n+1)])`
-/

namespace A284452.P17926881677118788826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (f1 (n + 1) - f1 n).toNat

end

end A284452.P17926881677118788826

/-!
# A284453: Number of n X 6 0..1 arrays with the number of 1's king-move adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284453, there is no canonical definition to state claims against.
-/

/-! ## A284453.P191045575429626976

`A284455(eq[7, A131818(n+1)])`
-/

namespace A284453.P191045575429626976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284453.P191045575429626976

/-! ## A284453.P12004291761145205398

`A284455(A374007(n+1))`
-/

namespace A284453.P12004291761145205398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A374007 (n + 1)).toNat

end

end A284453.P12004291761145205398

/-! ## A284453.P10646555364422288494

`A284455(A052905(n+3))`
-/

namespace A284453.P10646555364422288494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A052905 (n + 3)).toNat

end

end A284453.P10646555364422288494

/-! ## A284453.P15573633210671894528

`A284455(A056119(n)+16)`
-/

namespace A284453.P15573633210671894528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A056119 n + 16).toNat

end

end A284453.P15573633210671894528

/-! ## A284453.P3982154441675944362

`A284455(eq[5, A193592(n)])`
-/

namespace A284453.P3982154441675944362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284453.P3982154441675944362

/-!
# A284454: Number of n X 7 0..1 arrays with the number of 1's king-move adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284454, there is no canonical definition to state claims against.
-/

/-! ## A284454.P12117621770107010517

`A284455(eq[8, A131818(n+1)])`
-/

namespace A284454.P12117621770107010517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284454.P12117621770107010517

/-! ## A284454.P1544814666826431528

`A284455(A374008(n+1))`
-/

namespace A284454.P1544814666826431528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A374008 (n + 1)).toNat

end

end A284454.P1544814666826431528

/-! ## A284454.P13791643384193313213

`A284455(A055999(n+4))`
-/

namespace A284454.P13791643384193313213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (A055999 (n + 4)).toNat

end

end A284454.P13791643384193313213

/-! ## A284454.P3727396615596074588

`A284455(eq[6, A193592(n)])`
-/

namespace A284454.P3727396615596074588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284454.P3727396615596074588

/-! ## A284454.P1804495390948256844

`A284455(eq[7, A200370(n+1)])`
-/

namespace A284454.P1804495390948256844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284454.P1804495390948256844

/-!
# A284456: Numbers such that there is no smaller number with the same factorization shape (see Comments for details).

The programs for A284456, there is no canonical definition to state claims against.
-/

/-! ## A284456.P13867395121459032423

`A025487(A369138(n+1))`
-/

namespace A284456.P13867395121459032423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A369138 (n + 1)).toNat

end

end A284456.P13867395121459032423

/-! ## A284456.P4399709582663774258

`filter[A279686(n+1), A323509(#)]`
-/

namespace A284456.P4399709582663774258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A284456.P4399709582663774258

/-! ## A284456.P17918821747551843748

`record[A284476(n+1)]`
-/

namespace A284456.P17918821747551843748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284456.P17918821747551843748

/-! ## A284456.P2449970250099284575

`eq[n, A284476(A028310(n))]`
-/

namespace A284456.P2449970250099284575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284476 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284456.P2449970250099284575

/-! ## A284456.P9602365441709309193

`record[A279690(A220219(n+1))]`
-/

namespace A284456.P9602365441709309193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279690 (A220219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284456.P9602365441709309193

/-!
# A284457: Square array whose rows list numbers with the same squarefree kernel (A007947): Transpose of A284311.

The programs for A284457, there is no canonical definition to state claims against.
-/

/-! ## A284457.P10576660676196489953

`A365656(n+1)`
-/

namespace A284457.P10576660676196489953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365656 (n + 1)

end

end A284457.P10576660676196489953

/-! ## A284457.P13670636817945186949

`A284311(A038722(n+1))`
-/

namespace A284457.P13670636817945186949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284311 (A038722 (n + 1)).toNat

end

end A284457.P13670636817945186949

/-! ## A284457.P12596409827524303644

`A284311(A061579(n)+1)`
-/

namespace A284457.P12596409827524303644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284311 (A061579 n + 1).toNat

end

end A284457.P12596409827524303644

/-! ## A284457.P3108640418809316529

`A284311(A093995(n+1)-n)`
-/

namespace A284457.P3108640418809316529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284311 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A284457.P3108640418809316529

/-! ## A284457.P16385334678704725014

`A284311(2-A127948(n)+n)`
-/

namespace A284457.P16385334678704725014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284311 (2 - A127948 n + (n : ℤ)).toNat

end

end A284457.P16385334678704725014

/-! ## A284457.P16293006316197973922

`A284311(A002024(n+1)²-n)`
-/

namespace A284457.P16293006316197973922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284311 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A284457.P16293006316197973922

/-! ## A284457.P6075533249037687635

`A284311(A053187(2*(n+1))-n)`
-/

namespace A284457.P6075533249037687635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284311 (A053187 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A284457.P6075533249037687635

/-!
# A284459: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A002487/A002487' (Calkin-Wilf) into the enumeration system A245327/A245328, and A162911/A162912 (Drib) into A020651/A020650 (Yu-Ting inverted).

The programs for A284459, the canonical program `A284459.P12780854704581567834` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284459 has offset 1).

The definition of A284459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284459.P12780854704581567834

`A154437(A014681(n)+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A284459

/-- `A154437(A014681(n)+1)` -/
def P12780854704581567834.Spec : Prop :=
  ∀ n, P12780854704581567834.a n = A284459 (n + 1)

theorem P12780854704581567834.correct : P12780854704581567834.Spec := by
  intro n
  simp only [A284459, Nat.add_sub_cancel]

end A284459

/-! ## A284459.P17193841256031986982

`A154437(A065190(n+1))`
-/

namespace A284459.P17193841256031986982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A065190 (n + 1)).toNat

end

end A284459.P17193841256031986982

namespace A284459

/-- `A154437(A065190(n+1))` -/
def P17193841256031986982.Spec : Prop :=
  ∀ n, P17193841256031986982.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P16106515790432208554

`A258996(A231551(n+1))`
-/

namespace A284459.P16106515790432208554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A231551 (n + 1)).toNat

end

end A284459.P16106515790432208554

namespace A284459

/-- `A258996(A231551(n+1))` -/
def P16106515790432208554.Spec : Prop :=
  ∀ n, P16106515790432208554.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P2127612511758035856

`A054429(A154437(n+1))`
-/

namespace A284459.P2127612511758035856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A154437 (n + 1)).toNat

end

end A284459.P2127612511758035856

namespace A284459

/-- `A054429(A154437(n+1))` -/
def P2127612511758035856.Spec : Prop :=
  ∀ n, P2127612511758035856.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P18211787962822186438

`A231551(A092569(n+1))`
-/

namespace A284459.P18211787962822186438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A092569 (n + 1)).toNat

end

end A284459.P18211787962822186438

namespace A284459

/-- `A231551(A092569(n+1))` -/
def P18211787962822186438.Spec : Prop :=
  ∀ n, P18211787962822186438.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P3053844812133098086

`A059893(A006068(A059894(n+1)))`
-/

namespace A284459.P3053844812133098086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A006068 (A059894 (n + 1)).toNat).toNat

end

end A284459.P3053844812133098086

namespace A284459

/-- `A059893(A006068(A059894(n+1)))` -/
def P3053844812133098086.Spec : Prop :=
  ∀ n, P3053844812133098086.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P234054753350256336

`A059893(A180200(A059893(n+1)))`
-/

namespace A284459.P234054753350256336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A180200 (A059893 (n + 1)).toNat).toNat

end

end A284459.P234054753350256336

namespace A284459

/-- `A059893(A180200(A059893(n+1)))` -/
def P234054753350256336.Spec : Prop :=
  ∀ n, P234054753350256336.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P11163184355271509819

`A054429(A231551(A054429(n+1)))`
-/

namespace A284459.P11163184355271509819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A231551 (A054429 (n + 1)).toNat).toNat

end

end A284459.P11163184355271509819

namespace A284459

/-- `A054429(A231551(A054429(n+1)))` -/
def P11163184355271509819.Spec : Prop :=
  ∀ n, P11163184355271509819.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P5210346879043542358

`A117120(A231551(A117120(n+1)))`
-/

namespace A284459.P5210346879043542358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A231551 (A117120 (n + 1)).toNat).toNat

end

end A284459.P5210346879043542358

namespace A284459

/-- `A117120(A231551(A117120(n+1)))` -/
def P5210346879043542358.Spec : Prop :=
  ∀ n, P5210346879043542358.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P15261899034775616730

`A154437(A332769(A284447(n+1)))`
-/

namespace A284459.P15261899034775616730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A332769 (A284447 (n + 1)).toNat).toNat

end

end A284459.P15261899034775616730

namespace A284459

/-- `A154437(A332769(A284447(n+1)))` -/
def P15261899034775616730.Spec : Prop :=
  ∀ n, P15261899034775616730.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P16263476135550726778

`A258996(A154437(A332769(A258996(n+1))))`
-/

namespace A284459.P16263476135550726778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A154437 (A332769 (A258996 (n + 1)).toNat).toNat).toNat

end

end A284459.P16263476135550726778

namespace A284459

/-- `A258996(A154437(A332769(A258996(n+1))))` -/
def P16263476135550726778.Spec : Prop :=
  ∀ n, P16263476135550726778.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P17281316806147527081

`A180201(A056539(A180200(A056539(A180200(n+1)))))`
-/

namespace A284459.P17281316806147527081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A056539 (A180200 (A056539 (A180200 (n + 1)).toNat).toNat).toNat).toNat

end

end A284459.P17281316806147527081

namespace A284459

/-- `A180201(A056539(A180200(A056539(A180200(n+1)))))` -/
def P17281316806147527081.Spec : Prop :=
  ∀ n, P17281316806147527081.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P13289969465690677425

`A059893(A006068(A234024(A234027(A234024(n+1)))))`
-/

namespace A284459.P13289969465690677425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A006068 (A234024 (A234027 (A234024 (n + 1)).toNat).toNat).toNat).toNat

end

end A284459.P13289969465690677425

namespace A284459

/-- `A059893(A006068(A234024(A234027(A234024(n+1)))))` -/
def P13289969465690677425.Spec : Prop :=
  ∀ n, P13289969465690677425.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P8182600389195527716

`A153154(A054429(n+1))`
-/

namespace A284459.P8182600389195527716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A054429 (n + 1)).toNat

end

end A284459.P8182600389195527716

namespace A284459

/-- `A153154(A054429(n+1))` -/
def P8182600389195527716.Spec : Prop :=
  ∀ n, P8182600389195527716.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P1639707650313727777

`A332769(A153154(n+1))`
-/

namespace A284459.P1639707650313727777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A153154 (n + 1)).toNat

end

end A284459.P1639707650313727777

namespace A284459

/-- `A332769(A153154(n+1))` -/
def P1639707650313727777.Spec : Prop :=
  ∀ n, P1639707650313727777.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P14007124303799412333

`A393980(A154435(n+1))`
-/

namespace A284459.P14007124303799412333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393980 (A154435 (n + 1)).toNat

end

end A284459.P14007124303799412333

namespace A284459

/-- `A393980(A154435(n+1))` -/
def P14007124303799412333.Spec : Prop :=
  ∀ n, P14007124303799412333.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P7237481053991792034

`A153154(xor(n+1, A092323(n+1)))`
-/

namespace A284459.P7237481053991792034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (Int.xor (n + 1 : ℤ) (A092323 (n + 1))).toNat

end

end A284459.P7237481053991792034

namespace A284459

/-- `A153154(xor(n+1, A092323(n+1)))` -/
def P7237481053991792034.Spec : Prop :=
  ∀ n, P7237481053991792034.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P11108039347200466542

`A153154(A117120(A063946(n+1)))`
-/

namespace A284459.P11108039347200466542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A117120 (A063946 (n + 1)).toNat).toNat

end

end A284459.P11108039347200466542

namespace A284459

/-- `A153154(A117120(A063946(n+1)))` -/
def P11108039347200466542.Spec : Prop :=
  ∀ n, P11108039347200466542.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P12985122445706646586

`A153154(A231551(A153153(n+1)))`
-/

namespace A284459.P12985122445706646586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A231551 (A153153 (n + 1)).toNat).toNat

end

end A284459.P12985122445706646586

namespace A284459

/-- `A153154(A231551(A153153(n+1)))` -/
def P12985122445706646586.Spec : Prop :=
  ∀ n, P12985122445706646586.a n = A284459 (n + 1)

end A284459

/-! ## A284459.P8332019560437699242

`A153154(A153154(A231550(n+1)))`
-/

namespace A284459.P8332019560437699242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A153154 (A231550 (n + 1)).toNat).toNat

end

end A284459.P8332019560437699242

namespace A284459

/-- `A153154(A153154(A231550(n+1)))` -/
def P8332019560437699242.Spec : Prop :=
  ∀ n, P8332019560437699242.a n = A284459 (n + 1)

end A284459

/-!
# A284460: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A245327/A245328 into the enumeration system A002487/A002487' (Calkin-Wilf), and A020651/A020650 (Yu-Ting inverted) into A162911/A162912(Drib).

The programs for A284460, the canonical program `A284460.P11071859189159221971` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284460 has offset 1).

The definition of A284460 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231550, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284460.P11071859189159221971

`A231550(A258996(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A284460

/-- `A231550(A258996(n+1))` -/
def P11071859189159221971.Spec : Prop :=
  ∀ n, P11071859189159221971.a n = A284460 (n + 1)

theorem P11071859189159221971.correct : P11071859189159221971.Spec := by
  intro n
  simp only [A284460, Nat.add_sub_cancel]

end A284460

/-! ## A284460.P10508436036107059783

`A092569(A231550(n+1))`
-/

namespace A284460.P10508436036107059783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A231550 (n + 1)).toNat

end

end A284460.P10508436036107059783

namespace A284460

/-- `A092569(A231550(n+1))` -/
def P10508436036107059783.Spec : Prop :=
  ∀ n, P10508436036107059783.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P7631773250183167536

`A059894(A003188(A059893(n+1)))`
-/

namespace A284460.P7631773250183167536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A003188 (A059893 (n + 1)).toNat).toNat

end

end A284460.P7631773250183167536

namespace A284460

/-- `A059894(A003188(A059893(n+1)))` -/
def P7631773250183167536.Spec : Prop :=
  ∀ n, P7631773250183167536.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P40789461812287102

`A054429(A231550(A054429(n+1)))`
-/

namespace A284460.P40789461812287102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A231550 (A054429 (n + 1)).toNat).toNat

end

end A284460.P40789461812287102

namespace A284460

/-- `A054429(A231550(A054429(n+1)))` -/
def P40789461812287102.Spec : Prop :=
  ∀ n, P40789461812287102.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P6604306182147471198

`A117120(A231550(A117120(n+1)))`
-/

namespace A284460.P6604306182147471198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A231550 (A117120 (n + 1)).toNat).toNat

end

end A284460.P6604306182147471198

namespace A284460

/-- `A117120(A231550(A117120(n+1)))` -/
def P6604306182147471198.Spec : Prop :=
  ∀ n, P6604306182147471198.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P11298241176480631068

`A059894(A234612(A234026(A059894(n+1))))`
-/

namespace A284460.P11298241176480631068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A234612 (A234026 (A059894 (n + 1)).toNat).toNat).toNat

end

end A284460.P11298241176480631068

namespace A284460

/-- `A059894(A234612(A234026(A059894(n+1))))` -/
def P11298241176480631068.Spec : Prop :=
  ∀ n, P11298241176480631068.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P15313477827859432131

`A059894(A234612(A059893(A234024(n+1))))`
-/

namespace A284460.P15313477827859432131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A234612 (A059893 (A234024 (n + 1)).toNat).toNat).toNat

end

end A284460.P15313477827859432131

namespace A284460

/-- `A059894(A234612(A059893(A234024(n+1))))` -/
def P15313477827859432131.Spec : Prop :=
  ∀ n, P15313477827859432131.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P1479523760407221245

`A180201(A056539(A180201(A335858(n+1))))`
-/

namespace A284460.P1479523760407221245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A056539 (A180201 (A335858 (n + 1)).toNat).toNat).toNat

end

end A284460.P1479523760407221245

namespace A284460

/-- `A180201(A056539(A180201(A335858(n+1))))` -/
def P1479523760407221245.Spec : Prop :=
  ∀ n, P1479523760407221245.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P13667794481827751884

`A180201(A056539(A180201(A056539(A180200(n+1)))))`
-/

namespace A284460.P13667794481827751884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A056539 (A180201 (A056539 (A180200 (n + 1)).toNat).toNat).toNat).toNat

end

end A284460.P13667794481827751884

namespace A284460

/-- `A180201(A056539(A180201(A056539(A180200(n+1)))))` -/
def P13667794481827751884.Spec : Prop :=
  ∀ n, P13667794481827751884.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P8751536822181981889

`A059894(A234612(A054429(A234024(A234027(n+1)))))`
-/

namespace A284460.P8751536822181981889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A234612 (A054429 (A234024 (A234027 (n + 1)).toNat).toNat).toNat).toNat

end

end A284460.P8751536822181981889

namespace A284460

/-- `A059894(A234612(A054429(A234024(A234027(n+1)))))` -/
def P8751536822181981889.Spec : Prop :=
  ∀ n, P8751536822181981889.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P3532334154247207872

`A231550(A332769(A231550(A332769(A231551(n+1)))))`
-/

namespace A284460.P3532334154247207872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A332769 (A231550 (A332769 (A231551 (n + 1)).toNat).toNat).toNat).toNat

end

end A284460.P3532334154247207872

namespace A284460

/-- `A231550(A332769(A231550(A332769(A231551(n+1)))))` -/
def P3532334154247207872.Spec : Prop :=
  ∀ n, P3532334154247207872.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P12076149088943534967

`A054429(A153153(n+1))`
-/

namespace A284460.P12076149088943534967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A153153 (n + 1)).toNat

end

end A284460.P12076149088943534967

namespace A284460

/-- `A054429(A153153(n+1))` -/
def P12076149088943534967.Spec : Prop :=
  ∀ n, P12076149088943534967.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P12856246293100088308

`A154438(A054429(n+1))`
-/

namespace A284460.P12856246293100088308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (A054429 (n + 1)).toNat

end

end A284460.P12856246293100088308

namespace A284460

/-- `A154438(A054429(n+1))` -/
def P12856246293100088308.Spec : Prop :=
  ∀ n, P12856246293100088308.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P11865112167089926580

`A065190(A154438(n+1))`
-/

namespace A284460.P11865112167089926580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A154438 (n + 1)).toNat

end

end A284460.P11865112167089926580

namespace A284460

/-- `A065190(A154438(n+1))` -/
def P11865112167089926580.Spec : Prop :=
  ∀ n, P11865112167089926580.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P11282421231541286802

`A153153(A332769(n+1))`
-/

namespace A284460.P11282421231541286802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (A332769 (n + 1)).toNat

end

end A284460.P11282421231541286802

namespace A284460

/-- `A153153(A332769(n+1))` -/
def P11282421231541286802.Spec : Prop :=
  ∀ n, P11282421231541286802.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P7872770637851716081

`A153153(A258996(2*(n+1))/2)`
-/

namespace A284460.P7872770637851716081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (SequenceMachineLib.roundAway ((A258996 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A284460.P7872770637851716081

namespace A284460

/-- `A153153(A258996(2*(n+1))/2)` -/
def P7872770637851716081.Spec : Prop :=
  ∀ n, P7872770637851716081.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P13655309180123466002

`A153153(A284447(A065190(n+1)))`
-/

namespace A284460.P13655309180123466002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (A284447 (A065190 (n + 1)).toNat).toNat

end

end A284460.P13655309180123466002

namespace A284460

/-- `A153153(A284447(A065190(n+1)))` -/
def P13655309180123466002.Spec : Prop :=
  ∀ n, P13655309180123466002.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P14847202306318601530

`A154438(A231550(A154437(n+1)))`
-/

namespace A284460.P14847202306318601530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (A231550 (A154437 (n + 1)).toNat).toNat

end

end A284460.P14847202306318601530

namespace A284460

/-- `A154438(A231550(A154437(n+1)))` -/
def P14847202306318601530.Spec : Prop :=
  ∀ n, P14847202306318601530.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P14508273209287003510

`A154438(A154438(A231551(n+1)))`
-/

namespace A284460.P14508273209287003510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (A154438 (A231551 (n + 1)).toNat).toNat

end

end A284460.P14508273209287003510

namespace A284460

/-- `A154438(A154438(A231551(n+1)))` -/
def P14508273209287003510.Spec : Prop :=
  ∀ n, P14508273209287003510.a n = A284460 (n + 1)

end A284460

/-! ## A284460.P10629838534524897173

`A153154(n+1)+A231551(n+1)-A153153(n+1)`
-/

namespace A284460.P10629838534524897173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (n + 1) + (A231551 (n + 1) - A153153 (n + 1))

end

end A284460.P10629838534524897173

namespace A284460

/-- `A153154(n+1)+A231551(n+1)-A153153(n+1)` -/
def P10629838534524897173.Spec : Prop :=
  ∀ n, P10629838534524897173.a n = A284460 (n + 1)

end A284460

/-!
# A284461: Number of self-avoiding planar walks starting at (0,0), ending at (n,n), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal.

The programs for A284461, the canonical program `A284461.P9659649600467925880` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284461 has offset 0).

The definition of A284461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284461.P9659649600467925880

`((2*n+1)²-2)*a(n-1)-(4*n-6)*n*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284461

/-- `((2*n+1)²-2)*a(n-1)-(4*n-6)*n*a(n-2)` -/
def P9659649600467925880.Spec : Prop :=
  ∀ n, P9659649600467925880.a n = A284461 n

theorem P9659649600467925880.correct : P9659649600467925880.Spec := by
  intro n
  simp only [A284461]

end A284461

/-! ## A284461.P5304999137994932185

`A284230(2*n)`
-/

namespace A284461.P5304999137994932185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284230 (2 * n)

end

end A284461.P5304999137994932185

namespace A284461

/-- `A284230(2*n)` -/
def P5304999137994932185.Spec : Prop :=
  ∀ n, P5304999137994932185.a n = A284461 n

end A284461

/-! ## A284461.P17639493412836749422

`record[A284230(A014681(n))]`
-/

namespace A284461.P17639493412836749422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284230 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284461.P17639493412836749422

namespace A284461

/-- `record[A284230(A014681(n))]` -/
def P17639493412836749422.Spec : Prop :=
  ∀ n, P17639493412836749422.a n = A284461 n

end A284461

/-! ## A284461.P7642798746019763500

`or(1, A284230(A005843(n)))`
-/

namespace A284461.P7642798746019763500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284230 (A005843 n).toNat)

end

end A284461.P7642798746019763500

namespace A284461

/-- `or(1, A284230(A005843(n)))` -/
def P7642798746019763500.Spec : Prop :=
  ∀ n, P7642798746019763500.a n = A284461 n

end A284461

/-! ## A284461.P10169155955696022677

`record[A284230(Δ[A038714(n)])]`
-/

namespace A284461.P10169155955696022677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038714 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284230 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284461.P10169155955696022677

namespace A284461

/-- `record[A284230(Δ[A038714(n)])]` -/
def P10169155955696022677.Spec : Prop :=
  ∀ n, P10169155955696022677.a n = A284461 n

end A284461

/-!
# A284462: Number of length-n binary strings s whose longest repeated suffix appears exactly twice in s.

The programs for A284462, there is no canonical definition to state claims against.
-/

/-! ## A284462.P6117846279352537440

`A340854(A017913(n)+1)`
-/

namespace A284462.P6117846279352537440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A017913 n + 1).toNat

end

end A284462.P6117846279352537440

/-! ## A284462.P13590596136209425654

`A340854(ceil(sqrt(A102345(n))))`
-/

namespace A284462.P13590596136209425654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 ⌈Real.sqrt (A102345 n : ℝ)⌉.toNat

end

end A284462.P13590596136209425654

/-! ## A284462.P17303644958876656418

`A340854(A284249(n)+A083658(n))`
-/

namespace A284462.P17303644958876656418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A284249 n + A083658 n).toNat

end

end A284462.P17303644958876656418

/-! ## A284462.P6363341645616531071

`A328114(A353882(n+3))+A014113(n+1)`
-/

namespace A284462.P6363341645616531071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A353882 (n + 3)).toNat + A014113 (n + 1)

end

end A284462.P6363341645616531071

/-!
# A284463: Number of compositions (ordered partitions) of n into prime divisors of n.

The programs for A284463, there is no canonical definition to state claims against.
-/

/-! ## A284463.P14518665474544252350

`A030702(A066882(n)^A087698(n))`
-/

namespace A284463.P14518665474544252350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030702 ((SequenceMachineLib.roundAway ((A066882 n : ℚ) ^ (A087698 n : ℤ))).toNat + 1)

end

end A284463.P14518665474544252350

/-! ## A284463.P7551443361405980755

`A001951(A066882(n)^A161642(n))`
-/

namespace A284463.P7551443361405980755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.roundAway ((A066882 n : ℚ) ^ (A161642 n : ℤ))).toNat

end

end A284463.P7551443361405980755

/-! ## A284463.P18097214227109603610

`A004773(A066882(n)^A161642(n))`
-/

namespace A284463.P18097214227109603610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (SequenceMachineLib.roundAway ((A066882 n : ℚ) ^ (A161642 n : ℤ))).toNat

end

end A284463.P18097214227109603610

/-! ## A284463.P9250296194307010019

`A255327(A005578(n)-A071858(n))`
-/

namespace A284463.P9250296194307010019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 (A005578 n - A071858 n).toNat

end

end A284463.P9250296194307010019

/-!
# A284464: Number of compositions (ordered partitions) of n into squarefree divisors of n.

The programs for A284464, there is no canonical definition to state claims against.
-/

/-! ## A284464.P2058276383072734865

`A045778(A277246(n)+A006519(n+1))`
-/

namespace A284464.P2058276383072734865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A277246 n + A006519 (n + 1)).toNat

end

end A284464.P2058276383072734865

/-! ## A284464.P7955796551729698179

`A000196(A008300(2*n)*A080750(n+1))`
-/

namespace A284464.P7955796551729698179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008300 (2 * n) * A080750 (n + 1)).toNat

end

end A284464.P7955796551729698179

/-!
# A284465: Number of compositions (ordered partitions) of n into prime power divisors of n (not including 1).

The programs for A284465, there is no canonical definition to state claims against.
-/

/-! ## A284465.P9134085067894866142

`A056792(A284289(n)!)*A211111(n)`
-/

namespace A284465.P9134085067894866142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (Nat.factorial (A284289 n).toNat) * A211111 n

end

end A284465.P9134085067894866142

/-! ## A284465.P1831731684856953403

`A163820(2*A028240(n)+n)`
-/

namespace A284465.P1831731684856953403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163820 (2 * A028240 n + (n : ℤ)).toNat

end

end A284465.P1831731684856953403

/-! ## A284465.P3209121988411706976

`A163820(2*A109151(n)+n)`
-/

namespace A284465.P3209121988411706976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163820 (2 * A109151 n + (n : ℤ)).toNat

end

end A284465.P3209121988411706976

/-! ## A284465.P5651624037316797428

`A163820(A028240(n)+round(sqrt(n²+1)))`
-/

namespace A284465.P5651624037316797428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163820 (A028240 n + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A284465.P5651624037316797428

/-! ## A284465.P6784152580244814646

`A163820(A109151(n)+A028310(n))`
-/

namespace A284465.P6784152580244814646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163820 (A109151 n + A028310 n).toNat

end

end A284465.P6784152580244814646

/-!
# A284468: 0-limiting word of the morphism 0->1, 1->0100.

The programs for A284468, there is no canonical definition to state claims against.
-/

/-! ## A284468.P9532964376423432965

`char[A284470(n+1)-1]`
-/

namespace A284468.P9532964376423432965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284470 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284468.P9532964376423432965

/-! ## A284468.P10797033719251805374

`A284487(Δ[A284473(n+1)])`
-/

namespace A284468.P10797033719251805374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (f1 (n + 1) - f1 n).toNat

end

end A284468.P10797033719251805374

/-! ## A284468.P2098973131423706479

`A354896(Δ[A284473(n+1)])`
-/

namespace A284468.P2098973131423706479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354896 (f1 (n + 1) - f1 n).toNat

end

end A284468.P2098973131423706479

/-! ## A284468.P13196510823103635776

`A188295(Δ[A284473(n+1)]²)`
-/

namespace A284468.P13196510823103635776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A284468.P13196510823103635776

/-! ## A284468.P2105640712929460350

`A289035(Δ[A284473(n+1)]²)`
-/

namespace A284468.P2105640712929460350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A284468.P2105640712929460350

/-! ## A284468.P3318103362792841993

`A001362(Δ[A284473(n+1)]-1)-1`
-/

namespace A284468.P3318103362792841993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001362 (f1 (n + 1) - f1 n - 1).toNat - 1

end

end A284468.P3318103362792841993

/-! ## A284468.P12301764875541357733

`A000010(A284473(n+2)-A284473(n+1))-1`
-/

namespace A284468.P12301764875541357733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A284473 (n + 2) - A284473 (n + 1)).toNat - 1

end

end A284468.P12301764875541357733

/-! ## A284468.P18106307787910279774

`A000032(A284473(n+1)-(n+1))%2`
-/

namespace A284468.P18106307787910279774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (A284473 (n + 1) - (n + 1 : ℤ)).toNat) 2

end

end A284468.P18106307787910279774

/-! ## A284468.P8926098028895914349

`A284527(A096582(2*(n+1))+n)`
-/

namespace A284468.P8926098028895914349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (A096582 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A284468.P8926098028895914349

/-!
# A284469: Positions of 0 in A284468; complement of A284470.

The programs for A284469, there is no canonical definition to state claims against.
-/

/-! ## A284469.P7709217104718773615

`comp[A284470(n+1)-1]+1`
-/

namespace A284469.P7709217104718773615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284470 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284469.P7709217104718773615

/-! ## A284469.P6601702901811698602

`eq[0, A284468(n+1)]+1`
-/

namespace A284469.P6601702901811698602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284469.P6601702901811698602

/-! ## A284469.P1827383325332017504

`record[n+1-A284468(n+1)*A284470(n+1)]`
-/

namespace A284469.P1827383325332017504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284468 (n + 1) * A284470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284469.P1827383325332017504

/-! ## A284469.P6830849326989020958

`record[n+1-A284468(n+1)*A284472(n+1)]`
-/

namespace A284469.P6830849326989020958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284468 (n + 1) * A284472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284469.P6830849326989020958

/-! ## A284469.P11265226522380482473

`record[n+1-A284468(n+1)*A284473(n+1)]`
-/

namespace A284469.P11265226522380482473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284468 (n + 1) * A284473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284469.P11265226522380482473

/-! ## A284469.P3587524846660799489

`eq[A000007(n), A284468(A028310(n))]`
-/

namespace A284469.P3587524846660799489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284468 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284469.P3587524846660799489

/-!
# A284470: Positions of 1 in A284468; complement of A284469.

The programs for A284470, there is no canonical definition to state claims against.
-/

/-! ## A284470.P5204397243308279763

`filter[n+1, A284468(#)]`
-/

namespace A284470.P5204397243308279763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284468 (f1 j) = 1) n)

end

end A284470.P5204397243308279763

/-! ## A284470.P2945023601622571831

`lt[0, A284468(n+1)]+1`
-/

namespace A284470.P2945023601622571831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284470.P2945023601622571831

/-! ## A284470.P9791356245017059484

`eq[1, A284468(n+2)]+2`
-/

namespace A284470.P9791356245017059484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284468 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284470.P9791356245017059484

/-! ## A284470.P10782314740945691945

`eq[1, A284468(A028310(n))]`
-/

namespace A284470.P10782314740945691945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284468 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284470.P10782314740945691945

/-! ## A284470.P8848927360294208701

`eq[1, A284468(A000007(n)+n)]`
-/

namespace A284470.P8848927360294208701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284468 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284470.P8848927360294208701

/-! ## A284470.P4654459826183131852

`A284472(3*n+1)-3*n`
-/

namespace A284470.P4654459826183131852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284472 (3 * n + 1) - (3 * n : ℤ)

end

end A284470.P4654459826183131852

/-! ## A284470.P14664282952395830318

`record[A284472(n+1)-A080029(n)]`
-/

namespace A284470.P14664282952395830318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284472 (n + 1) - A080029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284470.P14664282952395830318

/-!
# A284471: 1-limiting word of the morphism 0->1, 1->0100.

The programs for A284471, there is no canonical definition to state claims against.
-/

/-! ## A284471.P12178955685729636942

`char[A284473(n+1)-1]`
-/

namespace A284471.P12178955685729636942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284473 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284471.P12178955685729636942

/-! ## A284471.P9517190296657570487

`(A284470(n+1)-(n+1))%3`
-/

namespace A284471.P9517190296657570487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284470 (n + 1) - (n + 1 : ℤ)) 3

end

end A284471.P9517190296657570487

/-! ## A284471.P7632915983849802645

`A284487(Δ[A284470(n+1)])`
-/

namespace A284471.P7632915983849802645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (f1 (n + 1) - f1 n).toNat

end

end A284471.P7632915983849802645

/-! ## A284471.P11698926900767065676

`A354896(Δ[A284470(n+1)])`
-/

namespace A284471.P11698926900767065676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354896 (f1 (n + 1) - f1 n).toNat

end

end A284471.P11698926900767065676

/-! ## A284471.P3783219492140817227

`A237113(Δ[A284470(n+1)]+1)`
-/

namespace A284471.P3783219492140817227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237113 (f1 (n + 1) - f1 n + 1).toNat

end

end A284471.P3783219492140817227

/-! ## A284471.P4640048918318560701

`A000010(Δ[A284470(n+1)])-1`
-/

namespace A284471.P4640048918318560701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat - 1

end

end A284471.P4640048918318560701

/-! ## A284471.P8853301707598035829

`A000045(A000045(Δ[A284470(n+1)])-1)`
-/

namespace A284471.P8853301707598035829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000045 (f1 (n + 1) - f1 n).toNat - 1).toNat

end

end A284471.P8853301707598035829

/-! ## A284471.P4652727269421081540

`A154103((A284470(n+2)-A284470(n+1))²)`
-/

namespace A284471.P4652727269421081540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154103 ((A284470 (n + 2) - A284470 (n + 1)) ^ 2).toNat

end

end A284471.P4652727269421081540

/-! ## A284471.P4915439402175032823

`A000010(A284470(n+2)-A284470(n+1))-1`
-/

namespace A284471.P4915439402175032823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A284470 (n + 2) - A284470 (n + 1)).toNat - 1

end

end A284471.P4915439402175032823

/-!
# A284472: Positions of 0 in A284471; complement of A284473.

The programs for A284472, there is no canonical definition to state claims against.
-/

/-! ## A284472.P14882065526984161089

`eq[0, A284471(n+1)]+1`
-/

namespace A284472.P14882065526984161089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284472.P14882065526984161089

/-! ## A284472.P5095223578267278599

`eq[0, A284471(A028310(n))]`
-/

namespace A284472.P5095223578267278599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284471 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284472.P5095223578267278599

/-! ## A284472.P7298425022335131291

`eq[0, A284471(gcd(n, A008458(n)))]`
-/

namespace A284472.P7298425022335131291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284471 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284472.P7298425022335131291

/-! ## A284472.P3287435152954917385

`eq[char[A284473(n+1)], A000007(n)]`
-/

namespace A284472.P3287435152954917385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284472.P3287435152954917385

/-! ## A284472.P2823197007007312435

`eq[1, A000045(Δ[A284470(n+1)])]+1`
-/

namespace A284472.P2823197007007312435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284472.P2823197007007312435

/-! ## A284472.P13272043824296020975

`eq[2, A320402(Δ[A284470(n+1)]+1)]+1`
-/

namespace A284472.P13272043824296020975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284472.P13272043824296020975

/-!
# A284473: Positions of 1 in A284471; complement of A284472.

The programs for A284473, there is no canonical definition to state claims against.
-/

/-! ## A284473.P12119370718576750682

`filter[n+1, A284471(#)]`
-/

namespace A284473.P12119370718576750682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284471 (f1 j) = 1) n)

end

end A284473.P12119370718576750682

/-! ## A284473.P13091081186016282351

`lt[0, A284471(n+1)]+1`
-/

namespace A284473.P13091081186016282351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284473.P13091081186016282351

/-! ## A284473.P10672582433649649337

`record[(n+1)*A284471(n+2)+1]`
-/

namespace A284473.P10672582433649649337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284471 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284473.P10672582433649649337

/-! ## A284473.P2988729056905252939

`eq[1, A284471(A000038(n)+n)]`
-/

namespace A284473.P2988729056905252939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284471 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284473.P2988729056905252939

/-! ## A284473.P2613814579031649405

`record[A000027(n+1)*A284471(n+1)]`
-/

namespace A284473.P2613814579031649405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A284471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284473.P2613814579031649405

/-! ## A284473.P4460165602194126268

`eq[A057427(n), A284471(A028310(n))]`
-/

namespace A284473.P4460165602194126268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284471 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284473.P4460165602194126268

/-! ## A284473.P595349810356280708

`lt[A000007(n), A284471(A028310(n))]`
-/

namespace A284473.P595349810356280708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284471 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284473.P595349810356280708

/-! ## A284473.P3738402360866299599

`A284469(3*n+1)-3*n`
-/

namespace A284473.P3738402360866299599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284469 (3 * n + 1) - (3 * n : ℤ)

end

end A284473.P3738402360866299599

/-! ## A284473.P2967453103515521554

`record[A284469(n+1)-A080029(n)]`
-/

namespace A284473.P2967453103515521554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284469 (n + 1) - A080029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284473.P2967453103515521554

/-!
# A284475: Total number of parts in all partitions of n into equal parts, minus the total number of parts in all partitions of n into consecutive parts.

The programs for A284475, there is no canonical definition to state claims against.
-/

/-! ## A284475.P48551764054967970

`∑{d}[n+1, #]-A204217(n+1)`
-/

namespace A284475.P48551764054967970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A204217 (n + 1)

end

end A284475.P48551764054967970

/-! ## A284475.P3255861813431600372

`∑{d}[n+1, #]-A338616(n+1)/2`
-/

namespace A284475.P3255861813431600372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) - (A338616 (n + 1) : ℚ) / 2

end

end A284475.P3255861813431600372

/-! ## A284475.P18238378108884228845

`A353149(n+1)-∑{d}[n+1, #*#%2]`
-/

namespace A284475.P18238378108884228845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ)

end

end A284475.P18238378108884228845

/-! ## A284475.P14619071776357098084

`Δ[A160664(n)]-A204217(n+1)`
-/

namespace A284475.P14619071776357098084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A204217 (n + 1)

end

end A284475.P14619071776357098084

/-! ## A284475.P8675241233318057149

`A353154(n+1)+A146076(n+1)`
-/

namespace A284475.P8675241233318057149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353154 (n + 1) + A146076 (n + 1)

end

end A284475.P8675241233318057149

/-! ## A284475.P8476277719991552849

`A000203(n+1)-A204217(n+1)`
-/

namespace A284475.P8476277719991552849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A204217 (n + 1)

end

end A284475.P8476277719991552849

/-! ## A284475.P4484604689476711664

`A097012(n+1)-A204217(n+1)`
-/

namespace A284475.P4484604689476711664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097012 (n + 1) - A204217 (n + 1)

end

end A284475.P4484604689476711664

/-! ## A284475.P8604428207844297294

`A353149(n+1)-A000593(n+1)`
-/

namespace A284475.P8604428207844297294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) - A000593 (n + 1)

end

end A284475.P8604428207844297294

/-! ## A284475.P9222366210632988673

`A353149(n+1)-A318876(n+1)`
-/

namespace A284475.P9222366210632988673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) - A318876 (n + 1)

end

end A284475.P9222366210632988673

/-! ## A284475.P14811730629041277395

`A245092(2*n+1)-A204217(n+1)`
-/

namespace A284475.P14811730629041277395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A204217 (n + 1)

end

end A284475.P14811730629041277395

/-!
# A284476: Smallest number with same factorization shape as n.

The programs for A284476, there is no canonical definition to state claims against.
-/

/-! ## A284476.P5064523023330768958

`A037019(A369015(n+1))`
-/

namespace A284476.P5064523023330768958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (A369015 (n + 1)).toNat

end

end A284476.P5064523023330768958

/-! ## A284476.P16814726443143923786

`A369099(A055396(2*(n+2))*A369015(n+1))`
-/

namespace A284476.P16814726443143923786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369099 (A055396 (2 * (n + 2)) * A369015 (n + 1)).toNat

end

end A284476.P16814726443143923786

/-! ## A284476.P16101840042748685756

`A369099(A057427(2*(n+2))*A369015(n+1))`
-/

namespace A284476.P16101840042748685756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369099 (A057427 (2 * (n + 2)) * A369015 (n + 1)).toNat

end

end A284476.P16101840042748685756

/-! ## A284476.P7364353674248161506

`A395619(A359600(n+1))`
-/

namespace A284476.P7364353674248161506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395619 (A359600 (n + 1)).toNat

end

end A284476.P7364353674248161506

/-! ## A284476.P2552891305899965733

`A046523(n+1)/A336499(A066060(n+1))`
-/

namespace A284476.P2552891305899965733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) / (A336499 (A066060 (n + 1)).toNat : ℚ)

end

end A284476.P2552891305899965733

/-! ## A284476.P10654478183336019541

`gcd(A046523(n+1), A075369(A056106(n)))`
-/

namespace A284476.P10654478183336019541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046523 (n + 1)) (A075369 (A056106 n).toNat)

end

end A284476.P10654478183336019541

/-!
# A284477: Pairs of integers (x, y), such that x^2 + 1 and y^2 + 1, 1 < y < x, have the same distinct prime factors.

The programs for A284477, there is no canonical definition to state claims against.
-/

/-! ## A284477.P9088135617683607907

`A134836(A055109(n+1))-A055615(n+1)`
-/

namespace A284477.P9088135617683607907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134836 (A055109 (n + 1)).toNat - A055615 (n + 1)

end

end A284477.P9088135617683607907

/-!
# A284478: a(n) = A005185(n) - A055748(n).

The programs for A284478, the canonical program `A284478.P17703318329199154233` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284478 has offset 1).

The definition of A284478 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055748, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284478.P17703318329199154233

`A005185(n+1)-A055748(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284478

/-- `A005185(n+1)-A055748(n+1)` -/
def P17703318329199154233.Spec : Prop :=
  ∀ n, P17703318329199154233.a n = A284478 (n + 1)

theorem P17703318329199154233.correct : P17703318329199154233.Spec := by
  intro n
  simp only [A284478, Nat.add_sub_cancel]

end A284478

/-! ## A284478.P232968969424541136

`∑[A081827(A028310(n))]+1-A055748(n+1)`
-/

namespace A284478.P232968969424541136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A055748 (n + 1)

end

end A284478.P232968969424541136

namespace A284478

/-- `∑[A081827(A028310(n))]+1-A055748(n+1)` -/
def P232968969424541136.Spec : Prop :=
  ∀ n, P232968969424541136.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P13957694497793324879

`A004001(n+1)-(A284019(n+1)+A055748(n+1))`
-/

namespace A284478.P13957694497793324879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - (A284019 (n + 1) + A055748 (n + 1))

end

end A284478.P13957694497793324879

namespace A284478

/-- `A004001(n+1)-(A284019(n+1)+A055748(n+1))` -/
def P13957694497793324879.Spec : Prop :=
  ∀ n, P13957694497793324879.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P16261757804741016797

`∑[A081827(n+1)]+1-A081827(n+1)-A055748(n+1)`
-/

namespace A284478.P16261757804741016797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A081827 (n + 1)) - A055748 (n + 1)

end

end A284478.P16261757804741016797

namespace A284478

/-- `∑[A081827(n+1)]+1-A081827(n+1)-A055748(n+1)` -/
def P16261757804741016797.Spec : Prop :=
  ∀ n, P16261757804741016797.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P17355600188316781951

`2-A080677(n+1)+n-(A284019(n+1)+A055748(n+1))`
-/

namespace A284478.P17355600188316781951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080677 (n + 1) + (n : ℤ) - (A284019 (n + 1) + A055748 (n + 1))

end

end A284478.P17355600188316781951

namespace A284478

/-- `2-A080677(n+1)+n-(A284019(n+1)+A055748(n+1))` -/
def P17355600188316781951.Spec : Prop :=
  ∀ n, P17355600188316781951.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P2453584922815025863

`(A004074(n+1)+n+1)/2-(A284019(n+1)+A055748(n+1))`
-/

namespace A284478.P2453584922815025863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004074 (n + 1) + (n + 1 : ℤ) : ℚ) / 2 - (A284019 (n + 1) + A055748 (n + 1) : ℚ)

end

end A284478.P2453584922815025863

namespace A284478

/-- `(A004074(n+1)+n+1)/2-(A284019(n+1)+A055748(n+1))` -/
def P2453584922815025863.Spec : Prop :=
  ∀ n, P2453584922815025863.a n = (A284478 (n + 1) : ℚ)

end A284478

/-! ## A284478.P840908534589620437

`A005185(A000027(n+1))+A001478(A055748(n+1))`
-/

namespace A284478.P840908534589620437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A000027 (n + 1)).toNat + A001478 (A055748 (n + 1)).toNat

end

end A284478.P840908534589620437

namespace A284478

/-- `A005185(A000027(n+1))+A001478(A055748(n+1))` -/
def P840908534589620437.Spec : Prop :=
  ∀ n, P840908534589620437.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P7751510290519990802

`A283472(n+1)+A283469(n+1)-A055748(n+1)-A284019(n+1)`
-/

namespace A284478.P7751510290519990802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (n + 1) + A283469 (n + 1) - A055748 (n + 1) - A284019 (n + 1)

end

end A284478.P7751510290519990802

namespace A284478

/-- `A283472(n+1)+A283469(n+1)-A055748(n+1)-A284019(n+1)` -/
def P7751510290519990802.Spec : Prop :=
  ∀ n, P7751510290519990802.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P5537582307006868853

`A283470(n+1)+2*A283472(n+1)-(A284019(n+1)+A055748(n+1))`
-/

namespace A284478.P5537582307006868853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283470 (n + 1) + 2 * A283472 (n + 1) - (A284019 (n + 1) + A055748 (n + 1))

end

end A284478.P5537582307006868853

namespace A284478

/-- `A283470(n+1)+2*A283472(n+1)-(A284019(n+1)+A055748(n+1))` -/
def P5537582307006868853.Spec : Prop :=
  ∀ n, P5537582307006868853.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P8546299111811519908

`A008619(A004074(n+1)+n)-A055748(n+1)-A284019(n+1)`
-/

namespace A284478.P8546299111811519908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004074 (n + 1) + (n : ℤ)).toNat - A055748 (n + 1) - A284019 (n + 1)

end

end A284478.P8546299111811519908

namespace A284478

/-- `A008619(A004074(n+1)+n)-A055748(n+1)-A284019(n+1)` -/
def P8546299111811519908.Spec : Prop :=
  ∀ n, P8546299111811519908.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P5111413048731808479

`A109168(A004074(n+1)+n)-A055748(n+1)-A284019(n+1)`
-/

namespace A284478.P5111413048731808479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A004074 (n + 1) + (n : ℤ)).toNat - A055748 (n + 1) - A284019 (n + 1)

end

end A284478.P5111413048731808479

namespace A284478

/-- `A109168(A004074(n+1)+n)-A055748(n+1)-A284019(n+1)` -/
def P5111413048731808479.Spec : Prop :=
  ∀ n, P5111413048731808479.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P15758441069577876075

`A140472(A004074(n+1)+n)-A284019(n+1)-A055748(n+1)`
-/

namespace A284478.P15758441069577876075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A004074 (n + 1) + (n : ℤ)).toNat - A284019 (n + 1) - A055748 (n + 1)

end

end A284478.P15758441069577876075

namespace A284478

/-- `A140472(A004074(n+1)+n)-A284019(n+1)-A055748(n+1)` -/
def P15758441069577876075.Spec : Prop :=
  ∀ n, P15758441069577876075.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P9777398194680279196

`A030451(A004074(n+1)+1+n)-A055748(n+1)-A284019(n+1)`
-/

namespace A284478.P9777398194680279196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A004074 (n + 1) + 1 + (n : ℤ)).toNat - A055748 (n + 1) - A284019 (n + 1)

end

end A284478.P9777398194680279196

namespace A284478

/-- `A030451(A004074(n+1)+1+n)-A055748(n+1)-A284019(n+1)` -/
def P9777398194680279196.Spec : Prop :=
  ∀ n, P9777398194680279196.a n = A284478 (n + 1)

end A284478

/-! ## A284478.P13333411529915105354

`∑[A081827(A123108(2*n))]+1-A055748(n+1)`
-/

namespace A284478.P13333411529915105354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A055748 (n + 1)

end

end A284478.P13333411529915105354

namespace A284478

/-- `∑[A081827(A123108(2*n))]+1-A055748(n+1)` -/
def P13333411529915105354.Spec : Prop :=
  ∀ n, P13333411529915105354.a n = A284478 (n + 1)

end A284478

/-!
# A284479: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 950", based on the 5-celled von Neumann neighborhood.

The programs for A284479, there is no canonical definition to state claims against.
-/

/-! ## A284479.P2008605430111800693

`A007088(A284481(n))`
-/

namespace A284479.P2008605430111800693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284481 n).toNat

end

end A284479.P2008605430111800693

/-! ## A284479.P14332425089037635402

`A007088(or(A006977(n), A284181(n)))`
-/

namespace A284479.P14332425089037635402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A006977 n) (A284181 n)).toNat

end

end A284479.P14332425089037635402

/-! ## A284479.P937304105794197402

`A007088(or(A305750(n)-1, A283752(n)))`
-/

namespace A284479.P937304105794197402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A305750 n - 1) (A283752 n)).toNat

end

end A284479.P937304105794197402

/-! ## A284479.P522412345522886532

`A305989(A284482(n))`
-/

namespace A284479.P522412345522886532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284482 n).toNat

end

end A284479.P522412345522886532

/-! ## A284479.P17381081671485069288

`A305989(or(A097073(n), A283905(n)))`
-/

namespace A284479.P17381081671485069288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A097073 n) (A283905 n)).toNat

end

end A284479.P17381081671485069288

/-!
# A284480: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 950", based on the 5-celled von Neumann neighborhood.

The programs for A284480, there is no canonical definition to state claims against.
-/

/-! ## A284480.P1623803503844041064

`A007088(A284482(n))`
-/

namespace A284480.P1623803503844041064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284482 n).toNat

end

end A284480.P1623803503844041064

/-! ## A284480.P8953239200301849291

`A007088(or(A097073(n), A283905(n)))`
-/

namespace A284480.P8953239200301849291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A097073 n) (A283905 n)).toNat

end

end A284480.P8953239200301849291

/-! ## A284480.P9931791175442324819

`A007088(or(A118173(n), A284182(n)))`
-/

namespace A284480.P9931791175442324819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A118173 n) (A284182 n)).toNat

end

end A284480.P9931791175442324819

/-! ## A284480.P8438677734050242106

`A305989(A284481(n))`
-/

namespace A284480.P8438677734050242106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284481 n).toNat

end

end A284480.P8438677734050242106

/-! ## A284480.P9803319374503692209

`A305989(or(A006977(n), A284181(n)))`
-/

namespace A284480.P9803319374503692209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A006977 n) (A284181 n)).toNat

end

end A284480.P9803319374503692209

/-!
# A284481: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 950", based on the 5-celled von Neumann neighborhood.

The programs for A284481, the canonical program `A284481.P17001936877149840004` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284481 has offset 0).

The definition of A284481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284481.P17001936877149840004

`a(n-1)+16*a(n-4)-16*a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=15, a(4)=23, a(5)=63, a(6)=95, a(7)=239, a(8)=383`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284481

/-- `a(n-1)+16*a(n-4)-16*a(n-5)` -/
def P17001936877149840004.Spec : Prop :=
  ∀ n, P17001936877149840004.a n = A284481 n

theorem P17001936877149840004.correct : P17001936877149840004.Spec := by
  intro n
  simp only [A284481]

end A284481

/-! ## A284481.P16553171305640651182

`or(A006977(n), A284181(n))`
-/

namespace A284481.P16553171305640651182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006977 n) (A284181 n)

end

end A284481.P16553171305640651182

namespace A284481

/-- `or(A006977(n), A284181(n))` -/
def P16553171305640651182.Spec : Prop :=
  ∀ n, P16553171305640651182.a n = A284481 n

end A284481

/-! ## A284481.P15928788659720977108

`or(A305750(n)-1, A283752(n))`
-/

namespace A284481.P15928788659720977108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305750 n - 1) (A283752 n)

end

end A284481.P15928788659720977108

namespace A284481

/-- `or(A305750(n)-1, A283752(n))` -/
def P15928788659720977108.Spec : Prop :=
  ∀ n, P15928788659720977108.a n = A284481 n

end A284481

/-! ## A284481.P15284261324062724816

`or(A305750(n)%A011782(n), A283752(n))`
-/

namespace A284481.P15284261324062724816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A305750 n) (A011782 n)) (A283752 n)

end

end A284481.P15284261324062724816

namespace A284481

/-- `or(A305750(n)%A011782(n), A283752(n))` -/
def P15284261324062724816.Spec : Prop :=
  ∀ n, P15284261324062724816.a n = A284481 n

end A284481

/-! ## A284481.P16092162508267234047

`or(A283752(n), A325401(A305750(n)))`
-/

namespace A284481.P16092162508267234047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283752 n) (A325401 (A305750 n).toNat)

end

end A284481.P16092162508267234047

namespace A284481

/-- `or(A283752(n), A325401(A305750(n)))` -/
def P16092162508267234047.Spec : Prop :=
  ∀ n, P16092162508267234047.a n = A284481 n

end A284481

/-!
# A284482: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 950", based on the 5-celled von Neumann neighborhood.

The programs for A284482, the canonical program `A284482.P16055834481799008568` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284482 has offset 0).

The definition of A284482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284482.P16055834481799008568

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=15, a(4)=29, a(5)=63, a(6)=125, a(7)=247, a(8)=509`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284482

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P16055834481799008568.Spec : Prop :=
  ∀ n, P16055834481799008568.a n = A284482 n

theorem P16055834481799008568.correct : P16055834481799008568.Spec := by
  intro n
  simp only [A284482]

end A284482

/-! ## A284482.P13312896320087007517

`or(A097073(n), A283905(n))`
-/

namespace A284482.P13312896320087007517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097073 n) (A283905 n)

end

end A284482.P13312896320087007517

namespace A284482

/-- `or(A097073(n), A283905(n))` -/
def P13312896320087007517.Spec : Prop :=
  ∀ n, P13312896320087007517.a n = A284482 n

end A284482

/-! ## A284482.P16688556608536433064

`or(A118173(n), A284182(n))`
-/

namespace A284482.P16688556608536433064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118173 n) (A284182 n)

end

end A284482.P16688556608536433064

namespace A284482

/-- `or(A118173(n), A284182(n))` -/
def P16688556608536433064.Spec : Prop :=
  ∀ n, P16688556608536433064.a n = A284482 n

end A284482

/-! ## A284482.P8116331663254393652

`and(A126646(n), A264618(A284481(n)))`
-/

namespace A284482.P8116331663254393652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284481 n).toNat)

end

end A284482.P8116331663254393652

namespace A284482

/-- `and(A126646(n), A264618(A284481(n)))` -/
def P8116331663254393652.Spec : Prop :=
  ∀ n, P8116331663254393652.a n = A284482 n

end A284482

/-! ## A284482.P17043245116517149296

`or(A004273(A001045(n)), A283905(n))`
-/

namespace A284482.P17043245116517149296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004273 (A001045 n).toNat) (A283905 n)

end

end A284482.P17043245116517149296

namespace A284482

/-- `or(A004273(A001045(n)), A283905(n))` -/
def P17043245116517149296.Spec : Prop :=
  ∀ n, P17043245116517149296.a n = A284482 n

end A284482

/-!
# A284483: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A284483, the canonical program `A284483.P4989402952069662796` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284483 has offset 0).

The definition of A284483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284483.P8779714092818046262

`∑[10^n]-(11^(n%2)-Δ[round((n-3)/2)])`
-/

namespace A284483.P8779714092818046262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((11 ^ (n % 2) : ℤ) - (f2 (n + 1) - f2 n))

end

end A284483.P8779714092818046262

namespace A284483

/-- `∑[10^n]-(11^(n%2)-Δ[round((n-3)/2)])` -/
def P8779714092818046262.Spec : Prop :=
  ∀ n, P8779714092818046262.a n = A284483 n

end A284483

/-! ## A284483.P8549650161327338211

`∑[10^n]-10*and(1, n)-char[A209161(n+1)]`
-/

namespace A284483.P8549650161327338211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209161 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (10 * Nat.land 1 n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284483.P8549650161327338211

namespace A284483

/-- `∑[10^n]-10*and(1, n)-char[A209161(n+1)]` -/
def P8549650161327338211.Spec : Prop :=
  ∀ n, P8549650161327338211.a n = A284483 n

end A284483

/-! ## A284483.P1886707518248099276

`A284351(n)-char[A103517(n)]`
-/

namespace A284483.P1886707518248099276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284351 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284483.P1886707518248099276

namespace A284483

/-- `A284351(n)-char[A103517(n)]` -/
def P1886707518248099276.Spec : Prop :=
  ∀ n, P1886707518248099276.a n = A284483 n

end A284483

/-! ## A284483.P4989402952069662796

`A284351(n)-A000035(A007920(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284483

/-- `A284351(n)-A000035(A007920(n))` -/
def P4989402952069662796.Spec : Prop :=
  ∀ n, P4989402952069662796.a n = A284483 n

theorem P4989402952069662796.correct : P4989402952069662796.Spec := by
  intro n
  simp only [A284483]

end A284483

/-! ## A284483.P11227196912588627870

`A007088(or(A283650(n), A284237(n)))`
-/

namespace A284483.P11227196912588627870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A283650 n) (A284237 n)).toNat

end

end A284483.P11227196912588627870

namespace A284483

/-- `A007088(or(A283650(n), A284237(n)))` -/
def P11227196912588627870.Spec : Prop :=
  ∀ n, P11227196912588627870.a n = A284483 n

end A284483

/-!
# A284484: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A284484, there is no canonical definition to state claims against.
-/

/-! ## A284484.P5373345525040980617

`A007088(A284485(n))`
-/

namespace A284484.P5373345525040980617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284485 n).toNat

end

end A284484.P5373345525040980617

/-! ## A284484.P13833593828230423770

`A007088(or(A283085(n), A283651(n)))`
-/

namespace A284484.P13833593828230423770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A283085 n) (A283651 n)).toNat

end

end A284484.P13833593828230423770

/-! ## A284484.P5568356871502821617

`A007088(or(A283138(n), A283651(n)))`
-/

namespace A284484.P5568356871502821617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A283138 n) (A283651 n)).toNat

end

end A284484.P5568356871502821617

/-! ## A284484.P10102710514876333777

`A007088(or(A283181(n), A283651(n)))`
-/

namespace A284484.P10102710514876333777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A283181 n) (A283651 n)).toNat

end

end A284484.P10102710514876333777

/-! ## A284484.P417485348862111276

`A007088(or(A283220(n), A283651(n)))`
-/

namespace A284484.P417485348862111276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A283220 n) (A283651 n)).toNat

end

end A284484.P417485348862111276

/-!
# A284485: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A284485, the canonical program `A284485.P4189286303437747134` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284485 has offset 0).

The definition of A284485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284485.P4189286303437747134

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=7, a(3)=11, a(4)=15, a(5)=47`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284485

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P4189286303437747134.Spec : Prop :=
  ∀ n, P4189286303437747134.a n = A284485 n

theorem P4189286303437747134.correct : P4189286303437747134.Spec := by
  intro n
  simp only [A284485]

end A284485

/-! ## A284485.P6418949464822306451

`or(A283085(n), A283651(n))`
-/

namespace A284485.P6418949464822306451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283085 n) (A283651 n)

end

end A284485.P6418949464822306451

namespace A284485

/-- `or(A283085(n), A283651(n))` -/
def P6418949464822306451.Spec : Prop :=
  ∀ n, P6418949464822306451.a n = A284485 n

end A284485

/-! ## A284485.P12085052028766102611

`or(A283138(n), A283651(n))`
-/

namespace A284485.P12085052028766102611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283138 n) (A283651 n)

end

end A284485.P12085052028766102611

namespace A284485

/-- `or(A283138(n), A283651(n))` -/
def P12085052028766102611.Spec : Prop :=
  ∀ n, P12085052028766102611.a n = A284485 n

end A284485

/-! ## A284485.P8153760680969354089

`or(A283181(n), A283651(n))`
-/

namespace A284485.P8153760680969354089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283181 n) (A283651 n)

end

end A284485.P8153760680969354089

namespace A284485

/-- `or(A283181(n), A283651(n))` -/
def P8153760680969354089.Spec : Prop :=
  ∀ n, P8153760680969354089.a n = A284485 n

end A284485

/-! ## A284485.P1132242663842324474

`or(A283220(n), A283651(n))`
-/

namespace A284485.P1132242663842324474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283220 n) (A283651 n)

end

end A284485.P1132242663842324474

namespace A284485

/-- `or(A283220(n), A283651(n))` -/
def P1132242663842324474.Spec : Prop :=
  ∀ n, P1132242663842324474.a n = A284485 n

end A284485

/-! ## A284485.P18066426254534343843

`or(A283402(n), A283651(n))`
-/

namespace A284485.P18066426254534343843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283402 n) (A283651 n)

end

end A284485.P18066426254534343843

namespace A284485

/-- `or(A283402(n), A283651(n))` -/
def P18066426254534343843.Spec : Prop :=
  ∀ n, P18066426254534343843.a n = A284485 n

end A284485

/-! ## A284485.P12930154500532202715

`or(A283651(n), A284238(n))`
-/

namespace A284485.P12930154500532202715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283651 n) (A284238 n)

end

end A284485.P12930154500532202715

namespace A284485

/-- `or(A283651(n), A284238(n))` -/
def P12930154500532202715.Spec : Prop :=
  ∀ n, P12930154500532202715.a n = A284485 n

end A284485

/-! ## A284485.P6605589260233234763

`xor(A131577(n), A290829(n))`
-/

namespace A284485.P6605589260233234763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131577 n) (A290829 n)

end

end A284485.P6605589260233234763

namespace A284485

/-- `xor(A131577(n), A290829(n))` -/
def P6605589260233234763.Spec : Prop :=
  ∀ n, P6605589260233234763.a n = A284485 n

end A284485

/-!
# A284486: The lexicographically earliest table read by antidiagonals such that any value appears at most twice on any straight line (of any slope).

The programs for A284486, there is no canonical definition to state claims against.
-/

/-! ## A284486.P7760108848412403421

`A043562(A262811(n+3)+A120039(n))`
-/

namespace A284486.P7760108848412403421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A262811 (n + 3) + A120039 n).toNat

end

end A284486.P7760108848412403421

/-! ## A284486.P9201545838632821814

`A001221(3*A036592(n))`
-/

namespace A284486.P9201545838632821814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * A036592 n).toNat

end

end A284486.P9201545838632821814

/-! ## A284486.P1678823635670542827

`A001221(lcm(3, A036592(n)))`
-/

namespace A284486.P1678823635670542827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 3 (A036592 n))

end

end A284486.P1678823635670542827

/-! ## A284486.P12008586239285867112

`A001221(A003973(or(2, A342020(n))))`
-/

namespace A284486.P12008586239285867112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003973 (Int.lor 2 (A342020 n)).toNat).toNat

end

end A284486.P12008586239285867112

/-! ## A284486.P917000523062831480

`A115623(A354784(n)+A075370(n))`
-/

namespace A284486.P917000523062831480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A354784 n + A075370 n).toNat

end

end A284486.P917000523062831480

/-!
# A284487: 0-limiting word of the morphism 0->1, 1->0011.

The programs for A284487, there is no canonical definition to state claims against.
-/

/-! ## A284487.P17754734511791060941

`A284533(∑[char[2*n]])`
-/

namespace A284487.P17754734511791060941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284487.P17754734511791060941

/-! ## A284487.P8916697524248487556

`char[A284489(n+1)-1]`
-/

namespace A284487.P8916697524248487556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284487.P8916697524248487556

/-! ## A284487.P14454171976493466805

`1-char[A284488(n+1)-1]`
-/

namespace A284487.P14454171976493466805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284487.P14454171976493466805

/-! ## A284487.P11725382910599653777

`char[abs(n+1-A285141(n+1))]`
-/

namespace A284487.P11725382910599653777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A285141 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284487.P11725382910599653777

/-! ## A284487.P14764331470195831162

`and(1, A284533(A008619(n)))`
-/

namespace A284487.P14764331470195831162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284533 (A008619 n).toNat)

end

end A284487.P14764331470195831162

/-! ## A284487.P14316084796676719596

`and(1, A284533(A008621(2*n+1)))`
-/

namespace A284487.P14316084796676719596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284533 (A008621 (2 * n + 1)).toNat)

end

end A284487.P14316084796676719596

/-! ## A284487.P1452709693446588839

`and(A000040(A333946(n+2)), A284505(n+3))`
-/

namespace A284487.P1452709693446588839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A333946 (n + 2)).toNat) (A284505 (n + 3))

end

end A284487.P1452709693446588839

/-! ## A284487.P4770225123717355116

`and(A000040(A317085(n)), A284505(n+3))`
-/

namespace A284487.P4770225123717355116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A317085 n).toNat) (A284505 (n + 3))

end

end A284487.P4770225123717355116

/-! ## A284487.P6622990671422479663

`and(A168056(A317085(n+3)), A284505(n+3))`
-/

namespace A284487.P6622990671422479663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168056 (A317085 (n + 3)).toNat) (A284505 (n + 3))

end

end A284487.P6622990671422479663

/-!
# A284488: Positions of 0 in A284487; complement of A284489.

The programs for A284488, there is no canonical definition to state claims against.
-/

/-! ## A284488.P1635857833896148988

`A285144(floor(n/2)+1)+n`
-/

namespace A284488.P1635857833896148988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n : ℤ)

end

end A284488.P1635857833896148988

/-! ## A284488.P5414638631414892256

`record[(n+1)*(1-A284487(n+1))]`
-/

namespace A284488.P5414638631414892256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A284487 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284488.P5414638631414892256

/-! ## A284488.P13437260942389354351

`lt[n*A284487(A028310(n)), n]`
-/

namespace A284488.P13437260942389354351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284487 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284488.P13437260942389354351

/-! ## A284488.P3306095856465881402

`eq[char[A284489(n+1)], A000038(n)]`
-/

namespace A284488.P3306095856465881402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284488.P3306095856465881402

/-! ## A284488.P16467279587050079176

`eq[A000007(n), A284487(A028310(n))]`
-/

namespace A284488.P16467279587050079176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284488.P16467279587050079176

/-! ## A284488.P5185722668431192681

`eq[A000038(n), A284487(A028310(n))]`
-/

namespace A284488.P5185722668431192681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284488.P5185722668431192681

/-! ## A284488.P18262044930889250077

`lt[A284487(A028310(n)), A057427(n)]`
-/

namespace A284488.P18262044930889250077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284488.P18262044930889250077

/-! ## A284488.P16971754412656317914

`lt[A284487(A028310(n)), A284487(n+2)]`
-/

namespace A284488.P16971754412656317914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284488.P16971754412656317914

/-! ## A284488.P14461350805848633829

`eq[A000038(n), A284487(A000038(n)+n)]`
-/

namespace A284488.P14461350805848633829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284488.P14461350805848633829

/-! ## A284488.P17597797682424635565

`A284491(n+1)-2*A284487(A284491(n+1))`
-/

namespace A284488.P17597797682424635565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 (n + 1) - 2 * A284487 (A284491 (n + 1)).toNat

end

end A284488.P17597797682424635565

/-! ## A284488.P17717147170869648289

`eq[A000038(n), A284487(A123108(2*n))]`
-/

namespace A284488.P17717147170869648289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284488.P17717147170869648289

/-! ## A284488.P5251373044895292608

`record[A175676(A284487(n+1)+3*(n+1))]`
-/

namespace A284488.P5251373044895292608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A284487 (n + 1) + (3 * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284488.P5251373044895292608

/-!
# A284489: Positions of 1 in A284487; complement of A284488.

The programs for A284489, there is no canonical definition to state claims against.
-/

/-! ## A284489.P651877759030733116

`A285141(n+1)-n`
-/

namespace A284489.P651877759030733116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 (n + 1) - (n : ℤ)

end

end A284489.P651877759030733116

/-! ## A284489.P13972547120742817169

`A285422(n+1)-2*n`
-/

namespace A284489.P13972547120742817169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1) - (2 * n : ℤ)

end

end A284489.P13972547120742817169

/-! ## A284489.P11084252688347358844

`∑[2*A285142(n+1)+1]`
-/

namespace A284489.P11084252688347358844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285142 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284489.P11084252688347358844

/-! ## A284489.P5157684503723576073

`comp[A284488(n+1)-1]+1`
-/

namespace A284489.P5157684503723576073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284489.P5157684503723576073

/-! ## A284489.P11227033597712887340

`2*A285420(n+1)-(n+1)`
-/

namespace A284489.P11227033597712887340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285420 (n + 1) - (n + 1 : ℤ)

end

end A284489.P11227033597712887340

/-! ## A284489.P4957986626402898987

`A004273(A285420(n+1)-n)+n`
-/

namespace A284489.P4957986626402898987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285420 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A284489.P4957986626402898987

/-! ## A284489.P1659173985410442665

`∑[A000203(and(1-n, A285142(n+1))+1)]`
-/

namespace A284489.P1659173985410442665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.land (1 - (n : ℤ)) (A285142 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284489.P1659173985410442665

/-! ## A284489.P17389756478680760178

`A001489(n)+A285422(n+1)+A001489(n)`
-/

namespace A284489.P17389756478680760178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A285422 (n + 1) + A001489 n)

end

end A284489.P17389756478680760178

/-! ## A284489.P9433436382200387007

`A004273(A285420(n+1))-n`
-/

namespace A284489.P9433436382200387007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285420 (n + 1)).toNat - (n : ℤ)

end

end A284489.P9433436382200387007

/-! ## A284489.P4287648624864670954

`A004277(∑[A285142(n+1)+1])-1-n`
-/

namespace A284489.P4287648624864670954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1 - (n : ℤ)

end

end A284489.P4287648624864670954

/-! ## A284489.P2684837848960502907

`filter[n+1, A284487(#)]`
-/

namespace A284489.P2684837848960502907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284487 (f1 j) = 1) n)

end

end A284489.P2684837848960502907

/-! ## A284489.P14776683277469208934

`lt[0, A284487(A028310(n))]`
-/

namespace A284489.P14776683277469208934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284489.P14776683277469208934

/-! ## A284489.P6457283332011478830

`eq[1, A284487(A000038(n)+n)]`
-/

namespace A284489.P6457283332011478830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284489.P6457283332011478830

/-! ## A284489.P3559053500251034298

`A028310(A285422(n+1)-n-n)`
-/

namespace A284489.P3559053500251034298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A285422 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A284489.P3559053500251034298

/-! ## A284489.P5160985358312723393

`A284491(Δ[n²])-n-2*n`
-/

namespace A284489.P5160985358312723393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ) - (2 * n : ℤ)

end

end A284489.P5160985358312723393

/-! ## A284489.P4377380734233873061

`A284773(A284589(n+1))-2*n`
-/

namespace A284489.P4377380734233873061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (A284589 (n + 1)).toNat - (2 * n : ℤ)

end

end A284489.P4377380734233873061

/-! ## A284489.P15356924585406827552

`A004277(A285422(n+1)-n)-A285422(n+1)`
-/

namespace A284489.P15356924585406827552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A285422 (n + 1) - (n : ℤ)).toNat - A285422 (n + 1)

end

end A284489.P15356924585406827552

/-! ## A284489.P1086843181648499641

`eq[1, A284487(A123108(2*n))]`
-/

namespace A284489.P1086843181648499641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284489.P1086843181648499641

/-!
# A284490: 1-limiting word of the morphism 0->1, 1->0011.

The programs for A284490, there is no canonical definition to state claims against.
-/

/-! ## A284490.P8200293918372983173

`A284588(∑[char[2*n]])`
-/

namespace A284490.P8200293918372983173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284588 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284490.P8200293918372983173

/-! ## A284490.P7054510950389994991

`char[A284492(n+1)-1]`
-/

namespace A284490.P7054510950389994991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284492 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284490.P7054510950389994991

/-! ## A284490.P14030280567513002924

`1-char[A284491(n+1)-1]`
-/

namespace A284490.P14030280567513002924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284490.P14030280567513002924

/-! ## A284490.P14904819390265849521

`char[A285144(n+1)-(n+1)]`
-/

namespace A284490.P14904819390265849521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284490.P14904819390265849521

/-! ## A284490.P11504529363617688628

`round((A284588(A008619(n))+2)/6)`
-/

namespace A284490.P11504529363617688628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284588 (A008619 n).toNat + 2 : ℚ) / 6)

end

end A284490.P11504529363617688628

/-! ## A284490.P12076335142181759952

`log2(Δ[comp[A285144(n+1)]])`
-/

namespace A284490.P12076335142181759952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A284490.P12076335142181759952

/-! ## A284490.P11543244367218918726

`A001222(Δ[comp[A285144(n+1)]])`
-/

namespace A284490.P11543244367218918726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284490.P11543244367218918726

/-! ## A284490.P3585048891577327744

`A001222(Δ[comp[A285419(n+1)-n]])`
-/

namespace A284490.P3585048891577327744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284490.P3585048891577327744

/-! ## A284490.P17738838057489677439

`A074080(Δ[comp[A285419(n+1)-n]])`
-/

namespace A284490.P17738838057489677439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074080 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284490.P17738838057489677439

/-! ## A284490.P13642182877213706523

`A265859(Δ[comp[A285419(n+1)-n]])`
-/

namespace A284490.P13642182877213706523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265859 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284490.P13642182877213706523

/-! ## A284490.P18393123125087897066

`A285418(Δ[comp[A285419(n+1)-n]])`
-/

namespace A284490.P18393123125087897066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284490.P18393123125087897066

/-! ## A284490.P18239683624322822237

`A285142(A285143(n+1)-1)`
-/

namespace A284490.P18239683624322822237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (A285143 (n + 1) - 1).toNat

end

end A284490.P18239683624322822237

/-! ## A284490.P7972242753095583656

`A285142(lt[A285142(n+1), 1])`
-/

namespace A284490.P7972242753095583656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A284490.P7972242753095583656

/-! ## A284490.P15344949436123889790

`A285142(eq[1, A285142(n+1)+1])`
-/

namespace A284490.P15344949436123889790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284490.P15344949436123889790

/-!
# A284491: Positions of 0 in A284490; complement of A284492.

The programs for A284491, there is no canonical definition to state claims against.
-/

/-! ## A284491.P17608778821396446393

`A285141(∑[(n+1)%2])+n`
-/

namespace A284491.P17608778821396446393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A284491.P17608778821396446393

/-! ## A284491.P7201821925578074005

`A285141(∑[and(1, n+1)])+n`
-/

namespace A284491.P7201821925578074005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A284491.P7201821925578074005

/-! ## A284491.P1114345428769066659

`A285141(floor(∑[n+1]/(n+1)))+n`
-/

namespace A284491.P1114345428769066659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋.toNat + (n : ℤ)

end

end A284491.P1114345428769066659

/-! ## A284491.P11479853816481812734

`eq[0, A284490(n+1)]+1`
-/

namespace A284491.P11479853816481812734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284491.P11479853816481812734

/-! ## A284491.P13422754679785756497

`eq[1, Δ[comp[A285144(n+1)]]]+1`
-/

namespace A284491.P13422754679785756497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284491.P13422754679785756497

/-! ## A284491.P1997130527769321595

`eq[0, A284490(A028310(n))]`
-/

namespace A284491.P1997130527769321595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284491.P1997130527769321595

/-! ## A284491.P2412970284733504955

`A284488(n+1)+2*A284490(A284488(n+1))`
-/

namespace A284491.P2412970284733504955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (n + 1) + 2 * A284490 (A284488 (n + 1)).toNat

end

end A284491.P2412970284733504955

/-! ## A284491.P8146129591773193985

`eq[0, A285142(A285143(n+1)-1)]+1`
-/

namespace A284491.P8146129591773193985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (A285143 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284491.P8146129591773193985

/-!
# A284492: Positions of 1 in A284490; complement of A284491.

The programs for A284492, there is no canonical definition to state claims against.
-/

/-! ## A284492.P10860581016469814508

`A285144(n+1)-n`
-/

namespace A284492.P10860581016469814508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) - (n : ℤ)

end

end A284492.P10860581016469814508

/-! ## A284492.P17557021312456344157

`A285419(n+1)-2*n`
-/

namespace A284492.P17557021312456344157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1) - (2 * n : ℤ)

end

end A284492.P17557021312456344157

/-! ## A284492.P8957901420887714043

`∑[2*A285139(n+1)+1]`
-/

namespace A284492.P8957901420887714043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285139 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284492.P8957901420887714043

/-! ## A284492.P13660542448816669902

`comp[A284491(n+1)-1]+1`
-/

namespace A284492.P13660542448816669902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284492.P13660542448816669902

/-! ## A284492.P14368232290445906672

`2*A285423(n+1)-(n+1)`
-/

namespace A284492.P14368232290445906672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285423 (n + 1) - (n + 1 : ℤ)

end

end A284492.P14368232290445906672

/-! ## A284492.P16062947302653339454

`A004273(A285423(n+1)-n)+n`
-/

namespace A284492.P16062947302653339454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285423 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A284492.P16062947302653339454

/-! ## A284492.P4593103257846012409

`A285423(n+1)+∑[A285139(n+1)]`
-/

namespace A284492.P4593103257846012409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284492.P4593103257846012409

/-! ## A284492.P14126583502292638836

`A001489(n)+A285419(n+1)+A001489(n)`
-/

namespace A284492.P14126583502292638836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A285419 (n + 1) + A001489 n)

end

end A284492.P14126583502292638836

/-! ## A284492.P494757334982106583

`∑[A027960(1-Δ[A285139(n+1)])]`
-/

namespace A284492.P494757334982106583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (1 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284492.P494757334982106583

/-! ## A284492.P8495744722585556512

`A004273(A285423(n+1))-n`
-/

namespace A284492.P8495744722585556512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285423 (n + 1)).toNat - (n : ℤ)

end

end A284492.P8495744722585556512

/-! ## A284492.P17679314563685403122

`filter[n+1, A284490(#)]`
-/

namespace A284492.P17679314563685403122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284490 (f1 j) = 1) n)

end

end A284492.P17679314563685403122

/-! ## A284492.P3983969883156990544

`eq[1, A284490(n+1)]+1`
-/

namespace A284492.P3983969883156990544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284492.P3983969883156990544

/-! ## A284492.P14134042313696136174

`eq[n, A028310(n)*A284490(A028310(n))]`
-/

namespace A284492.P14134042313696136174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A284490 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284492.P14134042313696136174

/-! ## A284492.P17291231687312990585

`A284488(2*n+1)-n-2*n`
-/

namespace A284492.P17291231687312990585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (2 * n + 1) - (n : ℤ) - (2 * n : ℤ)

end

end A284492.P17291231687312990585

/-! ## A284492.P12901482309203002269

`record[(n+1)*A285142(n+1)]-n`
-/

namespace A284492.P12901482309203002269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A284492.P12901482309203002269

/-! ## A284492.P13573324822204297824

`∑[A027960(A285139(n+1)+n²)]`
-/

namespace A284492.P13573324822204297824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A285139 (n + 1) + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284492.P13573324822204297824

/-!
# A284494: a(n) = A284016(n)^2.

The programs for A284494, there is no canonical definition to state claims against.
-/

/-! ## A284494.P12366108220335016717

`(4-6/n)²*a(n-1)` with `a(0)=1`
-/

namespace A284494.P12366108220335016717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n : ℚ)) ^ 2 * a (n - 1)

end

end A284494.P12366108220335016717

/-! ## A284494.P14450431423537809906

`(C(2*n, n)/(1-2*n))²`
-/

namespace A284494.P14450431423537809906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) n : ℚ) / (1 - (2 * n : ℤ) : ℚ)) ^ 2

end

end A284494.P14450431423537809906

/-! ## A284494.P6235631776608016317

`A002420(n)²`
-/

namespace A284494.P6235631776608016317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n ^ 2

end

end A284494.P6235631776608016317

/-! ## A284494.P8358888064889298604

`A106190(∑[n])²`
-/

namespace A284494.P8358888064889298604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106190 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A284494.P8358888064889298604

/-! ## A284494.P12207214646652188826

`A089408(2*n)²`
-/

namespace A284494.P12207214646652188826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n) ^ 2

end

end A284494.P12207214646652188826

/-! ## A284494.P14687387496168252324

`A104624(2*n)²`
-/

namespace A284494.P14687387496168252324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 (2 * n) ^ 2

end

end A284494.P14687387496168252324

/-! ## A284494.P12553810591355080646

`A182122(2*n)²`
-/

namespace A284494.P12553810591355080646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182122 (2 * n) ^ 2

end

end A284494.P12553810591355080646

/-! ## A284494.P17475929625108962160

`A241543(2*n)²`
-/

namespace A284494.P17475929625108962160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 (2 * n) ^ 2

end

end A284494.P17475929625108962160

/-! ## A284494.P412858794271375742

`A367024(∑[n]+n)²`
-/

namespace A284494.P412858794271375742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367024 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A284494.P412858794271375742

/-!
# A284495: a(n) is the least number such that d(a(n)) = d(R(a(n)))/n, where R(n) is the digit reverse of n and d(n) is the number of divisors of n.

The programs for A284495, there is no canonical definition to state claims against.
-/

/-! ## A284495.P12171092364374757023

`A006530(A017952(n))%A297639(n+1)`
-/

namespace A284495.P12171092364374757023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A017952 n).toNat) (A297639 (n + 1))

end

end A284495.P12171092364374757023

/-!
# A284499: Expansion of Product_{k>=0} (1 - x^(7*k+1)) in powers of x.

The programs for A284499, there is no canonical definition to state claims against.
-/

/-! ## A284499.P5459931034805204304

`A284585(A145569(n))%p?[(n+1)²+1]`
-/

namespace A284499.P5459931034805204304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284585 (A145569 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A284499.P5459931034805204304

/-! ## A284499.P9488686322063218990

`A284585(A145569(n))^A056926(A134506(n))`
-/

namespace A284499.P9488686322063218990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284585 (A145569 n).toNat : ℚ) ^ (A056926 (A134506 n).toNat : ℤ)

end

end A284499.P9488686322063218990

/-! ## A284499.P16567590156998169805

`A057427(A147552(n+1))*A284585(A145569(n))`
-/

namespace A284499.P16567590156998169805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A147552 (n + 1)).toNat * A284585 (A145569 n).toNat

end

end A284499.P16567590156998169805

/-! ## A284499.P14165215653539950057

`A284585(A145569(n))%A255748(A081633(n+1))`
-/

namespace A284499.P14165215653539950057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284585 (A145569 n).toNat) (A255748 (A081633 (n + 1)).toNat)

end

end A284499.P14165215653539950057

/-! ## A284499.P15375033553303230729

`A059126(A000290(n)+n)*A284585(A145569(n))`
-/

namespace A284499.P15375033553303230729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A000290 n + (n : ℤ)).toNat * A284585 (A145569 n).toNat

end

end A284499.P15375033553303230729

/-! ## A284499.P1572330888915157605

`A284585(A145569(n))^A000034(A143068(n))`
-/

namespace A284499.P1572330888915157605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284585 (A145569 n).toNat : ℚ) ^ (A000034 (A143068 n).toNat : ℤ)

end

end A284499.P1572330888915157605

/-! ## A284499.P3718258240811624374

`A284585(A145569(n))+A154271(A161612(n+1))`
-/

namespace A284499.P3718258240811624374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284585 (A145569 n).toNat + A154271 (A161612 (n + 1)).toNat

end

end A284499.P3718258240811624374

/-! ## A284499.P10964023899902657344

`A284585(A145569(n))%A000040(A000123(n))`
-/

namespace A284499.P10964023899902657344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284585 (A145569 n).toNat) (A000040 (A000123 n).toNat)

end

end A284499.P10964023899902657344

