import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A124610: a(n) = 5*a(n-1) + 2*a(n-2), n > 1; a(0) = a(1) = 1.

The programs for A124610, the canonical program `A124610.P17013484124534335142` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124610 has offset 0).

The definition of A124610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+2*a(n-2)` (program `A124610.P17013484124534335142`, by `A124610.P17013484124534335142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124610.P17013484124534335142

`5*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124610

/-- `5*a(n-1)+2*a(n-2)` -/
def P17013484124534335142.Spec : Prop :=
  ∀ n, (P17013484124534335142.a n : ℤ) = A124610 n

theorem P17013484124534335142.correct : P17013484124534335142.Spec := by
  intro n
  simp only [A124610]

end A124610

/-! ## A124610.P2670837472831723606

`ogf((-1+4x)/(-1+5x+2x^2))`
-/

namespace A124610.P2670837472831723606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -5, -2] n

end

end A124610.P2670837472831723606

namespace A124610

/-- `ogf((-1+4x)/(-1+5x+2x^2))` -/
def P2670837472831723606.Spec : Prop :=
  ∀ n, P2670837472831723606.a n = A124610 n

end A124610

/-! ## A124610.P5790910870106038944

`A180038(n)-A015535(n)`
-/

namespace A124610.P5790910870106038944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180038 n - A015535 n

end

end A124610.P5790910870106038944

namespace A124610

/-- `A180038(n)-A015535(n)` -/
def P5790910870106038944.Spec : Prop :=
  ∀ n, P5790910870106038944.a n = A124610 n

end A124610

/-! ## A124610.P16696888670127377512

`A100638(A153881(n+1)+A130824(n))`
-/

namespace A124610.P16696888670127377512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100638 (A153881 (n + 1) + A130824 n).toNat

end

end A124610.P16696888670127377512

namespace A124610

/-- `A100638(A153881(n+1)+A130824(n))` -/
def P16696888670127377512.Spec : Prop :=
  ∀ n, P16696888670127377512.a n = A124610 n

end A124610

/-! ## A124610.P4658513572635818508

`A327765(n)-Δ[A015535(n)]`
-/

namespace A124610.P4658513572635818508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327765 n - (f1 (n + 1) - f1 n)

end

end A124610.P4658513572635818508

namespace A124610

/-- `A327765(n)-Δ[A015535(n)]` -/
def P4658513572635818508.Spec : Prop :=
  ∀ n, P4658513572635818508.a n = A124610 n

end A124610

/-! ## A124610.P16226591644697113342

`A015535(n)+A327765(n)-A015535(n+1)`
-/

namespace A124610.P16226591644697113342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 n + (A327765 n - A015535 (n + 1))

end

end A124610.P16226591644697113342

namespace A124610

/-- `A015535(n)+A327765(n)-A015535(n+1)` -/
def P16226591644697113342.Spec : Prop :=
  ∀ n, P16226591644697113342.a n = A124610 n

end A124610

/-! ## A124610.P7353693564512004447

`A233020(n+1)+A233020(n+1)-A327765(n+1)`
-/

namespace A124610.P7353693564512004447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233020 (n + 1) + (A233020 (n + 1) - A327765 (n + 1))

end

end A124610.P7353693564512004447

namespace A124610

/-- `A233020(n+1)+A233020(n+1)-A327765(n+1)` -/
def P7353693564512004447.Spec : Prop :=
  ∀ n, P7353693564512004447.a n = A124610 n

end A124610

/-!
# A124612: Poincaré series [or Poincare series] P(C_{4,2}; x).

The programs for A124612, there is no canonical definition to state claims against.
-/

/-! ## A124612.P10603597185031535375

`∑[∑[A124637(n)]]`
-/

namespace A124612.P10603597185031535375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124637 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124612.P10603597185031535375

/-! ## A124612.P13463625612655881431

`A004277(A327049(n))-A328596(A061257(n+1))`
-/

namespace A124612.P13463625612655881431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A327049 n).toNat - A328596 (A061257 (n + 1)).toNat

end

end A124612.P13463625612655881431

/-! ## A124612.P9943618786986160673

`A004277(A327049(n))-A162953(A276838(n+1))`
-/

namespace A124612.P9943618786986160673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A327049 n).toNat - A162953 (A276838 (n + 1)).toNat

end

end A124612.P9943618786986160673

/-!
# A124613: Poincaré series [or Poincare series] P(C_{5,2}; x).

The programs for A124613, there is no canonical definition to state claims against.
-/

/-! ## A124613.P16012071481965415661

`∑[∑[A124638(n)]]`
-/

namespace A124613.P16012071481965415661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124638 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124613.P16012071481965415661

/-! ## A124613.P16018451498331643643

`A249728(A036996(n))`
-/

namespace A124613.P16018451498331643643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A036996 n).toNat

end

end A124613.P16018451498331643643

/-! ## A124613.P226410240683152981

`A373408(A136408(n))`
-/

namespace A124613.P226410240683152981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373408 (A136408 n).toNat

end

end A124613.P226410240683152981

/-!
# A124614: Poincaré series [or Poincare series] P(C_{6,2}; x).

The programs for A124614, there is no canonical definition to state claims against.
-/

/-! ## A124614.P9026260955652489771

`∑[∑[A124639(n)]]`
-/

namespace A124614.P9026260955652489771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124639 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124614.P9026260955652489771

/-! ## A124614.P5170993556860021347

`A296626(n)+A241536(A340591(2*n))`
-/

namespace A124614.P5170993556860021347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296626 n + A241536 (A340591 (2 * n)).toNat

end

end A124614.P5170993556860021347

/-! ## A124614.P14795790807355626155

`A070933(n)-A014405(A095137(n+1))`
-/

namespace A124614.P14795790807355626155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070933 n - A014405 (A095137 (n + 1)).toNat

end

end A124614.P14795790807355626155

/-! ## A124614.P4291474908364627170

`A070933(n)-A326549(A077374(n+1))`
-/

namespace A124614.P4291474908364627170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070933 n - A326549 (A077374 (n + 1)).toNat

end

end A124614.P4291474908364627170

/-!
# A124615: Poincaré series [or Poincare series] P(T_{3,2}; x).

The programs for A124615, there is no canonical definition to state claims against.
-/

/-! ## A124615.P15842374960761947452

`A127790(n)+A123991(n)`
-/

namespace A124615.P15842374960761947452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127790 n + A123991 n

end

end A124615.P15842374960761947452

/-! ## A124615.P6597019279132558879

`A123991(n)+2*A127811(n)`
-/

namespace A124615.P6597019279132558879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123991 n + 2 * A127811 n

end

end A124615.P6597019279132558879

/-! ## A124615.P3977272133566743844

`A123991(n)-A057428(n)*A127790(n)`
-/

namespace A124615.P3977272133566743844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123991 n - A057428 n * A127790 n

end

end A124615.P3977272133566743844

/-! ## A124615.P15068709424455137667

`A123991(n)+A127811(A005843(n)/2)+A127811(n)`
-/

namespace A124615.P15068709424455137667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123991 n + (A127811 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A127811 n)

end

end A124615.P15068709424455137667

/-! ## A124615.P6240203760515566501

`A123991(n)+A127811(A005843(n)-n)+A127811(n)`
-/

namespace A124615.P6240203760515566501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123991 n + (A127811 (A005843 n - (n : ℤ)).toNat + A127811 n)

end

end A124615.P6240203760515566501

/-!
# A124616: Poincaré series [or Poincare series] P(T_{4,2}; x).

The programs for A124616, there is no canonical definition to state claims against.
-/

/-! ## A124616.P4326133128448627607

`∑[∑[A337037(A005380(n))]]`
-/

namespace A124616.P4326133128448627607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337037 (A005380 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124616.P4326133128448627607

/-! ## A124616.P5046182302900344307

`∑[∑[A355301(A034066(n))]]`
-/

namespace A124616.P5046182302900344307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (A034066 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124616.P5046182302900344307

/-!
# A124617: Poincaré series [or Poincare series] P(T_{5,2}; x).

The programs for A124617, there is no canonical definition to state claims against.
-/

/-! ## A124617.P7083535314042414864

`A001462(A022733(n))-n`
-/

namespace A124617.P7083535314042414864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A022733 n).toNat - (n : ℤ)

end

end A124617.P7083535314042414864

/-! ## A124617.P13262834971893271500

`∑[∑[A325124(A261681(n))]]`
-/

namespace A124617.P13262834971893271500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325124 (A261681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124617.P13262834971893271500

/-!
# A124618: Poincaré series [or Poincare series] P(T_{6,2}; x).

The programs for A124618, there is no canonical definition to state claims against.
-/

/-! ## A124618.P15512634358640474806

`∑[A226642(A122746(n))]`
-/

namespace A124618.P15512634358640474806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226642 (A122746 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124618.P15512634358640474806

/-! ## A124618.P4805116661683566467

`∑[A243283(A171478(n))]`
-/

namespace A124618.P4805116661683566467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A171478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124618.P4805116661683566467

/-!
# A124619: Odd interprimes divisible by 13.

The programs for A124619, there is no canonical definition to state claims against.
-/

/-! ## A124619.P2950616342277906465

`∩[12*n+n, A072569(n+2)]`
-/

namespace A124619.P2950616342277906465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124619.P2950616342277906465

/-! ## A124619.P2596352513874424431

`∩[A072569(n+1), A008595(n)]`
-/

namespace A124619.P2596352513874424431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124619.P2596352513874424431

/-! ## A124619.P18401497983782185865

`∩[A008595(2*n+1), A024675(n+2)]`
-/

namespace A124619.P18401497983782185865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124619.P18401497983782185865

/-! ## A124619.P14865747598389628651

`∩[A072569(n+1), A312065(n)]`
-/

namespace A124619.P14865747598389628651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124619.P14865747598389628651

/-! ## A124619.P8807355913537667542

`A000265(∩[A315069(2*n+3), A001043(n+1)])`
-/

namespace A124619.P8807355913537667542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315069 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A124619.P8807355913537667542

/-!
# A124620: Odd interprimes divisible by 17.

The programs for A124620, there is no canonical definition to state claims against.
-/

/-! ## A124620.P13061823683953810738

`∩[A072569(n+5), 17*n]`
-/

namespace A124620.P13061823683953810738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A124620.P13061823683953810738

/-! ## A124620.P13231790543314427484

`∩[A008599(n), A072569(n+1)]`
-/

namespace A124620.P13231790543314427484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124620.P13231790543314427484

/-!
# A124621: Numbers k such that 5^k + 4 is prime.

The programs for A124621, there is no canonical definition to state claims against.
-/

/-! ## A124621.P7920210681985584815

`eq[A013599(n), A070406(n)]`
-/

namespace A124621.P7920210681985584815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070406 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124621.P7920210681985584815

/-! ## A124621.P7405702460279437103

`eq[A033687(n)², A013599(n)]`
-/

namespace A124621.P7405702460279437103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124621.P7405702460279437103

/-!
# A124622: Smallest odd interprime divisible by n-th odd prime.

The programs for A124622, there is no canonical definition to state claims against.
-/

/-! ## A124622.P13888312812320658349

`A162735(A126233(n+1))`
-/

namespace A124622.P13888312812320658349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (A126233 (n + 1)).toNat

end

end A124622.P13888312812320658349

/-! ## A124622.P3003104750272931748

`A024675(A126233(n+1)-1)`
-/

namespace A124622.P3003104750272931748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (A126233 (n + 1) - 1).toNat

end

end A124622.P3003104750272931748

/-! ## A124622.P8285600154498193614

`(A000040(A126233(n+1)+1)+A000040(A126233(n+1)))/2`
-/

namespace A124622.P8285600154498193614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A126233 (n + 1) + 1).toNat + A000040 (A126233 (n + 1)).toNat : ℚ) / 2

end

end A124622.P8285600154498193614

/-!
# A124625: Even numbers sandwiched between 1's.

The programs for A124625, the canonical program `A124625.P13711531339302041012` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124625 has offset 0).

The definition of A124625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124625.P13711531339302041012

`(n-1)^((1-(-1)^n)/2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124625

/-- `(n-1)^((1-(-1)^n)/2)` -/
def P13711531339302041012.Spec : Prop :=
  ∀ n, P13711531339302041012.a n = (A124625 n : ℝ)

end A124625

/-! ## A124625.P4088034223873315339

`n-1-a(a(n-1))*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A124625.P4088034223873315339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - 1 - a (a (n - 1)).toNat * a (n - 1)

end

end A124625.P4088034223873315339

namespace A124625

/-- `n-1-a(a(n-1))*a(n-1)` -/
def P4088034223873315339.Spec : Prop :=
  ∀ n, P4088034223873315339.a n = A124625 n

end A124625

/-! ## A124625.P1929586982530899198

`gcd(1-n, xor(1, n))`
-/

namespace A124625.P1929586982530899198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) (Nat.xor 1 n : ℤ)

end

end A124625.P1929586982530899198

namespace A124625

/-- `gcd(1-n, xor(1, n))` -/
def P1929586982530899198.Spec : Prop :=
  ∀ n, (P1929586982530899198.a n : ℤ) = A124625 n

end A124625

/-! ## A124625.P2600581503483388989

`xor(1, n*n%2)`
-/

namespace A124625.P2600581503483388989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (n % 2))

end

end A124625.P2600581503483388989

namespace A124625

/-- `xor(1, n*n%2)` -/
def P2600581503483388989.Spec : Prop :=
  ∀ n, (P2600581503483388989.a n : ℤ) = A124625 n

end A124625

/-! ## A124625.P14109415519363987908

`xor(1, lcm(2, n)-n)`
-/

namespace A124625.P14109415519363987908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((Nat.lcm 2 n : ℤ) - (n : ℤ))

end

end A124625.P14109415519363987908

namespace A124625

/-- `xor(1, lcm(2, n)-n)` -/
def P14109415519363987908.Spec : Prop :=
  ∀ n, P14109415519363987908.a n = A124625 n

end A124625

/-! ## A124625.P2480245470639517867

`xor(1, n*and(1, n))`
-/

namespace A124625.P2480245470639517867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * Nat.land 1 n)

end

end A124625.P2480245470639517867

namespace A124625

/-- `xor(1, n*and(1, n))` -/
def P2480245470639517867.Spec : Prop :=
  ∀ n, (P2480245470639517867.a n : ℤ) = A124625 n

end A124625

/-! ## A124625.P12734306258333671606

`xor(1, C(n, xor(1, n)))`
-/

namespace A124625.P12734306258333671606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose n (Nat.xor 1 n))

end

end A124625.P12734306258333671606

namespace A124625

/-- `xor(1, C(n, xor(1, n)))` -/
def P12734306258333671606.Spec : Prop :=
  ∀ n, (P12734306258333671606.a n : ℤ) = A124625 n

end A124625

/-! ## A124625.P7866903766733472622

`abs(1-n*and(1, n))`
-/

namespace A124625.P7866903766733472622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n * Nat.land 1 n : ℤ)|

end

end A124625.P7866903766733472622

namespace A124625

/-- `abs(1-n*and(1, n))` -/
def P7866903766733472622.Spec : Prop :=
  ∀ n, P7866903766733472622.a n = A124625 n

end A124625

/-! ## A124625.P4620481325411073259

`gcd(n-1, and(n, -2))`
-/

namespace A124625.P4620481325411073259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (Int.land (n : ℤ) (-2))

end

end A124625.P4620481325411073259

namespace A124625

/-- `gcd(n-1, and(n, -2))` -/
def P4620481325411073259.Spec : Prop :=
  ∀ n, (P4620481325411073259.a n : ℤ) = A124625 n

end A124625

/-! ## A124625.P15646899714709573185

`C(abs(1-n), and(1, n))`
-/

namespace A124625.P15646899714709573185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (n : ℤ)|.toNat (Nat.land 1 n)

end

end A124625.P15646899714709573185

namespace A124625

/-- `C(abs(1-n), and(1, n))` -/
def P15646899714709573185.Spec : Prop :=
  ∀ n, (P15646899714709573185.a n : ℤ) = A124625 n

end A124625

/-! ## A124625.P4775456221777362442

`xor(1, and(n, (-1)^n))`
-/

namespace A124625.P4775456221777362442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (n : ℤ) ((-1) ^ n))

end

end A124625.P4775456221777362442

namespace A124625

/-- `xor(1, and(n, (-1)^n))` -/
def P4775456221777362442.Spec : Prop :=
  ∀ n, P4775456221777362442.a n = A124625 n

end A124625

/-! ## A124625.P2685360561126815143

`and(n-1, cos(π*n))`
-/

namespace A124625.P2685360561126815143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (SequenceMachineLib.roundAway (Real.cos (Real.pi * (n : ℝ))))

end

end A124625.P2685360561126815143

namespace A124625

/-- `and(n-1, cos(π*n))` -/
def P2685360561126815143.Spec : Prop :=
  ∀ n, P2685360561126815143.a n = A124625 n

end A124625

/-! ## A124625.P16722898353678038671

`∏{d}[and(1, -n), n-#]`
-/

namespace A124625.P16722898353678038671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - (d : ℤ))

end

end A124625.P16722898353678038671

namespace A124625

/-- `∏{d}[and(1, -n), n-#]` -/
def P16722898353678038671.Spec : Prop :=
  ∀ n, P16722898353678038671.a n = A124625 n

end A124625

/-! ## A124625.P18292381882424091660

`(n-2)*and(1, n)+1`
-/

namespace A124625.P18292381882424091660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.land 1 n : ℤ) + 1

end

end A124625.P18292381882424091660

namespace A124625

/-- `(n-2)*and(1, n)+1` -/
def P18292381882424091660.Spec : Prop :=
  ∀ n, P18292381882424091660.a n = A124625 n

end A124625

/-! ## A124625.P322882731449942821

`1-(2-n)*and(1, n)`
-/

namespace A124625.P322882731449942821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 - (n : ℤ)) * (Nat.land 1 n : ℤ)

end

end A124625.P322882731449942821

namespace A124625

/-- `1-(2-n)*and(1, n)` -/
def P322882731449942821.Spec : Prop :=
  ∀ n, P322882731449942821.a n = A124625 n

end A124625

/-! ## A124625.P2545694073417172988

`n-or(1, a(n-1))` with `a(0)=1`
-/

namespace A124625.P2545694073417172988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.lor 1 (a (n - 1))

end

end A124625.P2545694073417172988

namespace A124625

/-- `n-or(1, a(n-1))` -/
def P2545694073417172988.Spec : Prop :=
  ∀ n, P2545694073417172988.a n = A124625 n

end A124625

/-! ## A124625.P3626216653478513259

`xor(1, or(1, n)%(n+1))`
-/

namespace A124625.P3626216653478513259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n % (n + 1))

end

end A124625.P3626216653478513259

namespace A124625

/-- `xor(1, or(1, n)%(n+1))` -/
def P3626216653478513259.Spec : Prop :=
  ∀ n, (P3626216653478513259.a n : ℤ) = A124625 n

end A124625

/-! ## A124625.P16242783756624235975

`xor(1, a(n-2))+1` with `a(0)=1, a(1)=0`
-/

namespace A124625.P16242783756624235975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.xor 1 (a (n - 2)) + 1

end

end A124625.P16242783756624235975

namespace A124625

/-- `xor(1, a(n-2))+1` -/
def P16242783756624235975.Spec : Prop :=
  ∀ n, (P16242783756624235975.a n : ℤ) = A124625 n

end A124625

/-! ## A124625.P13250029789090223231

`xor(1, n*char[2*n+1])`
-/

namespace A124625.P13250029789090223231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A124625.P13250029789090223231

namespace A124625

/-- `xor(1, n*char[2*n+1])` -/
def P13250029789090223231.Spec : Prop :=
  ∀ n, (P13250029789090223231.a n : ℤ) = A124625 n

end A124625

/-! ## A124625.P1801228225934684466

`1-(2-n)*(3*n)%2`
-/

namespace A124625.P1801228225934684466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 - (n : ℤ)) * ((3 * n % 2 : ℕ) : ℤ)

end

end A124625.P1801228225934684466

namespace A124625

/-- `1-(2-n)*(3*n)%2` -/
def P1801228225934684466.Spec : Prop :=
  ∀ n, P1801228225934684466.a n = A124625 n

end A124625

/-!
# A124626: Abundant evil numbers. (Abundant numbers that have an even number of ones in their binary representation).

The programs for A124626, the canonical program `A124626.P17806241570464093679` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124626 has offset 1).

The definition of A124626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124626.P3913645857539136167

`filter[A125494(n+2), A294936(#)]`
-/

namespace A124626.P3913645857539136167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A124626.P3913645857539136167

namespace A124626

/-- `filter[A125494(n+2), A294936(#)]` -/
def P3913645857539136167.Spec : Prop :=
  ∀ n, P3913645857539136167.a n = A124626 (n + 1)

end A124626

/-! ## A124626.P17806241570464093679

`filter[A125494(n+2), A378550(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A124626

/-- `filter[A125494(n+2), A378550(#)]` -/
def P17806241570464093679.Spec : Prop :=
  ∀ n, P17806241570464093679.a n = A124626 (n + 1)

theorem P17806241570464093679.correct : P17806241570464093679.Spec := by
  intro n
  simp only [A124626, Nat.add_sub_cancel]

end A124626

/-! ## A124626.P16045495720372165743

`∩[A005101(n+1), A125494(n+1)]`
-/

namespace A124626.P16045495720372165743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124626.P16045495720372165743

namespace A124626

/-- `∩[A005101(n+1), A125494(n+1)]` -/
def P16045495720372165743.Spec : Prop :=
  ∀ n, (P16045495720372165743.a n : ℤ) = A124626 (n + 1)

end A124626

/-! ## A124626.P7610394556244633045

`∩[A001969(n+1), A005101(n+1)]`
-/

namespace A124626.P7610394556244633045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124626.P7610394556244633045

namespace A124626

/-- `∩[A001969(n+1), A005101(n+1)]` -/
def P7610394556244633045.Spec : Prop :=
  ∀ n, (P7610394556244633045.a n : ℤ) = A124626 (n + 1)

end A124626

/-! ## A124626.P16400232336583389576

`filter[A125494(n+1), A294937(#)]`
-/

namespace A124626.P16400232336583389576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A124626.P16400232336583389576

namespace A124626

/-- `filter[A125494(n+1), A294937(#)]` -/
def P16400232336583389576.Spec : Prop :=
  ∀ n, P16400232336583389576.a n = A124626 (n + 1)

end A124626

/-! ## A124626.P1097767680634591846

`filter[A001969(n+2), A294937(#)]`
-/

namespace A124626.P1097767680634591846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A124626.P1097767680634591846

namespace A124626

/-- `filter[A001969(n+2), A294937(#)]` -/
def P1097767680634591846.Spec : Prop :=
  ∀ n, P1097767680634591846.a n = A124626 (n + 1)

end A124626

/-! ## A124626.P1943903691759932498

`filter[A005101(n+1), A010059(#)]`
-/

namespace A124626.P1943903691759932498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A124626.P1943903691759932498

namespace A124626

/-- `filter[A005101(n+1), A010059(#)]` -/
def P1943903691759932498.Spec : Prop :=
  ∀ n, P1943903691759932498.a n = A124626 (n + 1)

end A124626

/-! ## A124626.P16848487784556038099

`filter[A005101(n+1), A092436(#)]`
-/

namespace A124626.P16848487784556038099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A124626.P16848487784556038099

namespace A124626

/-- `filter[A005101(n+1), A092436(#)]` -/
def P16848487784556038099.Spec : Prop :=
  ∀ n, P16848487784556038099.a n = A124626 (n + 1)

end A124626

/-! ## A124626.P13501976781885900510

`filter[A023196(n+2), A010059(#)]`
-/

namespace A124626.P13501976781885900510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A124626.P13501976781885900510

namespace A124626

/-- `filter[A023196(n+2), A010059(#)]` -/
def P13501976781885900510.Spec : Prop :=
  ∀ n, P13501976781885900510.a n = A124626 (n + 1)

end A124626

/-! ## A124626.P507008187140444623

`filter[A023196(n+2), A092436(#)]`
-/

namespace A124626.P507008187140444623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A124626.P507008187140444623

namespace A124626

/-- `filter[A023196(n+2), A092436(#)]` -/
def P507008187140444623.Spec : Prop :=
  ∀ n, P507008187140444623.a n = A124626 (n + 1)

end A124626

/-! ## A124626.P3284972783634238540

`eq[A001285(n), A082551(A028310(n))]`
-/

namespace A124626.P3284972783634238540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124626.P3284972783634238540

namespace A124626

/-- `eq[A001285(n), A082551(A028310(n))]` -/
def P3284972783634238540.Spec : Prop :=
  ∀ n, (P3284972783634238540.a n : ℤ) = A124626 (n + 1)

end A124626

/-! ## A124626.P12494286997316517818

`∩[A005101(n+1), A115384(A224907(n+1))]`
-/

namespace A124626.P12494286997316517818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A224907 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124626.P12494286997316517818

namespace A124626

/-- `∩[A005101(n+1), A115384(A224907(n+1))]` -/
def P12494286997316517818.Spec : Prop :=
  ∀ n, (P12494286997316517818.a n : ℤ) = A124626 (n + 1)

end A124626

/-! ## A124626.P6333622970675534102

`∩[A115384(2*A005101(n+1)), A005101(n+1)]`
-/

namespace A124626.P6333622970675534102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (2 * A005101 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124626.P6333622970675534102

namespace A124626

/-- `∩[A115384(2*A005101(n+1)), A005101(n+1)]` -/
def P6333622970675534102.Spec : Prop :=
  ∀ n, (P6333622970675534102.a n : ℤ) = A124626 (n + 1)

end A124626

/-! ## A124626.P3458597968547200430

`eq[A001285(n), A082551(A233583(n+1))]`
-/

namespace A124626.P3458597968547200430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124626.P3458597968547200430

namespace A124626

/-- `eq[A001285(n), A082551(A233583(n+1))]` -/
def P3458597968547200430.Spec : Prop :=
  ∀ n, (P3458597968547200430.a n : ℤ) = A124626 (n + 1)

end A124626

/-! ## A124626.P9626435300558802486

`eq[A060862(A233583(n+1)), A106400(n)]`
-/

namespace A124626.P9626435300558802486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124626.P9626435300558802486

namespace A124626

/-- `eq[A060862(A233583(n+1)), A106400(n)]` -/
def P9626435300558802486.Spec : Prop :=
  ∀ n, (P9626435300558802486.a n : ℤ) = A124626 (n + 1)

end A124626

/-!
# A124627: Riemann-Gram approximation to A007097(n+1) using A007097(n).

The programs for A124627, there is no canonical definition to state claims against.
-/

/-! ## A124627.P1673391550859543914

`A259732(a(n-1))-char[4]` with `a(0)=2`
-/

namespace A124627.P1673391550859543914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A259732 (a (n - 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124627.P1673391550859543914

/-! ## A124627.P6895547261636550842

`A292050(A173271(n+1))`
-/

namespace A124627.P6895547261636550842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (A173271 (n + 1)).toNat

end

end A124627.P6895547261636550842

/-!
# A124629: Primes p such that their cubes are pandigital.

The programs for A124629, there is no canonical definition to state claims against.
-/

/-! ## A124629.P1117917481647013885

`p?[A119735(n+1)]`
-/

namespace A124629.P1117917481647013885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124629.P1117917481647013885

/-! ## A124629.P15927030184701797314

`record[p?[A119735(A291769(n))]]`
-/

namespace A124629.P15927030184701797314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119735 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124629.P15927030184701797314

/-! ## A124629.P1979809014521659090

`record[p?[A119735(A324347(n))]]`
-/

namespace A124629.P1979809014521659090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119735 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124629.P1979809014521659090

/-! ## A124629.P7547146984816281041

`record[p?[A119735(A328397(n))]]`
-/

namespace A124629.P7547146984816281041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119735 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124629.P7547146984816281041

/-! ## A124629.P4565367227772203913

`record[p?[A119735(A052938(n))]]`
-/

namespace A124629.P4565367227772203913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119735 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124629.P4565367227772203913

/-!
# A124631: Poincaré series [or Poincare series] P(C#_{4,2}; x).

The programs for A124631, there is no canonical definition to state claims against.
-/

/-! ## A124631.P2311550894746010008

`A002024(A026696(n+1))-A062293(n)`
-/

namespace A124631.P2311550894746010008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A026696 (n + 1)).toNat - A062293 n

end

end A124631.P2311550894746010008

/-!
# A124632: Poincaré series [or Poincare series] P(C#_{5,2}; x).

The programs for A124632, there is no canonical definition to state claims against.
-/

/-! ## A124632.P12404949765722270515

`Δ[A293994(n+1)-A257863(n)]`
-/

namespace A124632.P12404949765722270515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293994 (n + 1) - A257863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124632.P12404949765722270515

/-! ## A124632.P11996658720024450308

`A358582(A029966(n+4))-A268382(n)`
-/

namespace A124632.P11996658720024450308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358582 (A029966 (n + 4)).toNat - A268382 n

end

end A124632.P11996658720024450308

/-!
# A124633: Poincaré series [or Poincare series] P(C^o_{3,2}; x).

The programs for A124633, there is no canonical definition to state claims against.
-/

/-! ## A124633.P8338583126538283296

`record[gcd(A086955(n), A295793(n))]`
-/

namespace A124633.P8338583126538283296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086955 n) (A295793 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124633.P8338583126538283296

/-! ## A124633.P6753874944294951171

`A347778(∑[A000045(comp[n²-1])])`
-/

namespace A124633.P6753874944294951171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124633.P6753874944294951171

/-!
# A124634: Poincaré series [or Poincare series] P(C^o_{4,2}; x).

The programs for A124634, there is no canonical definition to state claims against.
-/

/-! ## A124634.P5853545448431199777

`A007466(n+1)-record[A350139(n+1)]`
-/

namespace A124634.P5853545448431199777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124634.P5853545448431199777

/-! ## A124634.P3289086496751659557

`A375500(n)-A322823(A357225(n))`
-/

namespace A124634.P3289086496751659557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375500 n - A322823 (A357225 n).toNat

end

end A124634.P3289086496751659557

/-!
# A124635: Poincaré series [or Poincare series] P(C^o_{5,2}; x).

The programs for A124635, there is no canonical definition to state claims against.
-/

/-! ## A124635.P4883467059546857985

`abs(A124646(n+1))`
-/

namespace A124635.P4883467059546857985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124646 (n + 1)|

end

end A124635.P4883467059546857985

/-! ## A124635.P1967960703382355143

`-A124646(C(n+1, n))`
-/

namespace A124635.P1967960703382355143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124646 (Nat.choose (n + 1) n)

end

end A124635.P1967960703382355143

/-! ## A124635.P11429093210494487164

`-A124646(A124231(n+1))`
-/

namespace A124635.P11429093210494487164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124646 (A124231 (n + 1)).toNat

end

end A124635.P11429093210494487164

/-! ## A124635.P12779495960705281089

`A011738(n)-A124646(n+1)`
-/

namespace A124635.P12779495960705281089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011738 n - A124646 (n + 1)

end

end A124635.P12779495960705281089

/-! ## A124635.P15326802299829742288

`A000035(2*n)-A124646(n+1)`
-/

namespace A124635.P15326802299829742288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A124646 (n + 1)

end

end A124635.P15326802299829742288

/-!
# A124640: Limiting sequence of second differences of certain Poincaré series [or Poincare series] expansions.

The programs for A124640, there is no canonical definition to state claims against.
-/

/-! ## A124640.P10143390370325111905

`∑[∑[A373408(A124400(n))]]`
-/

namespace A124640.P10143390370325111905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373408 (A124400 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124640.P10143390370325111905

/-! ## A124640.P13137091440408498886

`A191756(n)-A124767(A302608(n))`
-/

namespace A124640.P13137091440408498886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191756 n - A124767 (A302608 n).toNat

end

end A124640.P13137091440408498886

/-!
# A124641: Limiting sequence of second differences of certain Poincaré series [or Poincare series] expansions.

The programs for A124641, there is no canonical definition to state claims against.
-/

/-! ## A124641.P15248195122826717617

`or(∑[A326780(n)]², A136699(2^n))`
-/

namespace A124641.P15248195122826717617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (A136699 (2 ^ n))

end

end A124641.P15248195122826717617

/-!
# A124642: Antidiagonal sums of A096465.

The programs for A124642, the canonical program `A124642.P17409428497958016739` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124642 has offset 0).

The definition of A124642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124642.P16556949453196245129

`A332754(n)+a(n-1)` with `a(0)=1`
-/

namespace A124642.P16556949453196245129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332754 n + a (n - 1)

end

end A124642.P16556949453196245129

namespace A124642

/-- `A332754(n)+a(n-1)` -/
def P16556949453196245129.Spec : Prop :=
  ∀ n, P16556949453196245129.a n = A124642 n

end A124642

/-! ## A124642.P17409428497958016739

`A210736(n)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124642

/-- `A210736(n)+a(n-2)` -/
def P17409428497958016739.Spec : Prop :=
  ∀ n, P17409428497958016739.a n = A124642 n

theorem P17409428497958016739.correct : P17409428497958016739.Spec := by
  intro n
  simp only [A124642]

end A124642

/-! ## A124642.P17769668470399770261

`A174783(n)+A059841(n)`
-/

namespace A124642.P17769668470399770261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 n + A059841 n

end

end A124642.P17769668470399770261

namespace A124642

/-- `A174783(n)+A059841(n)` -/
def P17769668470399770261.Spec : Prop :=
  ∀ n, P17769668470399770261.a n = A124642 n

end A124642

/-! ## A124642.P16958655149865850474

`A174783(n)+A000035(n+1)`
-/

namespace A124642.P16958655149865850474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 n + A000035 (n + 1)

end

end A124642.P16958655149865850474

namespace A124642

/-- `A174783(n)+A000035(n+1)` -/
def P16958655149865850474.Spec : Prop :=
  ∀ n, P16958655149865850474.a n = A124642 n

end A124642

/-! ## A124642.P10502053409921815198

`A072100(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A124642.P10502053409921815198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072100 (n + 1) - a (n - 1)

end

end A124642.P10502053409921815198

namespace A124642

/-- `A072100(n+1)-a(n-1)` -/
def P10502053409921815198.Spec : Prop :=
  ∀ n, P10502053409921815198.a n = A124642 n

end A124642

/-! ## A124642.P2047002431429067475

`a(n-2)+A063886(n)/2` with `a(0)=1, a(1)=1`
-/

namespace A124642.P2047002431429067475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (A063886 n : ℚ) / 2

end

end A124642.P2047002431429067475

namespace A124642

/-- `a(n-2)+A063886(n)/2` -/
def P2047002431429067475.Spec : Prop :=
  ∀ n, P2047002431429067475.a n = (A124642 n : ℚ)

end A124642

/-! ## A124642.P2000894498361080822

`∑[A332754(n+1)]+1-A332754(n+1)`
-/

namespace A124642.P2000894498361080822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A332754 (n + 1))

end

end A124642.P2000894498361080822

namespace A124642

/-- `∑[A332754(n+1)]+1-A332754(n+1)` -/
def P2000894498361080822.Spec : Prop :=
  ∀ n, P2000894498361080822.a n = A124642 n

end A124642

/-! ## A124642.P8201561840034490061

`A036256(n)-A014495(n)-a(n-1)` with `a(0)=1`
-/

namespace A124642.P8201561840034490061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036256 n - A014495 n - a (n - 1)

end

end A124642.P8201561840034490061

namespace A124642

/-- `A036256(n)-A014495(n)-a(n-1)` -/
def P8201561840034490061.Spec : Prop :=
  ∀ n, P8201561840034490061.a n = A124642 n

end A124642

/-! ## A124642.P14091297504635905567

`A000975(n)+A059841(n)-A191394(n)`
-/

namespace A124642.P14091297504635905567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (A059841 n - A191394 n)

end

end A124642.P14091297504635905567

namespace A124642

/-- `A000975(n)+A059841(n)-A191394(n)` -/
def P14091297504635905567.Spec : Prop :=
  ∀ n, P14091297504635905567.a n = A124642 n

end A124642

/-! ## A124642.P1537376771684205996

`A000035(n+1)+A000975(n)-A191394(n)`
-/

namespace A124642.P1537376771684205996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A000975 n - A191394 n)

end

end A124642.P1537376771684205996

namespace A124642

/-- `A000035(n+1)+A000975(n)-A191394(n)` -/
def P1537376771684205996.Spec : Prop :=
  ∀ n, P1537376771684205996.a n = A124642 n

end A124642

/-! ## A124642.P4003671040918306528

`Δ[A000975(n)]-A191394(n)`
-/

namespace A124642.P4003671040918306528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A191394 n

end

end A124642.P4003671040918306528

namespace A124642

/-- `Δ[A000975(n)]-A191394(n)` -/
def P4003671040918306528.Spec : Prop :=
  ∀ n, P4003671040918306528.a n = A124642 n

end A124642

/-! ## A124642.P15062704197712392861

`A000975(n+1)-(A191394(n)+A000975(n))`
-/

namespace A124642.P15062704197712392861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) - (A191394 n + A000975 n)

end

end A124642.P15062704197712392861

namespace A124642

/-- `A000975(n+1)-(A191394(n)+A000975(n))` -/
def P15062704197712392861.Spec : Prop :=
  ∀ n, P15062704197712392861.a n = A124642 n

end A124642

/-!
# A124643: Primes of the form p = k*10^m - 1 where k is 3, 6 or 9, such that p+2 is also a prime.

The programs for A124643, there is no canonical definition to state claims against.
-/

/-! ## A124643.P9336265639039816692

`A366679(2*n+5)`
-/

namespace A124643.P9336265639039816692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366679 (2 * n + 5)

end

end A124643.P9336265639039816692

/-!
# A124644: Triangle read by rows. T(n, k) = binomial(n, k) * CatalanNumber(n - k).

The programs for A124644, the canonical program `A124644.P6387855692030504737` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124644 has offset 0).

The definition of A124644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124644.P5293491167932853508

`A171814(n)/A099375(n)`
-/

namespace A124644.P5293491167932853508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171814 n : ℚ) / (A099375 n : ℚ)

end

end A124644.P5293491167932853508

namespace A124644

/-- `A171814(n)/A099375(n)` -/
def P5293491167932853508.Spec : Prop :=
  ∀ n, P5293491167932853508.a n = (A124644 n : ℚ)

end A124644

/-! ## A124644.P5956403731853858908

`gcd(A117852(n), A171814(n))`
-/

namespace A124644.P5956403731853858908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117852 n) (A171814 n)

end

end A124644.P5956403731853858908

namespace A124644

/-- `gcd(A117852(n), A171814(n))` -/
def P5956403731853858908.Spec : Prop :=
  ∀ n, (P5956403731853858908.a n : ℤ) = A124644 n

end A124644

/-! ## A124644.P5892616861549589752

`A106270(n)*A154926(n+1)`
-/

namespace A124644.P5892616861549589752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106270 n * A154926 (n + 1)

end

end A124644.P5892616861549589752

namespace A124644

/-- `A106270(n)*A154926(n+1)` -/
def P5892616861549589752.Spec : Prop :=
  ∀ n, P5892616861549589752.a n = A124644 n

end A124644

/-! ## A124644.P17395009771719285328

`A117852(n)/A004736(n+1)`
-/

namespace A124644.P17395009771719285328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117852 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A124644.P17395009771719285328

namespace A124644

/-- `A117852(n)/A004736(n+1)` -/
def P17395009771719285328.Spec : Prop :=
  ∀ n, P17395009771719285328.a n = (A124644 n : ℚ)

end A124644

/-! ## A124644.P6387855692030504737

`A000108(A025581(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A124644

/-- `A000108(A025581(n))*A007318(n)` -/
def P6387855692030504737.Spec : Prop :=
  ∀ n, P6387855692030504737.a n = A124644 n

theorem P6387855692030504737.correct : P6387855692030504737.Spec := by
  intro n
  simp only [A124644]

end A124644

/-! ## A124644.P819738719740624045

`A007318(n)*A208355(A099375(n)-1)`
-/

namespace A124644.P819738719740624045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A208355 (A099375 n - 1).toNat

end

end A124644.P819738719740624045

namespace A124644

/-- `A007318(n)*A208355(A099375(n)-1)` -/
def P819738719740624045.Spec : Prop :=
  ∀ n, P819738719740624045.a n = A124644 n

end A124644

/-! ## A124644.P4910789538237740324

`A007318(n)*A126120(2*A025581(n))`
-/

namespace A124644.P4910789538237740324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126120 (2 * A025581 n).toNat

end

end A124644.P4910789538237740324

namespace A124644

/-- `A007318(n)*A126120(2*A025581(n))` -/
def P4910789538237740324.Spec : Prop :=
  ∀ n, P4910789538237740324.a n = A124644 n

end A124644

/-! ## A124644.P11388594178217424953

`A000108(A004736(n+1)-1)*A007318(n)`
-/

namespace A124644.P11388594178217424953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A004736 (n + 1) - 1).toNat * A007318 n

end

end A124644.P11388594178217424953

namespace A124644

/-- `A000108(A004736(n+1)-1)*A007318(n)` -/
def P11388594178217424953.Spec : Prop :=
  ∀ n, P11388594178217424953.a n = A124644 n

end A124644

/-! ## A124644.P533856962600744195

`A098474(A061579(n))`
-/

namespace A124644.P533856962600744195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 (A061579 n).toNat

end

end A124644.P533856962600744195

namespace A124644

/-- `A098474(A061579(n))` -/
def P533856962600744195.Spec : Prop :=
  ∀ n, P533856962600744195.a n = A124644 n

end A124644

/-! ## A124644.P8304062707807368251

`A098474(A038722(n+1)-1)`
-/

namespace A124644.P8304062707807368251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 (A038722 (n + 1) - 1).toNat

end

end A124644.P8304062707807368251

namespace A124644

/-- `A098474(A038722(n+1)-1)` -/
def P8304062707807368251.Spec : Prop :=
  ∀ n, P8304062707807368251.a n = A124644 n

end A124644

/-! ## A124644.P10587605759229880820

`A098474(A038722(n+2))`
-/

namespace A124644.P10587605759229880820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 (A038722 (n + 2)).toNat

end

end A124644.P10587605759229880820

namespace A124644

/-- `A098474(A038722(n+2))` -/
def P10587605759229880820.Spec : Prop :=
  ∀ n, P10587605759229880820.a n = A124644 n

end A124644

/-! ## A124644.P11398559962577533303

`A007318(n)/A054142(n)*A060693(n)`
-/

namespace A124644.P11398559962577533303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A054142 n : ℚ) * (A060693 n : ℚ)

end

end A124644.P11398559962577533303

namespace A124644

/-- `A007318(n)/A054142(n)*A060693(n)` -/
def P11398559962577533303.Spec : Prop :=
  ∀ n, P11398559962577533303.a n = (A124644 n : ℚ)

end A124644

/-!
# A124645: Triangle T(n,k), 0<=k<=n, read by rows given by [1,-1,0,0,0,0,0,...] DELTA [ -1,2,-1,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938 .

The programs for A124645, there is no canonical definition to state claims against.
-/

/-! ## A124645.P14620699393234783691

`A147310(A074147(n+1))`
-/

namespace A124645.P14620699393234783691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147310 (A074147 (n + 1)).toNat

end

end A124645.P14620699393234783691

/-! ## A124645.P16336285600083569800

`Δ[A165471(A177517(n+1)*A206700(n+1))]`
-/

namespace A124645.P16336285600083569800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A177517 (n + 1) * A206700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124645.P16336285600083569800

/-! ## A124645.P2333559625209029497

`Δ[A030341(A047217(n+1)^A285229(n))]`
-/

namespace A124645.P2333559625209029497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (SequenceMachineLib.roundAway ((A047217 (n + 1) : ℚ) ^ (A285229 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124645.P2333559625209029497

/-! ## A124645.P3711692715957246153

`A079635(n+1)+A010060(A026677(n))`
-/

namespace A124645.P3711692715957246153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1) + A010060 (A026677 n).toNat

end

end A124645.P3711692715957246153

/-! ## A124645.P11522080152635288895

`A030308(A014610(n))-A191265(n+1)`
-/

namespace A124645.P11522080152635288895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A014610 n).toNat - A191265 (n + 1)

end

end A124645.P11522080152635288895

/-!
# A124646: Coefficients of the series expansion of g.f. A124635 at x=infinity.

The programs for A124646, there is no canonical definition to state claims against.
-/

/-! ## A124646.P4712144391610237208

`-A124635(n)`
-/

namespace A124646.P4712144391610237208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124635 n

end

end A124646.P4712144391610237208

/-! ## A124646.P4491130194299932896

`A011738(n)-A124635(n)`
-/

namespace A124646.P4491130194299932896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011738 n - A124635 n

end

end A124646.P4491130194299932896

/-! ## A124646.P13899239243174656982

`A011739(n)-A124635(n)`
-/

namespace A124646.P13899239243174656982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011739 n - A124635 n

end

end A124646.P13899239243174656982

/-! ## A124646.P12100555257314376819

`A011740(n)-A124635(n)`
-/

namespace A124646.P12100555257314376819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 n - A124635 n

end

end A124646.P12100555257314376819

/-! ## A124646.P8155749461401725133

`A011741(n)-A124635(n)`
-/

namespace A124646.P8155749461401725133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011741 n - A124635 n

end

end A124646.P8155749461401725133

/-!
# A124647: a(n) = (2n + 1)*3^n.

The programs for A124647, the canonical program `A124647.P15241135769168499352` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124647 has offset 0).

The definition of A124647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*3^n` (program `A124647.P15241135769168499352`, by `A124647.P15241135769168499352.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124647.P15241135769168499352

`(2*n+1)*3^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124647

/-- `(2*n+1)*3^n` -/
def P15241135769168499352.Spec : Prop :=
  ∀ n, (P15241135769168499352.a n : ℤ) = A124647 n

theorem P15241135769168499352.correct : P15241135769168499352.Spec := by
  intro n
  simp only [A124647]

end A124647

/-! ## A124647.P7268534190580956717

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A124647.P7268534190580956717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A124647.P7268534190580956717

namespace A124647

/-- `6*a(n-1)-9*a(n-2)` -/
def P7268534190580956717.Spec : Prop :=
  ∀ n, P7268534190580956717.a n = A124647 n

theorem P7268534190580956717.correct : P7268534190580956717.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A124647, Nat.add_sub_cancel, A124647.P7268534190580956717.a, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A124647, Nat.add_sub_cancel, A124647.P7268534190580956717.a, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124647

/-! ## A124647.P235184453216212545

`A018804(2*3^n)-2*3^n`
-/

namespace A124647.P235184453216212545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (2 * 3 ^ n) - (2 * 3 ^ n : ℤ)

end

end A124647.P235184453216212545

namespace A124647

/-- `A018804(2*3^n)-2*3^n` -/
def P235184453216212545.Spec : Prop :=
  ∀ n, P235184453216212545.a n = A124647 n

end A124647

/-! ## A124647.P9391519435696718547

`ogf((1+3x)/(1-6x+9x^2))`
-/

namespace A124647.P9391519435696718547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -6, 9] n

end

end A124647.P9391519435696718547

namespace A124647

/-- `ogf((1+3x)/(1-6x+9x^2))` -/
def P9391519435696718547.Spec : Prop :=
  ∀ n, P9391519435696718547.a n = A124647 n

end A124647

/-! ## A124647.P14216930078724802619

`Δ[3^n]+a(n-1)/cot(atan(3))` with `a(0)=1`
-/

namespace A124647.P14216930078724802619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A124647.P14216930078724802619

namespace A124647

/-- `Δ[3^n]+a(n-1)/cot(atan(3))` -/
def P14216930078724802619.Spec : Prop :=
  ∀ n, P14216930078724802619.a n = (A124647 n : ℝ)

end A124647

/-! ## A124647.P14379251371301767350

`Δ[3^n]+a(n-1)/sqrt(1/9)` with `a(0)=1`
-/

namespace A124647.P14379251371301767350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A124647.P14379251371301767350

namespace A124647

/-- `Δ[3^n]+a(n-1)/sqrt(1/9)` -/
def P14379251371301767350.Spec : Prop :=
  ∀ n, P14379251371301767350.a n = (A124647 n : ℝ)

theorem P14379251371301767350.correct : P14379251371301767350.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A124647, Nat.add_sub_cancel, A124647.P14379251371301767350.f1, A124647.P14379251371301767350.a, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A124647, Nat.add_sub_cancel, A124647.P14379251371301767350.f1, A124647.P14379251371301767350.a, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124647

/-! ## A124647.P17559145223247996684

`a(n-1)/sqrt(1/9)+3^n/tan(acot(2))` with `a(0)=1`
-/

namespace A124647.P17559145223247996684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) + (3 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A124647.P17559145223247996684

namespace A124647

/-- `a(n-1)/sqrt(1/9)+3^n/tan(acot(2))` -/
def P17559145223247996684.Spec : Prop :=
  ∀ n, P17559145223247996684.a n = (A124647 n : ℝ)

end A124647

/-! ## A124647.P9532571290882576144

`∑[2*A027261(n)]-1`
-/

namespace A124647.P9532571290882576144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A124647.P9532571290882576144

namespace A124647

/-- `∑[2*A027261(n)]-1` -/
def P9532571290882576144.Spec : Prop :=
  ∀ n, P9532571290882576144.a n = A124647 n

end A124647

/-! ## A124647.P943991905746678411

`∑[(n+1)*A003946(n)]`
-/

namespace A124647.P943991905746678411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124647.P943991905746678411

namespace A124647

/-- `∑[(n+1)*A003946(n)]` -/
def P943991905746678411.Spec : Prop :=
  ∀ n, P943991905746678411.a n = A124647 n

end A124647

/-! ## A124647.P651111341476298138

`A212697(n+1)-3^n`
-/

namespace A124647.P651111341476298138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212697 (n + 1) - (3 ^ n : ℤ)

end

end A124647.P651111341476298138

namespace A124647

/-- `A212697(n+1)-3^n` -/
def P651111341476298138.Spec : Prop :=
  ∀ n, P651111341476298138.a n = A124647 n

end A124647

/-! ## A124647.P2523261284782180229

`3^n+n*A008776(n)`
-/

namespace A124647.P2523261284782180229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (n : ℤ) * A008776 n

end

end A124647.P2523261284782180229

namespace A124647

/-- `3^n+n*A008776(n)` -/
def P2523261284782180229.Spec : Prop :=
  ∀ n, P2523261284782180229.a n = A124647 n

end A124647

/-! ## A124647.P8632713872502304933

`∑[(n+1)*A052156(n+1)]`
-/

namespace A124647.P8632713872502304933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124647.P8632713872502304933

namespace A124647

/-- `∑[(n+1)*A052156(n+1)]` -/
def P8632713872502304933.Spec : Prop :=
  ∀ n, P8632713872502304933.a n = A124647 n

end A124647

/-! ## A124647.P11202572630923679190

`∑[(n+1)*A326339(n+2)]`
-/

namespace A124647.P11202572630923679190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A326339 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124647.P11202572630923679190

namespace A124647

/-- `∑[(n+1)*A326339(n+2)]` -/
def P11202572630923679190.Spec : Prop :=
  ∀ n, P11202572630923679190.a n = A124647 n

end A124647

/-! ## A124647.P9322977316906229635

`∑[(n+1)*A068911(2*n)]`
-/

namespace A124647.P9322977316906229635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A068911 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124647.P9322977316906229635

namespace A124647

/-- `∑[(n+1)*A068911(2*n)]` -/
def P9322977316906229635.Spec : Prop :=
  ∀ n, P9322977316906229635.a n = A124647 n

end A124647

/-! ## A124647.P14418437612366823359

`A120908(n+1)+A081038(n)`
-/

namespace A124647.P14418437612366823359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (n + 1) + A081038 n

end

end A124647.P14418437612366823359

namespace A124647

/-- `A120908(n+1)+A081038(n)` -/
def P14418437612366823359.Spec : Prop :=
  ∀ n, P14418437612366823359.a n = A124647 n

end A124647

/-! ## A124647.P18144278753493814938

`A036290(n)+A027471(n+2)`
-/

namespace A124647.P18144278753493814938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n + A027471 (n + 2)

end

end A124647.P18144278753493814938

namespace A124647

/-- `A036290(n)+A027471(n+2)` -/
def P18144278753493814938.Spec : Prop :=
  ∀ n, P18144278753493814938.a n = A124647 n

end A124647

/-! ## A124647.P9836720684421965694

`A081038(n+1)-A003946(n+1)`
-/

namespace A124647.P9836720684421965694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 (n + 1) - A003946 (n + 1)

end

end A124647.P9836720684421965694

namespace A124647

/-- `A081038(n+1)-A003946(n+1)` -/
def P9836720684421965694.Spec : Prop :=
  ∀ n, P9836720684421965694.a n = A124647 n

end A124647

/-! ## A124647.P17488405024516393104

`or(1, Δ[(n-1)*3^n])`
-/

namespace A124647.P17488405024516393104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A124647.P17488405024516393104

namespace A124647

/-- `or(1, Δ[(n-1)*3^n])` -/
def P17488405024516393104.Spec : Prop :=
  ∀ n, P17488405024516393104.a n = A124647 n

end A124647

/-! ## A124647.P18178797602860625239

`Δ[(n-1)*3^gcd(n, 2*n)]`
-/

namespace A124647.P18178797602860625239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (3 ^ Nat.gcd n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124647.P18178797602860625239

namespace A124647

/-- `Δ[(n-1)*3^gcd(n, 2*n)]` -/
def P18178797602860625239.Spec : Prop :=
  ∀ n, P18178797602860625239.a n = A124647 n

theorem P18178797602860625239.correct : P18178797602860625239.Spec := by
  intro n
  simp only [A124647, Nat.add_sub_cancel, A124647.P18178797602860625239.f1, A124647.P18178797602860625239.a, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A124647

/-! ## A124647.P1547956445148868104

`A187273(Δ[n²])/3`
-/

namespace A124647.P1547956445148868104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187273 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A124647.P1547956445148868104

namespace A124647

/-- `A187273(Δ[n²])/3` -/
def P1547956445148868104.Spec : Prop :=
  ∀ n, P1547956445148868104.a n = (A124647 n : ℚ)

end A124647

/-!
# A124650: Number of n-digit numbers m such that m and m^10 are zeroless.

The programs for A124650, there is no canonical definition to state claims against.
-/

/-! ## A124650.P18032266881834271072

`or(A005117(2*n+3), A327988(A189398(n+1)))`
-/

namespace A124650.P18032266881834271072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005117 (2 * n + 3)) (A327988 (A189398 (n + 1)).toNat)

end

end A124650.P18032266881834271072

/-!
# A124653: a(1)=1. a(2)=2. a(n) = smallest positive integer not occurring earlier in the sequence such that every positive integer <= and coprime to (a(n-1)+a(n-2)) is also coprime to a(n).

The programs for A124653, there is no canonical definition to state claims against.
-/

/-! ## A124653.P1117319755845195362

`A085736(A365642(n+1))`
-/

namespace A124653.P1117319755845195362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A365642 (n + 1)).toNat

end

end A124653.P1117319755845195362

/-! ## A124653.P2580476976241627176

`filter[A365642(n+1), A102609(#)]`
-/

namespace A124653.P2580476976241627176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A124653.P2580476976241627176

/-! ## A124653.P5441910625789906076

`filter[A365642(n+1), A114213(#)]`
-/

namespace A124653.P5441910625789906076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A124653.P5441910625789906076

/-! ## A124653.P17088409583547562595

`filter[A365642(n+1), A267959(#)]`
-/

namespace A124653.P17088409583547562595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A124653.P17088409583547562595

/-! ## A124653.P1581625950973359457

`filter[A365642(n+1), A385395(#)]`
-/

namespace A124653.P1581625950973359457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A124653.P1581625950973359457

/-!
# A124656: Abundant odious numbers. (Abundant numbers that have an odd number of ones in their binary representation.)

The programs for A124656, the canonical program `A124656.P12602646554450851436` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124656 has offset 1).

The definition of A124656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1736 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124656.P3684246282123694621

`∩[A005101(n+1), A125495(n+1)]`
-/

namespace A124656.P3684246282123694621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124656.P3684246282123694621

namespace A124656

/-- `∩[A005101(n+1), A125495(n+1)]` -/
def P3684246282123694621.Spec : Prop :=
  ∀ n, (P3684246282123694621.a n : ℤ) = A124656 (n + 1)

end A124656

/-! ## A124656.P13439027677455368737

`∩[A005101(n+1), A229937(n+1)]`
-/

namespace A124656.P13439027677455368737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124656.P13439027677455368737

namespace A124656

/-- `∩[A005101(n+1), A229937(n+1)]` -/
def P13439027677455368737.Spec : Prop :=
  ∀ n, (P13439027677455368737.a n : ℤ) = A124656 (n + 1)

end A124656

/-! ## A124656.P12924901554765592905

`∩[A005101(n+1), A075930(n)]`
-/

namespace A124656.P12924901554765592905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124656.P12924901554765592905

namespace A124656

/-- `∩[A005101(n+1), A075930(n)]` -/
def P12924901554765592905.Spec : Prop :=
  ∀ n, (P12924901554765592905.a n : ℤ) = A124656 (n + 1)

end A124656

/-! ## A124656.P13389546859335380933

`∩[A000069(n+1), A005101(n+1)]`
-/

namespace A124656.P13389546859335380933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124656.P13389546859335380933

namespace A124656

/-- `∩[A000069(n+1), A005101(n+1)]` -/
def P13389546859335380933.Spec : Prop :=
  ∀ n, (P13389546859335380933.a n : ℤ) = A124656 (n + 1)

end A124656

/-! ## A124656.P5058180304313429603

`filter[A075930(n), A294937(#)]`
-/

namespace A124656.P5058180304313429603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A124656.P5058180304313429603

namespace A124656

/-- `filter[A075930(n), A294937(#)]` -/
def P5058180304313429603.Spec : Prop :=
  ∀ n, P5058180304313429603.a n = A124656 (n + 1)

end A124656

/-! ## A124656.P12602646554450851436

`filter[A005101(n+1), A010060(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A124656

/-- `filter[A005101(n+1), A010060(#)]` -/
def P12602646554450851436.Spec : Prop :=
  ∀ n, P12602646554450851436.a n = A124656 (n + 1)

theorem P12602646554450851436.correct : P12602646554450851436.Spec := by
  intro n
  simp only [A124656, Nat.add_sub_cancel]

end A124656

/-! ## A124656.P5360598454464651208

`filter[A125495(n+1), A294937(#)]`
-/

namespace A124656.P5360598454464651208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A124656.P5360598454464651208

namespace A124656

/-- `filter[A125495(n+1), A294937(#)]` -/
def P5360598454464651208.Spec : Prop :=
  ∀ n, P5360598454464651208.a n = A124656 (n + 1)

end A124656

/-! ## A124656.P13802324448314543803

`filter[A229937(n+1), A294937(#)]`
-/

namespace A124656.P13802324448314543803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A124656.P13802324448314543803

namespace A124656

/-- `filter[A229937(n+1), A294937(#)]` -/
def P13802324448314543803.Spec : Prop :=
  ∀ n, P13802324448314543803.a n = A124656 (n + 1)

end A124656

/-! ## A124656.P4195773170236266183

`eq[A082551(A028310(n)), A277822(n)]`
-/

namespace A124656.P4195773170236266183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124656.P4195773170236266183

namespace A124656

/-- `eq[A082551(A028310(n)), A277822(n)]` -/
def P4195773170236266183.Spec : Prop :=
  ∀ n, (P4195773170236266183.a n : ℤ) = A124656 (n + 1)

end A124656

/-! ## A124656.P7776838047799025205

`eq[2, A001285(n)*A082551(A028310(n))]`
-/

namespace A124656.P7776838047799025205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n * A082551 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124656.P7776838047799025205

namespace A124656

/-- `eq[2, A001285(n)*A082551(A028310(n))]` -/
def P7776838047799025205.Spec : Prop :=
  ∀ n, (P7776838047799025205.a n : ℤ) = A124656 (n + 1)

end A124656

/-! ## A124656.P3440356398537028329

`∩[A005101(n+1), A115384(A224907(n+1))-1]`
-/

namespace A124656.P3440356398537028329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A224907 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124656.P3440356398537028329

namespace A124656

/-- `∩[A005101(n+1), A115384(A224907(n+1))-1]` -/
def P3440356398537028329.Spec : Prop :=
  ∀ n, (P3440356398537028329.a n : ℤ) = A124656 (n + 1)

end A124656

/-!
# A124657: Factorials that are abundant numbers.

The programs for A124657, there is no canonical definition to state claims against.
-/

/-! ## A124657.P2116187180490618601

`(4+n)!`
-/

namespace A124657.P2116187180490618601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (4 + n)

end

end A124657.P2116187180490618601

/-! ## A124657.P9047005117793506258

`6*∏[n+4]`
-/

namespace A124657.P9047005117793506258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A124657.P9047005117793506258

/-! ## A124657.P11368669515277122753

`record[abs(4-n)!]`
-/

namespace A124657.P11368669515277122753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |4 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124657.P11368669515277122753

/-! ## A124657.P8451439649834415875

`Δ[lcm(6, ∑[∏[n+3]])]`
-/

namespace A124657.P8451439649834415875
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A124657.P8451439649834415875

/-! ## A124657.P10503296659615197812

`∏[a(n-1)+1]` with `a(0)=24, a(1)=5`
-/

namespace A124657.P10503296659615197812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A124657.P10503296659615197812

/-!
# A124659: Twin prime products minus 2.

The programs for A124659, the canonical program `A124659.P412689728244301623` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124659 has offset 1).

The definition of A124659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124659.P11959684372630941368

`A120875(n+1)-1`
-/

namespace A124659.P11959684372630941368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) - 1

end

end A124659.P11959684372630941368

namespace A124659

/-- `A120875(n+1)-1` -/
def P11959684372630941368.Spec : Prop :=
  ∀ n, P11959684372630941368.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P13675977308939468698

`A037074(n+1)-2`
-/

namespace A124659.P13675977308939468698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) - 2

end

end A124659.P13675977308939468698

namespace A124659

/-- `A037074(n+1)-2` -/
def P13675977308939468698.Spec : Prop :=
  ∀ n, P13675977308939468698.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P14390841876668776935

`A075369(n+1)-3`
-/

namespace A124659.P14390841876668776935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) - 3

end

end A124659.P14390841876668776935

namespace A124659

/-- `A075369(n+1)-3` -/
def P14390841876668776935.Spec : Prop :=
  ∀ n, P14390841876668776935.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P7437715058827737103

`A134020(n+2)-2`
-/

namespace A124659.P7437715058827737103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134020 (n + 2) - 2

end

end A124659.P7437715058827737103

namespace A124659

/-- `A134020(n+2)-2` -/
def P7437715058827737103.Spec : Prop :=
  ∀ n, P7437715058827737103.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P5320440834030937892

`floor(sqrt(A094949(n+1)))`
-/

namespace A124659.P5320440834030937892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A094949 (n + 1))

end

end A124659.P5320440834030937892

namespace A124659

/-- `floor(sqrt(A094949(n+1)))` -/
def P5320440834030937892.Spec : Prop :=
  ∀ n, P5320440834030937892.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P16136876531846537424

`A014574(n+1)²-3`
-/

namespace A124659.P16136876531846537424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) ^ 2 - 3

end

end A124659.P16136876531846537424

namespace A124659

/-- `A014574(n+1)²-3` -/
def P16136876531846537424.Spec : Prop :=
  ∀ n, P16136876531846537424.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P14171369636992936341

`2*A120876(n+1)-1`
-/

namespace A124659.P14171369636992936341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120876 (n + 1) - 1

end

end A124659.P14171369636992936341

namespace A124659

/-- `2*A120876(n+1)-1` -/
def P14171369636992936341.Spec : Prop :=
  ∀ n, P14171369636992936341.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P231850247967023668

`A071142(n+1)/2-2`
-/

namespace A124659.P231850247967023668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071142 (n + 1) : ℚ) / 2 - 2

end

end A124659.P231850247967023668

namespace A124659

/-- `A071142(n+1)/2-2` -/
def P231850247967023668.Spec : Prop :=
  ∀ n, P231850247967023668.a n = (A124659 (n + 1) : ℚ)

end A124659

/-! ## A124659.P2866232865852772213

`A063533(n+1)/2-4`
-/

namespace A124659.P2866232865852772213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063533 (n + 1) : ℚ) / 2 - 4

end

end A124659.P2866232865852772213

namespace A124659

/-- `A063533(n+1)/2-4` -/
def P2866232865852772213.Spec : Prop :=
  ∀ n, P2866232865852772213.a n = (A124659 (n + 1) : ℚ)

end A124659

/-! ## A124659.P16563017644843448186

`floor((sqrt(A137367(n+1))+1)²)`
-/

namespace A124659.P16563017644843448186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A137367 (n + 1) : ℝ) + 1) ^ 2⌋

end

end A124659.P16563017644843448186

namespace A124659

/-- `floor((sqrt(A137367(n+1))+1)²)` -/
def P16563017644843448186.Spec : Prop :=
  ∀ n, P16563017644843448186.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P412689728244301623

`abs(3-(p?[A040976(n+1)]+1)²)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124659

/-- `abs(3-(p?[A040976(n+1)]+1)²)` -/
def P412689728244301623.Spec : Prop :=
  ∀ n, P412689728244301623.a n = A124659 (n + 1)

theorem P412689728244301623.correct : P412689728244301623.Spec := by
  intro n
  simp only [A124659, Nat.add_sub_cancel]

end A124659

/-! ## A124659.P12812322199832955804

`(1-p?[A000040(n+1)+2])²-3`
-/

namespace A124659.P12812322199832955804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 2 - 3

end

end A124659.P12812322199832955804

namespace A124659

/-- `(1-p?[A000040(n+1)+2])²-3` -/
def P12812322199832955804.Spec : Prop :=
  ∀ n, P12812322199832955804.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P14566726737043268797

`A023515(A107770(n+1))-1`
-/

namespace A124659.P14566726737043268797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (A107770 (n + 1)).toNat - 1

end

end A124659.P14566726737043268797

namespace A124659

/-- `A023515(A107770(n+1))-1` -/
def P14566726737043268797.Spec : Prop :=
  ∀ n, P14566726737043268797.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P15210728891114032455

`A006094(A029707(n+1))-2`
-/

namespace A124659.P15210728891114032455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A029707 (n + 1)).toNat - 2

end

end A124659.P15210728891114032455

namespace A124659

/-- `A006094(A029707(n+1))-2` -/
def P15210728891114032455.Spec : Prop :=
  ∀ n, P15210728891114032455.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P4108736421595377132

`A000203(A001359(n+1))²-3`
-/

namespace A124659.P4108736421595377132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001359 (n + 1)).toNat ^ 2 - 3

end

end A124659.P4108736421595377132

namespace A124659

/-- `A000203(A001359(n+1))²-3` -/
def P4108736421595377132.Spec : Prop :=
  ∀ n, P4108736421595377132.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P15954332402709996408

`A000010(A006512(n+1))²-3`
-/

namespace A124659.P15954332402709996408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006512 (n + 1)).toNat ^ 2 - 3

end

end A124659.P15954332402709996408

namespace A124659

/-- `A000010(A006512(n+1))²-3` -/
def P15954332402709996408.Spec : Prop :=
  ∀ n, P15954332402709996408.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P5821046276749598911

`A000010(A067829(n+2))²-3`
-/

namespace A124659.P5821046276749598911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A067829 (n + 2)).toNat ^ 2 - 3

end

end A124659.P5821046276749598911

namespace A124659

/-- `A000010(A067829(n+2))²-3` -/
def P5821046276749598911.Spec : Prop :=
  ∀ n, P5821046276749598911.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P12003265198197510838

`2*A102770(A155752(n+1))-1`
-/

namespace A124659.P12003265198197510838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102770 (A155752 (n + 1)).toNat - 1

end

end A124659.P12003265198197510838

namespace A124659

/-- `2*A102770(A155752(n+1))-1` -/
def P12003265198197510838.Spec : Prop :=
  ∀ n, P12003265198197510838.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P1781269055700884095

`A137367(n+1)+A108605(n+1)`
-/

namespace A124659.P1781269055700884095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137367 (n + 1) + A108605 (n + 1)

end

end A124659.P1781269055700884095

namespace A124659

/-- `A137367(n+1)+A108605(n+1)` -/
def P1781269055700884095.Spec : Prop :=
  ∀ n, P1781269055700884095.a n = A124659 (n + 1)

end A124659

/-! ## A124659.P1033899458225438255

`A135286(n+1)-A172057(n+1)`
-/

namespace A124659.P1033899458225438255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135286 (n + 1) - A172057 (n + 1)

end

end A124659.P1033899458225438255

namespace A124659

/-- `A135286(n+1)-A172057(n+1)` -/
def P1033899458225438255.Spec : Prop :=
  ∀ n, P1033899458225438255.a n = A124659 (n + 1)

end A124659

/-!
# A124662: Primes prime(n) such that there exists a 0 < k < n-1 such that prime(n+k) + prime(n-k) = 2*prime(n).

The programs for A124662, there is no canonical definition to state claims against.
-/

/-! ## A124662.P8446650123040603079

`p?[comp[A178954(n+1)]]`
-/

namespace A124662.P8446650123040603079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178954 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A124662.P8446650123040603079

/-! ## A124662.P18356178975990900213

`A045344(lt[0, A178670(n+1)])`
-/

namespace A124662.P18356178975990900213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124662.P18356178975990900213

/-! ## A124662.P18161159539158918894

`A045344(lt[0, A179835(n+1)])`
-/

namespace A124662.P18161159539158918894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124662.P18161159539158918894

/-! ## A124662.P12581404256688624934

`A065091(lt[0, A178609(n+1)])`
-/

namespace A124662.P12581404256688624934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124662.P12581404256688624934

/-! ## A124662.P12954769201230569357

`p?[comp[A000040(A178953(n+1))]]`
-/

namespace A124662.P12954769201230569357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A178953 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A124662.P12954769201230569357

/-! ## A124662.P14638673891878341753

`A000040(lt[0, A178670(n+1)]+1)`
-/

namespace A124662.P14638673891878341753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A124662.P14638673891878341753

/-! ## A124662.P7027192782213470563

`A000040(lt[0, A179835(n+1)]+1)`
-/

namespace A124662.P7027192782213470563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A124662.P7027192782213470563

/-! ## A124662.P16714170942951144609

`A000040(comp[A178953(n+1)-1]+1)`
-/

namespace A124662.P16714170942951144609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178953 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A124662.P16714170942951144609

/-!
# A124663: Number of reduced infinitary amicable pairs (i,j) with i

The programs for A124663, there is no canonical definition to state claims against.
-/

/-! ## A124663.P7975520199268060396

`A287896(A020134(n))-1`
-/

namespace A124663.P7975520199268060396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A020134 n).toNat - 1

end

end A124663.P7975520199268060396

/-! ## A124663.P5221506104177328387

`A085263(or(2, A229182(n)))-1`
-/

namespace A124663.P5221506104177328387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (Int.lor 2 (A229182 n)).toNat - 1

end

end A124663.P5221506104177328387

/-! ## A124663.P11946354911789300833

`∑[∑[A239927(A073473(n+1))]]`
-/

namespace A124663.P11946354911789300833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239927 (A073473 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124663.P11946354911789300833

/-! ## A124663.P6203650757850194261

`A080148(A005190(n))%A001405(n)`
-/

namespace A124663.P6203650757850194261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080148 (A005190 n).toNat) (A001405 n)

end

end A124663.P6203650757850194261

/-! ## A124663.P5332058996038418230

`A000194(A117158(n)%A053500(n))`
-/

namespace A124663.P5332058996038418230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A117158 n) (A053500 n)).toNat

end

end A124663.P5332058996038418230

/-!
# A124664: Both k and its reverse are one more than a square.

The programs for A124664, there is no canonical definition to state claims against.
-/

/-! ## A124664.P13833430411120946261

`∩[A201982(n+1), n²+1]`
-/

namespace A124664.P13833430411120946261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A124664.P13833430411120946261

/-! ## A124664.P11255528047325034826

`∩[A281625(n+1), n²+1]`
-/

namespace A124664.P11255528047325034826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281625 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A124664.P11255528047325034826

/-! ## A124664.P3351146283841238464

`eq[A006702(n+1), A062279(n)]`
-/

namespace A124664.P3351146283841238464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124664.P3351146283841238464

/-!
# A124665: Numbers that cannot be either prefixed or followed by one digit to form a prime.

The programs for A124665, there is no canonical definition to state claims against.
-/

/-! ## A124665.P12658619224266319459

`eq[0, A224953(n)]`
-/

namespace A124665.P12658619224266319459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124665.P12658619224266319459

/-! ## A124665.P1015550319344724405

`lt[A224953(A028310(n)), 1]`
-/

namespace A124665.P1015550319344724405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124665.P1015550319344724405

/-! ## A124665.P5483498001892035461

`lt[A224953(n)*A255622(n+1), 1]`
-/

namespace A124665.P5483498001892035461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n * A255622 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124665.P5483498001892035461

/-! ## A124665.P3903844255938918905

`lt[A224953(n), A100994(n+1)²%3]`
-/

namespace A124665.P3903844255938918905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100994 (n + 1) ^ 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124665.P3903844255938918905

/-! ## A124665.P14366482136542201498

`∩[A032352(n+1), A249025(n+1)+10]`
-/

namespace A124665.P14366482136542201498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249025 (n + 1) + 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124665.P14366482136542201498

/-! ## A124665.P13577916188162005425

`∩[A032352(n+1), A249025(n+1)]`
-/

namespace A124665.P13577916188162005425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124665.P13577916188162005425

/-!
# A124666: Numbers ending in 1, 3, 7 or 9 such that either prepending or following them by one digit doesn't produce a prime.

The programs for A124666, there is no canonical definition to state claims against.
-/

/-! ## A124666.P18142667943117711598

`∩[A045572(n+1), A124665(n+1)]`
-/

namespace A124666.P18142667943117711598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124666.P18142667943117711598

/-!
# A124667: Prime numbers p such that the sum of the digits of p equals the sums of the digits of p^3.

The programs for A124667, there is no canonical definition to state claims against.
-/

/-! ## A124667.P16598523126865387137

`p?[A070276(n+1)]`
-/

namespace A124667.P16598523126865387137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124667.P16598523126865387137

/-! ## A124667.P15469947260407230396

`p?[record[A070276(A020986(n))]]`
-/

namespace A124667.P15469947260407230396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070276 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124667.P15469947260407230396

/-! ## A124667.P13885229640434189104

`p?[record[A070276(A028920(n))]]`
-/

namespace A124667.P13885229640434189104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070276 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124667.P13885229640434189104

/-! ## A124667.P1887363624612862843

`record[p?[A070276(A052938(n))]]`
-/

namespace A124667.P1887363624612862843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070276 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124667.P1887363624612862843

/-!
# A124669: Product of successive primes minus 2.

The programs for A124669, the canonical program `A124669.P372249676640486101` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124669 has offset 1).

The definition of A124669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124669.P372249676640486101

`record[A116570(n)-2]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124669

/-- `record[A116570(n)-2]` -/
def P372249676640486101.Spec : Prop :=
  ∀ n, P372249676640486101.a n = A124669 (n + 1)

theorem P372249676640486101.correct : P372249676640486101.Spec := by
  intro n
  simp only [A124669, Nat.add_sub_cancel]

end A124669

/-! ## A124669.P15873193814582301868

`A006094(n+1)-2`
-/

namespace A124669.P15873193814582301868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - 2

end

end A124669.P15873193814582301868

namespace A124669

/-- `A006094(n+1)-2` -/
def P15873193814582301868.Spec : Prop :=
  ∀ n, P15873193814582301868.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P176219919719749698

`A023515(n+2)-1`
-/

namespace A124669.P176219919719749698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 2) - 1

end

end A124669.P176219919719749698

namespace A124669

/-- `A023515(n+2)-1` -/
def P176219919719749698.Spec : Prop :=
  ∀ n, P176219919719749698.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P593180780883290017

`A023523(n+2)-3`
-/

namespace A124669.P593180780883290017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 2) - 3

end

end A124669.P593180780883290017

namespace A124669

/-- `A023523(n+2)-3` -/
def P593180780883290017.Spec : Prop :=
  ∀ n, P593180780883290017.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P12981592378414477042

`A116570(2*n)-2`
-/

namespace A124669.P12981592378414477042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n) - 2

end

end A124669.P12981592378414477042

namespace A124669

/-- `A116570(2*n)-2` -/
def P12981592378414477042.Spec : Prop :=
  ∀ n, P12981592378414477042.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P4555225961372866662

`A033476(Δ[n²])-2`
-/

namespace A124669.P4555225961372866662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A124669.P4555225961372866662

namespace A124669

/-- `A033476(Δ[n²])-2` -/
def P4555225961372866662.Spec : Prop :=
  ∀ n, P4555225961372866662.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P1786342290049581286

`A333747(Δ[n²])-2`
-/

namespace A124669.P1786342290049581286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A124669.P1786342290049581286

namespace A124669

/-- `A333747(Δ[n²])-2` -/
def P1786342290049581286.Spec : Prop :=
  ∀ n, P1786342290049581286.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P1762378361338196424

`sqrt(A166329(n+1))-2`
-/

namespace A124669.P1762378361338196424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ) - 2

end

end A124669.P1762378361338196424

namespace A124669

/-- `sqrt(A166329(n+1))-2` -/
def P1762378361338196424.Spec : Prop :=
  ∀ n, P1762378361338196424.a n = (A124669 (n + 1) : ℝ)

end A124669

/-! ## A124669.P15022878645840550197

`record[A119416(n+2)-2]`
-/

namespace A124669.P15022878645840550197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124669.P15022878645840550197

namespace A124669

/-- `record[A119416(n+2)-2]` -/
def P15022878645840550197.Spec : Prop :=
  ∀ n, P15022878645840550197.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P9704166520811545407

`A069486(n+1)/2-2`
-/

namespace A124669.P9704166520811545407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069486 (n + 1) : ℚ) / 2 - 2

end

end A124669.P9704166520811545407

namespace A124669

/-- `A069486(n+1)/2-2` -/
def P9704166520811545407.Spec : Prop :=
  ∀ n, P9704166520811545407.a n = (A124669 (n + 1) : ℚ)

end A124669

/-! ## A124669.P1783301339100824889

`A057602(2*n+3)-2`
-/

namespace A124669.P1783301339100824889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (2 * n + 3) - 2

end

end A124669.P1783301339100824889

namespace A124669

/-- `A057602(2*n+3)-2` -/
def P1783301339100824889.Spec : Prop :=
  ∀ n, P1783301339100824889.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P1131404757784906982

`A109805(n)+a(n-1)` with `a(0)=4`
-/

namespace A124669.P1131404757784906982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A109805 n + a (n - 1)

end

end A124669.P1131404757784906982

namespace A124669

/-- `A109805(n)+a(n-1)` -/
def P1131404757784906982.Spec : Prop :=
  ∀ n, P1131404757784906982.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P12783185844986704094

`record[A006530(n+2)]*p?[2*n+1]-2`
-/

namespace A124669.P12783185844986704094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

end

end A124669.P12783185844986704094

namespace A124669

/-- `record[A006530(n+2)]*p?[2*n+1]-2` -/
def P12783185844986704094.Spec : Prop :=
  ∀ n, P12783185844986704094.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P1257747324465373702

`A013636(A000040(n+1))-2`
-/

namespace A124669.P1257747324465373702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 (A000040 (n + 1)).toNat - 2

end

end A124669.P1257747324465373702

namespace A124669

/-- `A013636(A000040(n+1))-2` -/
def P1257747324465373702.Spec : Prop :=
  ∀ n, P1257747324465373702.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P13394468893101664981

`A013637(A000040(n+2))-2`
-/

namespace A124669.P13394468893101664981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013637 (A000040 (n + 2)).toNat - 2

end

end A124669.P13394468893101664981

namespace A124669

/-- `A013637(A000040(n+2))-2` -/
def P13394468893101664981.Spec : Prop :=
  ∀ n, P13394468893101664981.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P14416176479937209973

`A265398(A000040(n+3))-2`
-/

namespace A124669.P14416176479937209973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265398 (A000040 (n + 3)).toNat - 2

end

end A124669.P14416176479937209973

namespace A124669

/-- `A265398(A000040(n+3))-2` -/
def P14416176479937209973.Spec : Prop :=
  ∀ n, P14416176479937209973.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P9091190931143777530

`A030661(record[A000010(n+1)])-2`
-/

namespace A124669.P9091190931143777530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030661 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A124669.P9091190931143777530

namespace A124669

/-- `A030661(record[A000010(n+1)])-2` -/
def P9091190931143777530.Spec : Prop :=
  ∀ n, P9091190931143777530.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P3342474157428840591

`A013636(record[A006530(n+2)])-2`
-/

namespace A124669.P3342474157428840591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A124669.P3342474157428840591

namespace A124669

/-- `A013636(record[A006530(n+2)])-2` -/
def P3342474157428840591.Spec : Prop :=
  ∀ n, P3342474157428840591.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P3670350643051273054

`A013636(record[A020639(n+2)])-2`
-/

namespace A124669.P3670350643051273054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A124669.P3670350643051273054

namespace A124669

/-- `A013636(record[A020639(n+2)])-2` -/
def P3670350643051273054.Spec : Prop :=
  ∀ n, P3670350643051273054.a n = A124669 (n + 1)

end A124669

/-! ## A124669.P14965027276159754335

`A040976(n+1)+A037166(n+1)`
-/

namespace A124669.P14965027276159754335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A037166 (n + 1)

end

end A124669.P14965027276159754335

namespace A124669

/-- `A040976(n+1)+A037166(n+1)` -/
def P14965027276159754335.Spec : Prop :=
  ∀ n, P14965027276159754335.a n = A124669 (n + 1)

end A124669

/-!
# A124670: (Product of successive primes minus 2) divided by 3 is prime.

The programs for A124670, there is no canonical definition to state claims against.
-/

/-! ## A124670.P8088996218595632022

`p?[floor(A023515(n+1)/3)]`
-/

namespace A124670.P8088996218595632022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023515 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124670.P8088996218595632022

/-! ## A124670.P3697801716631575539

`p?[floor(A006094(n+3)/3)]`
-/

namespace A124670.P3697801716631575539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 3) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124670.P3697801716631575539

/-! ## A124670.P12837193077968197414

`p?[round(A124669(n+1)/3)]`
-/

namespace A124670.P12837193077968197414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A124669 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124670.P12837193077968197414

/-! ## A124670.P615075539213882368

`p?[ceil(A006094(n+2)/3)-1]`
-/

namespace A124670.P615075539213882368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006094 (n + 2) : ℚ) / 3⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124670.P615075539213882368

/-! ## A124670.P8549484288956134809

`p?[round((A006094(n+1)-2)/3)]`
-/

namespace A124670.P8549484288956134809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006094 (n + 1) - 2 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124670.P8549484288956134809

/-!
# A124671: Row sums of A126277 = binomial transform of (1, 2, 2, 3, 4, 4, 4, ...)

The programs for A124671, the canonical program `A124671.P311471461827771796` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124671 has offset 1).

The definition of A124671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124671.P311471461827771796

`∑[∑[2^n-n]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124671

/-- `∑[∑[2^n-n]]` -/
def P311471461827771796.Spec : Prop :=
  ∀ n, P311471461827771796.a n = A124671 (n + 1)

theorem P311471461827771796.correct : P311471461827771796.Spec := by
  intro n
  simp only [A124671, Nat.add_sub_cancel]

end A124671

/-! ## A124671.P14073924176063747574

`floor(∑[∑[2*a(n-1)]-∑[n]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A124671.P14073924176063747574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124671.P14073924176063747574

namespace A124671

/-- `floor(∑[∑[2*a(n-1)]-∑[n]])` -/
def P14073924176063747574.Spec : Prop :=
  ∀ n, P14073924176063747574.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P9251997892821738759

`∑[∑[2*a(n-1)]]-∑[∑[n]]` with `a(0)=1`
-/

namespace A124671.P9251997892821738759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A124671.P9251997892821738759

namespace A124671

/-- `∑[∑[2*a(n-1)]]-∑[∑[n]]` -/
def P9251997892821738759.Spec : Prop :=
  ∀ n, P9251997892821738759.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P15484270595857702731

`A084635(n+2)-1`
-/

namespace A124671.P15484270595857702731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084635 (n + 2) - 1

end

end A124671.P15484270595857702731

namespace A124671

/-- `A084635(n+2)-1` -/
def P15484270595857702731.Spec : Prop :=
  ∀ n, P15484270595857702731.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P7875212720576532823

`A088921(n+1)+n`
-/

namespace A124671.P7875212720576532823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088921 (n + 1) + (n : ℤ)

end

end A124671.P7875212720576532823

namespace A124671

/-- `A088921(n+1)+n` -/
def P7875212720576532823.Spec : Prop :=
  ∀ n, P7875212720576532823.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P12010194988902643003

`∑[A130104(n)+n]+1`
-/

namespace A124671.P12010194988902643003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130104 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124671.P12010194988902643003

namespace A124671

/-- `∑[A130104(n)+n]+1` -/
def P12010194988902643003.Spec : Prop :=
  ∀ n, P12010194988902643003.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P2354729598036026428

`∑[A080522(n+1)]-n`
-/

namespace A124671.P2354729598036026428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A124671.P2354729598036026428

namespace A124671

/-- `∑[A080522(n+1)]-n` -/
def P2354729598036026428.Spec : Prop :=
  ∀ n, P2354729598036026428.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P9788865425306729359

`abs(∑[∑[A000079(n)-n]])`
-/

namespace A124671.P9788865425306729359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A124671.P9788865425306729359

namespace A124671

/-- `abs(∑[∑[A000079(n)-n]])` -/
def P9788865425306729359.Spec : Prop :=
  ∀ n, P9788865425306729359.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P10299560348119743865

`A084634(n)+a(n-1)` with `a(0)=1`
-/

namespace A124671.P10299560348119743865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084634 n + a (n - 1)

end

end A124671.P10299560348119743865

namespace A124671

/-- `A084634(n)+a(n-1)` -/
def P10299560348119743865.Spec : Prop :=
  ∀ n, P10299560348119743865.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P8471590496397159576

`∑[A014833(n+1)]+∑[n]`
-/

namespace A124671.P8471590496397159576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014833 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A124671.P8471590496397159576

namespace A124671

/-- `∑[A014833(n+1)]+∑[n]` -/
def P8471590496397159576.Spec : Prop :=
  ∀ n, P8471590496397159576.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P13592992352508561510

`A125128(n+1)-∑[∑[n]]`
-/

namespace A124671.P13592992352508561510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A124671.P13592992352508561510

namespace A124671

/-- `A125128(n+1)-∑[∑[n]]` -/
def P13592992352508561510.Spec : Prop :=
  ∀ n, P13592992352508561510.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P2780425170125506147

`A002663(n+2)+∑[n+1]`
-/

namespace A124671.P2780425170125506147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002663 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A124671.P2780425170125506147

namespace A124671

/-- `A002663(n+2)+∑[n+1]` -/
def P2780425170125506147.Spec : Prop :=
  ∀ n, P2780425170125506147.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P17776292948339365749

`abs(∑[∑[A155559(n)-n]+1])`
-/

namespace A124671.P17776292948339365749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A124671.P17776292948339365749

namespace A124671

/-- `abs(∑[∑[A155559(n)-n]+1])` -/
def P17776292948339365749.Spec : Prop :=
  ∀ n, P17776292948339365749.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P5878785941307193287

`∑[A000225(n+1)]-∑[∑[n]]`
-/

namespace A124671.P5878785941307193287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A124671.P5878785941307193287

namespace A124671

/-- `∑[A000225(n+1)]-∑[∑[n]]` -/
def P5878785941307193287.Spec : Prop :=
  ∀ n, P5878785941307193287.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P592630738448669274

`2^(n+2)-A011826(n+2)`
-/

namespace A124671.P592630738448669274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A011826 (n + 2)

end

end A124671.P592630738448669274

namespace A124671

/-- `2^(n+2)-A011826(n+2)` -/
def P592630738448669274.Spec : Prop :=
  ∀ n, P592630738448669274.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P2419445763145703038

`abs(∑[∑[n-1-A000225(n)]]-1)-1`
-/

namespace A124671.P2419445763145703038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| - 1

end

end A124671.P2419445763145703038

namespace A124671

/-- `abs(∑[∑[n-1-A000225(n)]]-1)-1` -/
def P2419445763145703038.Spec : Prop :=
  ∀ n, P2419445763145703038.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P10133869116186841959

`A126646(n)+A002663(n+1)`
-/

namespace A124671.P10133869116186841959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A002663 (n + 1)

end

end A124671.P10133869116186841959

namespace A124671

/-- `A126646(n)+A002663(n+1)` -/
def P10133869116186841959.Spec : Prop :=
  ∀ n, P10133869116186841959.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P18344092653127377416

`A000295(n+2)-A000292(n)`
-/

namespace A124671.P18344092653127377416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 2) - A000292 n

end

end A124671.P18344092653127377416

namespace A124671

/-- `A000295(n+2)-A000292(n)` -/
def P18344092653127377416.Spec : Prop :=
  ∀ n, P18344092653127377416.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P4234242564305849688

`A048492(n)+n-A004006(n)`
-/

namespace A124671.P4234242564305849688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048492 n + ((n : ℤ) - A004006 n)

end

end A124671.P4234242564305849688

namespace A124671

/-- `A048492(n)+n-A004006(n)` -/
def P4234242564305849688.Spec : Prop :=
  ∀ n, P4234242564305849688.a n = A124671 (n + 1)

end A124671

/-! ## A124671.P14366901359434924181

`A000225(n+1)+∑[A002662(n)]`
-/

namespace A124671.P14366901359434924181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124671.P14366901359434924181

namespace A124671

/-- `A000225(n+1)+∑[A002662(n)]` -/
def P14366901359434924181.Spec : Prop :=
  ∀ n, P14366901359434924181.a n = A124671 (n + 1)

end A124671

/-!
# A124672: Oblong (promic) abundant numbers = abundant numbers of the form k(k+1).

The programs for A124672, the canonical program `A124672.P824390092964618405` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124672 has offset 1).

The definition of A124672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124672.P6857893903973823990

`filter[A180291(n+4), A294936(#)]`
-/

namespace A124672.P6857893903973823990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180291 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A124672.P6857893903973823990

namespace A124672

/-- `filter[A180291(n+4), A294936(#)]` -/
def P6857893903973823990.Spec : Prop :=
  ∀ n, P6857893903973823990.a n = A124672 (n + 1)

end A124672

/-! ## A124672.P824390092964618405

`filter[A180291(n+4), A378550(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124672

/-- `filter[A180291(n+4), A378550(#)]` -/
def P824390092964618405.Spec : Prop :=
  ∀ n, P824390092964618405.a n = A124672 (n + 1)

theorem P824390092964618405.correct : P824390092964618405.Spec := by
  intro n
  simp only [A124672, Nat.add_sub_cancel]

end A124672

/-! ## A124672.P11276420061763722492

`∩[A005101(n+1), n²+n]`
-/

namespace A124672.P11276420061763722492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A124672.P11276420061763722492

namespace A124672

/-- `∩[A005101(n+1), n²+n]` -/
def P11276420061763722492.Spec : Prop :=
  ∀ n, (P11276420061763722492.a n : ℤ) = A124672 (n + 1)

end A124672

/-! ## A124672.P550188558776669046

`∩[A002378(n), A005101(n+1)]`
-/

namespace A124672.P550188558776669046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124672.P550188558776669046

namespace A124672

/-- `∩[A002378(n), A005101(n+1)]` -/
def P550188558776669046.Spec : Prop :=
  ∀ n, (P550188558776669046.a n : ℤ) = A124672 (n + 1)

end A124672

/-! ## A124672.P3666534988278206189

`∩[A060798(n+1), A005101(n+1)]`
-/

namespace A124672.P3666534988278206189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124672.P3666534988278206189

namespace A124672

/-- `∩[A060798(n+1), A005101(n+1)]` -/
def P3666534988278206189.Spec : Prop :=
  ∀ n, (P3666534988278206189.a n : ℤ) = A124672 (n + 1)

end A124672

/-! ## A124672.P118069502730767670

`∩[A130404(n+1), A005101(n+1)]`
-/

namespace A124672.P118069502730767670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124672.P118069502730767670

namespace A124672

/-- `∩[A130404(n+1), A005101(n+1)]` -/
def P118069502730767670.Spec : Prop :=
  ∀ n, (P118069502730767670.a n : ℤ) = A124672 (n + 1)

end A124672

/-! ## A124672.P6346251467951356862

`∩[A140144(n+1), A005101(n+1)]`
-/

namespace A124672.P6346251467951356862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124672.P6346251467951356862

namespace A124672

/-- `∩[A140144(n+1), A005101(n+1)]` -/
def P6346251467951356862.Spec : Prop :=
  ∀ n, (P6346251467951356862.a n : ℤ) = A124672 (n + 1)

end A124672

/-! ## A124672.P1985519608887992936

`∩[A339267(n+1), A005101(n+1)]`
-/

namespace A124672.P1985519608887992936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124672.P1985519608887992936

namespace A124672

/-- `∩[A339267(n+1), A005101(n+1)]` -/
def P1985519608887992936.Spec : Prop :=
  ∀ n, (P1985519608887992936.a n : ℤ) = A124672 (n + 1)

end A124672

/-! ## A124672.P14584715076789767127

`∩[2*A000217(n), A005101(n+1)]`
-/

namespace A124672.P14584715076789767127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124672.P14584715076789767127

namespace A124672

/-- `∩[2*A000217(n), A005101(n+1)]` -/
def P14584715076789767127.Spec : Prop :=
  ∀ n, (P14584715076789767127.a n : ℤ) = A124672 (n + 1)

end A124672

/-! ## A124672.P13277853233756828055

`∩[2*A253145(n), A005101(n+1)]`
-/

namespace A124672.P13277853233756828055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124672.P13277853233756828055

namespace A124672

/-- `∩[2*A253145(n), A005101(n+1)]` -/
def P13277853233756828055.Spec : Prop :=
  ∀ n, (P13277853233756828055.a n : ℤ) = A124672 (n + 1)

end A124672

/-!
# A124673: Numbers with distinct prime digits.

The programs for A124673, there is no canonical definition to state claims against.
-/

/-! ## A124673.P3430774944103841392

`eq[A276729(n), A321797(n)]`
-/

namespace A124673.P3430774944103841392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124673.P3430774944103841392

/-! ## A124673.P9228449053904329977

`record[A137564(A046034(n+1))]`
-/

namespace A124673.P9228449053904329977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A046034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124673.P9228449053904329977

/-! ## A124673.P17917012988025992176

`filter[A046034(n+1), A178788(#)]`
-/

namespace A124673.P17917012988025992176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A124673.P17917012988025992176

/-! ## A124673.P2178057203287789178

`∩[A010784(n+1), A046034(n+1)]`
-/

namespace A124673.P2178057203287789178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124673.P2178057203287789178

/-! ## A124673.P8598932334322708938

`∩[A046034(n+1), A078453(n+1)]`
-/

namespace A124673.P8598932334322708938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124673.P8598932334322708938

/-! ## A124673.P14883427251141898215

`record[A320486(A046034(A008619(n)))]`
-/

namespace A124673.P14883427251141898215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A046034 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124673.P14883427251141898215

/-! ## A124673.P960931073509182826

`record[A320486(A046034(A008621(n)))]`
-/

namespace A124673.P960931073509182826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A046034 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124673.P960931073509182826

/-! ## A124673.P5139726188721792057

`eq[A007953(A139337(n)), A193238(n)]`
-/

namespace A124673.P5139726188721792057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A139337 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124673.P5139726188721792057

/-!
# A124674: Primes with distinct prime digits.

The programs for A124674, there is no canonical definition to state claims against.
-/

/-! ## A124674.P5429114935393396046

`p?[A124673(n+1)]`
-/

namespace A124674.P5429114935393396046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124674.P5429114935393396046

/-! ## A124674.P14679136459245414118

`p?[record[A124673(A106466(n))]]`
-/

namespace A124674.P14679136459245414118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124673 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124674.P14679136459245414118

/-! ## A124674.P5018874050750631998

`p?[record[A124673(A133310(n))]]`
-/

namespace A124674.P5018874050750631998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124673 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124674.P5018874050750631998

/-! ## A124674.P8506033657027996605

`p?[record[A124673(A328396(n))]]`
-/

namespace A124674.P8506033657027996605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124673 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124674.P8506033657027996605

/-! ## A124674.P8059236094931724940

`record[A320485(A019546(n+1))]`
-/

namespace A124674.P8059236094931724940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A019546 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124674.P8059236094931724940

/-!
# A124675: a(n) = product of the positive integers k, k <= n, such that the positive integers <= k and coprime to k are also coprime to n.

The programs for A124675, there is no canonical definition to state claims against.
-/

/-! ## A124675.P17440029349050383693

`lcm(A112624(n!), A329812(n+1))`
-/

namespace A124675.P17440029349050383693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112624 (Nat.factorial n)) (A329812 (n + 1))

end

end A124675.P17440029349050383693

/-! ## A124675.P14749208643474319470

`A131553(n+1)-A010054(A010763(n))`
-/

namespace A124675.P14749208643474319470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131553 (n + 1) - A010054 (A010763 n).toNat

end

end A124675.P14749208643474319470

/-! ## A124675.P9312140189189813751

`A131553(n+1)-A008683(A057087(n))`
-/

namespace A124675.P9312140189189813751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131553 (n + 1) - A008683 (A057087 n).toNat

end

end A124675.P9312140189189813751

/-! ## A124675.P10060008452984202090

`A131553(n+1)-A063524(A100937(n))`
-/

namespace A124675.P10060008452984202090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131553 (n + 1) - A063524 (A100937 n).toNat

end

end A124675.P10060008452984202090

/-!
# A124676: a(n) = largest integer < n such that the positive integers <= a(n) and coprime to a(n) are also coprime to n.

The programs for A124676, there is no canonical definition to state claims against.
-/

/-! ## A124676.P17712078751102823331

`A126260(lt[A126260(n+2), A126260(n+1)])`
-/

namespace A124676.P17712078751102823331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126260 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124676.P17712078751102823331

/-! ## A124676.P6996414159309532412

`A350386(A291930(n))+A000010(n+2)`
-/

namespace A124676.P6996414159309532412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350386 (A291930 n).toNat + A000010 (n + 2)

end

end A124676.P6996414159309532412

/-! ## A124676.P6910672621903990924

`A002322(n+2)*A095345(A036588(n))`
-/

namespace A124676.P6910672621903990924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 2) * A095345 (A036588 n).toNat

end

end A124676.P6910672621903990924

/-! ## A124676.P5543823522107485677

`lcm(A001511(A056040(n)), A002322(n+2))`
-/

namespace A124676.P5543823522107485677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001511 (A056040 n).toNat) (A002322 (n + 2))

end

end A124676.P5543823522107485677

/-! ## A124676.P265936657929354770

`A000010(or(A077168(n+1), A140201(n)))`
-/

namespace A124676.P265936657929354770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor (A077168 (n + 1)) (A140201 n)).toNat

end

end A124676.P265936657929354770

/-!
# A124677: Minimal total number of multiplications by single letters needed to generate all words of length n in the free monoid on two generators.

The programs for A124677, there is no canonical definition to state claims against.
-/

/-! ## A124677.P14370637580787584865

`∑[A335235(A295731(n)+A164090(n+1))]-1`
-/

namespace A124677.P14370637580787584865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (A295731 n + A164090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A124677.P14370637580787584865

/-! ## A124677.P7893395944383334662

`A374685(A279100(n))`
-/

namespace A124677.P7893395944383334662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (A279100 n).toNat

end

end A124677.P7893395944383334662

/-! ## A124677.P13531573462736436323

`A374685(A123629(n+1))`
-/

namespace A124677.P13531573462736436323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (A123629 (n + 1)).toNat

end

end A124677.P13531573462736436323

/-!
# A124678: Number of conjugacy classes in PSL_2(p), p = prime(n).

The programs for A124678, the canonical program `A124678.P3388856193918197942` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124678 has offset 1).

The definition of A124678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124678.P3388856193918197942

`A111333(n+1)+2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124678

/-- `A111333(n+1)+2` -/
def P3388856193918197942.Spec : Prop :=
  ∀ n, P3388856193918197942.a n = A124678 (n + 1)

theorem P3388856193918197942.correct : P3388856193918197942.Spec := by
  intro n
  simp only [A124678, Nat.add_sub_cancel]

end A124678

/-! ## A124678.P14658114954137538853

`A102781(n+1)+3`
-/

namespace A124678.P14658114954137538853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + 3

end

end A124678.P14658114954137538853

namespace A124678

/-- `A102781(n+1)+3` -/
def P14658114954137538853.Spec : Prop :=
  ∀ n, P14658114954137538853.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P6935222477592520080

`round(A175221(n+1)/2)`
-/

namespace A124678.P6935222477592520080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175221 (n + 1) : ℚ) / 2)

end

end A124678.P6935222477592520080

namespace A124678

/-- `round(A175221(n+1)/2)` -/
def P6935222477592520080.Spec : Prop :=
  ∀ n, P6935222477592520080.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P12663251741961565292

`(A006005(n+1)+5)/2`
-/

namespace A124678.P12663251741961565292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) + 5 : ℚ) / 2

end

end A124678.P12663251741961565292

namespace A124678

/-- `(A006005(n+1)+5)/2` -/
def P12663251741961565292.Spec : Prop :=
  ∀ n, P12663251741961565292.a n = (A124678 (n + 1) : ℚ)

end A124678

/-! ## A124678.P7461075201847620179

`A129768(n+1)+2+n`
-/

namespace A124678.P7461075201847620179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 1) + 2 + (n : ℤ)

end

end A124678.P7461075201847620179

namespace A124678

/-- `A129768(n+1)+2+n` -/
def P7461075201847620179.Spec : Prop :=
  ∀ n, P7461075201847620179.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P12477860952520211314

`A157532(n+1)+A130290(n+1)`
-/

namespace A124678.P12477860952520211314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + A130290 (n + 1)

end

end A124678.P12477860952520211314

namespace A124678

/-- `A157532(n+1)+A130290(n+1)` -/
def P12477860952520211314.Spec : Prop :=
  ∀ n, P12477860952520211314.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P2962564530608354495

`A052147(n+1)-A130290(n+1)`
-/

namespace A124678.P2962564530608354495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A130290 (n + 1)

end

end A124678.P2962564530608354495

namespace A124678

/-- `A052147(n+1)-A130290(n+1)` -/
def P2962564530608354495.Spec : Prop :=
  ∀ n, P2962564530608354495.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P10028774230205664150

`A098090(n+1)-A100820(n+1)`
-/

namespace A124678.P10028774230205664150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - A100820 (n + 1)

end

end A124678.P10028774230205664150

namespace A124678

/-- `A098090(n+1)-A100820(n+1)` -/
def P10028774230205664150.Spec : Prop :=
  ∀ n, P10028774230205664150.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P2907787407153792540

`A113935(n+1)-A130291(n+1)`
-/

namespace A124678.P2907787407153792540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - A130291 (n + 1)

end

end A124678.P2907787407153792540

namespace A124678

/-- `A113935(n+1)-A130291(n+1)` -/
def P2907787407153792540.Spec : Prop :=
  ∀ n, P2907787407153792540.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P7623540143540089407

`A084921(n+1)%A052147(n+1)`
-/

namespace A124678.P7623540143540089407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084921 (n + 1)) (A052147 (n + 1))

end

end A124678.P7623540143540089407

namespace A124678

/-- `A084921(n+1)%A052147(n+1)` -/
def P7623540143540089407.Spec : Prop :=
  ∀ n, P7623540143540089407.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P2772845200245280375

`A000040(n+2)-(A100820(n+1)+A067076(n+1))`
-/

namespace A124678.P2772845200245280375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (A100820 (n + 1) + A067076 (n + 1))

end

end A124678.P2772845200245280375

namespace A124678

/-- `A000040(n+2)-(A100820(n+1)+A067076(n+1))` -/
def P2772845200245280375.Spec : Prop :=
  ∀ n, P2772845200245280375.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P11966423044387656355

`A000040(n+1)+A098090(n+2)-A073273(n+1)`
-/

namespace A124678.P11966423044387656355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A098090 (n + 2) - A073273 (n + 1))

end

end A124678.P11966423044387656355

namespace A124678

/-- `A000040(n+1)+A098090(n+2)-A073273(n+1)` -/
def P11966423044387656355.Spec : Prop :=
  ∀ n, P11966423044387656355.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P18372820938170956407

`A322809(A000040(n+1)+1)`
-/

namespace A124678.P18372820938170956407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A000040 (n + 1) + 1).toNat

end

end A124678.P18372820938170956407

namespace A124678

/-- `A322809(A000040(n+1)+1)` -/
def P18372820938170956407.Spec : Prop :=
  ∀ n, P18372820938170956407.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P1273908107391416909

`A322809(A006093(n+1)+2)`
-/

namespace A124678.P1273908107391416909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A006093 (n + 1) + 2).toNat

end

end A124678.P1273908107391416909

namespace A124678

/-- `A322809(A006093(n+1)+2)` -/
def P1273908107391416909.Spec : Prop :=
  ∀ n, P1273908107391416909.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P16677103975723063807

`A322809(A382129(2*n+1)+1)`
-/

namespace A124678.P16677103975723063807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A382129 (2 * n + 1) + 1).toNat

end

end A124678.P16677103975723063807

namespace A124678

/-- `A322809(A382129(2*n+1)+1)` -/
def P16677103975723063807.Spec : Prop :=
  ∀ n, P16677103975723063807.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P15567443840275248995

`record[A120454(n+1)+2]`
-/

namespace A124678.P15567443840275248995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124678.P15567443840275248995

namespace A124678

/-- `record[A120454(n+1)+2]` -/
def P15567443840275248995.Spec : Prop :=
  ∀ n, P15567443840275248995.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P18434063458311496234

`record[A249745(n+1)+2]`
-/

namespace A124678.P18434063458311496234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249745 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124678.P18434063458311496234

namespace A124678

/-- `record[A249745(n+1)+2]` -/
def P18434063458311496234.Spec : Prop :=
  ∀ n, P18434063458311496234.a n = A124678 (n + 1)

end A124678

/-! ## A124678.P9679977245785491449

`lt[∑{e}[2*n+1, #], 2]+3`
-/

namespace A124678.P9679977245785491449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 3

end

end A124678.P9679977245785491449

namespace A124678

/-- `lt[∑{e}[2*n+1, #], 2]+3` -/
def P9679977245785491449.Spec : Prop :=
  ∀ n, (P9679977245785491449.a n : ℤ) = A124678 (n + 1)

end A124678

/-! ## A124678.P6300693662511281147

`eq[1, ∑{e}[2*n+1, #]!]+3`
-/

namespace A124678.P6300693662511281147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A124678.P6300693662511281147

namespace A124678

/-- `eq[1, ∑{e}[2*n+1, #]!]+3` -/
def P6300693662511281147.Spec : Prop :=
  ∀ n, (P6300693662511281147.a n : ℤ) = A124678 (n + 1)

end A124678

/-!
# A124679: a(n) = number of conjugacy classes in PSL_3(prime(n)).

The programs for A124679, there is no canonical definition to state claims against.
-/

/-! ## A124679.P13397851156817047227

`A086958(A206960(n)+2)`
-/

namespace A124679.P13397851156817047227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086958 (A206960 n + 2).toNat

end

end A124679.P13397851156817047227

/-!
# A124680: Heights of irreducible representations of E_8.

The programs for A124680, there is no canonical definition to state claims against.
-/

/-! ## A124680.P14226793127129683260

`A129844(A199934(n+1))`
-/

namespace A124680.P14226793127129683260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129844 (A199934 (n + 1)).toNat

end

end A124680.P14226793127129683260

/-! ## A124680.P3858235771118458618

`A129844(A270045(n+1))`
-/

namespace A124680.P3858235771118458618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129844 (A270045 (n + 1 + 10)).toNat

end

end A124680.P3858235771118458618

/-! ## A124680.P12824059932316672535

`A129844(A007930(n+2))`
-/

namespace A124680.P12824059932316672535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129844 (A007930 (n + 2)).toNat

end

end A124680.P12824059932316672535

/-! ## A124680.P15819061249409036389

`A129844(A296760(n+1)+3)`
-/

namespace A124680.P15819061249409036389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129844 (A296760 (n + 1) + 3).toNat

end

end A124680.P15819061249409036389

/-!
# A124682: a(n) = A002861(n) + A000081(n).

The programs for A124682, there is no canonical definition to state claims against.
-/

/-! ## A124682.P16630310518197541844

`A002861(n+1)+A000081(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124682.P16630310518197541844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) + A000081 (n + 1)

end

end A124682.P16630310518197541844

/-! ## A124682.P15735071478150204582

`A002861(n+1)+∑[A174145(n)]`
-/

namespace A124682.P15735071478150204582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124682.P15735071478150204582

/-! ## A124682.P14393452626422814339

`A038001(Δ[n²])+A002861(n+1)`
-/

namespace A124682.P14393452626422814339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A002861 (n + 1)

end

end A124682.P14393452626422814339

/-! ## A124682.P2494183696654295027

`A002862(n+1)+∑[2*A174145(n)]`
-/

namespace A124682.P2494183696654295027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002862 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124682.P2494183696654295027

/-! ## A124682.P18369495143422216792

`∑[A174145(n)]+A002862(n+1)+A000081(n+1)`
-/

namespace A124682.P18369495143422216792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002862 (n + 1) + A000081 (n + 1))

end

end A124682.P18369495143422216792

/-! ## A124682.P10702297434000839982

`A002861(n+1)+A002861(n+1)-A002862(n+1)`
-/

namespace A124682.P10702297434000839982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) + (A002861 (n + 1) - A002862 (n + 1))

end

end A124682.P10702297434000839982

/-! ## A124682.P12287162987391173460

`2*A002861(n+1)-A002862(n+1)`
-/

namespace A124682.P12287162987391173460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002861 (n + 1) - A002862 (n + 1)

end

end A124682.P12287162987391173460

/-! ## A124682.P5676580934359290426

`A000081(n+1)+A001372(n+1)-A127912(n)`
-/

namespace A124682.P5676580934359290426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) + (A001372 (n + 1) - A127912 n)

end

end A124682.P5676580934359290426

/-! ## A124682.P4572672759537844393

`A033185(∑[n]+1)+A002861(n+1)`
-/

namespace A124682.P4572672759537844393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A002861 (n + 1)

end

end A124682.P4572672759537844393

/-! ## A124682.P13009592189658640835

`A106236(A000124(n))+A002861(n+1)`
-/

namespace A124682.P13009592189658640835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106236 (A000124 n).toNat + A002861 (n + 1)

end

end A124682.P13009592189658640835

/-! ## A124682.P16538082732537679047

`A002862(n+1)+2*A033185(A000124(n))`
-/

namespace A124682.P16538082732537679047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002862 (n + 1) + 2 * A033185 (A000124 n).toNat

end

end A124682.P16538082732537679047

/-!
# A124683: Squares with strictly decreasing digits.

The programs for A124683, there is no canonical definition to state claims against.
-/

/-! ## A124683.P4519969570153290324

`∩[A009995(n+1), n²]`
-/

namespace A124683.P4519969570153290324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A124683.P4519969570153290324

/-! ## A124683.P1919376280764832126

`eq[floor(sqrt(n))², A227362(n)]`
-/

namespace A124683.P1919376280764832126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124683.P1919376280764832126

/-! ## A124683.P9382786054450858574

`ceil(sin(n)²)*A062826(round((n+3)²/12))`
-/

namespace A124683.P9382786054450858574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A062826 (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)).toNat

end

end A124683.P9382786054450858574

/-! ## A124683.P411395592414293173

`A028822(A353385(n))`
-/

namespace A124683.P411395592414293173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028822 (A353385 n).toNat

end

end A124683.P411395592414293173

/-!
# A124691: a(n) = lcm(prime(n)+1, prime(n+1)+1) / 2.

The programs for A124691, the canonical program `A124691.P7425748247681349094` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124691 has offset 1).

The definition of A124691 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124691.P7425748247681349094

`1/2*lcm(1+A000040(n+1), 1+A000040(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124691

/-- `1/2*lcm(1+A000040(n+1), 1+A000040(n+2))` -/
def P7425748247681349094.Spec : Prop :=
  ∀ n, P7425748247681349094.a n = (A124691 (n + 1) : ℚ)

end A124691

/-! ## A124691.P10678752223282386831

`lcm(p?[2*n+1]+1, p?[round(8*n/7)]+1)/2`
-/

namespace A124691.P10678752223282386831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℤ) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1) : ℚ) / 2

end

end A124691.P10678752223282386831

namespace A124691

/-- `lcm(p?[2*n+1]+1, p?[round(8*n/7)]+1)/2` -/
def P10678752223282386831.Spec : Prop :=
  ∀ n, P10678752223282386831.a n = (A124691 (n + 1) : ℚ)

end A124691

/-! ## A124691.P9165027687611944173

`A309772(n+1)/2`
-/

namespace A124691.P9165027687611944173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309772 (n + 1) : ℚ) / 2

end

end A124691.P9165027687611944173

namespace A124691

/-- `A309772(n+1)/2` -/
def P9165027687611944173.Spec : Prop :=
  ∀ n, P9165027687611944173.a n = (A124691 (n + 1) : ℚ)

end A124691

/-! ## A124691.P9838607169224734121

`lcm(p?[round(8*n/7)]+1, A175216(n+2))/2`
-/

namespace A124691.P9838607169224734121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) (A175216 (n + 2)) : ℚ) / 2

end

end A124691.P9838607169224734121

namespace A124691

/-- `lcm(p?[round(8*n/7)]+1, A175216(n+2))/2` -/
def P9838607169224734121.Spec : Prop :=
  ∀ n, P9838607169224734121.a n = (A124691 (n + 1) : ℚ)

end A124691

/-! ## A124691.P16816553296654438447

`A014682(A309772(n+1))`
-/

namespace A124691.P16816553296654438447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A309772 (n + 1)).toNat

end

end A124691.P16816553296654438447

namespace A124691

/-- `A014682(A309772(n+1))` -/
def P16816553296654438447.Spec : Prop :=
  ∀ n, P16816553296654438447.a n = A124691 (n + 1)

end A124691

/-!
# A124693: a(1)=1. a(n+1) = sum a(k), where the sum is over all positive integers k, k <= n, where each positive integer <= k and coprime to k is also coprime to n.

The programs for A124693, there is no canonical definition to state claims against.
-/

/-! ## A124693.P4327811516400798283

`ceil(sqrt(A064989(3^n+1-∑[2^n])))`
-/

namespace A124693.P4327811516400798283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A064989 ((3 ^ n : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat : ℝ)⌉

end

end A124693.P4327811516400798283

/-! ## A124693.P10566135660107979384

`ceil(sqrt(A252463(3^n+1-∑[2^n])))`
-/

namespace A124693.P10566135660107979384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A252463 ((3 ^ n : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat : ℝ)⌉

end

end A124693.P10566135660107979384

/-! ## A124693.P14929961423157655700

`A033677(ceil(2^(n-1))*A045545(n))`
-/

namespace A124693.P14929961423157655700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A045545 n).toNat

end

end A124693.P14929961423157655700

/-! ## A124693.P11008331161152325884

`A057828(A349567(n+1)+n*char[2^n])`
-/

namespace A124693.P11008331161152325884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A349567 (n + 1) + ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)).toNat

end

end A124693.P11008331161152325884

/-! ## A124693.P14085587786041504915

`A020639(A000142(n))*A045545(n)`
-/

namespace A124693.P14085587786041504915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000142 n).toNat * A045545 n

end

end A124693.P14085587786041504915

/-!
# A124694: Sets of digits such that the product of the digits is 10 times the sum of the digits. Each set is arranged as a number with nondecreasing digits.

The programs for A124694, there is no canonical definition to state claims against.
-/

/-! ## A124694.P504223221857223347

`∩[A062043(n+1), A274124(n+1)]`
-/

namespace A124694.P504223221857223347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124694.P504223221857223347

/-!
# A124695: Numbers n such that sum of digits of n^2 = sum of digits of (reverse n)^2.

The programs for A124695, there is no canonical definition to state claims against.
-/

/-! ## A124695.P13552189016772658614

`eq[A004159(A004086(n)), A004159(n)]`
-/

namespace A124695.P13552189016772658614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124695.P13552189016772658614

/-! ## A124695.P10433895787471749238

`eq[A067552(A004086(n)), A067552(n)]`
-/

namespace A124695.P10433895787471749238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124695.P10433895787471749238

/-! ## A124695.P14494635584505719845

`eq[A069912(A004086(n)), A069912(n)]`
-/

namespace A124695.P14494635584505719845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124695.P14494635584505719845

/-! ## A124695.P1858855524532324490

`lt[A173068(n), A266403(A374456(2*n+5))]`
-/

namespace A124695.P1858855524532324490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A374456 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124695.P1858855524532324490

/-! ## A124695.P3182803575042329617

`lt[A059897(n+1), A038822(A187586(2*(n+2)))]`
-/

namespace A124695.P3182803575042329617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 (A187586 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124695.P3182803575042329617

/-!
# A124696: Number of base-3 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124696, the canonical program `A124696.P12068987899315503259` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124696 has offset 0).

The definition of A124696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124696.P12068987899315503259

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124696

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P12068987899315503259.Spec : Prop :=
  ∀ n, P12068987899315503259.a n = A124696 n

theorem P12068987899315503259.correct : P12068987899315503259.Spec := by
  intro n
  simp only [A124696]

end A124696

/-! ## A124696.P3214061313889033482

`or(1, round((sqrt(2)+1)^n))`
-/

namespace A124696.P3214061313889033482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n))

end

end A124696.P3214061313889033482

namespace A124696

/-- `or(1, round((sqrt(2)+1)^n))` -/
def P3214061313889033482.Spec : Prop :=
  ∀ n, P3214061313889033482.a n = A124696 n

end A124696

/-! ## A124696.P12057223986774815845

`∑[ogf((-1+x^2+2x^3)/(-1+2x+x^2))]`
-/

namespace A124696.P12057223986774815845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2] [1, -2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124696.P12057223986774815845

namespace A124696

/-- `∑[ogf((-1+x^2+2x^3)/(-1+2x+x^2))]` -/
def P12057223986774815845.Spec : Prop :=
  ∀ n, P12057223986774815845.a n = A124696 n

end A124696

/-! ## A124696.P5754493460790288565

`ogf((1-x^2-2x^3)/(1-3x+x^2+x^3))`
-/

namespace A124696.P5754493460790288565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2] [1, -3, 1, 1] n

end

end A124696.P5754493460790288565

namespace A124696

/-- `ogf((1-x^2-2x^3)/(1-3x+x^2+x^3))` -/
def P5754493460790288565.Spec : Prop :=
  ∀ n, P5754493460790288565.a n = A124696 n

end A124696

/-! ## A124696.P14700523027148456995

`2*a(n-1)+a(n-2)-2` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A124696.P14700523027148456995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2

end

end A124696.P14700523027148456995

namespace A124696

/-- `2*a(n-1)+a(n-2)-2` -/
def P14700523027148456995.Spec : Prop :=
  ∀ n, P14700523027148456995.a n = A124696 n

end A124696

/-! ## A124696.P12584838996077022942

`abs(2*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A124696.P12584838996077022942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  |2 * (1 - a (n - 1)) - a (n - 2)|

end

end A124696.P12584838996077022942

namespace A124696

/-- `abs(2*(1-a(n-1))-a(n-2))` -/
def P12584838996077022942.Spec : Prop :=
  ∀ n, P12584838996077022942.a n = A124696 n

end A124696

/-! ## A124696.P6850005440974538141

`ceil(abs(sin(n)))*A002203(n)+1`
-/

namespace A124696.P6850005440974538141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ * A002203 n + 1

end

end A124696.P6850005440974538141

namespace A124696

/-- `ceil(abs(sin(n)))*A002203(n)+1` -/
def P6850005440974538141.Spec : Prop :=
  ∀ n, P6850005440974538141.a n = A124696 n

end A124696

/-! ## A124696.P16485294664708428655

`A099425(n)+A057427(n)`
-/

namespace A124696.P16485294664708428655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n + A057427 n

end

end A124696.P16485294664708428655

namespace A124696

/-- `A099425(n)+A057427(n)` -/
def P16485294664708428655.Spec : Prop :=
  ∀ n, P16485294664708428655.a n = A124696 n

end A124696

/-! ## A124696.P6073050791087247852

`A158388(n)+A002203(n)`
-/

namespace A124696.P6073050791087247852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A002203 n

end

end A124696.P6073050791087247852

namespace A124696

/-- `A158388(n)+A002203(n)` -/
def P6073050791087247852.Spec : Prop :=
  ∀ n, P6073050791087247852.a n = A124696 n

end A124696

/-! ## A124696.P7458436600070476517

`A134451(n)+A080039(n)`
-/

namespace A124696.P7458436600070476517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n + A080039 n

end

end A124696.P7458436600070476517

namespace A124696

/-- `A134451(n)+A080039(n)` -/
def P7458436600070476517.Spec : Prop :=
  ∀ n, P7458436600070476517.a n = A124696 n

end A124696

/-! ## A124696.P1575048393026487344

`A099425(n)-A057428(n)`
-/

namespace A124696.P1575048393026487344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n - A057428 n

end

end A124696.P1575048393026487344

namespace A124696

/-- `A099425(n)-A057428(n)` -/
def P1575048393026487344.Spec : Prop :=
  ∀ n, P1575048393026487344.a n = A124696 n

end A124696

/-! ## A124696.P1408503829104180141

`A052937(n)-A176981(n)`
-/

namespace A124696.P1408503829104180141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n - A176981 n

end

end A124696.P1408503829104180141

namespace A124696

/-- `A052937(n)-A176981(n)` -/
def P1408503829104180141.Spec : Prop :=
  ∀ n, P1408503829104180141.a n = A124696 n

end A124696

/-! ## A124696.P9727339639601269482

`A099425(n)+A062157(n)²`
-/

namespace A124696.P9727339639601269482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n + A062157 n ^ 2

end

end A124696.P9727339639601269482

namespace A124696

/-- `A099425(n)+A062157(n)²` -/
def P9727339639601269482.Spec : Prop :=
  ∀ n, P9727339639601269482.a n = A124696 n

end A124696

/-! ## A124696.P4223281264376722411

`A099425(n)+1-A000007(n)`
-/

namespace A124696.P4223281264376722411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n + (1 - A000007 n)

end

end A124696.P4223281264376722411

namespace A124696

/-- `A099425(n)+1-A000007(n)` -/
def P4223281264376722411.Spec : Prop :=
  ∀ n, P4223281264376722411.a n = A124696 n

end A124696

/-! ## A124696.P13894009324803705677

`A002203(n)-A153881(n+1)`
-/

namespace A124696.P13894009324803705677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A153881 (n + 1)

end

end A124696.P13894009324803705677

namespace A124696

/-- `A002203(n)-A153881(n+1)` -/
def P13894009324803705677.Spec : Prop :=
  ∀ n, P13894009324803705677.a n = A124696 n

end A124696

/-! ## A124696.P4976820143331154322

`A100227(n)+2*A057427(n)`
-/

namespace A124696.P4976820143331154322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n + 2 * A057427 n

end

end A124696.P4976820143331154322

namespace A124696

/-- `A100227(n)+2*A057427(n)` -/
def P4976820143331154322.Spec : Prop :=
  ∀ n, P4976820143331154322.a n = A124696 n

end A124696

/-! ## A124696.P7198578951296486844

`A100227(n)-2*A057428(n)`
-/

namespace A124696.P7198578951296486844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n - 2 * A057428 n

end

end A124696.P7198578951296486844

namespace A124696

/-- `A100227(n)-2*A057428(n)` -/
def P7198578951296486844.Spec : Prop :=
  ∀ n, P7198578951296486844.a n = A124696 n

end A124696

/-! ## A124696.P9499736754022982244

`A099425(n)-A062157(2*n)`
-/

namespace A124696.P9499736754022982244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n - A062157 (2 * n)

end

end A124696.P9499736754022982244

namespace A124696

/-- `A099425(n)-A062157(2*n)` -/
def P9499736754022982244.Spec : Prop :=
  ∀ n, P9499736754022982244.a n = A124696 n

end A124696

/-! ## A124696.P9218660642339377917

`A099425(n)+n/A028310(n)`
-/

namespace A124696.P9218660642339377917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099425 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A124696.P9218660642339377917

namespace A124696

/-- `A099425(n)+n/A028310(n)` -/
def P9218660642339377917.Spec : Prop :=
  ∀ n, P9218660642339377917.a n = (A124696 n : ℚ)

end A124696

/-!
# A124697: Number of base 4 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124697, the canonical program `A124697.P1766019780813868087` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124697 has offset 0).

The definition of A124697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124697.P1766019780813868087

`record[A302126(n)+A061084(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124697

/-- `record[A302126(n)+A061084(n)]` -/
def P1766019780813868087.Spec : Prop :=
  ∀ n, P1766019780813868087.a n = A124697 n

theorem P1766019780813868087.correct : P1766019780813868087.Spec := by
  intro n
  simp only [A124697]

end A124697

/-! ## A124697.P15648384372018490845

`record[-A075193(n)]+A000032(n)`
-/

namespace A124697.P15648384372018490845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000032 n

end

end A124697.P15648384372018490845

namespace A124697

/-- `record[-A075193(n)]+A000032(n)` -/
def P15648384372018490845.Spec : Prop :=
  ∀ n, P15648384372018490845.a n = A124697 n

end A124697

/-! ## A124697.P10656623142050044512

`A000032(n)+record[A061084(n+2)]`
-/

namespace A124697.P10656623142050044512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124697.P10656623142050044512

namespace A124697

/-- `A000032(n)+record[A061084(n+2)]` -/
def P10656623142050044512.Spec : Prop :=
  ∀ n, P10656623142050044512.a n = A124697 n

end A124697

/-! ## A124697.P15454003597182261234

`record[A127218(n+1)-A075193(n)]`
-/

namespace A124697.P15454003597182261234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (n + 1) - A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124697.P15454003597182261234

namespace A124697

/-- `record[A127218(n+1)-A075193(n)]` -/
def P15454003597182261234.Spec : Prop :=
  ∀ n, P15454003597182261234.a n = A124697 n

end A124697

/-! ## A124697.P15781126249980637933

`A000032(n)+Δ[A000032(A004273(n))]`
-/

namespace A124697.P15781126249980637933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (n + 1) - f1 n)

end

end A124697.P15781126249980637933

namespace A124697

/-- `A000032(n)+Δ[A000032(A004273(n))]` -/
def P15781126249980637933.Spec : Prop :=
  ∀ n, P15781126249980637933.a n = A124697 n

end A124697

/-! ## A124697.P15037338775890032235

`Δ[A000032(A289207(2*n+1))+A000032(n+1)]`
-/

namespace A124697.P15037338775890032235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A289207 (2 * n + 1)).toNat + A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124697.P15037338775890032235

namespace A124697

/-- `Δ[A000032(A289207(2*n+1))+A000032(n+1)]` -/
def P15037338775890032235.Spec : Prop :=
  ∀ n, P15037338775890032235.a n = A124697 n

end A124697

/-! ## A124697.P18133846898378927601

`A000032(2*n+1)+A254729(n+1)-A254729(2*n)`
-/

namespace A124697.P18133846898378927601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) + (A254729 (n + 1) - A254729 (2 * n))

end

end A124697.P18133846898378927601

namespace A124697

/-- `A000032(2*n+1)+A254729(n+1)-A254729(2*n)` -/
def P18133846898378927601.Spec : Prop :=
  ∀ n, P18133846898378927601.a n = A124697 n

end A124697

/-! ## A124697.P4227868508667657440

`A000204(2*n+1)+A254729(n+1)-A254729(2*n)`
-/

namespace A124697.P4227868508667657440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * n + 1) + (A254729 (n + 1) - A254729 (2 * n))

end

end A124697.P4227868508667657440

namespace A124697

/-- `A000204(2*n+1)+A254729(n+1)-A254729(2*n)` -/
def P4227868508667657440.Spec : Prop :=
  ∀ n, P4227868508667657440.a n = A124697 n

end A124697

/-!
# A124698: Number of base 5 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124698, the canonical program `A124698.P11521275516004967578` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124698 has offset 0).

The definition of A124698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124698.P11151302325101606085

`or(3, A287594(n))-2`
-/

namespace A124698.P11151302325101606085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A287594 n) - 2

end

end A124698.P11151302325101606085

namespace A124698

/-- `or(3, A287594(n))-2` -/
def P11151302325101606085.Spec : Prop :=
  ∀ n, P11151302325101606085.a n = A124698 n

end A124698

/-! ## A124698.P16429645044407975373

`xor(A054977(n), A287594(n))`
-/

namespace A124698.P16429645044407975373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 n) (A287594 n)

end

end A124698.P16429645044407975373

namespace A124698

/-- `xor(A054977(n), A287594(n))` -/
def P16429645044407975373.Spec : Prop :=
  ∀ n, P16429645044407975373.a n = A124698 n

end A124698

/-! ## A124698.P10709931989222409262

`abs(or(A158388(n), A287594(n)))`
-/

namespace A124698.P10709931989222409262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A158388 n) (A287594 n)|

end

end A124698.P10709931989222409262

namespace A124698

/-- `abs(or(A158388(n), A287594(n)))` -/
def P10709931989222409262.Spec : Prop :=
  ∀ n, P10709931989222409262.a n = A124698 n

end A124698

/-! ## A124698.P11521275516004967578

`5*a(n-1)-6*a(n-2)-2*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=29, a(4)=73`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124698

/-- `5*a(n-1)-6*a(n-2)-2*a(n-3)+4*a(n-4)` -/
def P11521275516004967578.Spec : Prop :=
  ∀ n, P11521275516004967578.a n = A124698 n

theorem P11521275516004967578.correct : P11521275516004967578.Spec := by
  intro n
  simp only [A124698]

end A124698

/-! ## A124698.P16801010394651158046

`A276562(A167499(n+2))`
-/

namespace A124698.P16801010394651158046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A167499 (n + 2)).toNat

end

end A124698.P16801010394651158046

namespace A124698

/-- `A276562(A167499(n+2))` -/
def P16801010394651158046.Spec : Prop :=
  ∀ n, P16801010394651158046.a n = A124698 n

end A124698

/-!
# A124699: Number of base 6 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124699, the canonical program `A124699.P5322827168228255512` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124699 has offset 0).

The definition of A124699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124699.P5322827168228255512

`6*a(n-1)-10*a(n-2)+9*a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=16, a(3)=36, a(4)=92, a(5)=236, a(6)=622`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124699

/-- `6*a(n-1)-10*a(n-2)+9*a(n-4)-2*a(n-5)-a(n-6)` -/
def P5322827168228255512.Spec : Prop :=
  ∀ n, P5322827168228255512.a n = A124699 n

theorem P5322827168228255512.correct : P5322827168228255512.Spec := by
  intro n
  simp only [A124699]

end A124699

/-! ## A124699.P2925459174064152126

`A276562(A166136(n+3))`
-/

namespace A124699.P2925459174064152126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A166136 (n + 3)).toNat

end

end A124699.P2925459174064152126

namespace A124699

/-- `A276562(A166136(n+3))` -/
def P2925459174064152126.Spec : Prop :=
  ∀ n, P2925459174064152126.a n = A124699 n

end A124699

/-! ## A124699.P1294271162573376014

`A276562(A155212(n)+14)`
-/

namespace A124699.P1294271162573376014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A155212 n + 14).toNat

end

end A124699.P1294271162573376014

namespace A124699

/-- `A276562(A155212(n)+14)` -/
def P1294271162573376014.Spec : Prop :=
  ∀ n, P1294271162573376014.a n = A124699 n

end A124699

/-! ## A124699.P11561142348964925251

`A276562(A167499(n+3)+1)`
-/

namespace A124699.P11561142348964925251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A167499 (n + 3) + 1).toNat

end

end A124699.P11561142348964925251

namespace A124699

/-- `A276562(A167499(n+3)+1)` -/
def P11561142348964925251.Spec : Prop :=
  ∀ n, P11561142348964925251.a n = A124699 n

end A124699

/-! ## A124699.P18269197824876262657

`A276562(A000124(n+4)+5)`
-/

namespace A124699.P18269197824876262657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000124 (n + 4) + 5).toNat

end

end A124699.P18269197824876262657

namespace A124699

/-- `A276562(A000124(n+4)+5)` -/
def P18269197824876262657.Spec : Prop :=
  ∀ n, P18269197824876262657.a n = A124699 n

end A124699

