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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A103700: Add 9 to each of the preceding digits, beginning with 0.

The programs for A103700, there is no canonical definition to state claims against.
-/

/-! ## A103700.P1287178077044766308

`A057427(n)*A369603(n+1)`
-/

namespace A103700.P1287178077044766308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A369603 (n + 1)

end

end A103700.P1287178077044766308

/-! ## A103700.P6203417920598392490

`A178334(n)*A369603(n+1)`
-/

namespace A103700.P6203417920598392490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A369603 (n + 1)

end

end A103700.P6203417920598392490

/-! ## A103700.P7853400007589496431

`A369603(n+1)%A023989(n)`
-/

namespace A103700.P7853400007589496431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369603 (n + 1)) (A023989 n)

end

end A103700.P7853400007589496431

/-! ## A103700.P16400706100277274813

`and(A057428(n), A369603(n+1))`
-/

namespace A103700.P16400706100277274813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A369603 (n + 1))

end

end A103700.P16400706100277274813

/-! ## A103700.P9706754163758822888

`and(A260196(n), A369603(n+1))`
-/

namespace A103700.P9706754163758822888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A369603 (n + 1))

end

end A103700.P9706754163758822888

/-! ## A103700.P3448507849288619320

`A211666(n+1)*A369603(n+1)`
-/

namespace A103700.P3448507849288619320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) * A369603 (n + 1)

end

end A103700.P3448507849288619320

/-! ## A103700.P17972069030010774644

`and(A060160(n+1), A369603(n+1))`
-/

namespace A103700.P17972069030010774644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A369603 (n + 1))

end

end A103700.P17972069030010774644

/-! ## A103700.P18345687821321011627

`and(A153881(n+1), A369603(n+1))`
-/

namespace A103700.P18345687821321011627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A369603 (n + 1))

end

end A103700.P18345687821321011627

/-! ## A103700.P8632924229689754545

`and(A369603(n+1), A389172(n+1))`
-/

namespace A103700.P8632924229689754545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A369603 (n + 1)) (A389172 (n + 1))

end

end A103700.P8632924229689754545

/-!
# A103701: Add 2 to each of the preceding digits, beginning with 1.

The programs for A103701, there is no canonical definition to state claims against.
-/

/-! ## A103701.P12779450375663357390

`or(1, A103694(n))`
-/

namespace A103701.P12779450375663357390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103694 n)

end

end A103701.P12779450375663357390

/-! ## A103701.P18146115199242754206

`A109613(A103694(n))`
-/

namespace A103701.P18146115199242754206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A103694 n).toNat

end

end A103701.P18146115199242754206

/-! ## A103701.P16724570465779499138

`A106249(2*A103694(n))`
-/

namespace A103701.P16724570465779499138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * A103694 n).toNat

end

end A103701.P16724570465779499138

/-! ## A103701.P18055405966659291965

`A129756(2*A103694(n))`
-/

namespace A103701.P18055405966659291965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (2 * A103694 n).toNat

end

end A103701.P18055405966659291965

/-! ## A103701.P14349817085752230089

`A051274(3*A103694(n))`
-/

namespace A103701.P14349817085752230089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (3 * A103694 n).toNat

end

end A103701.P14349817085752230089

/-! ## A103701.P952975105710743794

`A051275(3*A103694(n))`
-/

namespace A103701.P952975105710743794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (3 * A103694 n).toNat

end

end A103701.P952975105710743794

/-! ## A103701.P18216328114615191424

`A247617(4*A103694(n))`
-/

namespace A103701.P18216328114615191424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247617 (4 * A103694 n).toNat

end

end A103701.P18216328114615191424

/-! ## A103701.P18420911142020032399

`A291983(6*A103694(n))`
-/

namespace A103701.P18420911142020032399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291983 (6 * A103694 n).toNat

end

end A103701.P18420911142020032399

/-! ## A103701.P2390842421446518417

`A103694(2*(n+2))%(22*a(n-1))` with `a(0)=1`
-/

namespace A103701.P2390842421446518417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A103694 (2 * (n + 2))) (22 * a (n - 1))

end

end A103701.P2390842421446518417

/-! ## A103701.P6506321199949074978

`A103694(2*(n+2))%A005009(n)`
-/

namespace A103701.P6506321199949074978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103694 (2 * (n + 2))) (A005009 n)

end

end A103701.P6506321199949074978

/-!
# A103703: Add 4 to each of the preceding digits, beginning with 1.

The programs for A103703, there is no canonical definition to state claims against.
-/

/-! ## A103703.P7517265238366205705

`or(1, A103696(n))`
-/

namespace A103703.P7517265238366205705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103696 n)

end

end A103703.P7517265238366205705

/-! ## A103703.P3550107639524295234

`A109613(A103696(n))`
-/

namespace A103703.P3550107639524295234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A103696 n).toNat

end

end A103703.P3550107639524295234

/-! ## A103703.P3711785016793093891

`A106249(2*A103696(n))`
-/

namespace A103703.P3711785016793093891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * A103696 n).toNat

end

end A103703.P3711785016793093891

/-! ## A103703.P3601809443666819400

`A129756(2*A103696(n))`
-/

namespace A103703.P3601809443666819400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (2 * A103696 n).toNat

end

end A103703.P3601809443666819400

/-! ## A103703.P10073533012376926890

`A051274(3*A103696(n))`
-/

namespace A103703.P10073533012376926890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (3 * A103696 n).toNat

end

end A103703.P10073533012376926890

/-! ## A103703.P9457646253298020096

`A051275(3*A103696(n))`
-/

namespace A103703.P9457646253298020096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (3 * A103696 n).toNat

end

end A103703.P9457646253298020096

/-! ## A103703.P10361623775539060608

`A247617(4*A103696(n))`
-/

namespace A103703.P10361623775539060608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247617 (4 * A103696 n).toNat

end

end A103703.P10361623775539060608

/-! ## A103703.P2182004224917396931

`A000005(A016116(A103696(n))²)`
-/

namespace A103703.P2182004224917396931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016116 (A103696 n).toNat ^ 2).toNat

end

end A103703.P2182004224917396931

/-! ## A103703.P2943930947845867946

`A129756(A103696(n)+A103696(n)+1)`
-/

namespace A103703.P2943930947845867946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A103696 n + (A103696 n + 1)).toNat

end

end A103703.P2943930947845867946

/-!
# A103704: Add 5 to each of the preceding digits, beginning with 1.

The programs for A103704, the canonical program `A103704.P13929959680977645095` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103704 has offset 1).

The definition of A103704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103704.P13929959680977645095

`a(floor((n-1)/2))` with `a(0)=1, a(1)=6, a(2)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103704

/-- `a(floor((n-1)/2))` -/
def P13929959680977645095.Spec : Prop :=
  ∀ n, (P13929959680977645095.a n : ℤ) = A103704 (n + 1)

theorem P13929959680977645095.correct : P13929959680977645095.Spec := by
  intro n
  simp only [A103704, Nat.add_sub_cancel]

end A103704

/-! ## A103704.P2463172773974741803

`5*floor(A103697(n)/4)+1`
-/

namespace A103704.P2463172773974741803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(A103697 n : ℚ) / 4⌋ + 1

end

end A103704.P2463172773974741803

namespace A103704

/-- `5*floor(A103697(n)/4)+1` -/
def P2463172773974741803.Spec : Prop :=
  ∀ n, P2463172773974741803.a n = A103704 (n + 1)

end A103704

/-! ## A103704.P892529012560822437

`a(A059893(n+1)%2)+5` with `a(0)=1`
-/

namespace A103704.P892529012560822437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (A059893 (n + 1)) 2).toNat + 5

end

end A103704.P892529012560822437

namespace A103704

/-- `a(A059893(n+1)%2)+5` -/
def P892529012560822437.Spec : Prop :=
  ∀ n, (P892529012560822437.a n : ℤ) = A103704 (n + 1)

end A103704

/-! ## A103704.P4674540340902696122

`a(floor(n/A054429(n+1)))+5` with `a(0)=1`
-/

namespace A103704.P4674540340902696122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / (A054429 (n + 1) : ℚ)⌋.toNat + 5

end

end A103704.P4674540340902696122

namespace A103704

/-- `a(floor(n/A054429(n+1)))+5` -/
def P4674540340902696122.Spec : Prop :=
  ∀ n, (P4674540340902696122.a n : ℤ) = A103704 (n + 1)

end A103704

/-! ## A103704.P11297598888988786391

`A102035(or(3, A103697(n)))`
-/

namespace A103704.P11297598888988786391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102035 (Int.lor 3 (A103697 n)).toNat

end

end A103704.P11297598888988786391

namespace A103704

/-- `A102035(or(3, A103697(n)))` -/
def P11297598888988786391.Spec : Prop :=
  ∀ n, P11297598888988786391.a n = A103704 (n + 1)

end A103704

/-! ## A103704.P9305231174473273884

`A015440(floor(sqrt(A103697(n))))`
-/

namespace A103704.P9305231174473273884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015440 (Int.sqrt (A103697 n)).toNat

end

end A103704.P9305231174473273884

namespace A103704

/-- `A015440(floor(sqrt(A103697(n))))` -/
def P9305231174473273884.Spec : Prop :=
  ∀ n, P9305231174473273884.a n = A103704 (n + 1)

end A103704

/-! ## A103704.P13810038400585336002

`A080875(floor(sqrt(A103697(n))))`
-/

namespace A103704.P13810038400585336002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (Int.sqrt (A103697 n)).toNat

end

end A103704.P13810038400585336002

namespace A103704

/-- `A080875(floor(sqrt(A103697(n))))` -/
def P13810038400585336002.Spec : Prop :=
  ∀ n, P13810038400585336002.a n = A103704 (n + 1)

end A103704

/-! ## A103704.P1552287485870286359

`a(2-Δ[A294456(n+1)])+5` with `a(0)=1`
-/

namespace A103704.P1552287485870286359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (2 - (f1 (n + 1) - f1 n)).toNat + 5

end

end A103704.P1552287485870286359

namespace A103704

/-- `a(2-Δ[A294456(n+1)])+5` -/
def P1552287485870286359.Spec : Prop :=
  ∀ n, (P1552287485870286359.a n : ℤ) = A103704 (n + 1)

end A103704

/-!
# A103705: Add 6 to each of the preceding digits, beginning with 1.

The programs for A103705, there is no canonical definition to state claims against.
-/

/-! ## A103705.P12831815010149652056

`or(1, A103698(n))`
-/

namespace A103705.P12831815010149652056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103698 n)

end

end A103705.P12831815010149652056

/-! ## A103705.P11981989243286977481

`A109613(A103698(n))`
-/

namespace A103705.P11981989243286977481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A103698 n).toNat

end

end A103705.P11981989243286977481

/-! ## A103705.P13758478701083586495

`A293701(A103698(n)+1)`
-/

namespace A103705.P13758478701083586495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293701 (A103698 n + 1).toNat

end

end A103705.P13758478701083586495

/-! ## A103705.P10835370229574609682

`A106249(2*A103698(n))`
-/

namespace A103705.P10835370229574609682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * A103698 n).toNat

end

end A103705.P10835370229574609682

/-! ## A103705.P1315410054598449300

`A129756(2*A103698(n))`
-/

namespace A103705.P1315410054598449300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (2 * A103698 n).toNat

end

end A103705.P1315410054598449300

/-! ## A103705.P10423328481493976806

`A051274(3*A103698(n))`
-/

namespace A103705.P10423328481493976806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (3 * A103698 n).toNat

end

end A103705.P10423328481493976806

/-! ## A103705.P4585655398004544601

`A051275(3*A103698(n))`
-/

namespace A103705.P4585655398004544601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (3 * A103698 n).toNat

end

end A103705.P4585655398004544601

/-! ## A103705.P14312275774190738282

`A247617(4*A103698(n))`
-/

namespace A103705.P14312275774190738282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247617 (4 * A103698 n).toNat

end

end A103705.P14312275774190738282

/-! ## A103705.P12624840398245142516

`A000005(A016116(A103698(n))²)`
-/

namespace A103705.P12624840398245142516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016116 (A103698 n).toNat ^ 2).toNat

end

end A103705.P12624840398245142516

/-! ## A103705.P2797348212871277830

`A129756(A103698(n)+A103698(n)+1)`
-/

namespace A103705.P2797348212871277830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A103698 n + (A103698 n + 1)).toNat

end

end A103705.P2797348212871277830

/-!
# A103706: Add 7 to each of the preceding digits, beginning with 1.

The programs for A103706, there is no canonical definition to state claims against.
-/

/-! ## A103706.P4550589651261718219

`A164349(A033484(n))+A102654(n)`
-/

namespace A103706.P4550589651261718219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (A033484 n).toNat + A102654 n

end

end A103706.P4550589651261718219

/-!
# A103707: Add 8 to each of the preceding digits, beginning with 1.

The programs for A103707, there is no canonical definition to state claims against.
-/

/-! ## A103707.P12268712875298615332

`or(1, A103699(n))`
-/

namespace A103707.P12268712875298615332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103699 n)

end

end A103707.P12268712875298615332

/-! ## A103707.P16375550595088404428

`A109613(A103699(n))`
-/

namespace A103707.P16375550595088404428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A103699 n).toNat

end

end A103707.P16375550595088404428

/-! ## A103707.P12376990195445705350

`A293701(A103699(n)+1)`
-/

namespace A103707.P12376990195445705350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293701 (A103699 n + 1).toNat

end

end A103707.P12376990195445705350

/-! ## A103707.P6328085321017533188

`A106249(2*A103699(n))`
-/

namespace A103707.P6328085321017533188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * A103699 n).toNat

end

end A103707.P6328085321017533188

/-! ## A103707.P10516116684547306296

`A129756(2*A103699(n))`
-/

namespace A103707.P10516116684547306296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (2 * A103699 n).toNat

end

end A103707.P10516116684547306296

/-! ## A103707.P10731900508450604612

`A051274(3*A103699(n))`
-/

namespace A103707.P10731900508450604612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (3 * A103699 n).toNat

end

end A103707.P10731900508450604612

/-! ## A103707.P11244578659377943925

`A051275(3*A103699(n))`
-/

namespace A103707.P11244578659377943925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (3 * A103699 n).toNat

end

end A103707.P11244578659377943925

/-! ## A103707.P6548216947277514687

`A247617(4*A103699(n))`
-/

namespace A103707.P6548216947277514687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247617 (4 * A103699 n).toNat

end

end A103707.P6548216947277514687

/-! ## A103707.P9362914760073016521

`A000005(A016116(A103699(n))²)`
-/

namespace A103707.P9362914760073016521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016116 (A103699 n).toNat ^ 2).toNat

end

end A103707.P9362914760073016521

/-! ## A103707.P4646274207777055196

`∑{d}[A016116(A103699(n)), A014963(#)]`
-/

namespace A103707.P4646274207777055196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A103699 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A103707.P4646274207777055196

/-!
# A103709: Smallest prime p such that both p +/ - 2n are primes closest to p, or zero if no such prime exists.

The programs for A103709, there is no canonical definition to state claims against.
-/

/-! ## A103709.P13751002080769452027

`A308764(∑[4*n]+1)`
-/

namespace A103709.P13751002080769452027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A103709.P13751002080769452027

/-! ## A103709.P14803669799700260596

`or(char[2], A308764(A001844(n)))`
-/

namespace A103709.P14803669799700260596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A308764 (A001844 n).toNat)

end

end A103709.P14803669799700260596

/-! ## A103709.P6420800741445283925

`A308764(A001844(n))+A025444(n)`
-/

namespace A103709.P6420800741445283925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308764 (A001844 n).toNat + A025444 n

end

end A103709.P6420800741445283925

/-! ## A103709.P2559540776551122106

`A131713(n)*A308764(A001844(n))`
-/

namespace A103709.P2559540776551122106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A308764 (A001844 n).toNat

end

end A103709.P2559540776551122106

/-! ## A103709.P3739975077975143062

`A308764(A001844(n))%A017297(n)`
-/

namespace A103709.P3739975077975143062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308764 (A001844 n).toNat) (A017297 n)

end

end A103709.P3739975077975143062

/-! ## A103709.P12644040869555253091

`lcm(A097807(n), A308764(A001844(n)))`
-/

namespace A103709.P12644040869555253091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A308764 (A001844 n).toNat)

end

end A103709.P12644040869555253091

/-! ## A103709.P2565712604359860633

`A308764(A001844(n))/A007318(∑[n+2])`
-/

namespace A103709.P2565712604359860633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308764 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A103709.P2565712604359860633

/-! ## A103709.P17564713517567170511

`A014963(6*(n+1))*A308764(A001844(n))`
-/

namespace A103709.P17564713517567170511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A308764 (A001844 n).toNat

end

end A103709.P17564713517567170511

/-! ## A103709.P7681987314338153422

`A308764(A001844(n))+A001221(gcd(n, n+1))`
-/

namespace A103709.P7681987314338153422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308764 (A001844 n).toNat + A001221 (Nat.gcd n (n + 1))

end

end A103709.P7681987314338153422

/-! ## A103709.P18129823277006758778

`A020639(abs((-1)^n))*A308764(A001844(n))`
-/

namespace A103709.P18129823277006758778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |(-1) ^ n|.toNat * A308764 (A001844 n).toNat

end

end A103709.P18129823277006758778

/-!
# A103715: Define a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=18, a(6)=22, a(7)=119, a(8)=285. Then a(n) = a(n-8) + 4*sqrt(420*a(n-4)^2 + 420*a(n-4) + 1).

The programs for A103715, there is no canonical definition to state claims against.
-/

/-! ## A103715.P5186156202583416417

`A111449(A295858(n+1))`
-/

namespace A103715.P5186156202583416417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111449 (A295858 (n + 1)).toNat

end

end A103715.P5186156202583416417

/-! ## A103715.P14950257496521815033

`A241085(floor(n/2)*A004760(n+3))`
-/

namespace A103715.P14950257496521815033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241085 (⌊(n : ℚ) / 2⌋ * A004760 (n + 3)).toNat

end

end A103715.P14950257496521815033

/-! ## A103715.P14884038525824540116

`A141128(A033921(n)+A003087(n))`
-/

namespace A103715.P14884038525824540116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141128 (A033921 n + A003087 n).toNat

end

end A103715.P14884038525824540116

/-!
# A103717: 

The programs for A103717, there is no canonical definition to state claims against.
-/

/-! ## A103717.P15777714951271707275

`A007407(A032559(n+1))^5`
-/

namespace A103717.P15777714951271707275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A032559 (n + 1)).toNat ^ 5

end

end A103717.P15777714951271707275

/-! ## A103717.P686455355336233319

`A003418(A001104(n+1))^10`
-/

namespace A103717.P686455355336233319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A001104 (n + 1)).toNat ^ 10

end

end A103717.P686455355336233319

/-! ## A103717.P8203605852391426274

`A334604(n+1)^A334599(A334622(n))`
-/

namespace A103717.P8203605852391426274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334604 (n + 1) : ℚ) ^ (A334599 (A334622 n).toNat : ℤ)

end

end A103717.P8203605852391426274

/-! ## A103717.P18362044924799251379

`(lcm(A000005(n!), A051418(n+1))*A195506(n+1))²`
-/

namespace A103717.P18362044924799251379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.lcm (A000005 (Nat.factorial n)) (A051418 (n + 1)) : ℤ) * A195506 (n + 1)) ^ 2

end

end A103717.P18362044924799251379

/-!
# A103719: Column m=2 sequence of triangle A103718(n,m), n >= 0 (without leading zeros).

The programs for A103719, there is no canonical definition to state claims against.
-/

/-! ## A103719.P18284793844255595751

`A103718(∑[n+2]+3)`
-/

namespace A103719.P18284793844255595751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A103719.P18284793844255595751

/-! ## A103719.P12858150731850090538

`abs(A103718(eq[4, A059268(n)]))`
-/

namespace A103719.P12858150731850090538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A103719.P12858150731850090538

/-!
# A103720: Column m=3 sequence (unsigned) of triangle A103718(n,m), n>=0, without leading zeros.

The programs for A103720, there is no canonical definition to state claims against.
-/

/-! ## A103720.P2381040655072622106

`-A103718(A167614(n+2))`
-/

namespace A103720.P2381040655072622106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103718 (A167614 (n + 2)).toNat

end

end A103720.P2381040655072622106

/-! ## A103720.P4518751082755137173

`abs(A103718(A052905(n)+8))`
-/

namespace A103720.P4518751082755137173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103718 (A052905 n + 8).toNat|

end

end A103720.P4518751082755137173

/-! ## A103720.P16367061234540516675

`abs(A103718(eq[3, A002262(n)]))`
-/

namespace A103720.P16367061234540516675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A103720.P16367061234540516675

/-! ## A103720.P11211990917348396401

`abs(A103718(eq[8, A059268(n)]))`
-/

namespace A103720.P11211990917348396401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A103720.P11211990917348396401

/-! ## A103720.P3522195470956805782

`A038500(3*n+5)-(A103718(eq[3, A002262(n)])+1)`
-/

namespace A103720.P3522195470956805782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (3 * n + 5) - (A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1)

end

end A103720.P3522195470956805782

/-!
# A103721: Column m=4 sequence of triangle A103718(n,m), n>=0, without leading zeros.

The programs for A103721, there is no canonical definition to state claims against.
-/

/-! ## A103721.P14242706874371745296

`A103718(A155212(n)+12)`
-/

namespace A103721.P14242706874371745296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (A155212 n + 12).toNat

end

end A103721.P14242706874371745296

/-! ## A103721.P10712998855144588781

`A103718(A056000(n)+14)`
-/

namespace A103721.P10712998855144588781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (A056000 n + 14).toNat

end

end A103721.P10712998855144588781

/-! ## A103721.P115004474365622380

`A103718(eq[4, A002262(n)])`
-/

namespace A103721.P115004474365622380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103721.P115004474365622380

/-! ## A103721.P9722370681327760597

`A103718(eq[4, A130270(n+1)])`
-/

namespace A103721.P9722370681327760597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103721.P9722370681327760597

/-! ## A103721.P2085358585435581338

`A103718(eq[5, A002260(n+1)])`
-/

namespace A103721.P2085358585435581338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103721.P2085358585435581338

/-!
# A103722: Column m=5 sequence of triangle A103718(n,m), n>=0, without leading zeros.

The programs for A103722, there is no canonical definition to state claims against.
-/

/-! ## A103722.P15727503693793591447

`-A103718(A167499(n+4))`
-/

namespace A103722.P15727503693793591447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103718 (A167499 (n + 4)).toNat

end

end A103722.P15727503693793591447

/-! ## A103722.P17569043756384545471

`A070140(2*n+5)-A103718(A167499(n+4))`
-/

namespace A103722.P17569043756384545471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070140 (2 * n + 5) - A103718 (A167499 (n + 4)).toNat

end

end A103722.P17569043756384545471

/-!
# A103723: Column m=6 sequence of triangle A103718(n,m), n>=0.

The programs for A103723, there is no canonical definition to state claims against.
-/

/-! ## A103723.P16181963725030464278

`A103718(C(n+7, 2)+6)`
-/

namespace A103723.P16181963725030464278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (Nat.choose (n + 7) 2 + 6)

end

end A103723.P16181963725030464278

/-! ## A103723.P9217494286891860891

`A103718(eq[6, A002262(n)])`
-/

namespace A103723.P9217494286891860891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103723.P9217494286891860891

/-! ## A103723.P6850697358232835910

`A103718(A167487(n+5)-1)`
-/

namespace A103723.P6850697358232835910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (A167487 (n + 5) - 1).toNat

end

end A103723.P6850697358232835910

/-! ## A103723.P18166155197084564469

`A103718(eq[7, A002260(n+1)])`
-/

namespace A103723.P18166155197084564469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103723.P18166155197084564469

/-! ## A103723.P5363888498417053344

`A103718(eq[7, A133232(n+1)])`
-/

namespace A103723.P5363888498417053344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103723.P5363888498417053344

/-!
# A103724: Column m=7 sequence of triangle A103718(n,m), n>=0, without leading zeros.

The programs for A103724, there is no canonical definition to state claims against.
-/

/-! ## A103724.P14968004358689042065

`abs(A103718(eq[7, A002262(n)]))`
-/

namespace A103724.P14968004358689042065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A103724.P14968004358689042065

/-! ## A103724.P8821400972060077600

`abs(A103718(A167499(n+6)+2))`
-/

namespace A103724.P8821400972060077600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103718 (A167499 (n + 6) + 2).toNat|

end

end A103724.P8821400972060077600

/-! ## A103724.P16528365643455058587

`A057428(n+1)*A103718(A167499(n+6)+2)`
-/

namespace A103724.P16528365643455058587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) * A103718 (A167499 (n + 6) + 2).toNat

end

end A103724.P16528365643455058587

/-!
# A103725: Column m=8 sequence of triangle A103718(n,m), n>=0, without leading zeros.

The programs for A103725, there is no canonical definition to state claims against.
-/

/-! ## A103725.P10813044291753097996

`A103718(A056126(n)+44)`
-/

namespace A103725.P10813044291753097996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (A056126 n + 44).toNat

end

end A103725.P10813044291753097996

/-! ## A103725.P12876003980728823900

`A103718(eq[8, A002262(n)])`
-/

namespace A103725.P12876003980728823900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103725.P12876003980728823900

/-! ## A103725.P5796177706638075242

`A103718(eq[8, A144328(n+1)])`
-/

namespace A103725.P5796177706638075242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103725.P5796177706638075242

/-! ## A103725.P2531873330971202427

`A103718(eq[9, A002260(n+1)])`
-/

namespace A103725.P2531873330971202427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103725.P2531873330971202427

/-! ## A103725.P4393070036921562220

`A103718(eq[9, A133232(n+1)])`
-/

namespace A103725.P4393070036921562220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103725.P4393070036921562220

/-!
# A103726: Column m=9 sequence of triangle A103718(n,m), n>=0, without leading zeros.

The programs for A103726, there is no canonical definition to state claims against.
-/

/-! ## A103726.P11694988052528675240

`-A103718(eq[9, A002262(n)])`
-/

namespace A103726.P11694988052528675240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103726.P11694988052528675240

/-! ## A103726.P10003841256846174918

`-A103718(eq[10, A002260(n+1)])`
-/

namespace A103726.P10003841256846174918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103726.P10003841256846174918

/-!
# A103727: Column m=10 sequence of triangle A103718(n,m), n>=0, without leading zeros.

The programs for A103727, there is no canonical definition to state claims against.
-/

/-! ## A103727.P15681478280049030717

`A103718(eq[10, A002262(n)])`
-/

namespace A103727.P15681478280049030717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103727.P15681478280049030717

/-! ## A103727.P14360213343329994149

`A103718(eq[10, A144328(n+1)])`
-/

namespace A103727.P14360213343329994149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103727.P14360213343329994149

/-! ## A103727.P4005326989315326999

`A103718(eq[11, A002260(n+1)])`
-/

namespace A103727.P4005326989315326999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103727.P4005326989315326999

/-! ## A103727.P12851559869437267104

`A103718(eq[11, A134868(n+1)])`
-/

namespace A103727.P12851559869437267104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103727.P12851559869437267104

/-!
# A103729: Column k=2 sequence of array A103728.

The programs for A103729, there is no canonical definition to state claims against.
-/

/-! ## A103729.P13780480471941459352

`ceil((2-p?[2*n+1])²/2)`
-/

namespace A103729.P13780480471941459352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)) ^ 2 : ℚ) / 2⌉

end

end A103729.P13780480471941459352

/-! ## A103729.P11609720826797929096

`record[A078710(n+2)+1]`
-/

namespace A103729.P11609720826797929096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078710 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103729.P11609720826797929096

/-! ## A103729.P16182769475683127766

`4*A030005(n+2)+1`
-/

namespace A103729.P16182769475683127766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A030005 (n + 2) + 1

end

end A103729.P16182769475683127766

/-! ## A103729.P14922417699319455217

`ceil(A268174(n+1)²/2)`
-/

namespace A103729.P14922417699319455217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268174 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A103729.P14922417699319455217

/-! ## A103729.P7841419132254626298

`ceil(A040976(n+2)²/2)`
-/

namespace A103729.P7841419132254626298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040976 (n + 2) ^ 2 : ℚ) / 2⌉

end

end A103729.P7841419132254626298

/-!
# A103731: Column k=4 sequence of array A103728.

The programs for A103731, there is no canonical definition to state claims against.
-/

/-! ## A103731.P15292976364506750721

`record[A103728(3*A267528(n))]`
-/

namespace A103731.P15292976364506750721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103728 (3 * A267528 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103731.P15292976364506750721

/-! ## A103731.P11829226399651035767

`A103728(A007504(n+2)+5)`
-/

namespace A103731.P11829226399651035767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103728 (A007504 (n + 2) + 5).toNat

end

end A103731.P11829226399651035767

/-!
# A103732: Negative of column k=5 sequence of array A103728.

The programs for A103732, there is no canonical definition to state claims against.
-/

/-! ## A103732.P163686299446134563

`record[-A103728(A103762(n+5))]`
-/

namespace A103732.P163686299446134563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103728 (A103762 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103732.P163686299446134563

/-!
# A103733: Column k=6 sequence of array A103728.

The programs for A103733, there is no canonical definition to state claims against.
-/

/-! ## A103733.P17492493394859373221

`A103728(∑[p?[A098728(n)]])`
-/

namespace A103733.P17492493394859373221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103728 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103733.P17492493394859373221

/-!
# A103736: Fibonacci numbers with nonprime indices.

The programs for A103736, there is no canonical definition to state claims against.
-/

/-! ## A103736.P15664390284040304141

`A000045(comp[p?[xor(1, n)]])`
-/

namespace A103736.P15664390284040304141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A103736.P15664390284040304141

/-! ## A103736.P16576106089773948524

`A000045(comp[p?[∏{p}[n, #]]])`
-/

namespace A103736.P16576106089773948524
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A103736.P16576106089773948524

/-! ## A103736.P16520087373604928731

`A000045(comp[p?[comp[n²]]])`
-/

namespace A103736.P16520087373604928731
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A103736.P16520087373604928731

/-! ## A103736.P10627995191599926934

`A000045(comp[eq[1, ∑{e}[n, #]]])`
-/

namespace A103736.P10627995191599926934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A103736.P10627995191599926934

/-!
# A103737: Define a(1)=0, a(2)=0, a(3)=3, a(4)=7 such that from i=1 to 4: 30*a(i)^2 + 30*a(i) + 1 = j(i)^2, j(1)=1, j(2)=1, j(3)=19, j(4)=41 Then a(n) = a(n-4) + 4*sqrt(30*(a(n-2)^2) + 30*a(n-2) + 1).

The programs for A103737, the canonical program `A103737.P6736839583737832776` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103737 has offset 1).

The definition of A103737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103737.P6736839583737832776

`a(n-4)+4*sqrt(30*a(n-2)²+30*a(n-2)+1)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103737

/-- `a(n-4)+4*sqrt(30*a(n-2)²+30*a(n-2)+1)` -/
def P6736839583737832776.Spec : Prop :=
  ∀ n, P6736839583737832776.a n = (A103737 (n + 1) : ℝ)

end A103737

/-! ## A103737.P11225621302924309540

`(A137881((2^n)%2+n)-1)/2`
-/

namespace A103737.P11225621302924309540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (2 ^ n % 2 + n) - 1 : ℚ) / 2

end

end A103737.P11225621302924309540

namespace A103737

/-- `(A137881((2^n)%2+n)-1)/2` -/
def P11225621302924309540.Spec : Prop :=
  ∀ n, P11225621302924309540.a n = (A103737 (n + 1) : ℚ)

end A103737

/-! ## A103737.P13660714746108279824

`floor(A137881(A028310(n))/2)`
-/

namespace A103737.P13660714746108279824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137881 (A028310 n).toNat : ℚ) / 2⌋

end

end A103737.P13660714746108279824

namespace A103737

/-- `floor(A137881(A028310(n))/2)` -/
def P13660714746108279824.Spec : Prop :=
  ∀ n, P13660714746108279824.a n = A103737 (n + 1)

end A103737

/-! ## A103737.P4704885620158160406

`(A137881(A057428(n)+1+n)-1)/2`
-/

namespace A103737.P4704885620158160406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (A057428 n + 1 + (n : ℤ)).toNat - 1 : ℚ) / 2

end

end A103737.P4704885620158160406

namespace A103737

/-- `(A137881(A057428(n)+1+n)-1)/2` -/
def P4704885620158160406.Spec : Prop :=
  ∀ n, P4704885620158160406.a n = (A103737 (n + 1) : ℚ)

end A103737

/-! ## A103737.P9755942913401967120

`A137881(A028310(n))/2-2^A033999(or(1, n))`
-/

namespace A103737.P9755942913401967120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (A028310 n).toNat : ℚ) / 2 - (2 : ℚ) ^ (A033999 (Nat.lor 1 n) : ℤ)

end

end A103737.P9755942913401967120

namespace A103737

/-- `A137881(A028310(n))/2-2^A033999(or(1, n))` -/
def P9755942913401967120.Spec : Prop :=
  ∀ n, P9755942913401967120.a n = (A103737 (n + 1) : ℚ)

end A103737

/-!
# A103738: a(n) = n! * (sum of reciprocals of parts in all partitions of n into distinct parts).

The programs for A103738, there is no canonical definition to state claims against.
-/

/-! ## A103738.P13382937671038113322

`A107348(∑[(n-1)^(n%2)]²)`
-/

namespace A103738.P13382937671038113322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107348 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A103738.P13382937671038113322

/-!
# A103739: Primes which are half the sum of 2 squares of primes.

The programs for A103739, there is no canonical definition to state claims against.
-/

/-! ## A103739.P1363158943522959516

`p?[floor(A045636(n+1)/2)]`
-/

namespace A103739.P1363158943522959516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045636 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103739.P1363158943522959516

/-! ## A103739.P9236270746592944917

`∩[A045636(n+1), A262998(n+1)]/2`
-/

namespace A103739.P9236270746592944917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262998 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P9236270746592944917

/-! ## A103739.P13720928801707380748

`∩[A103558(n+1), A262998(n+1)]/2`
-/

namespace A103739.P13720928801707380748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262998 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P13720928801707380748

/-! ## A103739.P1466261139199802917

`∩[A001747(n+1), A045636(n+1)]/2`
-/

namespace A103739.P1466261139199802917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P1466261139199802917

/-! ## A103739.P9109457955020212369

`∩[A001747(n+1), A103558(n+1)]/2`
-/

namespace A103739.P9109457955020212369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103558 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P9109457955020212369

/-! ## A103739.P10302783830989436397

`∩[A045636(n+1), A066190(n+1)]/2`
-/

namespace A103739.P10302783830989436397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066190 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P10302783830989436397

/-! ## A103739.P1441509895724205947

`∩[A045636(n+1), A100484(n+1)]/2`
-/

namespace A103739.P1441509895724205947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P1441509895724205947

/-! ## A103739.P1581494069852311986

`∩[A100484(n+1), A103558(n+1)]/2`
-/

namespace A103739.P1581494069852311986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103558 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P1581494069852311986

/-! ## A103739.P9018153849763306689

`∩[A045636(n+1), A197638(n+1)]/2`
-/

namespace A103739.P9018153849763306689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197638 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P9018153849763306689

/-! ## A103739.P13838576056080297288

`∩[A045636(n+1), A207574(n+1)]/2`
-/

namespace A103739.P13838576056080297288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P13838576056080297288

/-! ## A103739.P6978755054733777339

`∩[A103558(n+1), A157075(n+1)]/2`
-/

namespace A103739.P6978755054733777339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157075 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P6978755054733777339

/-! ## A103739.P6324446858767795259

`∩[A045636(n+1), A119431(n+1)]/2`
-/

namespace A103739.P6324446858767795259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119431 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P6324446858767795259

/-! ## A103739.P17804782396701353976

`∩[A103558(n+1), A119431(n+1)]/2`
-/

namespace A103739.P17804782396701353976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119431 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P17804782396701353976

/-! ## A103739.P2822343292792618540

`∩[A103558(n+1), A339977(n+1)]/2`
-/

namespace A103739.P2822343292792618540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339977 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P2822343292792618540

/-! ## A103739.P10306358935894491119

`∩[A103558(n+1), A369668(n+1)]/2`
-/

namespace A103739.P10306358935894491119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369668 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A103739.P10306358935894491119

/-! ## A103739.P2175367270560825587

`p?[floor(A214723(n+1)/2)]`
-/

namespace A103739.P2175367270560825587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214723 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103739.P2175367270560825587

/-! ## A103739.P2696552828359144184

`record[A006530(A103558(n+1))]`
-/

namespace A103739.P2696552828359144184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A103558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103739.P2696552828359144184

/-! ## A103739.P9663481829701588180

`p?[A143850(n+1)]`
-/

namespace A103739.P9663481829701588180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103739.P9663481829701588180

/-! ## A103739.P2764150633432258355

`record[A006530(A143850(n+2))]`
-/

namespace A103739.P2764150633432258355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A143850 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103739.P2764150633432258355

/-! ## A103739.P12705341463971922513

`filter[A143850(n+1), A010051(#)]`
-/

namespace A103739.P12705341463971922513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A103739.P12705341463971922513

/-!
# A103740: Numbers k such that k! * F(k) + 1 is prime.

The programs for A103740, there is no canonical definition to state claims against.
-/

/-! ## A103740.P9305844600389578169

`record[A219158(A339833(n+1))]`
-/

namespace A103740.P9305844600389578169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A339833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103740.P9305844600389578169

/-! ## A103740.P12622815125645575775

`eq[1, A244231(A215966(n+1))]`
-/

namespace A103740.P12622815125645575775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (A215966 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103740.P12622815125645575775

/-! ## A103740.P18098638609198179691

`∑[A004739(p?[A102288(n+1)])]`
-/

namespace A103740.P18098638609198179691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102288 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103740.P18098638609198179691

/-! ## A103740.P10560073663472468889

`record[A170974(A236170(n+1))+n]`
-/

namespace A103740.P10560073663472468889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170974 (A236170 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103740.P10560073663472468889

/-! ## A103740.P14315693543993293435

`eq[char[A299774(n+1)], A285012(n+1)]`
-/

namespace A103740.P14315693543993293435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299774 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A103740.P14315693543993293435

/-!
# A103741: a(n) is a non-palindromic composite located between twin primes whose reverse, which is less than it, is also located between twin primes.

The programs for A103741, there is no canonical definition to state claims against.
-/

/-! ## A103741.P1659372671124851973

`A162864(A284203(n+2)+A069458(n+3))`
-/

namespace A103741.P1659372671124851973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162864 (A284203 (n + 2) + A069458 (n + 3)).toNat

end

end A103741.P1659372671124851973

/-!
# A103743: a(n) = 2^(2^n-1) - 2^n - 1.

The programs for A103743, the canonical program `A103743.P1218966639035620035` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103743 has offset 0).

The definition of A103743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103743.P1218966639035620035

`2^(2^n-1)-2^n-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103743

/-- `2^(2^n-1)-2^n-1` -/
def P1218966639035620035.Spec : Prop :=
  ∀ n, P1218966639035620035.a n = (A103743 n : ℚ)

end A103743

/-! ## A103743.P4409295487923396252

`or(2^n-3, A005803(2^n-1))`
-/

namespace A103743.P4409295487923396252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ n : ℤ) - 3) (A005803 (2 ^ n - 1))

end

end A103743.P4409295487923396252

namespace A103743

/-- `or(2^n-3, A005803(2^n-1))` -/
def P4409295487923396252.Spec : Prop :=
  ∀ n, P4409295487923396252.a n = A103743 n

end A103743

/-! ## A103743.P12929073929440627912

`xor(2^n-2, A070313(2^n-1))`
-/

namespace A103743.P12929073929440627912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 2) (A070313 (2 ^ n - 1))

end

end A103743.P12929073929440627912

namespace A103743

/-- `xor(2^n-2, A070313(2^n-1))` -/
def P12929073929440627912.Spec : Prop :=
  ∀ n, P12929073929440627912.a n = A103743 n

end A103743

/-! ## A103743.P1699918108618636352

`xor(2^n-2, A347502(2^n-1))`
-/

namespace A103743.P1699918108618636352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 2) (A347502 (2 ^ n - 1))

end

end A103743.P1699918108618636352

namespace A103743

/-- `xor(2^n-2, A347502(2^n-1))` -/
def P1699918108618636352.Spec : Prop :=
  ∀ n, P1699918108618636352.a n = A103743 n

end A103743

/-! ## A103743.P16613987239520310730

`or(A005803(A000225(n)), A036563(n))`
-/

namespace A103743.P16613987239520310730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005803 (A000225 n).toNat) (A036563 n)

end

end A103743.P16613987239520310730

namespace A103743

/-- `or(A005803(A000225(n)), A036563(n))` -/
def P16613987239520310730.Spec : Prop :=
  ∀ n, P16613987239520310730.a n = A103743 n

end A103743

/-!
# A103745: a(n) = (A102371(n) + n)/2.

The programs for A103745, the canonical program `A103745.P6321366916771548531` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103745 has offset 1).

The definition of A103745 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103528, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A103745.P6321366916771548531

`A103528(n+1)+2^n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103745

/-- `A103528(n+1)+2^n` -/
def P6321366916771548531.Spec : Prop :=
  ∀ n, P6321366916771548531.a n = A103745 (n + 1)

theorem P6321366916771548531.correct : P6321366916771548531.Spec := by
  intro n
  simp only [A103745, Nat.add_sub_cancel]

end A103745

/-! ## A103745.P17956671304644450470

`or(n, 2*a(n-1)+1)-n` with `a(0)=1`
-/

namespace A103745.P17956671304644450470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (n : ℤ) (2 * a (n - 1) + 1) - (n : ℤ)

end

end A103745.P17956671304644450470

namespace A103745

/-- `or(n, 2*a(n-1)+1)-n` -/
def P17956671304644450470.Spec : Prop :=
  ∀ n, P17956671304644450470.a n = A103745 (n + 1)

end A103745

/-! ## A103745.P6786422043053409785

`or(1, or(n, 2*a(n-1)))-n` with `a(0)=1`
-/

namespace A103745.P6786422043053409785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (Int.lor (n : ℤ) (2 * a (n - 1))) - (n : ℤ)

end

end A103745.P6786422043053409785

namespace A103745

/-- `or(1, or(n, 2*a(n-1)))-n` -/
def P6786422043053409785.Spec : Prop :=
  ∀ n, P6786422043053409785.a n = A103745 (n + 1)

end A103745

/-! ## A103745.P2867551601433093698

`and(2*a(n-1)+1, xor(n, -1))` with `a(0)=1`
-/

namespace A103745.P2867551601433093698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (2 * a (n - 1) + 1) (Int.xor (n : ℤ) (-1))

end

end A103745.P2867551601433093698

namespace A103745

/-- `and(2*a(n-1)+1, xor(n, -1))` -/
def P2867551601433093698.Spec : Prop :=
  ∀ n, P2867551601433093698.a n = A103745 (n + 1)

end A103745

/-! ## A103745.P18168525922954462169

`and(2*a(n-1)+1, -(n+1))` with `a(0)=1`
-/

namespace A103745.P18168525922954462169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (2 * a (n - 1) + 1) (-(n + 1 : ℤ))

end

end A103745.P18168525922954462169

namespace A103745

/-- `and(2*a(n-1)+1, -(n+1))` -/
def P18168525922954462169.Spec : Prop :=
  ∀ n, P18168525922954462169.a n = A103745 (n + 1)

end A103745

/-! ## A103745.P13438414299332218684

`and(xor(1, 2*a(n-1)), xor(2, 1-n))` with `a(0)=1`
-/

namespace A103745.P13438414299332218684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (Int.xor 1 (2 * a (n - 1))) (Int.xor 2 (1 - (n : ℤ)))

end

end A103745.P13438414299332218684

namespace A103745

/-- `and(xor(1, 2*a(n-1)), xor(2, 1-n))` -/
def P13438414299332218684.Spec : Prop :=
  ∀ n, P13438414299332218684.a n = A103745 (n + 1)

end A103745

/-! ## A103745.P8708941921801966591

`xor(A000079(n), A103528(n+1))`
-/

namespace A103745.P8708941921801966591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A103528 (n + 1))

end

end A103745.P8708941921801966591

namespace A103745

/-- `xor(A000079(n), A103528(n+1))` -/
def P8708941921801966591.Spec : Prop :=
  ∀ n, P8708941921801966591.a n = A103745 (n + 1)

end A103745

/-! ## A103745.P6777559559285436123

`(A102371(n+1)+n+1)/2`
-/

namespace A103745.P6777559559285436123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102371 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A103745.P6777559559285436123

namespace A103745

/-- `(A102371(n+1)+n+1)/2` -/
def P6777559559285436123.Spec : Prop :=
  ∀ n, P6777559559285436123.a n = (A103745 (n + 1) : ℚ)

end A103745

/-!
# A103746: Numbers n such that prime(n)*prime(n+1) - 1 is semiprime.

The programs for A103746, there is no canonical definition to state claims against.
-/

/-! ## A103746.P13979173928630652616

`A000720(A093706(n+1))`
-/

namespace A103746.P13979173928630652616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A093706 (n + 1)).toNat

end

end A103746.P13979173928630652616

/-! ## A103746.P15008404585994377691

`A061395(p?[A093706(n+1)])`
-/

namespace A103746.P15008404585994377691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103746.P15008404585994377691

/-! ## A103746.P12662527951816519178

`A000720(ceil(sqrt(A103533(n+1))))`
-/

namespace A103746.P12662527951816519178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈Real.sqrt (A103533 (n + 1) : ℝ)⌉.toNat

end

end A103746.P12662527951816519178

/-! ## A103746.P16815156126788302932

`A000720(round(sqrt(A103533(n+1))))`
-/

namespace A103746.P16815156126788302932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A103533 (n + 1) : ℝ))).toNat

end

end A103746.P16815156126788302932

/-! ## A103746.P4896460906919342030

`A061395(∏{p}[A093706(n+1), #])`
-/

namespace A103746.P4896460906919342030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A103746.P4896460906919342030

/-! ## A103746.P17743204663500230651

`A061395(2*A093706(n+1))`
-/

namespace A103746.P17743204663500230651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A093706 (n + 1)).toNat

end

end A103746.P17743204663500230651

/-! ## A103746.P12887515464219234075

`A058933(p?[A093706(n+1)])`
-/

namespace A103746.P12887515464219234075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103746.P12887515464219234075

/-! ## A103746.P17253955838807895482

`A058933(A093706(n+1))%A174734(n+1)`
-/

namespace A103746.P17253955838807895482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (A093706 (n + 1)).toNat) (A174734 (n + 1))

end

end A103746.P17253955838807895482

/-!
# A103747: Trajectory of 2 under repeated application of the map n -> A102370(n).

The programs for A103747, the canonical program `A103747.P12641803871152441692` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103747 has offset 1).

The definition of A103747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103747.P12641803871152441692

`4*record[and(n+1, -17)]-2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103747

/-- `4*record[and(n+1, -17)]-2` -/
def P12641803871152441692.Spec : Prop :=
  ∀ n, P12641803871152441692.a n = A103747 (n + 1)

theorem P12641803871152441692.correct : P12641803871152441692.Spec := by
  intro n
  simp only [A103747, Nat.add_sub_cancel]

end A103747

/-! ## A103747.P4023289127452829261

`4*(A158057(A002265(A002265(n+1)))+n)-2`
-/

namespace A103747.P4023289127452829261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A158057 (A002265 (A002265 (n + 1)).toNat).toNat + (n : ℤ)) - 2

end

end A103747.P4023289127452829261

namespace A103747

/-- `4*(A158057(A002265(A002265(n+1)))+n)-2` -/
def P4023289127452829261.Spec : Prop :=
  ∀ n, P4023289127452829261.a n = A103747 (n + 1)

end A103747

/-! ## A103747.P12400408321469942991

`A047417(A126001(n+2))`
-/

namespace A103747.P12400408321469942991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047417 (A126001 (n + 2)).toNat

end

end A103747.P12400408321469942991

namespace A103747

/-- `A047417(A126001(n+2))` -/
def P12400408321469942991.Spec : Prop :=
  ∀ n, P12400408321469942991.a n = A103747 (n + 1)

end A103747

/-! ## A103747.P1026786787683178049

`A102370(a(n-1))` with `a(0)=2`
-/

namespace A103747.P1026786787683178049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A102370 (a (n - 1)).toNat

end

end A103747.P1026786787683178049

namespace A103747

/-- `A102370(a(n-1))` -/
def P1026786787683178049.Spec : Prop :=
  ∀ n, P1026786787683178049.a n = A103747 (n + 1)

end A103747

/-! ## A103747.P12429989297152845589

`A105228(a(n-1)+1)-1` with `a(0)=2`
-/

namespace A103747.P12429989297152845589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A105228 (a (n - 1) + 1).toNat - 1

end

end A103747.P12429989297152845589

namespace A103747

/-- `A105228(a(n-1)+1)-1` -/
def P12429989297152845589.Spec : Prop :=
  ∀ n, P12429989297152845589.a n = A103747 (n + 1)

end A103747

/-! ## A103747.P13452890179360763696

`a(n-1)+2*A103185(a(n-1))` with `a(0)=2`
-/

namespace A103747.P13452890179360763696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A103185 (a (n - 1)).toNat

end

end A103747.P13452890179360763696

namespace A103747

/-- `a(n-1)+2*A103185(a(n-1))` -/
def P13452890179360763696.Spec : Prop :=
  ∀ n, P13452890179360763696.a n = A103747 (n + 1)

end A103747

/-! ## A103747.P6186335892747142438

`A325805(a(n-1)+4)` with `a(0)=2`
-/

namespace A103747.P6186335892747142438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A325805 (a (n - 1) + 4).toNat

end

end A103747.P6186335892747142438

namespace A103747

/-- `A325805(a(n-1)+4)` -/
def P6186335892747142438.Spec : Prop :=
  ∀ n, P6186335892747142438.a n = A103747 (n + 1)

end A103747

/-!
# A103748: Triangle read by rows, based on the morphism f: 1->{2}, 2->{3}, 3->{3,3,2,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A103748, there is no canonical definition to state claims against.
-/

/-! ## A103748.P7836951972575118866

`(A104231(n)-1)%3+1`
-/

namespace A103748.P7836951972575118866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104231 n - 1) 3 + 1

end

end A103748.P7836951972575118866

/-! ## A103748.P1334670538196067728

`A255890(lcm((-1)^n, A104231(n)))`
-/

namespace A103748.P1334670538196067728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255890 (Int.lcm ((-1) ^ n) (A104231 n))

end

end A103748.P1334670538196067728

/-! ## A103748.P4077961460271305472

`A104246(or(C(2, n+2), A104231(n)))`
-/

namespace A103748.P4077961460271305472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (Int.lor (Nat.choose 2 (n + 2) : ℤ) (A104231 n)).toNat

end

end A103748.P4077961460271305472

/-! ## A103748.P17206999817801802726

`A002828(A104231(n)*A123726(n))`
-/

namespace A103748.P17206999817801802726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A104231 n * A123726 n).toNat

end

end A103748.P17206999817801802726

/-! ## A103748.P13528357157827472227

`A002828(A001489(n)+A104231(n)+n)`
-/

namespace A103748.P13528357157827472227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A001489 n + (A104231 n + (n : ℤ))).toNat

end

end A103748.P13528357157827472227

/-! ## A103748.P6657814776323440906

`A104246(A001489(n)+A104231(n)+n)`
-/

namespace A103748.P6657814776323440906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A001489 n + (A104231 n + (n : ℤ))).toNat

end

end A103748.P6657814776323440906

/-! ## A103748.P10315192860967897958

`A002828(A104231(n)-n-A001489(n))`
-/

namespace A103748.P10315192860967897958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A104231 n - (n : ℤ) - A001489 n).toNat

end

end A103748.P10315192860967897958

/-! ## A103748.P822574388136358494

`A104246(A104231(n)-n-A001489(n))`
-/

namespace A103748.P822574388136358494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A104231 n - (n : ℤ) - A001489 n).toNat

end

end A103748.P822574388136358494

/-!
# A103749: Expansion of x*(1+2*x)/(1+x+x^2-2*x^3).

The programs for A103749, the canonical program `A103749.P7526612899952067847` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103749 has offset 0).

The definition of A103749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103749.P7526612899952067847

`2*a(n-3)-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103749

/-- `2*a(n-3)-(a(n-1)+a(n-2))` -/
def P7526612899952067847.Spec : Prop :=
  ∀ n, P7526612899952067847.a n = A103749 n

theorem P7526612899952067847.correct : P7526612899952067847.Spec := by
  intro n
  simp only [A103749]

end A103749

/-! ## A103749.P16829314444314905456

`2*a(n-3)-a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A103749.P16829314444314905456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * a (n - 3) - a (n - 1) - a (n - 2)

end

end A103749.P16829314444314905456

namespace A103749

/-- `2*a(n-3)-a(n-1)-a(n-2)` -/
def P16829314444314905456.Spec : Prop :=
  ∀ n, P16829314444314905456.a n = A103749 n

theorem P16829314444314905456.correct : P16829314444314905456.Spec := by
  intro n
  simp only [A103749, Nat.add_sub_cancel, A103749.P16829314444314905456.a, A103749.P7526612899952067847.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103749

/-! ## A103749.P1459041238133663450

`a(n-3)+a(n-3)-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A103749.P1459041238133663450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + (a (n - 3) - (a (n - 1) + a (n - 2)))

end

end A103749.P1459041238133663450

namespace A103749

/-- `a(n-3)+a(n-3)-(a(n-1)+a(n-2))` -/
def P1459041238133663450.Spec : Prop :=
  ∀ n, P1459041238133663450.a n = A103749 n

theorem P1459041238133663450.correct : P1459041238133663450.Spec := by
  intro n
  simp only [A103749, Nat.add_sub_cancel, A103749.P1459041238133663450.a, A103749.P7526612899952067847.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103749

/-! ## A103749.P1173709145990156889

`a(n-3)-(a(n-1)-a(n-3))-a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A103749.P1173709145990156889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3)) - a (n - 2)

end

end A103749.P1173709145990156889

namespace A103749

/-- `a(n-3)-(a(n-1)-a(n-3))-a(n-2)` -/
def P1173709145990156889.Spec : Prop :=
  ∀ n, P1173709145990156889.a n = A103749 n

theorem P1173709145990156889.correct : P1173709145990156889.Spec := by
  intro n
  simp only [A103749, Nat.add_sub_cancel, A103749.P1173709145990156889.a, A103749.P7526612899952067847.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103749

/-! ## A103749.P16609529585346336122

`1-A077907(n)`
-/

namespace A103749.P16609529585346336122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077907 n

end

end A103749.P16609529585346336122

namespace A103749

/-- `1-A077907(n)` -/
def P16609529585346336122.Spec : Prop :=
  ∀ n, P16609529585346336122.a n = A103749 n

end A103749

/-! ## A103749.P1823720088791043554

`1-∑[A077975(n)]`
-/

namespace A103749.P1823720088791043554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103749.P1823720088791043554

namespace A103749

/-- `1-∑[A077975(n)]` -/
def P1823720088791043554.Spec : Prop :=
  ∀ n, P1823720088791043554.a n = A103749 n

end A103749

/-! ## A103749.P2405892681884476864

`1-∑[∑[A078045(n)]]`
-/

namespace A103749.P2405892681884476864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103749.P2405892681884476864

namespace A103749

/-- `1-∑[∑[A078045(n)]]` -/
def P2405892681884476864.Spec : Prop :=
  ∀ n, P2405892681884476864.a n = A103749 n

end A103749

/-!
# A103750: Expansion of (1+2*x^3)/(1-x+x^3-2*x^4).

The programs for A103750, the canonical program `A103750.P15848642850128113745` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103750 has offset 0).

The definition of A103750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103750.P15848642850128113745

`a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103750

/-- `a(n-1)-a(n-3)+2*a(n-4)` -/
def P15848642850128113745.Spec : Prop :=
  ∀ n, P15848642850128113745.a n = A103750 n

theorem P15848642850128113745.correct : P15848642850128113745.Spec := by
  intro n
  simp only [A103750]

end A103750

/-! ## A103750.P7857665555590842221

`a(n-1)-a(n-3)+a(n-4)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A103750.P7857665555590842221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) - a (n - 3) + (a (n - 4) + a (n - 4))

end

end A103750.P7857665555590842221

namespace A103750

/-- `a(n-1)-a(n-3)+a(n-4)+a(n-4)` -/
def P7857665555590842221.Spec : Prop :=
  ∀ n, P7857665555590842221.a n = A103750 n

theorem P7857665555590842221.correct : P7857665555590842221.Spec := by
  intro n
  simp only [A103750, Nat.add_sub_cancel, A103750.P7857665555590842221.a, A103750.P15848642850128113745.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103750

/-! ## A103750.P12244231501747014726

`a(n-1)-(a(n-3)-a(n-4)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A103750.P12244231501747014726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 4) - a (n - 4))

end

end A103750.P12244231501747014726

namespace A103750

/-- `a(n-1)-(a(n-3)-a(n-4)-a(n-4))` -/
def P12244231501747014726.Spec : Prop :=
  ∀ n, P12244231501747014726.a n = A103750 n

theorem P12244231501747014726.correct : P12244231501747014726.Spec := by
  intro n
  simp only [A103750, Nat.add_sub_cancel, A103750.P12244231501747014726.a, A103750.P15848642850128113745.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103750

/-!
# A103751: Squares whose digits are all positive and even.

The programs for A103751, there is no canonical definition to state claims against.
-/

/-! ## A103751.P15797580992450072190

`∩[A030098(n+1), A052041(n+1)]`
-/

namespace A103751.P15797580992450072190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103751.P15797580992450072190

/-! ## A103751.P1081374609659507476

`∩[A030097(n+1)², A052041(n+1)]`
-/

namespace A103751.P1081374609659507476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030097 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103751.P1081374609659507476

/-! ## A103751.P11951100398535655662

`∩[n², A045926(n+1)]`
-/

namespace A103751.P11951100398535655662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103751.P11951100398535655662

/-! ## A103751.P9270242784679783797

`∩[A052041(n+1), A075787(n+1)]`
-/

namespace A103751.P9270242784679783797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103751.P9270242784679783797

/-! ## A103751.P6778586628248238774

`∩[A045926(2*(n+1)), A030098(n+1)]`
-/

namespace A103751.P6778586628248238774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045926 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103751.P6778586628248238774

/-!
# A103754: Number of contiguous digits i in the counting numbers, for i=0.

The programs for A103754, there is no canonical definition to state claims against.
-/

/-! ## A103754.P16827664204629809308

`val(n+9, 19)+1`
-/

namespace A103754.P16827664204629809308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 9) 19 + 1

end

end A103754.P16827664204629809308

/-! ## A103754.P1538564509431420078

`Δ[comp[a(n-1)+20]]` with `a(0)=11`
-/

namespace A103754.P1538564509431420078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f2 =>
  f2 (n - 1) + 20

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A103754.P1538564509431420078

/-!
# A103756: Number of contiguous digits i in the counting numbers, for i=2.

The programs for A103756, there is no canonical definition to state claims against.
-/

/-! ## A103756.P3891092614319687550

`A007318(gcd(A176488(n), A275897(n+1)))`
-/

namespace A103756.P3891092614319687550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.gcd (A176488 n) (A275897 (n + 1)))

end

end A103756.P3891092614319687550

/-! ## A103756.P8164578957891409176

`gcd(A108815(3*n+1), A206923(A290334(n+1)))`
-/

namespace A103756.P8164578957891409176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108815 (3 * n + 1)) (A206923 (A290334 (n + 1)).toNat)

end

end A103756.P8164578957891409176

/-! ## A103756.P10496043151979558394

`A262626(gcd(A055956(n), A113716(n)))`
-/

namespace A103756.P10496043151979558394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262626 (Int.gcd (A055956 n) (A113716 n))

end

end A103756.P10496043151979558394

/-! ## A103756.P4519216315534719134

`A055229(∑[∑[A295294(n+1)]])`
-/

namespace A103756.P4519216315534719134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103756.P4519216315534719134

/-!
# A103757: Number of contiguous non-i digits in the counting numbers, for i=0.

The programs for A103757, there is no canonical definition to state claims against.
-/

/-! ## A103757.P12056627444986848002

`Δ[record[A065650(n)-A076310(n)]]`
-/

namespace A103757.P12056627444986848002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 n - A076310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103757.P12056627444986848002

/-! ## A103757.P9055377464753057516

`Δ[record[A031287(n+1)-A033619(n+1)]]`
-/

namespace A103757.P9055377464753057516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031287 (n + 1) - A033619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103757.P9055377464753057516

/-!
# A103759: a(n) = sigma((10^n - 1)/9), where sigma(n) is the sum of positive divisors of n.

The programs for A103759, there is no canonical definition to state claims against.
-/

/-! ## A103759.P16482189277933627132

`A077810(∑[2^n])`
-/

namespace A103759.P16482189277933627132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077810 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103759.P16482189277933627132

/-! ## A103759.P5709598132046688612

`record[A077810(A038712(n+1))]`
-/

namespace A103759.P5709598132046688612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077810 (A038712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103759.P5709598132046688612

/-!
# A103762: a(n) = least k with Sum_{j = n..k} 1/j >= 1.

The programs for A103762, the canonical program `A103762.P12145414582890211163` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103762 has offset 1).

The definition of A103762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103762.P2058472569377018121

`A213908(n+1)+n`
-/

namespace A103762.P2058472569377018121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) + (n : ℤ)

end

end A103762.P2058472569377018121

namespace A103762

/-- `A213908(n+1)+n` -/
def P2058472569377018121.Spec : Prop :=
  ∀ n, P2058472569377018121.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P12145414582890211163

`A065475(A136616(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103762

/-- `A065475(A136616(n))` -/
def P12145414582890211163.Spec : Prop :=
  ∀ n, P12145414582890211163.a n = A103762 (n + 1)

theorem P12145414582890211163.correct : P12145414582890211163.Spec := by
  intro n
  simp only [A103762, Nat.add_sub_cancel]

end A103762

/-! ## A103762.P4842650835651874341

`A136616(n)+A057427(n)`
-/

namespace A103762.P4842650835651874341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136616 n + A057427 n

end

end A103762.P4842650835651874341

namespace A103762

/-- `A136616(n)+A057427(n)` -/
def P4842650835651874341.Spec : Prop :=
  ∀ n, P4842650835651874341.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P11012696063076465845

`A136616(n)-A057428(n)`
-/

namespace A103762.P11012696063076465845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136616 n - A057428 n

end

end A103762.P11012696063076465845

namespace A103762

/-- `A136616(n)-A057428(n)` -/
def P11012696063076465845.Spec : Prop :=
  ∀ n, P11012696063076465845.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P5874832941201684025

`A065475(A136617(n+1)+n)`
-/

namespace A103762.P5874832941201684025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A136617 (n + 1) + (n : ℤ)).toNat

end

end A103762.P5874832941201684025

namespace A103762

/-- `A065475(A136617(n+1)+n)` -/
def P5874832941201684025.Spec : Prop :=
  ∀ n, P5874832941201684025.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P18232760991394958294

`A136617(n+1)+A087156(n+1)`
-/

namespace A103762.P18232760991394958294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + A087156 (n + 1)

end

end A103762.P18232760991394958294

namespace A103762

/-- `A136617(n+1)+A087156(n+1)` -/
def P18232760991394958294.Spec : Prop :=
  ∀ n, P18232760991394958294.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P8485610747309818288

`A136617(n+1)+A057427(n)+n`
-/

namespace A103762.P8485610747309818288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + (A057427 n + (n : ℤ))

end

end A103762.P8485610747309818288

namespace A103762

/-- `A136617(n+1)+A057427(n)+n` -/
def P8485610747309818288.Spec : Prop :=
  ∀ n, P8485610747309818288.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P10530734802999405131

`A136617(n+1)+n-A057428(n)`
-/

namespace A103762.P10530734802999405131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + ((n : ℤ) - A057428 n)

end

end A103762.P10530734802999405131

namespace A103762

/-- `A136617(n+1)+n-A057428(n)` -/
def P10530734802999405131.Spec : Prop :=
  ∀ n, P10530734802999405131.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P16633472131314035276

`char[A055120(n+1)]+A136617(n+1)+n`
-/

namespace A103762.P16633472131314035276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A136617 (n + 1) + (n : ℤ))

end

end A103762.P16633472131314035276

namespace A103762

/-- `char[A055120(n+1)]+A136617(n+1)+n` -/
def P16633472131314035276.Spec : Prop :=
  ∀ n, P16633472131314035276.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P18326717706233107110

`A136617(n+1)+(n+1)%A018252(n+1)`
-/

namespace A103762.P18326717706233107110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + Int.tmod (n + 1 : ℤ) (A018252 (n + 1))

end

end A103762.P18326717706233107110

namespace A103762

/-- `A136617(n+1)+(n+1)%A018252(n+1)` -/
def P18326717706233107110.Spec : Prop :=
  ∀ n, P18326717706233107110.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P12357495073475245304

`A136617(n+1)%∑[A082977(n+2)]+n+1`
-/

namespace A103762.P12357495073475245304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136617 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A103762.P12357495073475245304

namespace A103762

/-- `A136617(n+1)%∑[A082977(n+2)]+n+1` -/
def P12357495073475245304.Spec : Prop :=
  ∀ n, P12357495073475245304.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P16395305944122256051

`A096143(n+1)+A136616(n)-A055980(n+1)`
-/

namespace A103762.P16395305944122256051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096143 (n + 1) + (A136616 n - A055980 (n + 1))

end

end A103762.P16395305944122256051

namespace A103762

/-- `A096143(n+1)+A136616(n)-A055980(n+1)` -/
def P16395305944122256051.Spec : Prop :=
  ∀ n, P16395305944122256051.a n = A103762 (n + 1)

end A103762

/-! ## A103762.P18270546340038752308

`record[(n+1)*(A054404(n+2)-A054404(n+1))]`
-/

namespace A103762.P18270546340038752308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A054404 (n + 2) - A054404 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103762.P18270546340038752308

namespace A103762

/-- `record[(n+1)*(A054404(n+2)-A054404(n+1))]` -/
def P18270546340038752308.Spec : Prop :=
  ∀ n, P18270546340038752308.a n = A103762 (n + 1)

end A103762

/-!
# A103763: a(n) = digit reversal of A103741(n).

The programs for A103763, there is no canonical definition to state claims against.
-/

/-! ## A103763.P7457115836350605704

`A004086(A103741(n+1))`
-/

namespace A103763.P7457115836350605704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A103741 (n + 1)).toNat

end

end A103763.P7457115836350605704

/-! ## A103763.P787975765668638246

`A004093(A103741(n+1)/2)`
-/

namespace A103763.P787975765668638246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (SequenceMachineLib.roundAway ((A103741 (n + 1) : ℚ) / 2)).toNat

end

end A103763.P787975765668638246

/-! ## A103763.P4985789794990022822

`A103168(lcm(2, A103741(n+1)))`
-/

namespace A103763.P4985789794990022822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (Int.lcm 2 (A103741 (n + 1)))

end

end A103763.P4985789794990022822

/-! ## A103763.P5811608173018710943

`A103168(A103741(n+1)%A103764(n+1))`
-/

namespace A103763.P5811608173018710943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (Int.tmod (A103741 (n + 1)) (A103764 (n + 1))).toNat

end

end A103763.P5811608173018710943

/-! ## A103763.P8491991941757290692

`A103168(A103741(n+1))%A103837(n+1)`
-/

namespace A103763.P8491991941757290692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103168 (A103741 (n + 1)).toNat) (A103837 (n + 1))

end

end A103763.P8491991941757290692

/-!
# A103764: Elements of A103741 that do not terminate in a zero digit.

The programs for A103764, there is no canonical definition to state claims against.
-/

/-! ## A103764.P16907818752598402652

`A004086(A103837(n+1))`
-/

namespace A103764.P16907818752598402652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A103837 (n + 1)).toNat

end

end A103764.P16907818752598402652

/-! ## A103764.P2102237171185155394

`filter[A103741(n+1), A011558(#)]`
-/

namespace A103764.P2102237171185155394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A103764.P2102237171185155394

/-!
# A103765: Number of times n can be written as sum of a minimal set of primes.

The programs for A103765, there is no canonical definition to state claims against.
-/

/-! ## A103765.P2492309571390212345

`A103285(round(log2(A197929(3*n+2))²/12))`
-/

namespace A103765.P2492309571390212345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103285 (SequenceMachineLib.roundAway (Real.logb 2 (A197929 (3 * n + 2) : ℝ) ^ 2 / 12)).toNat

end

end A103765.P2492309571390212345

/-! ## A103765.P16449574922405071423

`Δ[lt[A283826(2*n+1), A299879(n+1)]]`
-/

namespace A103765.P16449574922405071423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283826 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A103765.P16449574922405071423

/-! ## A103765.P14174584023667199187

`A147999(A061358(n+2)%A075200(n+1))`
-/

namespace A103765.P14174584023667199187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147999 (Int.tmod (A061358 (n + 2)) (A075200 (n + 1))).toNat

end

end A103765.P14174584023667199187

/-! ## A103765.P12625702339984433724

`A002379(gcd(A061358(n+2), A270606(n+1)))`
-/

namespace A103765.P12625702339984433724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (Int.gcd (A061358 (n + 2)) (A270606 (n + 1)))

end

end A103765.P12625702339984433724

/-! ## A103765.P890005182066657562

`A045917(gcd(n^A001281(n), A001281(n))+1)`
-/

namespace A103765.P890005182066657562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (Int.gcd (SequenceMachineLib.roundAway ((n : ℚ) ^ (A001281 n : ℤ))) (A001281 n) + 1)

end

end A103765.P890005182066657562

/-!
# A103766: Primes equal to the sum of two integers squares, integers whose sum form prime(n) congruent to 1 (mod 4).

The programs for A103766, there is no canonical definition to state claims against.
-/

/-! ## A103766.P17864289490398969516

`A002645(A127079(2*(n+2)))`
-/

namespace A103766.P17864289490398969516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002645 (A127079 (2 * (n + 2))).toNat

end

end A103766.P17864289490398969516

/-! ## A103766.P4200420809218539671

`A002645(A278058(n+1)+A130534(n))`
-/

namespace A103766.P4200420809218539671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002645 (A278058 (n + 1) + A130534 n).toNat

end

end A103766.P4200420809218539671

/-! ## A103766.P17905911638134754912

`A080109(n+1)-A000982(A145046(n))`
-/

namespace A103766.P17905911638134754912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080109 (n + 1) - A000982 (A145046 n).toNat

end

end A103766.P17905911638134754912

/-!
# A103768: a(n) = (29*3^n - 18(n + 3)*2^n + 6n^2 + 24n + 27)/12.

The programs for A103768, there is no canonical definition to state claims against.
-/

/-! ## A103768.P5204328755902691252

`A078341(∑[char[1]+1+n]+3)`
-/

namespace A103768.P5204328755902691252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078341 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A103768.P5204328755902691252

/-! ## A103768.P11762758680326650622

`A141468(A295256(n))%A026781(n)`
-/

namespace A103768.P11762758680326650622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141468 (A295256 n).toNat) (A026781 n)

end

end A103768.P11762758680326650622

/-!
# A103769: Trinomial transform of central binomial coefficients A001405.

The programs for A103769, there is no canonical definition to state claims against.
-/

/-! ## A103769.P8177100137542665388

`A255072(Δ[A190984(n)])`
-/

namespace A103769.P8177100137542665388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (f1 (n + 1) - f1 n).toNat

end

end A103769.P8177100137542665388

/-!
# A103770: A weighted tribonacci sequence, (1,3,9).

The programs for A103770, the canonical program `A103770.P8714366380047556397` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103770 has offset 0).

The definition of A103770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103770.P8714366380047556397

`a(n-1)+3*a(n-2)+9*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103770

/-- `a(n-1)+3*a(n-2)+9*a(n-3)` -/
def P8714366380047556397.Spec : Prop :=
  ∀ n, (P8714366380047556397.a n : ℤ) = A103770 n

theorem P8714366380047556397.correct : P8714366380047556397.Spec := by
  intro n
  simp only [A103770]

end A103770

/-!
# A103771: Expansion of 1/(1-4x-4x^2-4x^3).

The programs for A103771, the canonical program `A103771.P5071060963127259516` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103771 has offset 0).

The definition of A103771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103771.P5071060963127259516

`record[4*(a(n-1)+a(n-2)+a(n-3))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103771

/-- `record[4*(a(n-1)+a(n-2)+a(n-3))]` -/
def P5071060963127259516.Spec : Prop :=
  ∀ n, (P5071060963127259516.a n : ℤ) = A103771 n

theorem P5071060963127259516.correct : P5071060963127259516.Spec := by
  intro n
  simp only [A103771]

end A103771

/-!
# A103772: Larger of two sides in a (k,k,k-1)-integer-sided triangle with integer area.

The programs for A103772, the canonical program `A103772.P18086205191091586189` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103772 has offset 1).

The definition of A103772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103772.P18086205191091586189

`14*a(n-1)-a(n-2)+4` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103772

/-- `14*a(n-1)-a(n-2)+4` -/
def P18086205191091586189.Spec : Prop :=
  ∀ n, P18086205191091586189.a n = A103772 (n + 1)

theorem P18086205191091586189.correct : P18086205191091586189.Spec := by
  intro n
  simp only [A103772, Nat.add_sub_cancel]

end A103772

/-! ## A103772.P16629386362578077442

`(4*A001570(n+1)-1)/3`
-/

namespace A103772.P16629386362578077442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A001570 (n + 1) - 1 : ℚ) / 3

end

end A103772.P16629386362578077442

namespace A103772

/-- `(4*A001570(n+1)-1)/3` -/
def P16629386362578077442.Spec : Prop :=
  ∀ n, P16629386362578077442.a n = (A103772 (n + 1) : ℚ)

end A103772

/-! ## A103772.P13156182905346356388

`A120893(Δ[n²])`
-/

namespace A103772.P13156182905346356388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A103772.P13156182905346356388

namespace A103772

/-- `A120893(Δ[n²])` -/
def P13156182905346356388.Spec : Prop :=
  ∀ n, P13156182905346356388.a n = A103772 (n + 1)

end A103772

/-! ## A103772.P6132762711066153558

`8*A217855(n)+1`
-/

namespace A103772.P6132762711066153558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A217855 n + 1

end

end A103772.P6132762711066153558

namespace A103772

/-- `8*A217855(n)+1` -/
def P6132762711066153558.Spec : Prop :=
  ∀ n, P6132762711066153558.a n = A103772 (n + 1)

end A103772

/-! ## A103772.P11861792651650167119

`∑[2*A067900(n)]+1`
-/

namespace A103772.P11861792651650167119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A103772.P11861792651650167119

namespace A103772

/-- `∑[2*A067900(n)]+1` -/
def P11861792651650167119.Spec : Prop :=
  ∀ n, P11861792651650167119.a n = A103772 (n + 1)

end A103772

/-! ## A103772.P5559613038064867862

`∑[A231896(2*n)]+1`
-/

namespace A103772.P5559613038064867862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A103772.P5559613038064867862

namespace A103772

/-- `∑[A231896(2*n)]+1` -/
def P5559613038064867862.Spec : Prop :=
  ∀ n, P5559613038064867862.a n = A103772 (n + 1)

end A103772

/-! ## A103772.P5014253333830410071

`2*A045899(n+1)+1`
-/

namespace A103772.P5014253333830410071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045899 (n + 1) + 1

end

end A103772.P5014253333830410071

namespace A103772

/-- `2*A045899(n+1)+1` -/
def P5014253333830410071.Spec : Prop :=
  ∀ n, P5014253333830410071.a n = A103772 (n + 1)

end A103772

/-! ## A103772.P3726159163793593101

`2*A046184(n+1)-1`
-/

namespace A103772.P3726159163793593101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046184 (n + 1) - 1

end

end A103772.P3726159163793593101

namespace A103772

/-- `2*A046184(n+1)-1` -/
def P3726159163793593101.Spec : Prop :=
  ∀ n, P3726159163793593101.a n = A103772 (n + 1)

end A103772

/-! ## A103772.P15651082261694453779

`2*A006253(2*n)-1`
-/

namespace A103772.P15651082261694453779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006253 (2 * n) - 1

end

end A103772.P15651082261694453779

namespace A103772

/-- `2*A006253(2*n)-1` -/
def P15651082261694453779.Spec : Prop :=
  ∀ n, P15651082261694453779.a n = A103772 (n + 1)

end A103772

/-! ## A103772.P18333474665189233380

`2*A079935(n+1)²-1`
-/

namespace A103772.P18333474665189233380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079935 (n + 1) ^ 2 - 1

end

end A103772.P18333474665189233380

namespace A103772

/-- `2*A079935(n+1)²-1` -/
def P18333474665189233380.Spec : Prop :=
  ∀ n, P18333474665189233380.a n = A103772 (n + 1)

end A103772

/-!
# A103774: Number of ways to write n! as product of squarefree numbers.

The programs for A103774, there is no canonical definition to state claims against.
-/

/-! ## A103774.P589154032971400404

`A050325(A098718(n+1))`
-/

namespace A103774.P589154032971400404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050325 (A098718 (n + 1)).toNat

end

end A103774.P589154032971400404

/-! ## A103774.P10270534008439023339

`A318360(A325508(n+1))`
-/

namespace A103774.P10270534008439023339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A325508 (n + 1)).toNat

end

end A103774.P10270534008439023339

/-!
# A103775: Number of ways to write n! as product of distinct squarefree numbers.

The programs for A103775, the canonical program `A103775.P10399604879756772629` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103775 has offset 1).

The definition of A103775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103775.P10399604879756772629

`a(3%n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=1, a(5)=0, a(6)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103775

/-- `a(3%n)` -/
def P10399604879756772629.Spec : Prop :=
  ∀ n, (P10399604879756772629.a n : ℤ) = A103775 (n + 1)

theorem P10399604879756772629.correct : P10399604879756772629.Spec := by
  intro n
  simp only [A103775, Nat.add_sub_cancel]

end A103775

/-!
# A103776: Primes p such that 8*p^2 + 4*p + 1 is also prime.

The programs for A103776, the canonical program `A103776.P935012817224811071` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103776 has offset 1).

The definition of A103776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103776.P935012817224811071

`record[A006530(4*A088759(n+1)+2)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A103776

/-- `record[A006530(4*A088759(n+1)+2)]` -/
def P935012817224811071.Spec : Prop :=
  ∀ n, P935012817224811071.a n = A103776 (n + 1)

theorem P935012817224811071.correct : P935012817224811071.Spec := by
  intro n
  simp only [A103776, Nat.add_sub_cancel]

end A103776

/-! ## A103776.P7106111835871492295

`record[A006530(A016825(A088759(n+1)))]`
-/

namespace A103776.P7106111835871492295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016825 (A088759 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103776.P7106111835871492295

namespace A103776

/-- `record[A006530(A016825(A088759(n+1)))]` -/
def P7106111835871492295.Spec : Prop :=
  ∀ n, P7106111835871492295.a n = A103776 (n + 1)

end A103776

/-! ## A103776.P9397650159372895735

`p?[A117494(A027861(n+1))]`
-/

namespace A103776.P9397650159372895735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A027861 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103776.P9397650159372895735

namespace A103776

/-- `p?[A117494(A027861(n+1))]` -/
def P9397650159372895735.Spec : Prop :=
  ∀ n, P9397650159372895735.a n = A103776 (n + 1)

end A103776

/-! ## A103776.P18088789946173128229

`p?[A029578(A027861(n+2))]`
-/

namespace A103776.P18088789946173128229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A027861 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103776.P18088789946173128229

namespace A103776

/-- `p?[A029578(A027861(n+2))]` -/
def P18088789946173128229.Spec : Prop :=
  ∀ n, P18088789946173128229.a n = A103776 (n + 1)

end A103776

/-! ## A103776.P1714827529235372048

`p?[record[A025480(A002731(n+1))]]`
-/

namespace A103776.P1714827529235372048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A002731 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103776.P1714827529235372048

namespace A103776

/-- `p?[record[A025480(A002731(n+1))]]` -/
def P1714827529235372048.Spec : Prop :=
  ∀ n, P1714827529235372048.a n = A103776 (n + 1)

end A103776

/-!
# A103778: Inverse of trinomial triangle A071675.

The programs for A103778, there is no canonical definition to state claims against.
-/

/-! ## A103778.P14197515904220189615

`xor(A023645(A347811(n)), A344566(n))`
-/

namespace A103778.P14197515904220189615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023645 (A347811 n).toNat) (A344566 n)

end

end A103778.P14197515904220189615

/-! ## A103778.P4149644995672473438

`A100218(n)+A059841(A114153(n))`
-/

namespace A103778.P4149644995672473438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n + A059841 (A114153 n).toNat

end

end A103778.P4149644995672473438

/-! ## A103778.P5015205955967081490

`A286509(A061579(n)+A018895(n))`
-/

namespace A103778.P5015205955967081490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (A061579 n + A018895 n).toNat

end

end A103778.P5015205955967081490

/-! ## A103778.P8226338205295239859

`A286509(or(A018895(n), A061579(n)))`
-/

namespace A103778.P8226338205295239859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (Int.lor (A018895 n) (A061579 n)).toNat

end

end A103778.P8226338205295239859

/-! ## A103778.P9007268059728009384

`A350847(A373298(n))+A109466(n)`
-/

namespace A103778.P9007268059728009384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (A373298 n).toNat + A109466 n

end

end A103778.P9007268059728009384

/-!
# A103779: Series reversion of y + y^2 + y^3.

The programs for A103779, there is no canonical definition to state claims against.
-/

/-! ## A103779.P4944624311717371911

`A103778(∑[n]+1)`
-/

namespace A103779.P4944624311717371911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103778 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A103779.P4944624311717371911

/-!
# A103780: Row sums of square of trinomial triangle A071675.

The programs for A103780, there is no canonical definition to state claims against.
-/

/-! ## A103780.P11095370209796338698

`A131843(C(A227045(n), 2))`
-/

namespace A103780.P11095370209796338698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 (Nat.choose (A227045 n).toNat 2)

end

end A103780.P11095370209796338698

/-! ## A103780.P8458508648369843870

`2*A023190(A118398(n))-1`
-/

namespace A103780.P8458508648369843870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023190 (A118398 n).toNat - 1

end

end A103780.P8458508648369843870

/-! ## A103780.P9658278392422200650

`A293006(n)+A221646(A000142(n))`
-/

namespace A103780.P9658278392422200650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293006 n + A221646 (A000142 n).toNat

end

end A103780.P9658278392422200650

/-! ## A103780.P3469937305095771945

`A293006(n)+A285572(A057992(n))`
-/

namespace A103780.P3469937305095771945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293006 n + A285572 (A057992 n).toNat

end

end A103780.P3469937305095771945

/-!
# A103781: Sum of any four successive terms is prime, a(1)=a(2)=0,a(3)=1.

The programs for A103781, the canonical program `A103781.P11199361034277531858` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103781 has offset 1).

The definition of A103781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103781.P11199361034277531858

`Δ[A000040(n-3)+a(n-4)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103781

/-- `Δ[A000040(n-3)+a(n-4)]` -/
def P11199361034277531858.Spec : Prop :=
  ∀ n, P11199361034277531858.a n = A103781 (n + 1)

theorem P11199361034277531858.correct : P11199361034277531858.Spec := by
  intro n
  simp only [A103781, Nat.add_sub_cancel]

end A103781

/-!
# A103783: Primes of the form primorial P(k)*n-1 with minimal n, n>0, k>=2.

The programs for A103783, there is no canonical definition to state claims against.
-/

/-! ## A103783.P8352937591230904492

`A136356(2*n+3)-A070435(A213321(n+1))`
-/

namespace A103783.P8352937591230904492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136356 (2 * n + 3) - A070435 (A213321 (n + 1)).toNat

end

end A103783.P8352937591230904492

/-! ## A103783.P16915524022365816311

`A103515(A024641(n)+1)`
-/

namespace A103783.P16915524022365816311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103515 (A024641 n + 1).toNat

end

end A103783.P16915524022365816311

/-! ## A103783.P7213125013760587102

`A103515(A237344(n+1))`
-/

namespace A103783.P7213125013760587102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103515 (A237344 (n + 1)).toNat

end

end A103783.P7213125013760587102

/-!
# A103784: Minimal n that makes primorial P(k)*n-1 prime, k>=2, n>0.

The programs for A103784, there is no canonical definition to state claims against.
-/

/-! ## A103784.P17380337699437363152

`A053000(A001358(n+1)^A124767(n))`
-/

namespace A103784.P17380337699437363152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (SequenceMachineLib.roundAway ((A001358 (n + 1) : ℚ) ^ (A124767 n : ℤ))).toNat

end

end A103784.P17380337699437363152

/-!
# A103785: Primes of the form A019565(2^n-1-k)+A019565(k) with minimum k.

The programs for A103785, there is no canonical definition to state claims against.
-/

/-! ## A103785.P4320026964657869928

`A001414(A394782(n+1))`
-/

namespace A103785.P4320026964657869928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A394782 (n + 1)).toNat

end

end A103785.P4320026964657869928

/-! ## A103785.P670863045698678476

`record[A006530(A226085(n+1)-1)]`
-/

namespace A103785.P670863045698678476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A226085 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103785.P670863045698678476

/-!
# A103787: a(n) = number of k's that make primorial P(n)/A019565(k)+A019565(k) prime, A019565(k)^2<=P(n).

The programs for A103787, there is no canonical definition to state claims against.
-/

/-! ## A103787.P13750859910288748489

`∑[A186053(A138356(n))]`
-/

namespace A103787.P13750859910288748489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186053 (A138356 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103787.P13750859910288748489

/-!
# A103790: a(n) = the minimum k that makes prime(n)+A019565(k) prime.

The programs for A103790, there is no canonical definition to state claims against.
-/

/-! ## A103790.P11976787839910582009

`A000120(A007088(A100380(n+1))²)`
-/

namespace A103790.P11976787839910582009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007088 (A100380 (n + 1)).toNat ^ 2).toNat

end

end A103790.P11976787839910582009

/-! ## A103790.P16126526019377650839

`A001045(A175193(n+1))%A073545(n)`
-/

namespace A103790.P16126526019377650839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001045 (A175193 (n + 1)).toNat) (A073545 n)

end

end A103790.P16126526019377650839

/-! ## A103790.P14176249198503792326

`A056239(A175194(n+1))%A073545(n)`
-/

namespace A103790.P14176249198503792326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A175194 (n + 1)).toNat) (A073545 n)

end

end A103790.P14176249198503792326

/-! ## A103790.P9896613140658915446

`A231557(A008864(n+1))%A073545(n)`
-/

namespace A103790.P9896613140658915446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231557 (A008864 (n + 1)).toNat) (A073545 n)

end

end A103790.P9896613140658915446

/-! ## A103790.P11121793798719964817

`A006995(A175193(n+1))%A265947(2*n+1)`
-/

namespace A103790.P11121793798719964817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006995 (A175193 (n + 1)).toNat) (A265947 (2 * n + 1))

end

end A103790.P11121793798719964817

/-!
# A103794: Smallest number b such that b^prime(n) - (b-1)^prime(n) is prime.

The programs for A103794, there is no canonical definition to state claims against.
-/

/-! ## A103794.P10796464383616702849

`A222119(n+1)+1`
-/

namespace A103794.P10796464383616702849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222119 (n + 1) + 1

end

end A103794.P10796464383616702849

/-! ## A103794.P12405567138754350146

`A250201(p?[xor(1, n)])`
-/

namespace A103794.P12405567138754350146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A103794.P12405567138754350146

/-! ## A103794.P7458663747903006508

`A250201(Δ[A007504(n)])`
-/

namespace A103794.P7458663747903006508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (f1 (n + 1) - f1 n).toNat

end

end A103794.P7458663747903006508

/-! ## A103794.P389573448858622613

`A020725(A222119(n+1))`
-/

namespace A103794.P389573448858622613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A222119 (n + 1)).toNat

end

end A103794.P389573448858622613

/-! ## A103794.P1796053746516250728

`A250201(A000040(n+1))`
-/

namespace A103794.P1796053746516250728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A000040 (n + 1)).toNat

end

end A103794.P1796053746516250728

/-! ## A103794.P11107194382040979606

`A250201(A008578(n+2))`
-/

namespace A103794.P11107194382040979606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A008578 (n + 2)).toNat

end

end A103794.P11107194382040979606

/-! ## A103794.P8125425661284791562

`A250201(A116974(n+2))`
-/

namespace A103794.P8125425661284791562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A116974 (n + 2)).toNat

end

end A103794.P8125425661284791562

/-! ## A103794.P14565685567203908380

`A250201(A161428(n+2))`
-/

namespace A103794.P14565685567203908380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A161428 (n + 2)).toNat

end

end A103794.P14565685567203908380

/-! ## A103794.P10263020552795894170

`A250201(A162786(n+2))`
-/

namespace A103794.P10263020552795894170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A162786 (n + 2)).toNat

end

end A103794.P10263020552795894170

/-!
# A103795: Minimal base b such that (b^prime(n)+1)/(b+1) is prime.

The programs for A103795, there is no canonical definition to state claims against.
-/

/-! ## A103795.P10423729188609600209

`A085398(2*p?[2*n+1])`
-/

namespace A103795.P10423729188609600209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A103795.P10423729188609600209

/-! ## A103795.P13413689216429757228

`A117544(2*p?[2*n+1])`
-/

namespace A103795.P13413689216429757228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117544 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A103795.P13413689216429757228

/-! ## A103795.P17111323209550351327

`A085398(A073582(n+2))`
-/

namespace A103795.P17111323209550351327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A073582 (n + 2)).toNat

end

end A103795.P17111323209550351327

/-! ## A103795.P651673695163295286

`A085398(A100484(n+2))`
-/

namespace A103795.P651673695163295286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A100484 (n + 2)).toNat

end

end A103795.P651673695163295286

/-! ## A103795.P549587697258083805

`A085398(A001747(n+3))`
-/

namespace A103795.P549587697258083805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A001747 (n + 3)).toNat

end

end A103795.P549587697258083805

/-! ## A103795.P1246460230925302682

`A085398(lcm(2, p?[A004273(n)]))`
-/

namespace A103795.P1246460230925302682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A103795.P1246460230925302682

/-! ## A103795.P11181458107598634701

`A085398(2*A000040(n+2))`
-/

namespace A103795.P11181458107598634701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (2 * A000040 (n + 2)).toNat

end

end A103795.P11181458107598634701

/-! ## A103795.P12871273449193849207

`A117544(2*A000040(n+2))`
-/

namespace A103795.P12871273449193849207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117544 (2 * A000040 (n + 2)).toNat

end

end A103795.P12871273449193849207

/-! ## A103795.P3373012334830086424

`A085398(2*record[A020639(n+3)])`
-/

namespace A103795.P3373012334830086424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103795.P3373012334830086424

/-! ## A103795.P18187865772992805071

`A085398(A051755(A008864(n+2)))`
-/

namespace A103795.P18187865772992805071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A051755 (A008864 (n + 2)).toNat).toNat

end

end A103795.P18187865772992805071

/-!
# A103796: Indices of n such that A019565(n)+1 is prime.

The programs for A103796, there is no canonical definition to state claims against.
-/

/-! ## A103796.P7750322042207131740

`eq[1, A001222(A019565(n)+1)]`
-/

namespace A103796.P7750322042207131740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103796.P7750322042207131740

/-! ## A103796.P6218365724286913776

`eq[1, A033273(A019565(n)+1)]`
-/

namespace A103796.P6218365724286913776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A019565 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103796.P6218365724286913776

/-! ## A103796.P874577879164220814

`eq[2, A000005(A019565(n)+1)]`
-/

namespace A103796.P874577879164220814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103796.P874577879164220814

/-! ## A103796.P3860059597788511115

`eq[2, A101296(A019565(n)+1)]`
-/

namespace A103796.P3860059597788511115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A019565 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103796.P3860059597788511115

/-! ## A103796.P2440405769998005664

`eq[2, A305800(A019565(n)+1)]`
-/

namespace A103796.P2440405769998005664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A019565 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103796.P2440405769998005664

/-!
# A103797: Indices of n such that A019565(n)-1 is prime.

The programs for A103797, there is no canonical definition to state claims against.
-/

/-! ## A103797.P9783857520832974538

`record[(n+2)/A339812(n+2)]`
-/

namespace A103797.P9783857520832974538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A339812 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103797.P9783857520832974538

/-! ## A103797.P12600778274975334628

`eq[1, A339812(n+1)]+1`
-/

namespace A103797.P12600778274975334628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A103797.P12600778274975334628

/-! ## A103797.P15790084255408566647

`eq[2, A339811(n+1)]+1`
-/

namespace A103797.P15790084255408566647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A103797.P15790084255408566647

/-! ## A103797.P1564254638432119707

`eq[2, A339810(n+1)]+1`
-/

namespace A103797.P1564254638432119707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A103797.P1564254638432119707

/-! ## A103797.P16255299208597600621

`eq[1, A339812(A028310(n))]`
-/

namespace A103797.P16255299208597600621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339812 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103797.P16255299208597600621

/-! ## A103797.P7438574852762933012

`A141310(eq[2, A339810(n+1)])`
-/

namespace A103797.P7438574852762933012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103797.P7438574852762933012

/-! ## A103797.P4878610019703990722

`eq[1, A339812(A000007(n)+n)]`
-/

namespace A103797.P4878610019703990722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339812 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103797.P4878610019703990722

/-! ## A103797.P3261495221975650515

`eq[2, A339810(A000007(n)+n)]`
-/

namespace A103797.P3261495221975650515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339810 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103797.P3261495221975650515

/-! ## A103797.P9462449054135468622

`record[A005843(n+1)/A339810(n+1)]`
-/

namespace A103797.P9462449054135468622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A339810 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103797.P9462449054135468622

/-! ## A103797.P387495470041608659

`eq[2, A339811(A065033(2*n))]`
-/

namespace A103797.P387495470041608659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339811 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103797.P387495470041608659

/-!
# A103798: Integers k such that A019565(k)-1 and A019565(k)+1 are both primes.

The programs for A103798, there is no canonical definition to state claims against.
-/

/-! ## A103798.P9873015731383167803

`∩[A103796(n), A103797(n)]`
-/

namespace A103798.P9873015731383167803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103797 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103798.P9873015731383167803

/-! ## A103798.P8496038708317550867

`∩[eq[2, A339811(n+1)]+1, A103796(n)]`
-/

namespace A103798.P8496038708317550867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339811 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103796 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A103798.P8496038708317550867

/-! ## A103798.P8786633323315437458

`eq[A084642(n), A166597(A019565(n))]`
-/

namespace A103798.P8786633323315437458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103798.P8786633323315437458

/-! ## A103798.P10901009491871599000

`eq[A141310(n), A166597(A019565(n))]`
-/

namespace A103798.P10901009491871599000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103798.P10901009491871599000

/-! ## A103798.P3229133887282409139

`eq[A084642(n), A166597(sqrt(A334110(n)))]`
-/

namespace A103798.P3229133887282409139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103798.P3229133887282409139

/-!
# A103799: Indices n such that A019565(n)+2 is prime.

The programs for A103799, there is no canonical definition to state claims against.
-/

/-! ## A103799.P9039821283930891290

`eq[1, A001222(A019565(n)+2)]`
-/

namespace A103799.P9039821283930891290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103799.P9039821283930891290

/-! ## A103799.P13722191721291069154

`eq[2, A000005(A019565(n)+2)]`
-/

namespace A103799.P13722191721291069154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103799.P13722191721291069154

/-! ## A103799.P6636904545415622070

`eq[2, A305800(A019565(n)+2)]`
-/

namespace A103799.P6636904545415622070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A019565 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103799.P6636904545415622070

/-! ## A103799.P12334369492382426203

`lt[A305793(A019565(n)+2), 3]`
-/

namespace A103799.P12334369492382426203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305793 (A019565 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103799.P12334369492382426203

/-! ## A103799.P418964871686394508

`eq[1, A001222(sqrt(A334110(n))+2)]`
-/

namespace A103799.P418964871686394508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ) + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103799.P418964871686394508

