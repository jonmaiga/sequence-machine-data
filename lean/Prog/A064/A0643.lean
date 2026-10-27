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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A064300: Number of partitions of !n into distinct parts.

The programs for A064300, there is no canonical definition to state claims against.
-/

/-! ## A064300.P6168734239778280897

`A000009(A003422(n))`
-/

namespace A064300.P6168734239778280897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A003422 n).toNat

end

end A064300.P6168734239778280897

/-! ## A064300.P15842210276304888710

`A000009(∑[A104150(n)])`
-/

namespace A064300.P15842210276304888710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064300.P15842210276304888710

/-! ## A064300.P5639401384352809842

`A081360(lcm(2, A003422(n)))`
-/

namespace A064300.P5639401384352809842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (Int.lcm 2 (A003422 n))

end

end A064300.P5639401384352809842

/-! ## A064300.P5187406173857578288

`A000009(A067078(n+1)-1)`
-/

namespace A064300.P5187406173857578288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A067078 (n + 1) - 1).toNat

end

end A064300.P5187406173857578288

/-! ## A064300.P11906532627885946997

`A057428(n)+A052839(A003422(n))`
-/

namespace A064300.P11906532627885946997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 (A003422 n).toNat

end

end A064300.P11906532627885946997

/-!
# A064301: Rightmost column of A064744; 2-adic valuation of the EKG-sequence.

The programs for A064301, there is no canonical definition to state claims against.
-/

/-! ## A064301.P15290120848340148489

`val(A064413(n+1), 2)`
-/

namespace A064301.P15290120848340148489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064413 (n + 1)).toNat 2

end

end A064301.P15290120848340148489

/-! ## A064301.P4206195925610564348

`val(A104125(n+1), 4)`
-/

namespace A064301.P4206195925610564348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A104125 (n + 1)).toNat 4

end

end A064301.P4206195925610564348

/-! ## A064301.P10795399745899296282

`val(A064413(Δ[n²]-n)², 4)`
-/

namespace A064301.P10795399745899296282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064413 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2).toNat 4

end

end A064301.P10795399745899296282

/-! ## A064301.P5626039972783824799

`val(A065519(n+1)+1+n, 2)`
-/

namespace A064301.P5626039972783824799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065519 (n + 1) + 1 + (n : ℤ)).toNat 2

end

end A064301.P5626039972783824799

/-! ## A064301.P14517524858705565901

`val(∑[A064426(A028310(n))], 2)`
-/

namespace A064301.P14517524858705565901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A064301.P14517524858705565901

/-! ## A064301.P12662760922607639676

`val(∑[A064426(A000007(n)+n)], 2)`
-/

namespace A064301.P12662760922607639676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A064301.P12662760922607639676

/-! ## A064301.P2553041799697018978

`A007814(A064413(n+1))`
-/

namespace A064301.P2553041799697018978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A064413 (n + 1)).toNat

end

end A064301.P2553041799697018978

/-! ## A064301.P4048336306093366219

`A001511(A064413(n+1))-A001511(2*n+1)`
-/

namespace A064301.P4048336306093366219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A064413 (n + 1)).toNat - A001511 (2 * n + 1)

end

end A064301.P4048336306093366219

/-! ## A064301.P7031596042378020881

`A304735(n+1)-2*A304735(A305294(n+1))`
-/

namespace A064301.P7031596042378020881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304735 (n + 1) - 2 * A304735 (A305294 (n + 1)).toNat

end

end A064301.P7031596042378020881

/-! ## A064301.P16218936673574827657

`val(A185586(A185413(n+1)), 2)`
-/

namespace A064301.P16218936673574827657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A185586 (A185413 (n + 1)).toNat).toNat 2

end

end A064301.P16218936673574827657

/-! ## A064301.P57295001731959879

`A064743(n+1)%A040020(n)`
-/

namespace A064301.P57295001731959879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064743 (n + 1)) (A040020 n)

end

end A064301.P57295001731959879

/-! ## A064301.P14153048944526846179

`A235127(A104125(n+1))`
-/

namespace A064301.P14153048944526846179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A104125 (n + 1)).toNat

end

end A064301.P14153048944526846179

/-!
# A064302: Sixth diagonal of triangle A064094.

The programs for A064302, the canonical program `A064302.P8647975354804214736` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064302 has offset 0).

The definition of A064302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064302.P8647975354804214736

`1+4*n+9*n²+14*n^3+14*n^4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064302

/-- `1+4*n+9*n²+14*n^3+14*n^4` -/
def P8647975354804214736.Spec : Prop :=
  ∀ n, (P8647975354804214736.a n : ℤ) = A064302 n

theorem P8647975354804214736.correct : P8647975354804214736.Spec := by
  intro n
  simp only [A064302]

end A064302

/-! ## A064302.P8017350530309703977

`A064094(A055999(n+3))`
-/

namespace A064302.P8017350530309703977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A055999 (n + 3)).toNat

end

end A064302.P8017350530309703977

namespace A064302

/-- `A064094(A055999(n+3))` -/
def P8017350530309703977.Spec : Prop :=
  ∀ n, P8017350530309703977.a n = A064302 n

end A064302

/-! ## A064302.P12599443946961219235

`A064094(Δ[A026054(n+3)])`
-/

namespace A064302.P12599443946961219235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (f1 (n + 1) - f1 n).toNat

end

end A064302.P12599443946961219235

namespace A064302

/-- `A064094(Δ[A026054(n+3)])` -/
def P12599443946961219235.Spec : Prop :=
  ∀ n, P12599443946961219235.a n = A064302 n

end A064302

/-! ## A064302.P8571678347295704046

`A064094(A000217(n+6)-6)`
-/

namespace A064302.P8571678347295704046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000217 (n + 6) - 6).toNat

end

end A064302.P8571678347295704046

namespace A064302

/-- `A064094(A000217(n+6)-6)` -/
def P8571678347295704046.Spec : Prop :=
  ∀ n, P8571678347295704046.a n = A064302 n

end A064302

/-! ## A064302.P1184204919444530261

`A064094(eq[6, A004736(n+1)])`
-/

namespace A064302.P1184204919444530261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064302.P1184204919444530261

namespace A064302

/-- `A064094(eq[6, A004736(n+1)])` -/
def P1184204919444530261.Spec : Prop :=
  ∀ n, P1184204919444530261.a n = A064302 n

end A064302

/-!
# A064303: Seventh diagonal of triangle A064094.

The programs for A064303, the canonical program `A064303.P6262408916139910147` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064303 has offset 0).

The definition of A064303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064303.P6262408916139910147

`1+5*n+14*n²+28*n^3+42*n^4+42*n^5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064303

/-- `1+5*n+14*n²+28*n^3+42*n^4+42*n^5` -/
def P6262408916139910147.Spec : Prop :=
  ∀ n, (P6262408916139910147.a n : ℤ) = A064303 n

theorem P6262408916139910147.correct : P6262408916139910147.Spec := by
  intro n
  simp only [A064303]

end A064303

/-! ## A064303.P4519060166614475388

`A064094(A052905(n+4)-2)`
-/

namespace A064303.P4519060166614475388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A052905 (n + 4) - 2).toNat

end

end A064303.P4519060166614475388

namespace A064303

/-- `A064094(A052905(n+4)-2)` -/
def P4519060166614475388.Spec : Prop :=
  ∀ n, P4519060166614475388.a n = A064303 n

end A064303

/-! ## A064303.P202533908088850490

`A064094(A000217(n+6)+n)`
-/

namespace A064303.P202533908088850490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000217 (n + 6) + (n : ℤ)).toNat

end

end A064303.P202533908088850490

namespace A064303

/-- `A064094(A000217(n+6)+n)` -/
def P202533908088850490.Spec : Prop :=
  ∀ n, P202533908088850490.a n = A064303 n

end A064303

/-! ## A064303.P12005972731529215739

`A064094(Δ[Δ[A055832(n+5)]])`
-/

namespace A064303.P12005972731529215739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (f1 (n + 1) - f1 n).toNat

end

end A064303.P12005972731529215739

namespace A064303

/-- `A064094(Δ[Δ[A055832(n+5)]])` -/
def P12005972731529215739.Spec : Prop :=
  ∀ n, P12005972731529215739.a n = A064303 n

end A064303

/-! ## A064303.P1774629537816689683

`A064094(A167499(n+4)+n+n+1)`
-/

namespace A064303.P1774629537816689683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167499 (n + 4) + (n : ℤ) + (n + 1 : ℤ)).toNat

end

end A064303.P1774629537816689683

namespace A064303

/-- `A064094(A167499(n+4)+n+n+1)` -/
def P1774629537816689683.Spec : Prop :=
  ∀ n, P1774629537816689683.a n = A064303 n

end A064303

/-! ## A064303.P6818623692390610085

`A064094(A167614(n+4)+3+n+n)`
-/

namespace A064303.P6818623692390610085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167614 (n + 4) + 3 + (n : ℤ) + (n : ℤ)).toNat

end

end A064303.P6818623692390610085

namespace A064303

/-- `A064094(A167614(n+4)+3+n+n)` -/
def P6818623692390610085.Spec : Prop :=
  ∀ n, P6818623692390610085.a n = A064303 n

end A064303

/-!
# A064304: Eighth diagonal of triangle A064094.

The programs for A064304, there is no canonical definition to state claims against.
-/

/-! ## A064304.P17857889501240709212

`A064094(eq[7, A025581(n)])`
-/

namespace A064304.P17857889501240709212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064304.P17857889501240709212

/-! ## A064304.P16186280931143596168

`A064094(A046691(n+6)-4)`
-/

namespace A064304.P16186280931143596168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A046691 (n + 6) - 4).toNat

end

end A064304.P16186280931143596168

/-! ## A064304.P17369624520782457685

`A064094(eq[8, A004736(n+1)])`
-/

namespace A064304.P17369624520782457685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064304.P17369624520782457685

/-! ## A064304.P14320334267565078130

`A064094(2*n+A000217(n+6)+7)`
-/

namespace A064304.P14320334267565078130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A064304.P14320334267565078130

/-! ## A064304.P16901261401134747450

`A064094(A134869(n+4)+A016813(n+4))`
-/

namespace A064304.P16901261401134747450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A134869 (n + 4) + A016813 (n + 4)).toNat

end

end A064304.P16901261401134747450

/-!
# A064305: Ninth diagonal of triangle A064094.

The programs for A064305, there is no canonical definition to state claims against.
-/

/-! ## A064305.P7109141418289502306

`A064094(A008591(n+4)+A000217(n))`
-/

namespace A064305.P7109141418289502306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A008591 (n + 4) + A000217 n).toNat

end

end A064305.P7109141418289502306

/-!
# A064306: Convolution of A052701 (Catalan numbers multiplied by powers of 2) with powers of -1.

The programs for A064306, the canonical program `A064306.P10514764993973728359` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064306 has offset 0).

The definition of A064306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064306.P7570827730807885666

`abs(∑[A114193(∑[n])])`
-/

namespace A064306.P7570827730807885666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114193 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A064306.P7570827730807885666

namespace A064306

/-- `abs(∑[A114193(∑[n])])` -/
def P7570827730807885666.Spec : Prop :=
  ∀ n, P7570827730807885666.a n = A064306 n

end A064306

/-! ## A064306.P10514764993973728359

`A151374(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064306

/-- `A151374(n)-a(n-1)` -/
def P10514764993973728359.Spec : Prop :=
  ∀ n, P10514764993973728359.a n = A064306 n

theorem P10514764993973728359.correct : P10514764993973728359.Spec := by
  intro n
  simp only [A064306]

end A064306

/-! ## A064306.P9234976287261566917

`A052701(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A064306.P9234976287261566917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052701 (n + 1) - a (n - 1)

end

end A064306.P9234976287261566917

namespace A064306

/-- `A052701(n+1)-a(n-1)` -/
def P9234976287261566917.Spec : Prop :=
  ∀ n, P9234976287261566917.a n = A064306 n

end A064306

/-! ## A064306.P4481831002614123967

`A115125(n+1)/2-a(n-1)` with `a(0)=1`
-/

namespace A064306.P4481831002614123967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A115125 (n + 1) : ℚ) / 2 - a (n - 1)

end

end A064306.P4481831002614123967

namespace A064306

/-- `A115125(n+1)/2-a(n-1)` -/
def P4481831002614123967.Spec : Prop :=
  ∀ n, P4481831002614123967.a n = (A064306 n : ℚ)

end A064306

/-! ## A064306.P11994324902045297465

`abs(ceil((2-A114191(n+1))/2)-1)`
-/

namespace A064306.P11994324902045297465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(2 - A114191 (n + 1) : ℚ) / 2⌉ - 1|

end

end A064306.P11994324902045297465

namespace A064306

/-- `abs(ceil((2-A114191(n+1))/2)-1)` -/
def P11994324902045297465.Spec : Prop :=
  ∀ n, P11994324902045297465.a n = A064306 n

end A064306

/-! ## A064306.P16229243319048232374

`2^n*A000108(n)-a(n-1)` with `a(0)=1`
-/

namespace A064306.P16229243319048232374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) * A000108 n - a (n - 1)

end

end A064306.P16229243319048232374

namespace A064306

/-- `2^n*A000108(n)-a(n-1)` -/
def P16229243319048232374.Spec : Prop :=
  ∀ n, P16229243319048232374.a n = A064306 n

end A064306

/-! ## A064306.P828894058627736975

`abs(∑[A000079(n)*A168491(n)])`
-/

namespace A064306.P828894058627736975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A064306.P828894058627736975

namespace A064306

/-- `abs(∑[A000079(n)*A168491(n)])` -/
def P828894058627736975.Spec : Prop :=
  ∀ n, P828894058627736975.a n = A064306 n

end A064306

/-! ## A064306.P351224521962187067

`(A064062(n+1)-A033999(n+1))/2`
-/

namespace A064306.P351224521962187067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064062 (n + 1) - A033999 (n + 1) : ℚ) / 2

end

end A064306.P351224521962187067

namespace A064306

/-- `(A064062(n+1)-A033999(n+1))/2` -/
def P351224521962187067.Spec : Prop :=
  ∀ n, P351224521962187067.a n = (A064306 n : ℚ)

end A064306

/-! ## A064306.P14544919746329210287

`A000108(n)*A000079(n)-a(n-1)` with `a(0)=1`
-/

namespace A064306.P14544919746329210287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 n * A000079 n - a (n - 1)

end

end A064306.P14544919746329210287

namespace A064306

/-- `A000108(n)*A000079(n)-a(n-1)` -/
def P14544919746329210287.Spec : Prop :=
  ∀ n, P14544919746329210287.a n = A064306 n

theorem P14544919746329210287.correct : P14544919746329210287.Spec := by
  intro n
  simp only [A064306, Nat.add_sub_cancel, A064306.P14544919746329210287.a, A064306.P10514764993973728359.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, A151374, A151374.P6151249607190276974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064306

/-! ## A064306.P11167386104869343203

`A000108(n)*Δ[A000225(n)]-a(n-1)` with `a(0)=1`
-/

namespace A064306.P11167386104869343203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 n * (f1 (n + 1) - f1 n) - a (n - 1)

end

end A064306.P11167386104869343203

namespace A064306

/-- `A000108(n)*Δ[A000225(n)]-a(n-1)` -/
def P11167386104869343203.Spec : Prop :=
  ∀ n, P11167386104869343203.a n = A064306 n

theorem P11167386104869343203.correct : P11167386104869343203.Spec := by
  intro n
  simp only [A064306, Nat.add_sub_cancel, A064306.P11167386104869343203.f1, A064306.P11167386104869343203.a, A064306.P10514764993973728359.a, A000108, A000108.P17551949696095299361.a, A000225, A000225.P6535533121115206393.a, A151374, A151374.P6151249607190276974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064306

/-! ## A064306.P2067498867573185220

`∑[A000079(n)*A168491(n)]*A033999(n)`
-/

namespace A064306.P2067498867573185220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A064306.P2067498867573185220

namespace A064306

/-- `∑[A000079(n)*A168491(n)]*A033999(n)` -/
def P2067498867573185220.Spec : Prop :=
  ∀ n, P2067498867573185220.a n = A064306 n

end A064306

/-!
# A064309: Row sums of triangle A064308.

The programs for A064309, there is no canonical definition to state claims against.
-/

/-! ## A064309.P14852368625701665242

`∑[∑[A285954(A073192(2*n+1))]]`
-/

namespace A064309.P14852368625701665242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A073192 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064309.P14852368625701665242

/-!
# A064310: Generalized Catalan numbers C(-1; n).

The programs for A064310, the canonical program `A064310.P3912504138029418483` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064310 has offset 0).

The definition of A064310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064310.P3912504138029418483

`(-1)^n*A126983(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064310

/-- `(-1)^n*A126983(n)` -/
def P3912504138029418483.Spec : Prop :=
  ∀ n, P3912504138029418483.a n = A064310 n

theorem P3912504138029418483.correct : P3912504138029418483.Spec := by
  intro n
  simp only [A064310]

end A064310

/-! ## A064310.P648442925278441320

`A126983(n)/A033999(n)`
-/

namespace A064310.P648442925278441320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126983 n : ℚ) / (A033999 n : ℚ)

end

end A064310.P648442925278441320

namespace A064310

/-- `A126983(n)/A033999(n)` -/
def P648442925278441320.Spec : Prop :=
  ∀ n, P648442925278441320.a n = (A064310 n : ℚ)

end A064310

/-! ## A064310.P16459095728849318462

`A126983(n)*A242073(2*n)`
-/

namespace A064310.P16459095728849318462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 n * A242073 (2 * n)

end

end A064310.P16459095728849318462

namespace A064310

/-- `A126983(n)*A242073(2*n)` -/
def P16459095728849318462.Spec : Prop :=
  ∀ n, P16459095728849318462.a n = A064310 n

end A064310

/-! ## A064310.P17050121461635891810

`A319394(A000217(n))-A000957(n)*A033999(n)`
-/

namespace A064310.P17050121461635891810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A000217 n).toNat - A000957 n * A033999 n

end

end A064310.P17050121461635891810

namespace A064310

/-- `A319394(A000217(n))-A000957(n)*A033999(n)` -/
def P17050121461635891810.Spec : Prop :=
  ∀ n, P17050121461635891810.a n = A064310 n

end A064310

/-! ## A064310.P7791583815883714541

`A105523(2*n+1)-A105524(2*n+1)`
-/

namespace A064310.P7791583815883714541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n + 1) - A105524 (2 * n + 1)

end

end A064310.P7791583815883714541

namespace A064310

/-- `A105523(2*n+1)-A105524(2*n+1)` -/
def P7791583815883714541.Spec : Prop :=
  ∀ n, P7791583815883714541.a n = A064310 n

end A064310

/-! ## A064310.P4756488486173414952

`A064334(∑[n+1]+1)`
-/

namespace A064310.P4756488486173414952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A064310.P4756488486173414952

namespace A064310

/-- `A064334(∑[n+1]+1)` -/
def P4756488486173414952.Spec : Prop :=
  ∀ n, P4756488486173414952.a n = A064310 n

end A064310

/-! ## A064310.P8910143967746140936

`A237619(A110654(n²)+A110654(n))`
-/

namespace A064310.P8910143967746140936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237619 (A110654 (n ^ 2) + A110654 n).toNat

end

end A064310.P8910143967746140936

namespace A064310

/-- `A237619(A110654(n²)+A110654(n))` -/
def P8910143967746140936.Spec : Prop :=
  ∀ n, P8910143967746140936.a n = A064310 n

end A064310

/-!
# A064311: Generalized Catalan numbers C(-2; n).

The programs for A064311, there is no canonical definition to state claims against.
-/

/-! ## A064311.P4261666274297434147

`floor(acot(n)²-A122441(n))`
-/

namespace A064311.P4261666274297434147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 - (A122441 n : ℝ)⌋

end

end A064311.P4261666274297434147

/-! ## A064311.P2261117890556147493

`-A122441(A028310(n))`
-/

namespace A064311.P2261117890556147493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A122441 (A028310 n).toNat

end

end A064311.P2261117890556147493

/-! ## A064311.P15026173320897869222

`A000038(n)-A122441(n)`
-/

namespace A064311.P15026173320897869222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A122441 n

end

end A064311.P15026173320897869222

/-! ## A064311.P3401459205628932630

`-A122441(n^A178334(n))`
-/

namespace A064311.P3401459205628932630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A122441 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A064311.P3401459205628932630

/-! ## A064311.P1452891133723585876

`A122441(n)*A122441(A178334(n))`
-/

namespace A064311.P1452891133723585876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122441 n * A122441 (A178334 n).toNat

end

end A064311.P1452891133723585876

/-! ## A064311.P14746428230510817517

`A122441(n)/A122441(A178334(n)²)`
-/

namespace A064311.P14746428230510817517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122441 n : ℚ) / (A122441 (A178334 n ^ 2).toNat : ℚ)

end

end A064311.P14746428230510817517

/-! ## A064311.P2151508460759324526

`A122441(n)/A122441(2-A178334(n))`
-/

namespace A064311.P2151508460759324526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122441 n : ℚ) / (A122441 (2 - A178334 n).toNat : ℚ)

end

end A064311.P2151508460759324526

/-! ## A064311.P7565954475679088467

`A122441(n/A028310(n))*A122441(n)`
-/

namespace A064311.P7565954475679088467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122441 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat * A122441 n

end

end A064311.P7565954475679088467

/-! ## A064311.P16408242014664748568

`A064334(∑[n+2]+3)`
-/

namespace A064311.P16408242014664748568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A064311.P16408242014664748568

/-!
# A064312: a(n) = B(n)*P(n), where B(n) are Bell numbers (A000110) and P(n) are numbers of arrangements of a set of n elements (A000522).

The programs for A064312, there is no canonical definition to state claims against.
-/

/-! ## A064312.P10421760892767218034

`A000110(n)*A000522(n)`
-/

namespace A064312.P10421760892767218034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A000522 n

end

end A064312.P10421760892767218034

/-! ## A064312.P9950207844959862664

`A000522(n)*A011971(∑[n])`
-/

namespace A064312.P9950207844959862664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064312.P9950207844959862664

/-! ## A064312.P10832632375790815540

`A000522(n)*A123081(∑[n])`
-/

namespace A064312.P10832632375790815540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064312.P10832632375790815540

/-! ## A064312.P5653671719891777560

`A000110(n)*A143409(∑[n])`
-/

namespace A064312.P5653671719891777560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A143409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064312.P5653671719891777560

/-! ## A064312.P14015895402531103690

`A000522(n)*A259691(∑[n])`
-/

namespace A064312.P14015895402531103690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n * A259691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064312.P14015895402531103690

/-!
# A064313: Integer part of area of a regular polygon with n sides each of length 1.

The programs for A064313, there is no canonical definition to state claims against.
-/

/-! ## A064313.P14744209150130948701

`A121902(A208972(n+1))`
-/

namespace A064313.P14744209150130948701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A208972 (n + 1)).toNat

end

end A064313.P14744209150130948701

/-! ## A064313.P18446390678936573273

`A004526(eq[1, A299458(3*n+1)])`
-/

namespace A064313.P18446390678936573273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064313.P18446390678936573273

/-! ## A064313.P203191276095906696

`A004526(eq[1, A304894(3*n+1)])`
-/

namespace A064313.P203191276095906696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064313.P203191276095906696

/-! ## A064313.P7931563332464025645

`A004526(lt[A270273(3*n+1), 5])`
-/

namespace A064313.P7931563332464025645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A064313.P7931563332464025645

/-! ## A064313.P18292622365700061727

`floor(A001840(n)/2)^(A067157(n)+1)`
-/

namespace A064313.P18292622365700061727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A001840 n : ℚ) / 2⌋ : ℚ) ^ (A067157 (n + 10) + 1 : ℤ)

end

end A064313.P18292622365700061727

/-!
# A064314: Total length of longest increasing runs in all permutations of n elements.

The programs for A064314, there is no canonical definition to state claims against.
-/

/-! ## A064314.P14854451758224007485

`∑[∑[A199969(A237645(n+1))+1]]`
-/

namespace A064314.P14854451758224007485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A237645 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064314.P14854451758224007485

/-!
# A064316: Total length of shortest ascending runs of permutations of length n.

The programs for A064316, there is no canonical definition to state claims against.
-/

/-! ## A064316.P3920893251142522916

`A240201(A072862(n+1))+n`
-/

namespace A064316.P3920893251142522916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 (A072862 (n + 1)).toNat + (n : ℤ)

end

end A064316.P3920893251142522916

/-! ## A064316.P10944325073971791019

`A244219((n+1)!)+A003986(n)²`
-/

namespace A064316.P10944325073971791019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (Nat.factorial (n + 1)) + A003986 n ^ 2

end

end A064316.P10944325073971791019

/-!
# A064317: a(n) satisfies a(n)^a(n) <= n! < (a(n)+1)^(a(n)+1).

The programs for A064317, there is no canonical definition to state claims against.
-/

/-! ## A064317.P11911705009583149278

`A214449(round(acot(n)+n))-1`
-/

namespace A064317.P11911705009583149278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214449 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A064317.P11911705009583149278

/-! ## A064317.P13103984189905885749

`A028310(∑[char[A136432(n)]])`
-/

namespace A064317.P13103984189905885749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136432 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064317.P13103984189905885749

/-! ## A064317.P3960573796337181271

`∑[char[A136432(n)%A065027(n)]]`
-/

namespace A064317.P3960573796337181271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136432 n) (A065027 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064317.P3960573796337181271

/-! ## A064317.P14023184794556172037

`A028310(A214449(A028310(n))-1)`
-/

namespace A064317.P14023184794556172037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A214449 (A028310 n).toNat - 1).toNat

end

end A064317.P14023184794556172037

/-! ## A064317.P8257851683722940992

`A214449(A233583(n+1))-1`
-/

namespace A064317.P8257851683722940992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214449 (A233583 (n + 1)).toNat - 1

end

end A064317.P8257851683722940992

/-! ## A064317.P9830381026946917475

`A259361(A214449(A233583(n+1))²)`
-/

namespace A064317.P9830381026946917475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A214449 (A233583 (n + 1)).toNat ^ 2).toNat

end

end A064317.P9830381026946917475

/-! ## A064317.P3585839434855339417

`A214449(n^A178334(n))-(1-A019590(n+1))`
-/

namespace A064317.P3585839434855339417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214449 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - (1 - A019590 (n + 1))

end

end A064317.P3585839434855339417

/-! ## A064317.P10712098653967514740

`A028310(A118168(n+1)-1)`
-/

namespace A064317.P10712098653967514740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A118168 (n + 1) - 1).toNat

end

end A064317.P10712098653967514740

/-! ## A064317.P5941839239815051891

`A118168(Δ[A118168(n)]+abs(1-n))`
-/

namespace A064317.P5941839239815051891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (f1 (n + 1) - f1 n + |1 - (n : ℤ)|).toNat

end

end A064317.P5941839239815051891

/-!
# A064318: a(n) satisfies a(n)! <= n^n < (a(n)+1)!.

The programs for A064318, there is no canonical definition to state claims against.
-/

/-! ## A064318.P12910539046906946004

`A136432(n)-1`
-/

namespace A064318.P12910539046906946004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136432 n - 1

end

end A064318.P12910539046906946004

/-! ## A064318.P3870460614011342965

`A001478(n+1)+A136432(n)+n`
-/

namespace A064318.P3870460614011342965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A136432 n + (n : ℤ))

end

end A064318.P3870460614011342965

/-! ## A064318.P16857983015185815574

`A260196(n+2)+A136432(n)`
-/

namespace A064318.P16857983015185815574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A136432 n

end

end A064318.P16857983015185815574

/-! ## A064318.P4773145403591952885

`A023443(A136432(n))`
-/

namespace A064318.P4773145403591952885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A136432 n).toNat

end

end A064318.P4773145403591952885

/-! ## A064318.P15529141387498106286

`A289207(A136432(n)+1)`
-/

namespace A064318.P15529141387498106286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A136432 n + 1).toNat

end

end A064318.P15529141387498106286

/-! ## A064318.P10067818837217910377

`A023478(A136432(n)+35)`
-/

namespace A064318.P10067818837217910377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A136432 n + 35).toNat

end

end A064318.P10067818837217910377

/-! ## A064318.P13044736410561628142

`A329069(Δ[A003815(2*n)])+A136432(n)`
-/

namespace A064318.P13044736410561628142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329069 (f1 (n + 1) - f1 n).toNat + A136432 n

end

end A064318.P13044736410561628142

/-! ## A064318.P6318575429299834487

`A289207(2*A136432(n))/2`
-/

namespace A064318.P6318575429299834487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * A136432 n).toNat : ℚ) / 2

end

end A064318.P6318575429299834487

/-! ## A064318.P17892515688929872522

`A209615(A125254(n+1))+A136432(n)`
-/

namespace A064318.P17892515688929872522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A125254 (n + 1)).toNat + A136432 n

end

end A064318.P17892515688929872522

/-!
# A064319: Triangle with a(n,1) = n and a(n,k) = a(n,k-1) * a(n-1,k-1).

The programs for A064319, there is no canonical definition to state claims against.
-/

/-! ## A064319.P8754217335174389733

`A003963(A066117(n+1))`
-/

namespace A064319.P8754217335174389733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A066117 (n + 1)).toNat

end

end A064319.P8754217335174389733

/-! ## A064319.P8103273004923413513

`A000190(A000110(n))*A093919(n+1)`
-/

namespace A064319.P8103273004923413513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A000110 n).toNat * A093919 (n + 1)

end

end A064319.P8103273004923413513

/-! ## A064319.P16675488117293831372

`A089854(A068424(n+1)*A121207(n))`
-/

namespace A064319.P16675488117293831372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A068424 (n + 1) * A121207 n).toNat

end

end A064319.P16675488117293831372

/-! ## A064319.P6832648797549259435

`A118759(A068424(n+1)*A111528(n))`
-/

namespace A064319.P6832648797549259435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A068424 (n + 1) * A111528 n).toNat

end

end A064319.P6832648797549259435

/-! ## A064319.P921657593088440391

`A118759(A068424(n+1)*A121207(n))`
-/

namespace A064319.P921657593088440391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A068424 (n + 1) * A121207 n).toNat

end

end A064319.P921657593088440391

/-!
# A064320: a(n) = Product_{j=1..n} j^C(n-1,j-1).

The programs for A064320, there is no canonical definition to state claims against.
-/

/-! ## A064320.P126182508537502158

`A064319(∑[n+1])`
-/

namespace A064320.P126182508537502158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064319 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064320.P126182508537502158

/-! ## A064320.P15716395220766541002

`A122216(n)*A122217(n)`
-/

namespace A064320.P15716395220766541002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122216 n * A122217 n

end

end A064320.P15716395220766541002

/-! ## A064320.P5599314863523594628

`ratio[A229333(n)]`
-/

namespace A064320.P5599314863523594628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A064320.P5599314863523594628

/-!
# A064321: a(n) = n*(n-1)^3*(n-2)^3*(n-3).

The programs for A064321, the canonical program `A064321.P16030386990226526016` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064321 has offset 0).

The definition of A064321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)^3*(n-2)^3*(n-3)` (program `A064321.P16030386990226526016`, by `A064321.P16030386990226526016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064321.P16030386990226526016

`n*(n-1)^3*(n-2)^3*(n-3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064321

/-- `n*(n-1)^3*(n-2)^3*(n-3)` -/
def P16030386990226526016.Spec : Prop :=
  ∀ n, P16030386990226526016.a n = A064321 n

theorem P16030386990226526016.correct : P16030386990226526016.Spec := by
  intro n
  simp only [A064321]

end A064321

/-! ## A064321.P13738673807709179875

`∏{d}[A071142(A000005(n+1)), n-A001222(#)]`
-/

namespace A064321.P13738673807709179875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071142 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - A001222 d)

end

end A064321.P13738673807709179875

namespace A064321

/-- `∏{d}[A071142(A000005(n+1)), n-A001222(#)]` -/
def P13738673807709179875.Spec : Prop :=
  ∀ n, P13738673807709179875.a n = A064321 n

end A064321

/-! ## A064321.P5852869366084934228

`∏{d}[A071142(A071137(n+1)), n-A001222(#)]`
-/

namespace A064321.P5852869366084934228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071142 (A071137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - A001222 d)

end

end A064321.P5852869366084934228

namespace A064321

/-- `∏{d}[A071142(A071137(n+1)), n-A001222(#)]` -/
def P5852869366084934228.Spec : Prop :=
  ∀ n, P5852869366084934228.a n = A064321 n

end A064321

/-! ## A064321.P6492966457075394188

`∏{d}[A071142(A071136(n+1)), n-A001222(#)]`
-/

namespace A064321.P6492966457075394188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071142 (A071136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - A001222 d)

end

end A064321.P6492966457075394188

namespace A064321

/-- `∏{d}[A071142(A071136(n+1)), n-A001222(#)]` -/
def P6492966457075394188.Spec : Prop :=
  ∀ n, P6492966457075394188.a n = A064321 n

end A064321

/-!
# A064322: Triply triangular numbers.

The programs for A064322, the canonical program `A064322.P5777157630167942361` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064322 has offset 0).

The definition of A064322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064322.P17386660884891217451

`A002817(n)*(A002817(n)+1)/2`
-/

namespace A064322.P17386660884891217451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002817 n * (A002817 n + 1) : ℚ) / 2

end

end A064322.P17386660884891217451

namespace A064322

/-- `A002817(n)*(A002817(n)+1)/2` -/
def P17386660884891217451.Spec : Prop :=
  ∀ n, P17386660884891217451.a n = (A064322 n : ℚ)

end A064322

/-! ## A064322.P5777157630167942361

`A000217(A000217(A000217(n)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064322

/-- `A000217(A000217(A000217(n)))` -/
def P5777157630167942361.Spec : Prop :=
  ∀ n, P5777157630167942361.a n = A064322 n

theorem P5777157630167942361.correct : P5777157630167942361.Spec := by
  intro n
  simp only [A064322]

end A064322

/-! ## A064322.P6871360584701875083

`C(C(∑[n]+1, 2)+1, 2)`
-/

namespace A064322.P6871360584701875083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 + 1) 2

end

end A064322.P6871360584701875083

namespace A064322

/-- `C(C(∑[n]+1, 2)+1, 2)` -/
def P6871360584701875083.Spec : Prop :=
  ∀ n, (P6871360584701875083.a n : ℤ) = A064322 n

end A064322

/-! ## A064322.P4959849371832007913

`C(A002817(n)+1, 2)`
-/

namespace A064322.P4959849371832007913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002817 n + 1).toNat 2

end

end A064322.P4959849371832007913

namespace A064322

/-- `C(A002817(n)+1, 2)` -/
def P4959849371832007913.Spec : Prop :=
  ∀ n, (P4959849371832007913.a n : ℤ) = A064322 n

end A064322

/-! ## A064322.P969993524967332903

`C(∑[A006003(n)]+1, 2)`
-/

namespace A064322.P969993524967332903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A064322.P969993524967332903

namespace A064322

/-- `C(∑[A006003(n)]+1, 2)` -/
def P969993524967332903.Spec : Prop :=
  ∀ n, (P969993524967332903.a n : ℤ) = A064322 n

end A064322

/-! ## A064322.P4267804554580096924

`C(A004255(n+1)-n, 2)`
-/

namespace A064322.P4267804554580096924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004255 (n + 1) - (n : ℤ)).toNat 2

end

end A064322.P4267804554580096924

namespace A064322

/-- `C(A004255(n+1)-n, 2)` -/
def P4267804554580096924.Spec : Prop :=
  ∀ n, (P4267804554580096924.a n : ℤ) = A064322 n

end A064322

/-! ## A064322.P363039999984806798

`C(∑[sqrt(A135509(n))]+1, 2)`
-/

namespace A064322.P363039999984806798
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135509 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat 2

end

end A064322.P363039999984806798

namespace A064322

/-- `C(∑[sqrt(A135509(n))]+1, 2)` -/
def P363039999984806798.Spec : Prop :=
  ∀ n, (P363039999984806798.a n : ℤ) = A064322 n

end A064322

/-! ## A064322.P16381963460087836443

`∑[A094311(n+1)]-A094311(n+1)`
-/

namespace A064322.P16381963460087836443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A094311 (n + 1)

end

end A064322.P16381963460087836443

namespace A064322

/-- `∑[A094311(n+1)]-A094311(n+1)` -/
def P16381963460087836443.Spec : Prop :=
  ∀ n, P16381963460087836443.a n = A064322 n

end A064322

/-! ## A064322.P13819681789235291301

`A002817(∑[n])`
-/

namespace A064322.P13819681789235291301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064322.P13819681789235291301

namespace A064322

/-- `A002817(∑[n])` -/
def P13819681789235291301.Spec : Prop :=
  ∀ n, P13819681789235291301.a n = A064322 n

end A064322

/-! ## A064322.P14563421858546387071

`A001621(∑[n])/2`
-/

namespace A064322.P14563421858546387071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001621 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A064322.P14563421858546387071

namespace A064322

/-- `A001621(∑[n])/2` -/
def P14563421858546387071.Spec : Prop :=
  ∀ n, P14563421858546387071.a n = (A064322 n : ℚ)

end A064322

/-! ## A064322.P2609591656999878405

`C(A000124(∑[n]), 2)`
-/

namespace A064322.P2609591656999878405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000124 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A064322.P2609591656999878405

namespace A064322

/-- `C(A000124(∑[n]), 2)` -/
def P2609591656999878405.Spec : Prop :=
  ∀ n, (P2609591656999878405.a n : ℤ) = A064322 n

end A064322

/-!
# A064323: a(n) = a(n-1)+ceiling(a(n-2)/2) with a(0)=0, a(1)=1.

The programs for A064323, the canonical program `A064323.P4734053142636850996` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064323 has offset 0).

The definition of A064323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+ceil(a(n-2)/2)` (program `A064323.P4734053142636850996`, by `A064323.P4734053142636850996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064323.P4734053142636850996

`a(n-1)+ceil(a(n-2)/2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064323

/-- `a(n-1)+ceil(a(n-2)/2)` -/
def P4734053142636850996.Spec : Prop :=
  ∀ n, P4734053142636850996.a n = A064323 n

theorem P4734053142636850996.correct : P4734053142636850996.Spec := by
  intro n
  simp only [A064323]

end A064323

/-! ## A064323.P15438398323516203290

`A064324(n)-1`
-/

namespace A064323.P15438398323516203290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064324 n - 1

end

end A064323.P15438398323516203290

namespace A064323

/-- `A064324(n)-1` -/
def P15438398323516203290.Spec : Prop :=
  ∀ n, P15438398323516203290.a n = A064323 n

end A064323

/-! ## A064323.P4319327862519776093

`round(a(n-1)+a(n-2)/2)` with `a(0)=0, a(1)=1`
-/

namespace A064323.P4319327862519776093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (a (n - 2) : ℚ) / 2)

end

end A064323.P4319327862519776093

namespace A064323

/-- `round(a(n-1)+a(n-2)/2)` -/
def P4319327862519776093.Spec : Prop :=
  ∀ n, P4319327862519776093.a n = A064323 n

end A064323

/-! ## A064323.P3086281238267309895

`floor(a(n-1)+(a(n-2)+1)/2)` with `a(0)=0, a(1)=1`
-/

namespace A064323.P3086281238267309895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 2) + 1 : ℚ) / 2⌋

end

end A064323.P3086281238267309895

namespace A064323

/-- `floor(a(n-1)+(a(n-2)+1)/2)` -/
def P3086281238267309895.Spec : Prop :=
  ∀ n, P3086281238267309895.a n = A064323 n

end A064323

/-! ## A064323.P1663486589334216555

`a(n-1)-floor(a(n-2)/2-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A064323.P1663486589334216555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ⌊(a (n - 2) : ℚ) / 2 - (a (n - 2) : ℚ)⌋

end

end A064323.P1663486589334216555

namespace A064323

/-- `a(n-1)-floor(a(n-2)/2-a(n-2))` -/
def P1663486589334216555.Spec : Prop :=
  ∀ n, P1663486589334216555.a n = A064323 n

end A064323

/-! ## A064323.P10753094019629892091

`a(n-1)+(a(n-2)+a(n-2)%2)/2` with `a(0)=0, a(1)=1`
-/

namespace A064323.P10753094019629892091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) 2 : ℚ)) / 2

end

end A064323.P10753094019629892091

namespace A064323

/-- `a(n-1)+(a(n-2)+a(n-2)%2)/2` -/
def P10753094019629892091.Spec : Prop :=
  ∀ n, P10753094019629892091.a n = (A064323 n : ℚ)

end A064323

/-!
# A064324: a(n) = a(n-1) + floor(a(n-2)/2) with a(0)=1, a(1)=2.

The programs for A064324, the canonical program `A064324.P11387025875580787052` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064324 has offset 0).

The definition of A064324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(a(n-2)/2)` (program `A064324.P11387025875580787052`, by `A064324.P11387025875580787052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064324.P11387025875580787052

`a(n-1)+floor(a(n-2)/2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064324

/-- `a(n-1)+floor(a(n-2)/2)` -/
def P11387025875580787052.Spec : Prop :=
  ∀ n, P11387025875580787052.a n = A064324 n

theorem P11387025875580787052.correct : P11387025875580787052.Spec := by
  intro n
  simp only [A064324]

end A064324

/-! ## A064324.P5520809678348879115

`A064323(n)+1`
-/

namespace A064324.P5520809678348879115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064323 n + 1

end

end A064324.P5520809678348879115

namespace A064324

/-- `A064323(n)+1` -/
def P5520809678348879115.Spec : Prop :=
  ∀ n, P5520809678348879115.a n = A064324 n

end A064324

/-! ## A064324.P3767636752401111302

`a(n-1)-floor((1-a(n-2))/2)` with `a(0)=1, a(1)=2`
-/

namespace A064324.P3767636752401111302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ⌊(1 - a (n - 2) : ℚ) / 2⌋

end

end A064324.P3767636752401111302

namespace A064324

/-- `a(n-1)-floor((1-a(n-2))/2)` -/
def P3767636752401111302.Spec : Prop :=
  ∀ n, P3767636752401111302.a n = A064324 n

end A064324

/-! ## A064324.P5175573205667463127

`a(n-1)+(a(n-2)-a(n-2)%2)/2` with `a(0)=1, a(1)=2`
-/

namespace A064324.P5175573205667463127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) 2 : ℚ)) / 2

end

end A064324.P5175573205667463127

namespace A064324

/-- `a(n-1)+(a(n-2)-a(n-2)%2)/2` -/
def P5175573205667463127.Spec : Prop :=
  ∀ n, P5175573205667463127.a n = (A064324 n : ℚ)

end A064324

/-! ## A064324.P4362133892566446388

`1-A057428(n)*A064323(n)`
-/

namespace A064324.P4362133892566446388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A064323 n

end

end A064324.P4362133892566446388

namespace A064324

/-- `1-A057428(n)*A064323(n)` -/
def P4362133892566446388.Spec : Prop :=
  ∀ n, P4362133892566446388.a n = A064324 n

end A064324

/-!
# A064325: Generalized Catalan numbers C(-3; n).

The programs for A064325, there is no canonical definition to state claims against.
-/

/-! ## A064325.P14399469730403234802

`A064334(A167614(n+2))`
-/

namespace A064325.P14399469730403234802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A167614 (n + 2)).toNat

end

end A064325.P14399469730403234802

/-! ## A064325.P2588495494572633393

`A064334(A052905(n)+8)`
-/

namespace A064325.P2588495494572633393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A052905 n + 8).toNat

end

end A064325.P2588495494572633393

/-! ## A064325.P15357562029972188988

`A064334(A055999(n)+9)`
-/

namespace A064325.P15357562029972188988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A055999 n + 9).toNat

end

end A064325.P15357562029972188988

/-! ## A064325.P3470615218042877605

`A064334(eq[2, A141169(n)])`
-/

namespace A064325.P3470615218042877605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064325.P3470615218042877605

/-! ## A064325.P2885430774412748756

`A064334(eq[3, A002262(n)])`
-/

namespace A064325.P2885430774412748756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064325.P2885430774412748756

/-! ## A064325.P15996334784414527133

`A064334(eq[3, A191532(n)])`
-/

namespace A064325.P15996334784414527133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064325.P15996334784414527133

/-! ## A064325.P13446040211539334820

`A064334(eq[4, A193738(n)])`
-/

namespace A064325.P13446040211539334820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064325.P13446040211539334820

/-! ## A064325.P10903406764986922596

`A064334(A000124(n+3)+2)`
-/

namespace A064325.P10903406764986922596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A000124 (n + 3) + 2).toNat

end

end A064325.P10903406764986922596

/-! ## A064325.P8610828847113337733

`A064334(A000217(n+3)+3)`
-/

namespace A064325.P8610828847113337733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A000217 (n + 3) + 3).toNat

end

end A064325.P8610828847113337733

/-! ## A064325.P887810134127607581

`A064334(A342939(n+4)+2)`
-/

namespace A064325.P887810134127607581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A342939 (n + 4) + 2).toNat

end

end A064325.P887810134127607581

/-!
# A064326: Generalized Catalan numbers C(-4; n).

The programs for A064326, there is no canonical definition to state claims against.
-/

/-! ## A064326.P5654805724899694751

`A064334(A155212(n)+12)`
-/

namespace A064326.P5654805724899694751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A155212 n + 12).toNat

end

end A064326.P5654805724899694751

/-! ## A064326.P1635909056934124329

`A064334(eq[3, A141169(n)])`
-/

namespace A064326.P1635909056934124329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064326.P1635909056934124329

/-! ## A064326.P4059233554278853827

`A064334(eq[4, A002262(n)])`
-/

namespace A064326.P4059233554278853827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064326.P4059233554278853827

/-! ## A064326.P2514322466061589017

`A064334(A167614(n+3)+1)`
-/

namespace A064326.P2514322466061589017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A167614 (n + 3) + 1).toNat

end

end A064326.P2514322466061589017

/-! ## A064326.P10482419238746082365

`A064334(A000217(n+4)+4)`
-/

namespace A064326.P10482419238746082365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A000217 (n + 4) + 4).toNat

end

end A064326.P10482419238746082365

/-! ## A064326.P13122939439728942557

`A064334(eq[5, A002260(n+1)])`
-/

namespace A064326.P13122939439728942557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064326.P13122939439728942557

/-! ## A064326.P12546745090978819687

`A064334(eq[2, A144328(n+1)-2])`
-/

namespace A064326.P12546745090978819687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064326.P12546745090978819687

/-! ## A064326.P2470702286645652219

`A064334(eq[2, A144328(n+1)/2])`
-/

namespace A064326.P2470702286645652219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A064326.P2470702286645652219

/-!
# A064327: Generalized Catalan numbers C(-5; n).

The programs for A064327, there is no canonical definition to state claims against.
-/

/-! ## A064327.P6321322786940502452

`A064334(eq[5, A002262(n)])`
-/

namespace A064327.P6321322786940502452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064327.P6321322786940502452

/-! ## A064327.P13262296759778948930

`A064334(A167614(n+4)+2)`
-/

namespace A064327.P13262296759778948930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A167614 (n + 4) + 2).toNat

end

end A064327.P13262296759778948930

/-! ## A064327.P10584169663111810441

`A064334(A000217(n+5)+5)`
-/

namespace A064327.P10584169663111810441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (A000217 (n + 5) + 5).toNat

end

end A064327.P10584169663111810441

/-! ## A064327.P1964669876745637635

`A064334(eq[6, A002260(n+1)])`
-/

namespace A064327.P1964669876745637635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064327.P1964669876745637635

/-! ## A064327.P9276495248550572657

`A064334(eq[5, A133233(n)])`
-/

namespace A064327.P9276495248550572657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064327.P9276495248550572657

/-!
# A064328: Generalized Catalan numbers C(-6; n).

The programs for A064328, there is no canonical definition to state claims against.
-/

/-! ## A064328.P11620213516614231610

`A064334(eq[6, A002262(n)])`
-/

namespace A064328.P11620213516614231610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064328.P11620213516614231610

/-! ## A064328.P18093481626586754090

`A064334(eq[64, A059268(n)])`
-/

namespace A064328.P18093481626586754090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064328.P18093481626586754090

/-! ## A064328.P6284270765597531393

`A064334(eq[6, A144328(n+1)])`
-/

namespace A064328.P6284270765597531393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064328.P6284270765597531393

/-! ## A064328.P4517191012164463213

`A064334(eq[7, A002260(n+1)])`
-/

namespace A064328.P4517191012164463213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064328.P4517191012164463213

/-! ## A064328.P2704978138946919164

`A064334(eq[8, A245093(n+1)])`
-/

namespace A064328.P2704978138946919164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064328.P2704978138946919164

/-! ## A064328.P16220250449668681044

`A064334(eq[13, A158405(n+1)])`
-/

namespace A064328.P16220250449668681044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064328.P16220250449668681044

/-!
# A064329: Generalized Catalan numbers C(-7; n).

The programs for A064329, there is no canonical definition to state claims against.
-/

/-! ## A064329.P1606536951113309684

`A064334(eq[7, A002262(n)])`
-/

namespace A064329.P1606536951113309684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064329.P1606536951113309684

/-! ## A064329.P14827132539397461335

`A064334(eq[8, A193738(n)])`
-/

namespace A064329.P14827132539397461335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064329.P14827132539397461335

/-! ## A064329.P9206197913356240905

`A064334(eq[7, A130270(n+1)])`
-/

namespace A064329.P9206197913356240905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064329.P9206197913356240905

/-! ## A064329.P12433936999141571983

`A064334(eq[7, A144328(n+1)])`
-/

namespace A064329.P12433936999141571983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064329.P12433936999141571983

/-! ## A064329.P15867476360335079254

`A064334(eq[8, A002260(n+1)])`
-/

namespace A064329.P15867476360335079254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064329.P15867476360335079254

/-!
# A064330: Generalized Catalan numbers C(-8; n).

The programs for A064330, there is no canonical definition to state claims against.
-/

/-! ## A064330.P10209246017530773096

`A064334(eq[8, A002262(n)])`
-/

namespace A064330.P10209246017530773096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064330.P10209246017530773096

/-! ## A064330.P7112341074303739526

`A064334(eq[16, sqrt(A059268(n))])`
-/

namespace A064330.P7112341074303739526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A064330.P7112341074303739526

/-! ## A064330.P10228490009573461797

`A064334(eq[8, A144328(n+1)])`
-/

namespace A064330.P10228490009573461797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064330.P10228490009573461797

/-! ## A064330.P11280961280910168602

`A064334(eq[9, A002260(n+1)])`
-/

namespace A064330.P11280961280910168602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064330.P11280961280910168602

/-! ## A064330.P15830704516277392304

`A064334(eq[13, A245093(n+1)])`
-/

namespace A064330.P15830704516277392304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064330.P15830704516277392304

/-!
# A064331: Generalized Catalan numbers C(-9; n).

The programs for A064331, there is no canonical definition to state claims against.
-/

/-! ## A064331.P16005793229608426465

`A064334(eq[9, A002262(n)])`
-/

namespace A064331.P16005793229608426465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064331.P16005793229608426465

/-! ## A064331.P5643758662941238456

`A064334(eq[9, A191532(n)])`
-/

namespace A064331.P5643758662941238456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064331.P5643758662941238456

/-! ## A064331.P8163577551950405799

`A064334(eq[9, A130270(n+1)])`
-/

namespace A064331.P8163577551950405799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064331.P8163577551950405799

/-! ## A064331.P4776403665145383790

`A064334(eq[9, A144328(n+1)])`
-/

namespace A064331.P4776403665145383790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064331.P4776403665145383790

/-! ## A064331.P2450814143946173810

`A064334(eq[10, A002260(n+1)])`
-/

namespace A064331.P2450814143946173810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064331.P2450814143946173810

/-!
# A064332: Generalized Catalan numbers C(-10; n).

The programs for A064332, there is no canonical definition to state claims against.
-/

/-! ## A064332.P678410136233124655

`A064334(eq[10, A002262(n)])`
-/

namespace A064332.P678410136233124655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064332.P678410136233124655

/-! ## A064332.P14574027662074021674

`A064334(eq[55, A141169(n)])`
-/

namespace A064332.P14574027662074021674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064332.P14574027662074021674

/-! ## A064332.P11345659604090491036

`A064334(eq[10, A144328(n+1)])`
-/

namespace A064332.P11345659604090491036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064332.P11345659604090491036

/-! ## A064332.P6140490512793795129

`A064334(eq[10, A327844(n+1)])`
-/

namespace A064332.P6140490512793795129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064332.P6140490512793795129

/-! ## A064332.P7806035778194480912

`A064334(eq[11, A002260(n+1)])`
-/

namespace A064332.P7806035778194480912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064332.P7806035778194480912

/-!
# A064333: Generalized Catalan numbers C(-11; n).

The programs for A064333, there is no canonical definition to state claims against.
-/

/-! ## A064333.P4050004866976695601

`A064334(eq[11, A002262(n)])`
-/

namespace A064333.P4050004866976695601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064333.P4050004866976695601

/-! ## A064333.P16191033125710615728

`A064334(eq[11, A130270(n+1)])`
-/

namespace A064333.P16191033125710615728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064333.P16191033125710615728

/-! ## A064333.P14299904879584677717

`A064334(eq[11, A144328(n+1)])`
-/

namespace A064333.P14299904879584677717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064333.P14299904879584677717

/-! ## A064333.P17680603943666167922

`A064334(eq[12, A002260(n+1)])`
-/

namespace A064333.P17680603943666167922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064333.P17680603943666167922

/-! ## A064333.P1434983891424136063

`A064334(eq[11, A133233(n)])`
-/

namespace A064333.P1434983891424136063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064333.P1434983891424136063

/-!
# A064335: a(n) = 6*(2*n)!/(n+2).

The programs for A064335, the canonical program `A064335.P8957484775733374507` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064335 has offset 0).

The definition of A064335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064335.P8957484775733374507

`6*(2*n)!/(n+2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064335

/-- `6*(2*n)!/(n+2)` -/
def P8957484775733374507.Spec : Prop :=
  ∀ n, P8957484775733374507.a n = (A064335 n : ℚ)

end A064335

/-! ## A064335.P8352248081269736117

`n!²*A038629(n)`
-/

namespace A064335.P8352248081269736117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * A038629 n

end

end A064335.P8352248081269736117

namespace A064335

/-- `n!²*A038629(n)` -/
def P8352248081269736117.Spec : Prop :=
  ∀ n, P8352248081269736117.a n = A064335 n

end A064335

/-! ## A064335.P3393369621249973218

`A000142(n)²*A038629(n)`
-/

namespace A064335.P3393369621249973218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 2 * A038629 n

end

end A064335.P3393369621249973218

namespace A064335

/-- `A000142(n)²*A038629(n)` -/
def P3393369621249973218.Spec : Prop :=
  ∀ n, P3393369621249973218.a n = A064335 n

end A064335

/-! ## A064335.P14422398136802933246

`∏[A028310(n²)]*A038629(n)`
-/

namespace A064335.P14422398136802933246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A038629 n

end

end A064335.P14422398136802933246

namespace A064335

/-- `∏[A028310(n²)]*A038629(n)` -/
def P14422398136802933246.Spec : Prop :=
  ∀ n, P14422398136802933246.a n = A064335 n

end A064335

/-! ## A064335.P12095685826498769336

`A000142(n+1)*A000142(n)*A007054(n)`
-/

namespace A064335.P12095685826498769336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A000142 n * A007054 n

end

end A064335.P12095685826498769336

namespace A064335

/-- `A000142(n+1)*A000142(n)*A007054(n)` -/
def P12095685826498769336.Spec : Prop :=
  ∀ n, P12095685826498769336.a n = A064335 n

end A064335

/-!
# A064336: Maximal prime numbers with increasing prime differences.

The programs for A064336, there is no canonical definition to state claims against.
-/

/-! ## A064336.P12102564647475305396

`A007917(A000040(n)+a(n-1))` with `a(0)=2`
-/

namespace A064336.P12102564647475305396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007917 (A000040 n + a (n - 1)).toNat

end

end A064336.P12102564647475305396

/-! ## A064336.P14894548542293084213

`A335285(A000040(n)+a(n-1)+2)` with `a(0)=2`
-/

namespace A064336.P14894548542293084213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A335285 (A000040 n + a (n - 1) + 2).toNat

end

end A064336.P14894548542293084213

/-! ## A064336.P8582850370409478329

`A000040(A230980(A000040(n)+a(n-1)))` with `a(0)=2`
-/

namespace A064336.P8582850370409478329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A230980 (A000040 n + a (n - 1)).toNat).toNat

end

end A064336.P8582850370409478329

/-! ## A064336.P5601132194102798339

`A136548(A000040(n)+a(n-1))` with `a(0)=2`
-/

namespace A064336.P5601132194102798339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A136548 (A000040 n + a (n - 1)).toNat

end

end A064336.P5601132194102798339

/-! ## A064336.P18325647487891681424

`A136548(record[A014963(n+1)]+a(n-1)+1)` with `a(0)=2`
-/

namespace A064336.P18325647487891681424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A136548 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1) + 1).toNat

end

end A064336.P18325647487891681424

/-! ## A064336.P11054848180173759216

`A136548(A328617(a(n-1))+A008578(n+1))` with `a(0)=2`
-/

namespace A064336.P11054848180173759216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A136548 (A328617 (a (n - 1)).toNat + A008578 (n + 1)).toNat

end

end A064336.P11054848180173759216

/-!
# A064337: Minimal prime numbers with increasing prime differences.

The programs for A064337, the canonical program `A064337.P4577822479173310774` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064337 has offset 1).

The definition of A064337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064337.P4577822479173310774

`A151800(A000040(n)+a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064337

/-- `A151800(A000040(n)+a(n-1))` -/
def P4577822479173310774.Spec : Prop :=
  ∀ n, P4577822479173310774.a n = A064337 (n + 1)

theorem P4577822479173310774.correct : P4577822479173310774.Spec := by
  intro n
  simp only [A064337, Nat.add_sub_cancel]

end A064337

/-! ## A064337.P5999569952912116852

`A151800(A006005(n)+a(n-1))` with `a(0)=2`
-/

namespace A064337.P5999569952912116852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A006005 n + a (n - 1)).toNat

end

end A064337.P5999569952912116852

namespace A064337

/-- `A151800(A006005(n)+a(n-1))` -/
def P5999569952912116852.Spec : Prop :=
  ∀ n, P5999569952912116852.a n = A064337 (n + 1)

end A064337

/-! ## A064337.P6083644364816551548

`A151800(A006093(n)+a(n-1))` with `a(0)=2`
-/

namespace A064337.P6083644364816551548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A006093 n + a (n - 1)).toNat

end

end A064337.P6083644364816551548

namespace A064337

/-- `A151800(A006093(n)+a(n-1))` -/
def P6083644364816551548.Spec : Prop :=
  ∀ n, P6083644364816551548.a n = A064337 (n + 1)

end A064337

/-! ## A064337.P4315133485553748673

`A151800(A008578(n+1)+a(n-1))` with `a(0)=2`
-/

namespace A064337.P4315133485553748673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A008578 (n + 1) + a (n - 1)).toNat

end

end A064337.P4315133485553748673

namespace A064337

/-- `A151800(A008578(n+1)+a(n-1))` -/
def P4315133485553748673.Spec : Prop :=
  ∀ n, P4315133485553748673.a n = A064337 (n + 1)

end A064337

/-! ## A064337.P2908600938885347519

`A151800(A068499(n+1)+a(n-1))` with `a(0)=2`
-/

namespace A064337.P2908600938885347519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A068499 (n + 1) + a (n - 1)).toNat

end

end A064337.P2908600938885347519

namespace A064337

/-- `A151800(A068499(n+1)+a(n-1))` -/
def P2908600938885347519.Spec : Prop :=
  ∀ n, P2908600938885347519.a n = A064337 (n + 1)

end A064337

/-! ## A064337.P3042510533232403026

`A151800(A000040(n)-(1-a(n-1)))` with `a(0)=2`
-/

namespace A064337.P3042510533232403026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A000040 n - (1 - a (n - 1))).toNat

end

end A064337.P3042510533232403026

namespace A064337

/-- `A151800(A000040(n)-(1-a(n-1)))` -/
def P3042510533232403026.Spec : Prop :=
  ∀ n, P3042510533232403026.a n = A064337 (n + 1)

end A064337

/-! ## A064337.P14423990266392899820

`A151800(a(n-1)+A014689(n)+n)` with `a(0)=2`
-/

namespace A064337.P14423990266392899820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + (A014689 n + (n : ℤ))).toNat

end

end A064337.P14423990266392899820

namespace A064337

/-- `A151800(a(n-1)+A014689(n)+n)` -/
def P14423990266392899820.Spec : Prop :=
  ∀ n, P14423990266392899820.a n = A064337 (n + 1)

end A064337

/-! ## A064337.P4415384369923206276

`A151800(record[A014963(n+1)]+a(n-1))` with `a(0)=2`
-/

namespace A064337.P4415384369923206276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)).toNat

end

end A064337.P4415384369923206276

namespace A064337

/-- `A151800(record[A014963(n+1)]+a(n-1))` -/
def P4415384369923206276.Spec : Prop :=
  ∀ n, P4415384369923206276.a n = A064337 (n + 1)

end A064337

/-! ## A064337.P6353960320598021241

`A007918(A000040(n)+a(n-1))` with `a(0)=2`
-/

namespace A064337.P6353960320598021241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (A000040 n + a (n - 1)).toNat

end

end A064337.P6353960320598021241

namespace A064337

/-- `A007918(A000040(n)+a(n-1))` -/
def P6353960320598021241.Spec : Prop :=
  ∀ n, P6353960320598021241.a n = A064337 (n + 1)

end A064337

/-! ## A064337.P11509817114108380592

`A007918(a(n-1)+A001747(n+1)/2)` with `a(0)=2, a(1)=5`
-/

namespace A064337.P11509817114108380592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A007918 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (A001747 (n + 1) : ℚ) / 2)).toNat

end

end A064337.P11509817114108380592

namespace A064337

/-- `A007918(a(n-1)+A001747(n+1)/2)` -/
def P11509817114108380592.Spec : Prop :=
  ∀ n, P11509817114108380592.a n = A064337 (n + 1)

end A064337

/-!
# A064339: Row sums of unsigned triangle A064334.

The programs for A064339, there is no canonical definition to state claims against.
-/

/-! ## A064339.P3014821458379792872

`A002266(or(A020047(n), A079695(n+1)))`
-/

namespace A064339.P3014821458379792872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.lor (A020047 n) (A079695 (n + 1))).toNat

end

end A064339.P3014821458379792872

/-! ## A064339.P11483950841071880438

`A023965(n+1)+A008612(A126734(n+1))`
-/

namespace A064339.P11483950841071880438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 (n + 1) + A008612 (A126734 (n + 1)).toNat

end

end A064339.P11483950841071880438

/-!
# A064340: Generalized Catalan numbers C(2,2; n).

The programs for A064340, there is no canonical definition to state claims against.
-/

/-! ## A064340.P6132432148483349174

`A067298(∑[n])`
-/

namespace A064340.P6132432148483349174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067298 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064340.P6132432148483349174

/-! ## A064340.P2996689724449145810

`A067327(∑[n])`
-/

namespace A064340.P2996689724449145810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067327 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064340.P2996689724449145810

/-! ## A064340.P5098931027220190003

`A067328(∑[n])`
-/

namespace A064340.P5098931027220190003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067328 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064340.P5098931027220190003

/-! ## A064340.P12533339346796887176

`A067304(∑[n]+n)`
-/

namespace A064340.P12533339346796887176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067304 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A064340.P12533339346796887176

/-! ## A064340.P10168341216083860208

`A064879(A340266(n+1))`
-/

namespace A064340.P10168341216083860208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A340266 (n + 1)).toNat

end

end A064340.P10168341216083860208

/-! ## A064340.P13455700181941434191

`A064879(A055998(n)+5)`
-/

namespace A064340.P13455700181941434191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A055998 n + 5).toNat

end

end A064340.P13455700181941434191

/-! ## A064340.P1707590516747191057

`A064879(eq[2, A002262(n)])`
-/

namespace A064340.P1707590516747191057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064340.P1707590516747191057

/-! ## A064340.P171785169585554305

`A064879(A167614(n+1)-1)`
-/

namespace A064340.P171785169585554305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A167614 (n + 1) - 1).toNat

end

end A064340.P171785169585554305

/-! ## A064340.P8091118489389804657

`A064879(A000096(n+1)+3)`
-/

namespace A064340.P8091118489389804657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A000096 (n + 1) + 3).toNat

end

end A064340.P8091118489389804657

/-! ## A064340.P9921909069884948585

`A064879(A000217(n+2)+2)`
-/

namespace A064340.P9921909069884948585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A000217 (n + 2) + 2).toNat

end

end A064340.P9921909069884948585

/-!
# A064341: Generalized Catalan numbers C(3,3; n).

The programs for A064341, there is no canonical definition to state claims against.
-/

/-! ## A064341.P8590170126238909324

`A064879(∑[n+3]+6)`
-/

namespace A064341.P8590170126238909324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A064341.P8590170126238909324

/-!
# A064342: Generalized Catalan numbers C(4,4; n).

The programs for A064342, there is no canonical definition to state claims against.
-/

/-! ## A064342.P14569497694851904704

`A064879(A155212(n)+12)`
-/

namespace A064342.P14569497694851904704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A155212 n + 12).toNat

end

end A064342.P14569497694851904704

/-! ## A064342.P12366023447087844627

`A064879(eq[4, A002262(n)])`
-/

namespace A064342.P12366023447087844627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064342.P12366023447087844627

/-! ## A064342.P5702929482072309351

`A064879(A167614(n+3)+1)`
-/

namespace A064342.P5702929482072309351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A167614 (n + 3) + 1).toNat

end

end A064342.P5702929482072309351

/-! ## A064342.P5359796081556887541

`A064879(A166136(n+3)-2)`
-/

namespace A064342.P5359796081556887541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A166136 (n + 3) - 2).toNat

end

end A064342.P5359796081556887541

/-! ## A064342.P7408607874865100719

`A064879(A000124(n+4)+3)`
-/

namespace A064342.P7408607874865100719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A000124 (n + 4) + 3).toNat

end

end A064342.P7408607874865100719

/-!
# A064343: Generalized Catalan numbers C(5,5; n).

The programs for A064343, there is no canonical definition to state claims against.
-/

/-! ## A064343.P536957057149756205

`A064879(∑[n+5]+15)`
-/

namespace A064343.P536957057149756205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A064343.P536957057149756205

/-! ## A064343.P12965357584533653790

`A064879(A167499(n+4))%A119880(2*(n+1))`
-/

namespace A064343.P12965357584533653790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064879 (A167499 (n + 4)).toNat) (A119880 (2 * (n + 1)))

end

end A064343.P12965357584533653790

/-!
# A064344: Generalized Catalan numbers C(6,6; n).

The programs for A064344, there is no canonical definition to state claims against.
-/

/-! ## A064344.P2074164458454780125

`A064879(eq[6, A002262(n)])`
-/

namespace A064344.P2074164458454780125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064344.P2074164458454780125

/-! ## A064344.P1321263082148250727

`A064879(A167614(n+5)+3)`
-/

namespace A064344.P1321263082148250727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A167614 (n + 5) + 3).toNat

end

end A064344.P1321263082148250727

/-! ## A064344.P18145076593477386826

`A064879(A000124(n+6)+5)`
-/

namespace A064344.P18145076593477386826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A000124 (n + 6) + 5).toNat

end

end A064344.P18145076593477386826

/-! ## A064344.P15829658176962603454

`A064879(eq[6, A144328(n+1)])`
-/

namespace A064344.P15829658176962603454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064344.P15829658176962603454

/-!
# A064345: Generalized Catalan numbers C(7,7; n).

The programs for A064345, there is no canonical definition to state claims against.
-/

/-! ## A064345.P9607002606490393078

`A064879(A056119(n+1)+28)`
-/

namespace A064345.P9607002606490393078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A056119 (n + 1) + 28).toNat

end

end A064345.P9607002606490393078

/-! ## A064345.P16287772945844927433

`A064879(eq[7, A130270(n+1)])`
-/

namespace A064345.P16287772945844927433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064345.P16287772945844927433

/-! ## A064345.P1560906561358254844

`A064879(eq[8, A002260(n+1)])`
-/

namespace A064345.P1560906561358254844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064345.P1560906561358254844

/-! ## A064345.P13946356702425490833

`A064879(eq[8, A025581(n)]-Δ[n²])`
-/

namespace A064345.P13946356702425490833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

end

end A064345.P13946356702425490833

/-! ## A064345.P14149076184139388421

`A064879(A055999(n+6)-3-Δ[n²])`
-/

namespace A064345.P14149076184139388421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064879 (A055999 (n + 6) - 3 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A064345.P14149076184139388421

/-!
# A064348: Numbers k such that k and k+1 have the same sum of unitary divisors and the same number of divisors.

The programs for A064348, there is no canonical definition to state claims against.
-/

/-! ## A064348.P14113737829534146812

`filter[A064125(n+1), A130638(#)]`
-/

namespace A064348.P14113737829534146812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A064348.P14113737829534146812

/-! ## A064348.P5713124072164505020

`filter[A349222(n+1), A130638(#)]`
-/

namespace A064348.P5713124072164505020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A064348.P5713124072164505020

/-!
# A064350: a(n) = (3*n)!/n!.

The programs for A064350, the canonical program `A064350.P6352301221126572588` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064350 has offset 0).

The definition of A064350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064350.P6352301221126572588

`(27*(n-1)²+27*(n-1)+6)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064350

/-- `(27*(n-1)²+27*(n-1)+6)*a(n-1)` -/
def P6352301221126572588.Spec : Prop :=
  ∀ n, P6352301221126572588.a n = A064350 n

theorem P6352301221126572588.correct : P6352301221126572588.Spec := by
  intro n
  simp only [A064350]

end A064350

/-! ## A064350.P9496377288614967027

`(3*n)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064350.P9496377288614967027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℚ) / (Nat.factorial n : ℚ)

end

end A064350.P9496377288614967027

namespace A064350

/-- `(3*n)!/n!` -/
def P9496377288614967027.Spec : Prop :=
  ∀ n, P9496377288614967027.a n = (A064350 n : ℚ)

end A064350

/-! ## A064350.P4666510215474568737

`(2*n)!*C(3*n, n)`
-/

namespace A064350.P4666510215474568737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) * Nat.choose (3 * n) n

end

end A064350.P4666510215474568737

namespace A064350

/-- `(2*n)!*C(3*n, n)` -/
def P4666510215474568737.Spec : Prop :=
  ∀ n, (P4666510215474568737.a n : ℤ) = A064350 n

end A064350

/-! ## A064350.P17334780112950135417

`3*(18*C(n, 2)+2)*a(n-1)` with `a(0)=1`
-/

namespace A064350.P17334780112950135417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((18 * Nat.choose n 2 + 2) * a (n - 1))

end

end A064350.P17334780112950135417

namespace A064350

/-- `3*(18*C(n, 2)+2)*a(n-1)` -/
def P17334780112950135417.Spec : Prop :=
  ∀ n, (P17334780112950135417.a n : ℤ) = A064350 n

end A064350

/-! ## A064350.P17139423814493515991

`3*((n-1)*9*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A064350.P17139423814493515991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((((n : ℤ) - 1) * (9 * n : ℤ) + 2) * a (n - 1))

end

end A064350.P17139423814493515991

namespace A064350

/-- `3*((n-1)*9*n+2)*a(n-1)` -/
def P17139423814493515991.Spec : Prop :=
  ∀ n, P17139423814493515991.a n = A064350 n

theorem P17139423814493515991.correct : P17139423814493515991.Spec := by
  intro n
  simp only [A064350, Nat.add_sub_cancel, A064350.P17139423814493515991.a, A064350.P6352301221126572588.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A064350

/-!
# A064351: Numbers k such that k and k+1 have the same sum and number of prime divisors (with repetition).

The programs for A064351, there is no canonical definition to state claims against.
-/

/-! ## A064351.P12943724958818457220

`∩[A039752(n+1), A327250(n+1)]`
-/

namespace A064351.P12943724958818457220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064351.P12943724958818457220

/-! ## A064351.P9961704977896427562

`∩[A039752(n+1), A227755(n+1)]`
-/

namespace A064351.P9961704977896427562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064351.P9961704977896427562

/-! ## A064351.P4711192239590143651

`∩[A227755(n+1), A327250(n+1)]`
-/

namespace A064351.P4711192239590143651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064351.P4711192239590143651

/-!
# A064352: a(n) = (3*n)!/(2*n)!.

The programs for A064352, the canonical program `A064352.P17858079158270413850` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064352 has offset 0).

The definition of A064352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064352.P17858079158270413850

`(3*n)!/(2*n)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064352

/-- `(3*n)!/(2*n)!` -/
def P17858079158270413850.Spec : Prop :=
  ∀ n, P17858079158270413850.a n = (A064352 n : ℚ)

end A064352

/-! ## A064352.P7153748373070792626

`n!*C(3*n, n)`
-/

namespace A064352.P7153748373070792626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (3 * n) n

end

end A064352.P7153748373070792626

namespace A064352

/-- `n!*C(3*n, n)` -/
def P7153748373070792626.Spec : Prop :=
  ∀ n, (P7153748373070792626.a n : ℤ) = A064352 n

end A064352

/-! ## A064352.P10773639510287496174

`C(3*n, n)*∏[round(1/acot(n))]`
-/

namespace A064352.P10773639510287496174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A064352.P10773639510287496174

namespace A064352

/-- `C(3*n, n)*∏[round(1/acot(n))]` -/
def P10773639510287496174.Spec : Prop :=
  ∀ n, P10773639510287496174.a n = A064352 n

end A064352

/-! ## A064352.P5287580505298119791

`A374647(3*n)`
-/

namespace A064352.P5287580505298119791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374647 (3 * n)

end

end A064352.P5287580505298119791

namespace A064352

/-- `A374647(3*n)` -/
def P5287580505298119791.Spec : Prop :=
  ∀ n, P5287580505298119791.a n = A064352 n

end A064352

/-! ## A064352.P12344776014667676665

`n!*A005809(n)`
-/

namespace A064352.P12344776014667676665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A005809 n

end

end A064352.P12344776014667676665

namespace A064352

/-- `n!*A005809(n)` -/
def P12344776014667676665.Spec : Prop :=
  ∀ n, P12344776014667676665.a n = A064352 n

end A064352

/-!
# A064353: Kolakoski-(1,3) sequence: the alphabet is {1,3}, and a(n) is the length of the n-th run.

The programs for A064353, there is no canonical definition to state claims against.
-/

/-! ## A064353.P561429039232347607

`A362927(n+1)+2`
-/

namespace A064353.P561429039232347607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362927 (n + 1) + 2

end

end A064353.P561429039232347607

/-! ## A064353.P10967546628758163107

`2-A362928(n+1)`
-/

namespace A064353.P10967546628758163107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362928 (n + 1)

end

end A064353.P10967546628758163107

/-! ## A064353.P1876813755050759155

`and(3, A362928(A000027(n+1)))`
-/

namespace A064353.P1876813755050759155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A362928 (A000027 (n + 1)).toNat)

end

end A064353.P1876813755050759155

/-! ## A064353.P4908436415692086367

`and(A122553(n), A362928(n+1))`
-/

namespace A064353.P4908436415692086367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A362928 (n + 1))

end

end A064353.P4908436415692086367

/-! ## A064353.P15123240498017270047

`and(3, A362928(A008619(2*n+1)))`
-/

namespace A064353.P15123240498017270047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A362928 (A008619 (2 * n + 1)).toNat)

end

end A064353.P15123240498017270047

/-! ## A064353.P14478747528235692611

`and(A010684(2*n+1), A362928(n+1))`
-/

namespace A064353.P14478747528235692611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 (2 * n + 1)) (A362928 (n + 1))

end

end A064353.P14478747528235692611

/-! ## A064353.P2515549720294422619

`and(A270028(A000040(n+5)), A362928(n+1))`
-/

namespace A064353.P2515549720294422619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270028 (A000040 (n + 5)).toNat) (A362928 (n + 1))

end

end A064353.P2515549720294422619

/-! ## A064353.P9717760004471664614

`and(A270028(A023590(n+1)), A362928(n+1))`
-/

namespace A064353.P9717760004471664614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270028 (A023590 (n + 1)).toNat) (A362928 (n + 1))

end

end A064353.P9717760004471664614

/-! ## A064353.P7291793136142779374

`and(A270028(A045414(n+1)), A362928(n+1))`
-/

namespace A064353.P7291793136142779374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270028 (A045414 (n + 1)).toNat) (A362928 (n + 1))

end

end A064353.P7291793136142779374

/-!
# A064354: Distinct values arising in the sequence of the least common multiples of the first n composite numbers.

The programs for A064354, there is no canonical definition to state claims against.
-/

/-! ## A064354.P17742576249463333785

`record[A025543(A025480(n))]`
-/

namespace A064354.P17742576249463333785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064354.P17742576249463333785

/-! ## A064354.P6395686409778152320

`record[A025543(A057979(n+1))]`
-/

namespace A064354.P6395686409778152320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A057979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064354.P6395686409778152320

/-! ## A064354.P13294542582341984303

`record[A025543(A277322(n+1))]`
-/

namespace A064354.P13294542582341984303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A277322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064354.P13294542582341984303

/-! ## A064354.P5467805413602519659

`record[A025543(A328397(n)-1)]`
-/

namespace A064354.P5467805413602519659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A328397 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064354.P5467805413602519659

/-! ## A064354.P11213964762644245096

`record[A025543(A153733(n)/2)]`
-/

namespace A064354.P11213964762644245096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064354.P11213964762644245096

/-! ## A064354.P11979377788391368875

`record[A025543(A002264(A153733(n)))]`
-/

namespace A064354.P11979377788391368875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A002264 (A153733 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064354.P11979377788391368875

/-! ## A064354.P8496629777060758120

`record[A025543(A004526(A328397(n)))]`
-/

namespace A064354.P8496629777060758120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A004526 (A328397 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064354.P8496629777060758120

/-! ## A064354.P8688801228155956848

`record[A025543(A230980(A063994(n+1)))]`
-/

namespace A064354.P8688801228155956848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A230980 (A063994 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064354.P8688801228155956848

/-!
# A064355: Number of subsets of {1,2,..n} that sum to 1 mod n.

The programs for A064355, the canonical program `A064355.P2322137359444716457` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064355 has offset 1).

The definition of A064355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064355.P2322137359444716457

`2*A000048(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A064355

/-- `2*A000048(n+1)` -/
def P2322137359444716457.Spec : Prop :=
  ∀ n, P2322137359444716457.a n = A064355 (n + 1)

theorem P2322137359444716457.correct : P2322137359444716457.Spec := by
  intro n
  simp only [A064355, Nat.add_sub_cancel]

end A064355

/-! ## A064355.P14678484273757632308

`2*Δ[A173278(n)]`
-/

namespace A064355.P14678484273757632308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A064355.P14678484273757632308

namespace A064355

/-- `2*Δ[A173278(n)]` -/
def P14678484273757632308.Spec : Prop :=
  ∀ n, P14678484273757632308.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P4785044834544430068

`2*A056303(A233583(n+2))`
-/

namespace A064355.P4785044834544430068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056303 (A233583 (n + 2)).toNat

end

end A064355.P4785044834544430068

namespace A064355

/-- `2*A056303(A233583(n+2))` -/
def P4785044834544430068.Spec : Prop :=
  ∀ n, P4785044834544430068.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P15417471939433936016

`A000799(n+1)-A114699(n)`
-/

namespace A064355.P15417471939433936016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - A114699 n

end

end A064355.P15417471939433936016

namespace A064355

/-- `A000799(n+1)-A114699(n)` -/
def P15417471939433936016.Spec : Prop :=
  ∀ n, P15417471939433936016.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P15525279739366585072

`2*(A056303(n+1)+A000007(n))`
-/

namespace A064355.P15525279739366585072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056303 (n + 1) + A000007 n)

end

end A064355.P15525279739366585072

namespace A064355

/-- `2*(A056303(n+1)+A000007(n))` -/
def P15525279739366585072.Spec : Prop :=
  ∀ n, P15525279739366585072.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P6024676574412332862

`2*(A042982(n+1)+A042981(n+1))`
-/

namespace A064355.P6024676574412332862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A042982 (n + 1) + A042981 (n + 1))

end

end A064355.P6024676574412332862

namespace A064355

/-- `2*(A042982(n+1)+A042981(n+1))` -/
def P6024676574412332862.Spec : Prop :=
  ∀ n, P6024676574412332862.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P9458865923427361794

`2*(A074030(n+1)+A074029(n+1))`
-/

namespace A064355.P9458865923427361794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A074030 (n + 1) + A074029 (n + 1))

end

end A064355.P9458865923427361794

namespace A064355

/-- `2*(A074030(n+1)+A074029(n+1))` -/
def P9458865923427361794.Spec : Prop :=
  ∀ n, P9458865923427361794.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P15837745512577112917

`∑{d}[n+1, A063776(#)*A087003((n+1)/#)]`
-/

namespace A064355.P15837745512577112917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063776 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064355.P15837745512577112917

namespace A064355

/-- `∑{d}[n+1, A063776(#)*A087003((n+1)/#)]` -/
def P15837745512577112917.Spec : Prop :=
  ∀ n, P15837745512577112917.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P11844142954132893479

`A000048(n+1)+A000048(A028310(n+1))`
-/

namespace A064355.P11844142954132893479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + A000048 (A028310 (n + 1)).toNat

end

end A064355.P11844142954132893479

namespace A064355

/-- `A000048(n+1)+A000048(A028310(n+1))` -/
def P11844142954132893479.Spec : Prop :=
  ∀ n, P11844142954132893479.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P7360128096632743434

`A000048(n+1)+A173278(n+1)-A173278(n)`
-/

namespace A064355.P7360128096632743434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A173278 (n + 1) - A173278 n)

end

end A064355.P7360128096632743434

namespace A064355

/-- `A000048(n+1)+A173278(n+1)-A173278(n)` -/
def P7360128096632743434.Spec : Prop :=
  ∀ n, P7360128096632743434.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P2991297512348213158

`A000048(n+1)+A042982(n+1)+A042981(n+1)`
-/

namespace A064355.P2991297512348213158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A042982 (n + 1) + A042981 (n + 1))

end

end A064355.P2991297512348213158

namespace A064355

/-- `A000048(n+1)+A042982(n+1)+A042981(n+1)` -/
def P2991297512348213158.Spec : Prop :=
  ∀ n, P2991297512348213158.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P16129120240971564628

`A000048(n+1)+A045686(n+1)+A045683(n+1)`
-/

namespace A064355.P16129120240971564628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A045686 (n + 1) + A045683 (n + 1))

end

end A064355.P16129120240971564628

namespace A064355

/-- `A000048(n+1)+A045686(n+1)+A045683(n+1)` -/
def P16129120240971564628.Spec : Prop :=
  ∀ n, P16129120240971564628.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P12056975407546584408

`A000048(n+1)+A074030(n+1)+A074029(n+1)`
-/

namespace A064355.P12056975407546584408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A074030 (n + 1) + A074029 (n + 1))

end

end A064355.P12056975407546584408

namespace A064355

/-- `A000048(n+1)+A074030(n+1)+A074029(n+1)` -/
def P12056975407546584408.Spec : Prop :=
  ∀ n, P12056975407546584408.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P16538026442989884801

`A000046(n+1)+A308706(n+1)+A000048(n+1)`
-/

namespace A064355.P16538026442989884801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) + (A308706 (n + 1) + A000048 (n + 1))

end

end A064355.P16538026442989884801

namespace A064355

/-- `A000046(n+1)+A308706(n+1)+A000048(n+1)` -/
def P16538026442989884801.Spec : Prop :=
  ∀ n, P16538026442989884801.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P3695124514007414073

`A000048(n+1)+A001037(n+1)-A051841(n+1)`
-/

namespace A064355.P3695124514007414073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A001037 (n + 1) - A051841 (n + 1))

end

end A064355.P3695124514007414073

namespace A064355

/-- `A000048(n+1)+A001037(n+1)-A051841(n+1)` -/
def P3695124514007414073.Spec : Prop :=
  ∀ n, P3695124514007414073.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P14059409562824195964

`A000016(n+1)+A000048(n+1)-A053734(n+1)`
-/

namespace A064355.P14059409562824195964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A000048 (n + 1) - A053734 (n + 1))

end

end A064355.P14059409562824195964

namespace A064355

/-- `A000016(n+1)+A000048(n+1)-A053734(n+1)` -/
def P14059409562824195964.Spec : Prop :=
  ∀ n, P14059409562824195964.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P7060173022202160199

`A000013(n+1)+A000048(n+1)-A115118(n+1)`
-/

namespace A064355.P7060173022202160199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) + (A000048 (n + 1) - A115118 (n + 1))

end

end A064355.P7060173022202160199

namespace A064355

/-- `A000013(n+1)+A000048(n+1)-A115118(n+1)` -/
def P7060173022202160199.Spec : Prop :=
  ∀ n, P7060173022202160199.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P4989279386349161524

`Δ[2*∑[A000048(n)]]`
-/

namespace A064355.P4989279386349161524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064355.P4989279386349161524

namespace A064355

/-- `Δ[2*∑[A000048(n)]]` -/
def P4989279386349161524.Spec : Prop :=
  ∀ n, P4989279386349161524.a n = A064355 (n + 1)

end A064355

/-! ## A064355.P15803301992756024606

`2/(n+1)*A011946(n+1)`
-/

namespace A064355.P15803301992756024606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A011946 (n + 1) : ℚ)

end

end A064355.P15803301992756024606

namespace A064355

/-- `2/(n+1)*A011946(n+1)` -/
def P15803301992756024606.Spec : Prop :=
  ∀ n, P15803301992756024606.a n = (A064355 (n + 1) : ℚ)

end A064355

/-! ## A064355.P4476202856649259954

`A045663(n+1)/(n+1)`
-/

namespace A064355.P4476202856649259954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A064355.P4476202856649259954

namespace A064355

/-- `A045663(n+1)/(n+1)` -/
def P4476202856649259954.Spec : Prop :=
  ∀ n, P4476202856649259954.a n = (A064355 (n + 1) : ℚ)

end A064355

/-!
# A064356: Dimension of J_(12n,n+1), the Jacobi form of weight 12n and index n+1.

The programs for A064356, there is no canonical definition to state claims against.
-/

/-! ## A064356.P15719716232662947629

`A073188(∑[∑[A008046(n+1)]])`
-/

namespace A064356.P15719716232662947629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064356.P15719716232662947629

/-! ## A064356.P2107299742464672977

`(n+2)²-A103921(A046932(n+1))`
-/

namespace A064356.P2107299742464672977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A103921 (A046932 (n + 1)).toNat

end

end A064356.P2107299742464672977

/-! ## A064356.P16556082568680451209

`(n+2)²-A055642(A126612(n+1))`
-/

namespace A064356.P16556082568680451209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A055642 (A126612 (n + 1)).toNat

end

end A064356.P16556082568680451209

/-! ## A064356.P9236389661728703976

`∑[2*n-A025441(A348396(n+1))+3]`
-/

namespace A064356.P9236389661728703976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A025441 (A348396 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064356.P9236389661728703976

/-! ## A064356.P6869652315963050820

`∑[A106501(∑[A381432(n+1)])]`
-/

namespace A064356.P6869652315963050820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381432 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106501 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064356.P6869652315963050820

/-!
# A064358: Inverse of sequence A052330 considered as a permutation of the natural numbers.

The programs for A064358, there is no canonical definition to state claims against.
-/

/-! ## A064358.P57211943096013266

`1+A052331(n+1)`
-/

namespace A064358.P57211943096013266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A052331 (n + 1)

end

end A064358.P57211943096013266

/-! ## A064358.P15438029828897173865

`A005941(A302024(n+1))`
-/

namespace A064358.P15438029828897173865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A302024 (n + 1)).toNat

end

end A064358.P15438029828897173865

/-! ## A064358.P17986668701505074998

`A331309(A160102(n+1))`
-/

namespace A064358.P17986668701505074998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331309 (A160102 (n + 1)).toNat

end

end A064358.P17986668701505074998

/-! ## A064358.P12288513356669124000

`A048675(2*A160102(n+1))`
-/

namespace A064358.P12288513356669124000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (2 * A160102 (n + 1)).toNat

end

end A064358.P12288513356669124000

/-! ## A064358.P18330983706851318371

`A048676(2*A160102(n+1))`
-/

namespace A064358.P18330983706851318371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048676 (2 * A160102 (n + 1)).toNat

end

end A064358.P18330983706851318371

/-! ## A064358.P17007724346962425517

`A334871(2*A160102(n+1))`
-/

namespace A064358.P17007724346962425517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (2 * A160102 (n + 1)).toNat

end

end A064358.P17007724346962425517

/-! ## A064358.P17919819594759809841

`∑{d}[A160102(n+1), A297108(#)]+1`
-/

namespace A064358.P17919819594759809841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d + 1

end

end A064358.P17919819594759809841

/-! ## A064358.P15675649839641162499

`∑{p}[A160102(n+1), A048676(#)]+1`
-/

namespace A064358.P15675649839641162499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p + 1

end

end A064358.P15675649839641162499

/-! ## A064358.P1940274020295479049

`∑{p}[A160102(n+1), A087207(#)]+1`
-/

namespace A064358.P1940274020295479049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p + 1

end

end A064358.P1940274020295479049

/-! ## A064358.P359050908229142316

`∑{p}[A160102(n+1), A156552(#)]+1`
-/

namespace A064358.P359050908229142316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p + 1

end

end A064358.P359050908229142316

/-!
# A064359: Inverse of sequence A052331 considered as a permutation of the natural numbers.

The programs for A064359, there is no canonical definition to state claims against.
-/

/-! ## A064359.P78289213049427849

`Δ[(floor(log2(n))+2)*a(n-2^floor(log2(n)))]+a(n-1)` with `a(0)=1`
-/

namespace A064359.P78289213049427849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.log 2 n + 2) * f1 (n - 2 ^ Nat.log 2 n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A064359.P78289213049427849

/-! ## A064359.P14759437742113126589

`A052330(n+1)-1`
-/

namespace A064359.P14759437742113126589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (n + 1) - 1

end

end A064359.P14759437742113126589

/-! ## A064359.P1732392113333778868

`A059900(n+1)-1`
-/

namespace A064359.P1732392113333778868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059900 (n + 1) - 1

end

end A064359.P1732392113333778868

/-! ## A064359.P15673391065698508278

`A121663(n+1)-1`
-/

namespace A064359.P15673391065698508278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (n + 1) - 1

end

end A064359.P15673391065698508278

/-! ## A064359.P6223271153491075353

`A344535(n+1)-1`
-/

namespace A064359.P6223271153491075353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344535 (n + 1) - 1

end

end A064359.P6223271153491075353

/-!
# A064361: Numbers k such that prime(k)^2 + k is prime.

The programs for A064361, there is no canonical definition to state claims against.
-/

/-! ## A064361.P15027405188088156941

`A000720(p?[A228828(n+1)])`
-/

namespace A064361.P15027405188088156941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064361.P15027405188088156941

/-! ## A064361.P3592794556969536455

`A061395(p?[A228828(n+1)])`
-/

namespace A064361.P3592794556969536455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064361.P3592794556969536455

/-! ## A064361.P2647086462225733418

`A000720(floor(sqrt(A212304(n+1))))`
-/

namespace A064361.P2647086462225733418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A212304 (n + 1))).toNat

end

end A064361.P2647086462225733418

/-! ## A064361.P3911709102914900742

`A000720(record[A020639(A228828(n+1))])`
-/

namespace A064361.P3911709102914900742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A228828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064361.P3911709102914900742

/-! ## A064361.P18132311238966595358

`A303753(p?[A228828(n+1)])`
-/

namespace A064361.P18132311238966595358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064361.P18132311238966595358

/-! ## A064361.P12287904035295703951

`A058933(p?[A228828(n+1)])`
-/

namespace A064361.P12287904035295703951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064361.P12287904035295703951

/-! ## A064361.P1665759402221048000

`A344616(p?[A228828(n+1)])`
-/

namespace A064361.P1665759402221048000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064361.P1665759402221048000

/-! ## A064361.P8095034754511206843

`A003963(p?[A228828(n+1)])`
-/

namespace A064361.P8095034754511206843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064361.P8095034754511206843

/-! ## A064361.P14254272197503211141

`A026233(p?[A228828(n+1)])`
-/

namespace A064361.P14254272197503211141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064361.P14254272197503211141

/-! ## A064361.P6105940885058818750

`A049084(p?[A228828(n+1)])`
-/

namespace A064361.P6105940885058818750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064361.P6105940885058818750

/-!
# A064362: Numbers k such that no Lucas number is a multiple of k.

The programs for A064362, there is no canonical definition to state claims against.
-/

/-! ## A064362.P18120966644520161816

`comp[A065156(n+1)-1]+1`
-/

namespace A064362.P18120966644520161816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064362.P18120966644520161816

/-! ## A064362.P14326629701955823106

`lt[A223486(n+1), 0]+1`
-/

namespace A064362.P14326629701955823106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064362.P14326629701955823106

/-! ## A064362.P17727764464092504387

`eq[1, abs(A223486(A028310(n)))]`
-/

namespace A064362.P17727764464092504387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A223486 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064362.P17727764464092504387

/-! ## A064362.P8466366054725058026

`eq[A223486(n+1)+1, A020761(n)]+1`
-/

namespace A064362.P8466366054725058026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064362.P8466366054725058026

/-! ## A064362.P10037224863469875667

`eq[char[A065156(n+1)], A000007(n)]`
-/

namespace A064362.P10037224863469875667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064362.P10037224863469875667

/-! ## A064362.P9730075078832257576

`lt[2*A223486(A028310(n)), A057428(n)]`
-/

namespace A064362.P9730075078832257576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A223486 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064362.P9730075078832257576

/-! ## A064362.P3761904530543760303

`eq[A209615(n+1)², A223486(A028310(n))²]`
-/

namespace A064362.P3761904530543760303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064362.P3761904530543760303

/-! ## A064362.P8387191481809009278

`eq[A000079(n)%2, char[A065156(n+1)]]`
-/

namespace A064362.P8387191481809009278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A064362.P8387191481809009278

/-!
# A064363: Number of 2 X 2 regular integer matrices with elements from {0,...,n} up to row and column permutation.

The programs for A064363, the canonical program `A064363.P10112196850495095681` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064363 has offset 0).

The definition of A064363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064363.P17100929693002779400

`((n+1)*(n^3+3*n²+4*n+1)-A059306(n))/4`
-/

namespace A064363.P17100929693002779400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n ^ 3 + 3 * n ^ 2 + 4 * n + 1) : ℤ) - A059306 n : ℚ) / 4

end

end A064363.P17100929693002779400

namespace A064363

/-- `((n+1)*(n^3+3*n²+4*n+1)-A059306(n))/4` -/
def P17100929693002779400.Spec : Prop :=
  ∀ n, P17100929693002779400.a n = (A064363 n : ℚ)

end A064363

/-! ## A064363.P10112196850495095681

`∑[∑[3*n²+2]-1]-A064276(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064363

/-- `∑[∑[3*n²+2]-1]-A064276(n)` -/
def P10112196850495095681.Spec : Prop :=
  ∀ n, P10112196850495095681.a n = A064363 n

theorem P10112196850495095681.correct : P10112196850495095681.Spec := by
  intro n
  simp only [A064363]

end A064363

/-! ## A064363.P9407804943379354231

`∑[∑[3*n²+2]-1]-∑[A209295(n)+1+n]`
-/

namespace A064363.P9407804943379354231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A064363.P9407804943379354231

namespace A064363

/-- `∑[∑[3*n²+2]-1]-∑[A209295(n)+1+n]` -/
def P9407804943379354231.Spec : Prop :=
  ∀ n, P9407804943379354231.a n = A064363 n

end A064363

/-! ## A064363.P10952836002189065924

`abs(A039623(n+1)-A064276(n))`
-/

namespace A064363.P10952836002189065924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039623 (n + 1) - A064276 n|

end

end A064363.P10952836002189065924

namespace A064363

/-- `abs(A039623(n+1)-A064276(n))` -/
def P10952836002189065924.Spec : Prop :=
  ∀ n, P10952836002189065924.a n = A064363 n

end A064363

/-! ## A064363.P7638203691445733329

`abs(∑[A059270(n)]+(n+1)²-A064276(n))`
-/

namespace A064363.P7638203691445733329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ) - A064276 n|

end

end A064363.P7638203691445733329

namespace A064363

/-- `abs(∑[A059270(n)]+(n+1)²-A064276(n))` -/
def P7638203691445733329.Spec : Prop :=
  ∀ n, P7638203691445733329.a n = A064363 n

end A064363

/-! ## A064363.P15576531620828658056

`abs(A064276(n)-(A176060(n)+∑[(n+1)²]))`
-/

namespace A064363.P15576531620828658056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064276 n - (A176060 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A064363.P15576531620828658056

namespace A064363

/-- `abs(A064276(n)-(A176060(n)+∑[(n+1)²]))` -/
def P15576531620828658056.Spec : Prop :=
  ∀ n, P15576531620828658056.a n = A064363 n

end A064363

/-!
# A064364: Positive integers sorted by A001414(n), the sum of their prime divisors, as the major key and n as the minor key.

The programs for A064364, there is no canonical definition to state claims against.
-/

/-! ## A064364.P2453522182381706317

`A269855(lt[A318393(3*n+5), A043514(n+1)])`
-/

namespace A064364.P2453522182381706317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318393 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064364.P2453522182381706317

/-! ## A064364.P8257010134579812029

`A269855(lt[A318393(3*n+5), A049328(n+1)])`
-/

namespace A064364.P8257010134579812029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318393 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064364.P8257010134579812029

/-! ## A064364.P492114597007292656

`A269855(lt[A318393(3*n+5), A112819(n+1)])`
-/

namespace A064364.P492114597007292656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318393 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064364.P492114597007292656

/-! ## A064364.P6117462687652433735

`A269855(lt[A318393(3*n+5), A057335(3*n+2)])`
-/

namespace A064364.P6117462687652433735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318393 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064364.P6117462687652433735

/-!
# A064365: a(0) = 0; thereafter a(n) = a(n-1)-prime(n) if positive and new, otherwise a(n) = a(n-1)+prime(n), where prime(n) is the n-th prime.

The programs for A064365, there is no canonical definition to state claims against.
-/

/-! ## A064365.P15957045410947825361

`floor(A006509(n+1)-A006509(n+1)/A092315(n+1))`
-/

namespace A064365.P15957045410947825361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006509 (n + 1) : ℚ) - (A006509 (n + 1) : ℚ) / (A092315 (n + 1) : ℚ)⌋

end

end A064365.P15957045410947825361

/-!
# A064366: a(n) = binomial(sigma(n), phi(n)).

The programs for A064366, the canonical program `A064366.P10580496515755947541` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064366 has offset 1).

The definition of A064366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064366.P10580496515755947541

`C(A000203(n+1), A000010(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A064366

/-- `C(A000203(n+1), A000010(n+1))` -/
def P10580496515755947541.Spec : Prop :=
  ∀ n, (P10580496515755947541.a n : ℤ) = A064366 (n + 1)

theorem P10580496515755947541.correct : P10580496515755947541.Spec := by
  intro n
  simp only [A064366, Nat.add_sub_cancel]

end A064366

/-! ## A064366.P15152380846360297940

`C(∑{d}[n+1, #], (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A064366.P15152380846360297940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A064366.P15152380846360297940

namespace A064366

/-- `C(∑{d}[n+1, #], (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P15152380846360297940.Spec : Prop :=
  ∀ n, (P15152380846360297940.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P9789921842530713891

`C(∑{d}[n+1, #], A109606(n+1)+1)`
-/

namespace A064366.P9789921842530713891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (A109606 (n + 1) + 1).toNat

end

end A064366.P9789921842530713891

namespace A064366

/-- `C(∑{d}[n+1, #], A109606(n+1)+1)` -/
def P9789921842530713891.Spec : Prop :=
  ∀ n, (P9789921842530713891.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P11418776054485689426

`C(∑{d}[n+1, #], A039649(n+1)-1)`
-/

namespace A064366.P11418776054485689426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (A039649 (n + 1) - 1).toNat

end

end A064366.P11418776054485689426

namespace A064366

/-- `C(∑{d}[n+1, #], A039649(n+1)-1)` -/
def P11418776054485689426.Spec : Prop :=
  ∀ n, (P11418776054485689426.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P17321461116075224601

`C(∑{d}[n+1, #], Δ[A206297(n+1)/2])`
-/

namespace A064366.P17321461116075224601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)).toNat

end

end A064366.P17321461116075224601

namespace A064366

/-- `C(∑{d}[n+1, #], Δ[A206297(n+1)/2])` -/
def P17321461116075224601.Spec : Prop :=
  ∀ n, (P17321461116075224601.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P11829411948793091085

`C(∑{d}[n+1, #], ∑{d}[n+1, (n+1)/#*A008683(#)])`
-/

namespace A064366.P11829411948793091085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))).toNat

end

end A064366.P11829411948793091085

namespace A064366

/-- `C(∑{d}[n+1, #], ∑{d}[n+1, (n+1)/#*A008683(#)])` -/
def P11829411948793091085.Spec : Prop :=
  ∀ n, (P11829411948793091085.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P17484743863796567362

`C(Δ[A160664(n)], A000010(n+1))`
-/

namespace A064366.P17484743863796567362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A000010 (n + 1)).toNat

end

end A064366.P17484743863796567362

namespace A064366

/-- `C(Δ[A160664(n)], A000010(n+1))` -/
def P17484743863796567362.Spec : Prop :=
  ∀ n, (P17484743863796567362.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P14216184022127439712

`C(A000203(n+1), A051612(n+1))`
-/

namespace A064366.P14216184022127439712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A051612 (n + 1)).toNat

end

end A064366.P14216184022127439712

namespace A064366

/-- `C(A000203(n+1), A051612(n+1))` -/
def P14216184022127439712.Spec : Prop :=
  ∀ n, (P14216184022127439712.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P8847724225395512629

`C(∑[A340793(n+1)], A000010(n+1))`
-/

namespace A064366.P8847724225395512629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A000010 (n + 1)).toNat

end

end A064366.P8847724225395512629

namespace A064366

/-- `C(∑[A340793(n+1)], A000010(n+1))` -/
def P8847724225395512629.Spec : Prop :=
  ∀ n, (P8847724225395512629.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P12970885957833357193

`C(A000203(n+1), A067541(2*n+1))`
-/

namespace A064366.P12970885957833357193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A067541 (2 * n + 1)).toNat

end

end A064366.P12970885957833357193

namespace A064366

/-- `C(A000203(n+1), A067541(2*n+1))` -/
def P12970885957833357193.Spec : Prop :=
  ∀ n, (P12970885957833357193.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P15468336798713374771

`C(A245092(2*n+1), A000010(n+1))`
-/

namespace A064366.P15468336798713374771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245092 (2 * n + 1)).toNat (A000010 (n + 1)).toNat

end

end A064366.P15468336798713374771

namespace A064366

/-- `C(A245092(2*n+1), A000010(n+1))` -/
def P15468336798713374771.Spec : Prop :=
  ∀ n, (P15468336798713374771.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P12587602921692845509

`C(A000203(n+1), A349137(2*n+1))`
-/

namespace A064366.P12587602921692845509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A349137 (2 * n + 1)).toNat

end

end A064366.P12587602921692845509

namespace A064366

/-- `C(A000203(n+1), A349137(2*n+1))` -/
def P12587602921692845509.Spec : Prop :=
  ∀ n, (P12587602921692845509.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P14432272878193374028

`C(∑{d}[n+1, #], A049633(n)-A049632(n))`
-/

namespace A064366.P14432272878193374028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (A049633 n - A049632 n).toNat

end

end A064366.P14432272878193374028

namespace A064366

/-- `C(∑{d}[n+1, #], A049633(n)-A049632(n))` -/
def P14432272878193374028.Spec : Prop :=
  ∀ n, (P14432272878193374028.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P13519001404403292035

`C(A245092(2*n+1), A109606(n+1)+1)`
-/

namespace A064366.P13519001404403292035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245092 (2 * n + 1)).toNat (A109606 (n + 1) + 1).toNat

end

end A064366.P13519001404403292035

namespace A064366

/-- `C(A245092(2*n+1), A109606(n+1)+1)` -/
def P13519001404403292035.Spec : Prop :=
  ∀ n, (P13519001404403292035.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P854550013944659283

`C(A245092(2*n+1), A039649(n+1)-1)`
-/

namespace A064366.P854550013944659283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245092 (2 * n + 1)).toNat (A039649 (n + 1) - 1).toNat

end

end A064366.P854550013944659283

namespace A064366

/-- `C(A245092(2*n+1), A039649(n+1)-1)` -/
def P854550013944659283.Spec : Prop :=
  ∀ n, (P854550013944659283.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P1215545158511236357

`C(A001065(n+1)+n+1, A000010(n+1))`
-/

namespace A064366.P1215545158511236357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001065 (n + 1) + (n + 1 : ℤ)).toNat (A000010 (n + 1)).toNat

end

end A064366.P1215545158511236357

namespace A064366

/-- `C(A001065(n+1)+n+1, A000010(n+1))` -/
def P1215545158511236357.Spec : Prop :=
  ∀ n, (P1215545158511236357.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P13555146148247678721

`C(A064987(n+1)/(n+1), A000010(n+1))`
-/

namespace A064366.P13555146148247678721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat (A000010 (n + 1)).toNat

end

end A064366.P13555146148247678721

namespace A064366

/-- `C(A064987(n+1)/(n+1), A000010(n+1))` -/
def P13555146148247678721.Spec : Prop :=
  ∀ n, (P13555146148247678721.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P16909769682846781744

`C(A245092(2*n+1), Δ[A206297(n+1)/2])`
-/

namespace A064366.P16909769682846781744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245092 (2 * n + 1)).toNat (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A064366.P16909769682846781744

namespace A064366

/-- `C(A245092(2*n+1), Δ[A206297(n+1)/2])` -/
def P16909769682846781744.Spec : Prop :=
  ∀ n, (P16909769682846781744.a n : ℤ) = A064366 (n + 1)

end A064366

/-! ## A064366.P243909401797339612

`C(A064987(n+1)/(n+1), A109606(n+1)+1)`
-/

namespace A064366.P243909401797339612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat (A109606 (n + 1) + 1).toNat

end

end A064366.P243909401797339612

namespace A064366

/-- `C(A064987(n+1)/(n+1), A109606(n+1)+1)` -/
def P243909401797339612.Spec : Prop :=
  ∀ n, (P243909401797339612.a n : ℤ) = A064366 (n + 1)

end A064366

/-!
# A064367: a(n) = 2^n mod prime(n).

The programs for A064367, the canonical program `A064367.P11420721315555496674` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064367 has offset 1).

The definition of A064367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1))%A000040(n+1)` (program `A064367.P11420721315555496674`, by `A064367.P11420721315555496674.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064367.P11420721315555496674

`(2^(n+1))%A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064367

/-- `(2^(n+1))%A000040(n+1)` -/
def P11420721315555496674.Spec : Prop :=
  ∀ n, P11420721315555496674.a n = A064367 (n + 1)

theorem P11420721315555496674.correct : P11420721315555496674.Spec := by
  intro n
  simp only [A064367, Nat.add_sub_cancel]

end A064367

/-! ## A064367.P10519322072550896850

`A192324(n+1)+A158388(n)`
-/

namespace A064367.P10519322072550896850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192324 (n + 1) + A158388 n

end

end A064367.P10519322072550896850

namespace A064367

/-- `A192324(n+1)+A158388(n)` -/
def P10519322072550896850.Spec : Prop :=
  ∀ n, P10519322072550896850.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P6685674332638312514

`A192324(n+1)-A153881(n+1)`
-/

namespace A064367.P6685674332638312514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192324 (n + 1) - A153881 (n + 1)

end

end A064367.P6685674332638312514

namespace A064367

/-- `A192324(n+1)-A153881(n+1)` -/
def P6685674332638312514.Spec : Prop :=
  ∀ n, P6685674332638312514.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P12055423710199855989

`(2^(n+1))%p?[A001057(n)]`
-/

namespace A064367.P12055423710199855989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ (n + 1) : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A064367.P12055423710199855989

namespace A064367

/-- `(2^(n+1))%p?[A001057(n)]` -/
def P12055423710199855989.Spec : Prop :=
  ∀ n, P12055423710199855989.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P290210197610755579

`(2^n+2^n)%record[A006530(n+2)]`
-/

namespace A064367.P290210197610755579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n + 2 ^ n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A064367.P290210197610755579

namespace A064367

/-- `(2^n+2^n)%record[A006530(n+2)]` -/
def P290210197610755579.Spec : Prop :=
  ∀ n, P290210197610755579.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P12253959395813558177

`A198633(n)%A006005(n+1)`
-/

namespace A064367.P12253959395813558177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198633 n) (A006005 (n + 1))

end

end A064367.P12253959395813558177

namespace A064367

/-- `A198633(n)%A006005(n+1)` -/
def P12253959395813558177.Spec : Prop :=
  ∀ n, P12253959395813558177.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P5671649492732476649

`A000079(n+1)%Δ[A007504(n)]`
-/

namespace A064367.P5671649492732476649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 1)) (f1 (n + 1) - f1 n)

end

end A064367.P5671649492732476649

namespace A064367

/-- `A000079(n+1)%Δ[A007504(n)]` -/
def P5671649492732476649.Spec : Prop :=
  ∀ n, P5671649492732476649.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P7712164184345355927

`A151821(n+1)%A006005(n+1)`
-/

namespace A064367.P7712164184345355927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151821 (n + 1)) (A006005 (n + 1))

end

end A064367.P7712164184345355927

namespace A064367

/-- `A151821(n+1)%A006005(n+1)` -/
def P7712164184345355927.Spec : Prop :=
  ∀ n, P7712164184345355927.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P17329397789193521555

`A011782(n+2)%A006005(n+1)`
-/

namespace A064367.P17329397789193521555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 2)) (A006005 (n + 1))

end

end A064367.P17329397789193521555

namespace A064367

/-- `A011782(n+2)%A006005(n+1)` -/
def P17329397789193521555.Spec : Prop :=
  ∀ n, P17329397789193521555.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P9321053918902081412

`(2*A000079(n))%record[A014963(n+2)]`
-/

namespace A064367.P9321053918902081412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000079 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A064367.P9321053918902081412

namespace A064367

/-- `(2*A000079(n))%record[A014963(n+2)]` -/
def P9321053918902081412.Spec : Prop :=
  ∀ n, P9321053918902081412.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P16617227637481528263

`A016116(2*(n+1))%p?[A015919(n+1)]`
-/

namespace A064367.P16617227637481528263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016116 (2 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A064367.P16617227637481528263

namespace A064367

/-- `A016116(2*(n+1))%p?[A015919(n+1)]` -/
def P16617227637481528263.Spec : Prop :=
  ∀ n, P16617227637481528263.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P6846519286348682358

`A029744(2*(n+1))%record[A020639(n+2)]`
-/

namespace A064367.P6846519286348682358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029744 (2 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A064367.P6846519286348682358

namespace A064367

/-- `A029744(2*(n+1))%record[A020639(n+2)]` -/
def P6846519286348682358.Spec : Prop :=
  ∀ n, P6846519286348682358.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P13940829129622774874

`A137206(2*n+1)%record[A014963(n+2)]`
-/

namespace A064367.P13940829129622774874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137206 (2 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A064367.P13940829129622774874

namespace A064367

/-- `A137206(2*n+1)%record[A014963(n+2)]` -/
def P13940829129622774874.Spec : Prop :=
  ∀ n, P13940829129622774874.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P101641231685592115

`A016116(2*n+3)%eq[n, A093868(n+1)]`
-/

namespace A064367.P101641231685592115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016116 (2 * n + 3)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A064367.P101641231685592115

namespace A064367

/-- `A016116(2*n+3)%eq[n, A093868(n+1)]` -/
def P101641231685592115.Spec : Prop :=
  ∀ n, P101641231685592115.a n = A064367 (n + 1)

end A064367

/-! ## A064367.P13058040839172259764

`A072946(2*n+1)%A008578(n+2)`
-/

namespace A064367.P13058040839172259764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072946 (2 * n + 1)) (A008578 (n + 2))

end

end A064367.P13058040839172259764

namespace A064367

/-- `A072946(2*n+1)%A008578(n+2)` -/
def P13058040839172259764.Spec : Prop :=
  ∀ n, P13058040839172259764.a n = A064367 (n + 1)

end A064367

/-!
# A064368: Number of 2 X 2 symmetric singular matrices with entries from {0,...,n}.

The programs for A064368, the canonical program `A064368.P11239250656650870174` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064368 has offset 0).

The definition of A064368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064368.P10634904249376981498

`∑[a(A292144(n))+2]` with `a(0)=1`
-/

namespace A064368.P10634904249376981498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A292144 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064368.P10634904249376981498

namespace A064368

/-- `∑[a(A292144(n))+2]` -/
def P10634904249376981498.Spec : Prop :=
  ∀ n, (P10634904249376981498.a n : ℤ) = A064368 n

end A064368

/-! ## A064368.P11239250656650870174

`ceil(A211422(n)/4+n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064368

/-- `ceil(A211422(n)/4+n)` -/
def P11239250656650870174.Spec : Prop :=
  ∀ n, P11239250656650870174.a n = A064368 n

theorem P11239250656650870174.correct : P11239250656650870174.Spec := by
  intro n
  simp only [A064368]

end A064368

/-! ## A064368.P1337411680025762333

`sqrt(A008833(4*n))+a(n-1)+1` with `a(0)=1`
-/

namespace A064368.P1337411680025762333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A008833 (4 * n) : ℝ) + (a (n - 1) + 1)

end

end A064368.P1337411680025762333

namespace A064368

/-- `sqrt(A008833(4*n))+a(n-1)+1` -/
def P1337411680025762333.Spec : Prop :=
  ∀ n, P1337411680025762333.a n = (A064368 n : ℝ)

end A064368

/-! ## A064368.P12268980496381885656

`A132189(A028310(n))+A016777(n)`
-/

namespace A064368.P12268980496381885656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132189 (A028310 n).toNat + A016777 n

end

end A064368.P12268980496381885656

namespace A064368

/-- `A132189(A028310(n))+A016777(n)` -/
def P12268980496381885656.Spec : Prop :=
  ∀ n, P12268980496381885656.a n = A064368 n

end A064368

/-! ## A064368.P17474542750573492

`∑[or(1, A000188(A008574(n)))]`
-/

namespace A064368.P17474542750573492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000188 (A008574 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064368.P17474542750573492

namespace A064368

/-- `∑[or(1, A000188(A008574(n)))]` -/
def P17474542750573492.Spec : Prop :=
  ∀ n, P17474542750573492.a n = A064368 n

end A064368

/-! ## A064368.P9961880921117878064

`A008621(A211422(n))+n`
-/

namespace A064368.P9961880921117878064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A211422 n).toNat + (n : ℤ)

end

end A064368.P9961880921117878064

namespace A064368

/-- `A008621(A211422(n))+n` -/
def P9961880921117878064.Spec : Prop :=
  ∀ n, P9961880921117878064.a n = A064368 n

end A064368

/-! ## A064368.P17556749172234963390

`A003602(A211422(n)+1)+n`
-/

namespace A064368.P17556749172234963390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A211422 n + 1).toNat + (n : ℤ)

end

end A064368.P17556749172234963390

namespace A064368

/-- `A003602(A211422(n)+1)+n` -/
def P17556749172234963390.Spec : Prop :=
  ∀ n, P17556749172234963390.a n = A064368 n

end A064368

/-! ## A064368.P752121973103879026

`A059169(A211422(n)+2)+n`
-/

namespace A064368.P752121973103879026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A211422 n + 2).toNat + (n : ℤ)

end

end A064368.P752121973103879026

namespace A064368

/-- `A059169(A211422(n)+2)+n` -/
def P752121973103879026.Spec : Prop :=
  ∀ n, P752121973103879026.a n = A064368 n

end A064368

/-! ## A064368.P10753447187350941932

`A178804(A211422(n)+2)+n`
-/

namespace A064368.P10753447187350941932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A211422 n + 2).toNat + (n : ℤ)

end

end A064368.P10753447187350941932

namespace A064368

/-- `A178804(A211422(n)+2)+n` -/
def P10753447187350941932.Spec : Prop :=
  ∀ n, P10753447187350941932.a n = A064368 n

end A064368

/-!
# A064370: Zero, together with positive numbers k such that prime(k) - k is a square.

The programs for A064370, there is no canonical definition to state claims against.
-/

/-! ## A064370.P6111423658812215991

`eq[1, A007913(A008578(n+1)-n)]`
-/

namespace A064370.P6111423658812215991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064370.P6111423658812215991

/-! ## A064370.P6113422772770545046

`eq[1, A278515(A162177(n+1))]`
-/

namespace A064370.P6113422772770545046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278515 (A162177 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064370.P6113422772770545046

/-! ## A064370.P3405992411434442810

`eq[0, A003285(A008578(n+1)-n)]`
-/

namespace A064370.P3405992411434442810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064370.P3405992411434442810

/-! ## A064370.P10018552635314596942

`eq[1, A010052(A008578(n+1)-n)]`
-/

namespace A064370.P10018552635314596942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064370.P10018552635314596942

/-! ## A064370.P5260421264871127851

`eq[2, A000122(A008578(n+1)-n)]`
-/

namespace A064370.P5260421264871127851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064370.P5260421264871127851

/-!
# A064371: Zero, together with positive numbers k such that prime(k) + k is a square.

The programs for A064371, there is no canonical definition to state claims against.
-/

/-! ## A064371.P12875377738979090497

`eq[1, A007913(A008578(n+1)+n)]`
-/

namespace A064371.P12875377738979090497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008578 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064371.P12875377738979090497

/-! ## A064371.P3642452728174126659

`eq[0, val(A000005(A158611(n+2)+n), 2)]`
-/

namespace A064371.P3642452728174126659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (A158611 (n + 2) + (n : ℤ)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064371.P3642452728174126659

/-! ## A064371.P10613367352394957604

`lt[A158387(A090178(n+1)-1), 0]`
-/

namespace A064371.P10613367352394957604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (A090178 (n + 1) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A064371.P10613367352394957604

/-! ## A064371.P16763703542006353661

`record[A049084(A073945(n+2))]`
-/

namespace A064371.P16763703542006353661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A073945 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064371.P16763703542006353661

/-! ## A064371.P2731792177804443830

`eq[1, A053186(A090178(n+1))]`
-/

namespace A064371.P2731792177804443830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A090178 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064371.P2731792177804443830

/-!
# A064372: Additive function a(n) defined by the recursive formula a(1)=1 and a(p^k)=a(k) for any prime p.

The programs for A064372, the canonical program `A064372.P556679171329570331` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064372 has offset 1).

The definition of A064372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064372.P4251097528579185169

`A106491(n+1)-A106490(n+1)`
-/

namespace A064372.P4251097528579185169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106491 (n + 1) - A106490 (n + 1)

end

end A064372.P4251097528579185169

namespace A064372

/-- `A106491(n+1)-A106490(n+1)` -/
def P4251097528579185169.Spec : Prop :=
  ∀ n, P4251097528579185169.a n = A064372 (n + 1)

end A064372

/-! ## A064372.P556679171329570331

`A000005(A000005(∑{e}[n+1, A001221(#)!]!))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064372

/-- `A000005(A000005(∑{e}[n+1, A001221(#)!]!))` -/
def P556679171329570331.Spec : Prop :=
  ∀ n, P556679171329570331.a n = A064372 (n + 1)

theorem P556679171329570331.correct : P556679171329570331.Spec := by
  intro n
  simp only [A064372, Nat.add_sub_cancel]

end A064372

/-! ## A064372.P15535856548575382135

`∑{e}[A233583(n+2), A323409(#)]`
-/

namespace A064372.P15535856548575382135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A323409 (Nat.factorization (f1 n).natAbs p)

end

end A064372.P15535856548575382135

namespace A064372

/-- `∑{e}[A233583(n+2), A323409(#)]` -/
def P15535856548575382135.Spec : Prop :=
  ∀ n, P15535856548575382135.a n = A064372 (n + 1)

end A064372

/-! ## A064372.P18197425877633776211

`A007305(∏{e}[(n+1)², A257249(#)])`
-/

namespace A064372.P18197425877633776211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (∏ p ∈ Nat.primeFactors (f1 n), A257249 (Nat.factorization (f1 n) p)).toNat

end

end A064372.P18197425877633776211

namespace A064372

/-- `A007305(∏{e}[(n+1)², A257249(#)])` -/
def P18197425877633776211.Spec : Prop :=
  ∀ n, P18197425877633776211.a n = A064372 (n + 1)

end A064372

/-! ## A064372.P14174455231075858067

`∏{e}[∏{e}[(n+1)², A290735(A164281(#))], #]`
-/

namespace A064372.P14174455231075858067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A290735 (A164281 (Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064372.P14174455231075858067

namespace A064372

/-- `∏{e}[∏{e}[(n+1)², A290735(A164281(#))], #]` -/
def P14174455231075858067.Spec : Prop :=
  ∀ n, (P14174455231075858067.a n : ℤ) = A064372 (n + 1)

end A064372

/-! ## A064372.P11233403360773214215

`∏{e}[∏{e}[n+1, A001223(#^#+1)], #]`
-/

namespace A064372.P11233403360773214215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A001223 (Nat.factorization (f2 n) p ^ Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064372.P11233403360773214215

namespace A064372

/-- `∏{e}[∏{e}[n+1, A001223(#^#+1)], #]` -/
def P11233403360773214215.Spec : Prop :=
  ∀ n, (P11233403360773214215.a n : ℤ) = A064372 (n + 1)

end A064372

/-! ## A064372.P9576747184072531671

`A106495(A091202(n+1))`
-/

namespace A064372.P9576747184072531671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (A091202 (n + 1)).toNat

end

end A064372.P9576747184072531671

namespace A064372

/-- `A106495(A091202(n+1))` -/
def P9576747184072531671.Spec : Prop :=
  ∀ n, P9576747184072531671.a n = A064372 (n + 1)

end A064372

/-! ## A064372.P14153735510584451250

`A001221(A045968(n+1))`
-/

namespace A064372.P14153735510584451250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A045968 (n + 1)).toNat

end

end A064372.P14153735510584451250

namespace A064372

/-- `A001221(A045968(n+1))` -/
def P14153735510584451250.Spec : Prop :=
  ∀ n, P14153735510584451250.a n = A064372 (n + 1)

end A064372

/-! ## A064372.P10437609204704081280

`gcd(A001221(n+1), A011774(n+1))`
-/

namespace A064372.P10437609204704081280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (n + 1)) (A011774 (n + 1))

end

end A064372.P10437609204704081280

namespace A064372

/-- `gcd(A001221(n+1), A011774(n+1))` -/
def P10437609204704081280.Spec : Prop :=
  ∀ n, (P10437609204704081280.a n : ℤ) = A064372 (n + 1)

end A064372

/-! ## A064372.P8659988076113036993

`gcd(A057405(n), A079553(n+1))`
-/

namespace A064372.P8659988076113036993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057405 n) (A079553 (n + 1))

end

end A064372.P8659988076113036993

namespace A064372

/-- `gcd(A057405(n), A079553(n+1))` -/
def P8659988076113036993.Spec : Prop :=
  ∀ n, (P8659988076113036993.a n : ℤ) = A064372 (n + 1)

end A064372

/-!
# A064375: Numbers n such that sigma_2(n) > phi(n)^3.

The programs for A064375, there is no canonical definition to state claims against.
-/

/-! ## A064375.P16908567050646137946

`A122957(comp[n²²])`
-/

namespace A064375.P16908567050646137946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122957 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A064375.P16908567050646137946

/-! ## A064375.P2850359949529290059

`∪[A037229(n), 6^(n+1)]`
-/

namespace A064375.P2850359949529290059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037229 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A064375.P2850359949529290059

/-! ## A064375.P15798552284904842657

`record[A032447(comp[30*n]+1)]`
-/

namespace A064375.P15798552284904842657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032447 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064375.P15798552284904842657

/-! ## A064375.P18090270341934246232

`lt[ϕ*n, A048785(n)+n/2]`
-/

namespace A064375.P18090270341934246232
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048785 n : ℚ) + (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A064375.P18090270341934246232

/-! ## A064375.P1962135021121483318

`lt[A007444(n+1), 2*n+1]+1`
-/

namespace A064375.P1962135021121483318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064375.P1962135021121483318

/-!
# A064376: Numbers n such that sigma_3(n) > phi(n)^4.

The programs for A064376, there is no canonical definition to state claims against.
-/

/-! ## A064376.P9112428670956892413

`lt[A048848(A253909(n)), n*A049820(3*(n+1))]`
-/

namespace A064376.P9112428670956892413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048848 (A253909 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049820 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064376.P9112428670956892413

/-! ## A064376.P1130325295594839573

`A055721(n+2)%A092013(n+1)`
-/

namespace A064376.P1130325295594839573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055721 (n + 2)) (A092013 (n + 1))

end

end A064376.P1130325295594839573

/-! ## A064376.P9244182595583896998

`A055721(n+2)+A000007(A001539(n))`
-/

namespace A064376.P9244182595583896998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055721 (n + 2) + A000007 (A001539 n).toNat

end

end A064376.P9244182595583896998

/-! ## A064376.P15528213520820071078

`A055721(n+2)+A055671(A001248(n+1))`
-/

namespace A064376.P15528213520820071078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055721 (n + 2) + A055671 (A001248 (n + 1)).toNat

end

end A064376.P15528213520820071078

/-! ## A064376.P18086811167316904255

`lcm(A001221(A028772(n+5)), A055721(n+2))`
-/

namespace A064376.P18086811167316904255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A028772 (n + 5)).toNat) (A055721 (n + 2))

end

end A064376.P18086811167316904255

/-!
# A064377: Numbers n such that sigma_4(n) > phi(n)^5.

The programs for A064377, there is no canonical definition to state claims against.
-/

/-! ## A064377.P16586219189137201934

`lt[A341072(A225530(n)), A301480(n+1)]`
-/

namespace A064377.P16586219189137201934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341072 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064377.P16586219189137201934

/-! ## A064377.P3177819284505595751

`lt[A319810(n+5), A319806(A319825(n+1))]`
-/

namespace A064377.P3177819284505595751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319810 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319806 (A319825 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064377.P3177819284505595751

/-! ## A064377.P3207324805703274576

`lt[5-2*a(n-1), A107722(n)]` with `a(0)=1`
-/

namespace A064377.P3207324805703274576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 - 2 * f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064377.P3207324805703274576

/-! ## A064377.P17887023799897485401

`lt[A143354(2*(n+1)), Δ[A019320(n)]]`
-/

namespace A064377.P17887023799897485401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143354 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064377.P17887023799897485401

/-! ## A064377.P2092139918598718417

`lt[A320778(n), A293606(A073200(n))]`
-/

namespace A064377.P2092139918598718417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 (A073200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064377.P2092139918598718417

/-!
# A064378: a(0) = 2, a(n) = 2^(n+1)*(n-1)! (n >= 1).

The programs for A064378, there is no canonical definition to state claims against.
-/

/-! ## A064378.P10483838789630849781

`∏[abs(2-n)+n]`
-/

namespace A064378.P10483838789630849781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A064378.P10483838789630849781

/-! ## A064378.P17721331459565482961

`record[n*a(n-2)]` with `a(0)=2, a(1)=4, a(2)=8, a(3)=1`
-/

namespace A064378.P17721331459565482961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 8, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064378.P17721331459565482961

/-! ## A064378.P7518144018412566763

`floor(∏[a(n-1)+2])` with `a(0)=2, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A064378.P7518144018412566763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A064378.P7518144018412566763

/-! ## A064378.P12662133959533519939

`ceil(∏[a(n-1)+2])` with `a(0)=2, a(1)=2, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A064378.P12662133959533519939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A064378.P12662133959533519939

/-! ## A064378.P9150583980453589241

`round(∏[a(n-1)+2])` with `a(0)=2, a(1)=2, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A064378.P9150583980453589241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A064378.P9150583980453589241

/-! ## A064378.P7407072562862431519

`2^(n+1)*abs(1-n)!`
-/

namespace A064378.P7407072562862431519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * Nat.factorial |1 - (n : ℤ)|.toNat

end

end A064378.P7407072562862431519

/-! ## A064378.P2228199369234973447

`lcm(2, ∏[a(n-1)+2])` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A064378.P2228199369234973447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A064378.P2228199369234973447

/-! ## A064378.P14002507823080078049

`2*(n-1)*a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A064378.P14002507823080078049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * (((n : ℤ) - 1) * a (n - 1))

end

end A064378.P14002507823080078049

/-! ## A064378.P2479877424690694363

`abs(1-n)!/2^-(n+1)`
-/

namespace A064378.P2479877424690694363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℚ) / (2 : ℚ) ^ (-(n + 1 : ℤ) : ℤ)

end

end A064378.P2479877424690694363

/-! ## A064378.P4468743331393529313

`2*∏[A300576(n+1)]`
-/

namespace A064378.P4468743331393529313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A064378.P4468743331393529313

/-!
# A064379: Irregular triangle whose n-th row is a list of numbers that are infinitarily relatively prime to n (n = 2, 3, ...).

The programs for A064379, there is no canonical definition to state claims against.
-/

/-! ## A064379.P3225460635567784127

`A002260(∑[A185358(A005252(n))])`
-/

namespace A064379.P3225460635567784127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185358 (A005252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064379.P3225460635567784127

/-! ## A064379.P136110880057093498

`A002260(∑[A055229(A171864(n+1))])`
-/

namespace A064379.P136110880057093498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A171864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064379.P136110880057093498

/-! ## A064379.P610494260205754779

`A002260(∑[A304042(A342810(n+1))])`
-/

namespace A064379.P610494260205754779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A342810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064379.P610494260205754779

/-! ## A064379.P3137950776752939507

`A002260(∑[A051903(abs(1-n)*n^3+1)]+1)`
-/

namespace A064379.P3137950776752939507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (|1 - (n : ℤ)| * (n ^ 3 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A064379.P3137950776752939507

/-! ## A064379.P7360203021985585418

`A002260(lt[A180512(n+2), A016766(n)])`
-/

namespace A064379.P7360203021985585418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180512 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064379.P7360203021985585418

/-!
# A064380: Number of numbers less than n that are infinitarily relatively prime to n; the infinitary Euler phi function.

The programs for A064380, there is no canonical definition to state claims against.
-/

/-! ## A064380.P12861509059844617689

`A185079(n+2)/A049417(n+2)`
-/

namespace A064380.P12861509059844617689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185079 (n + 2) : ℚ) / (A049417 (n + 2) : ℚ)

end

end A064380.P12861509059844617689

/-! ## A064380.P2857352088494661351

`A185079(n+2)/Δ[A327566(n+1)]`
-/

namespace A064380.P2857352088494661351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327566 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185079 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A064380.P2857352088494661351

/-! ## A064380.P16432463217368742206

`Δ[eq[1, A064379(n+2)]]`
-/

namespace A064380.P16432463217368742206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064379 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A064380.P16432463217368742206

/-! ## A064380.P15018174047814524120

`A186970(A077168(n)+1)`
-/

namespace A064380.P15018174047814524120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186970 (A077168 n + 1).toNat

end

end A064380.P15018174047814524120

/-! ## A064380.P4374952458160034794

`A186970(A043320(n+2))`
-/

namespace A064380.P4374952458160034794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186970 (A043320 (n + 2)).toNat

end

end A064380.P4374952458160034794

/-!
# A064381: Number of subsets of {2,...,n} such that the product of their elements is congruent to 0 (mod n+1).

The programs for A064381, there is no canonical definition to state claims against.
-/

/-! ## A064381.P5707108665245865634

`A005843(A061355(n))%(2^n)`
-/

namespace A064381.P5707108665245865634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A061355 n).toNat) (2 ^ n : ℤ)

end

end A064381.P5707108665245865634

/-! ## A064381.P12111742060640689950

`A340515(A253563(n))%(2^n)`
-/

namespace A064381.P12111742060640689950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340515 (A253563 n).toNat) (2 ^ n : ℤ)

end

end A064381.P12111742060640689950

/-! ## A064381.P9316852450841092455

`A004277(A061355(n))%A000079(n)`
-/

namespace A064381.P9316852450841092455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A061355 n).toNat) (A000079 n)

end

end A064381.P9316852450841092455

/-! ## A064381.P16459946503392798720

`A181821(n+1)*A280522(A020005(n))`
-/

namespace A064381.P16459946503392798720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1) * A280522 (A020005 n).toNat

end

end A064381.P16459946503392798720

/-!
# A064382: Number of ways to put numbers 1, 2, ..., n*(n+1)/2 in a triangular array of n rows in such a way that each row is increasing or decreasing.

The programs for A064382, the canonical program `A064382.P16123904375842693300` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064382 has offset 1).

The definition of A064382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064382.P16123904375842693300

`2^n*A022915(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064382

/-- `2^n*A022915(n+1)` -/
def P16123904375842693300.Spec : Prop :=
  ∀ n, P16123904375842693300.a n = A064382 (n + 1)

theorem P16123904375842693300.correct : P16123904375842693300.Spec := by
  intro n
  simp only [A064382, Nat.add_sub_cancel]

end A064382

/-! ## A064382.P9130399203166204395

`2*C(∑[n+1], n+1)*a(n-1)` with `a(0)=1`
-/

namespace A064382.P9130399203166204395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1) * a (n - 1))

end

end A064382.P9130399203166204395

namespace A064382

/-- `2*C(∑[n+1], n+1)*a(n-1)` -/
def P9130399203166204395.Spec : Prop :=
  ∀ n, (P9130399203166204395.a n : ℤ) = A064382 (n + 1)

end A064382

/-! ## A064382.P16172061575499232167

`A022915(n+1)*A256894(A000124(n+1))`
-/

namespace A064382.P16172061575499232167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022915 (n + 1) * A256894 (A000124 (n + 1)).toNat

end

end A064382.P16172061575499232167

namespace A064382

/-- `A022915(n+1)*A256894(A000124(n+1))` -/
def P16172061575499232167.Spec : Prop :=
  ∀ n, P16172061575499232167.a n = A064382 (n + 1)

end A064382

/-!
# A064383: Integers n >= 1 such that n divides 0!-1!+2!-3!+4!-...+(-1)^{n-1}(n-1)!.

The programs for A064383, there is no canonical definition to state claims against.
-/

/-! ## A064383.P17275215151362781844

`∪[2*A064392(n+1), A064392(n+1)]`
-/

namespace A064383.P17275215151362781844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064383.P17275215151362781844

/-! ## A064383.P9631228342516451481

`record[gcd(n+1, A176787(n+1))]`
-/

namespace A064383.P9631228342516451481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A176787 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064383.P9631228342516451481

/-! ## A064383.P5764635744363918336

`record[(1-A176787(n+1))*A000027(n+1)]`
-/

namespace A064383.P5764635744363918336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176787 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064383.P5764635744363918336

/-! ## A064383.P4477210924379215613

`record[(1-A176787(n+1))*A007948(n+1)]`
-/

namespace A064383.P4477210924379215613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176787 (n + 1)) * A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064383.P4477210924379215613

/-! ## A064383.P15379023932692445273

`eq[A000038(n), A176787(A028310(n))]`
-/

namespace A064383.P15379023932692445273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176787 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064383.P15379023932692445273

/-!
# A064384: Primes p such that p divides 0!-1!+2!-3!+...+(-1)^{p-1}(p-1)!.

The programs for A064384, there is no canonical definition to state claims against.
-/

/-! ## A064384.P10861266785900735853

`a(n-1)` with `a(0)=2, a(1)=5, a(2)=13, a(3)=37, a(4)=463`
-/

namespace A064384.P10861266785900735853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 13, 37, 463] fun n a =>
  a (n - 1)

end

end A064384.P10861266785900735853

/-!
# A064385: a(n) = 2*5^n - 3.

The programs for A064385, the canonical program `A064385.P1222445988099951119` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064385 has offset 1).

The definition of A064385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*5^(n+1)-3` (program `A064385.P1222445988099951119`, by `A064385.P1222445988099951119.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064385.P1222445988099951119

`2*5^(n+1)-3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064385

/-- `2*5^(n+1)-3` -/
def P1222445988099951119.Spec : Prop :=
  ∀ n, P1222445988099951119.a n = A064385 (n + 1)

theorem P1222445988099951119.correct : P1222445988099951119.Spec := by
  intro n
  simp only [A064385, Nat.add_sub_cancel]

end A064385

/-! ## A064385.P6594988543788686975

`ogf((7+5x)/(1-6x+5x^2))`
-/

namespace A064385.P6594988543788686975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 5] [1, -6, 5] n

end

end A064385.P6594988543788686975

namespace A064385

/-- `ogf((7+5x)/(1-6x+5x^2))` -/
def P6594988543788686975.Spec : Prop :=
  ∀ n, P6594988543788686975.a n = A064385 (n + 1)

end A064385

/-! ## A064385.P8245334329328372769

`∑[5*a(n-1)]` with `a(0)=7, a(1)=40`
-/

namespace A064385.P8245334329328372769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 40] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064385.P8245334329328372769

namespace A064385

/-- `∑[5*a(n-1)]` -/
def P8245334329328372769.Spec : Prop :=
  ∀ n, (P8245334329328372769.a n : ℤ) = A064385 (n + 1)

end A064385

/-! ## A064385.P6503618909424008822

`abs(lcm(2, 5^(n+1))-3)`
-/

namespace A064385.P6503618909424008822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 2 (5 ^ (n + 1)) : ℤ) - 3|

end

end A064385.P6503618909424008822

namespace A064385

/-- `abs(lcm(2, 5^(n+1))-3)` -/
def P6503618909424008822.Spec : Prop :=
  ∀ n, P6503618909424008822.a n = A064385 (n + 1)

end A064385

/-! ## A064385.P7751388224923292149

`floor(a(n-1)+4*(a(n-1)+3))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A064385.P7751388224923292149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 4 * (a (n - 1) + 3)

end

end A064385.P7751388224923292149

namespace A064385

/-- `floor(a(n-1)+4*(a(n-1)+3))` -/
def P7751388224923292149.Spec : Prop :=
  ∀ n, (P7751388224923292149.a n : ℤ) = A064385 (n + 1)

theorem P7751388224923292149.correct : P7751388224923292149.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A064385, Nat.add_sub_cancel, A064385.P7751388224923292149.a, A064385.P1222445988099951119.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A064385, Nat.add_sub_cancel, A064385.P7751388224923292149.a, A064385.P1222445988099951119.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A064385

/-! ## A064385.P3560927736011321431

`abs(3-A020729(n+1))`
-/

namespace A064385.P3560927736011321431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A020729 (n + 1)|

end

end A064385.P3560927736011321431

namespace A064385

/-- `abs(3-A020729(n+1))` -/
def P3560927736011321431.Spec : Prop :=
  ∀ n, P3560927736011321431.a n = A064385 (n + 1)

end A064385

/-! ## A064385.P11258736735363590151

`abs(3-A020699(n+2))`
-/

namespace A064385.P11258736735363590151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A020699 (n + 2)|

end

end A064385.P11258736735363590151

namespace A064385

/-- `abs(3-A020699(n+2))` -/
def P11258736735363590151.Spec : Prop :=
  ∀ n, P11258736735363590151.a n = A064385 (n + 1)

end A064385

/-! ## A064385.P4711071998674272331

`abs(3-10*A000351(n))`
-/

namespace A064385.P4711071998674272331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 10 * A000351 n|

end

end A064385.P4711071998674272331

namespace A064385

/-- `abs(3-10*A000351(n))` -/
def P4711071998674272331.Spec : Prop :=
  ∀ n, P4711071998674272331.a n = A064385 (n + 1)

end A064385

/-! ## A064385.P1273734913597892881

`abs(Δ[A121177(n+2)]-3)`
-/

namespace A064385.P1273734913597892881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - 3|

end

end A064385.P1273734913597892881

namespace A064385

/-- `abs(Δ[A121177(n+2)]-3)` -/
def P1273734913597892881.Spec : Prop :=
  ∀ n, P1273734913597892881.a n = A064385 (n + 1)

end A064385

/-! ## A064385.P4510465304687405525

`abs(2-A181287(A004767(n)+3))`
-/

namespace A064385.P4510465304687405525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A181287 (A004767 n + 3).toNat|

end

end A064385.P4510465304687405525

namespace A064385

/-- `abs(2-A181287(A004767(n)+3))` -/
def P4510465304687405525.Spec : Prop :=
  ∀ n, P4510465304687405525.a n = A064385 (n + 1)

end A064385

/-! ## A064385.P3562097026461626468

`record[A081655(A000188(n+1))-2]`
-/

namespace A064385.P3562097026461626468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081655 (A000188 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064385.P3562097026461626468

namespace A064385

/-- `record[A081655(A000188(n+1))-2]` -/
def P3562097026461626468.Spec : Prop :=
  ∀ n, P3562097026461626468.a n = A064385 (n + 1)

end A064385

/-!
# A064386: Numbers of the form 2^k+1 or 4^k-2^k+1.

The programs for A064386, the canonical program `A064386.P17847876676253479796` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064386 has offset 1).

The definition of A064386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064386.P3524240832061361848

`∪[A000051(n), A020515(n)]`
-/

namespace A064386.P3524240832061361848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020515 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064386.P3524240832061361848

namespace A064386

/-- `∪[A000051(n), A020515(n)]` -/
def P3524240832061361848.Spec : Prop :=
  ∀ n, (P3524240832061361848.a n : ℤ) = A064386 (n + 1)

end A064386

/-! ## A064386.P4089513766930934615

`∪[A020515(n), A094373(n)]`
-/

namespace A064386.P4089513766930934615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064386.P4089513766930934615

namespace A064386

/-- `∪[A020515(n), A094373(n)]` -/
def P4089513766930934615.Spec : Prop :=
  ∀ n, (P4089513766930934615.a n : ℤ) = A064386 (n + 1)

end A064386

/-! ## A064386.P17847876676253479796

`a(n-1)+6*a(n-3)-6*a(n-4)-8*a(n-6)+8*a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9, a(5)=13, a(6)=17, a(7)=33, a(8)=57`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064386

/-- `a(n-1)+6*a(n-3)-6*a(n-4)-8*a(n-6)+8*a(n-7)` -/
def P17847876676253479796.Spec : Prop :=
  ∀ n, P17847876676253479796.a n = A064386 (n + 1)

theorem P17847876676253479796.correct : P17847876676253479796.Spec := by
  intro n
  simp only [A064386, Nat.add_sub_cancel]

end A064386

/-! ## A064386.P11143801510043341500

`∩[A064390(n+1), A270812(n+1)]`
-/

namespace A064386.P11143801510043341500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064386.P11143801510043341500

namespace A064386

/-- `∩[A064390(n+1), A270812(n+1)]` -/
def P11143801510043341500.Spec : Prop :=
  ∀ n, (P11143801510043341500.a n : ℤ) = A064386 (n + 1)

end A064386

/-! ## A064386.P12290170236888944224

`∩[A014657(n+1), A064390(n+1)]`
-/

namespace A064386.P12290170236888944224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064386.P12290170236888944224

namespace A064386

/-- `∩[A014657(n+1), A064390(n+1)]` -/
def P12290170236888944224.Spec : Prop :=
  ∀ n, (P12290170236888944224.a n : ℤ) = A064386 (n + 1)

end A064386

/-!
# A064388: Variation (3) on Recamán's sequence (A005132): set s (the step size) initially equal to 2; to get a(n), we first try to subtract s from a(n-1): a(n) = a(n-1)-s if positive and not already in the sequence, in which case we change s to s+1; if not, a(n) = a(n-1)+s+i, where i >= 0 is the smallest number such that a(n-1)+s+i has not already appeared and now we change s to s+i+1.

The programs for A064388, there is no canonical definition to state claims against.
-/

/-! ## A064388.P10115804254063384091

`A064387(n+1)-A185245(A185215(n))`
-/

namespace A064388.P10115804254063384091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064387 (n + 1) - A185245 (A185215 n).toNat

end

end A064388.P10115804254063384091

/-!
# A064389: 

The programs for A064389, there is no canonical definition to state claims against.
-/

/-! ## A064389.P1069834019309823216

`A064387(n+1)%A001359(A003215(n))`
-/

namespace A064389.P1069834019309823216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064387 (n + 1)) (A001359 (A003215 n).toNat)

end

end A064389.P1069834019309823216

/-! ## A064389.P10420272774434652891

`C(A064387(n+1), A003557(A084696(n+1)))`
-/

namespace A064389.P10420272774434652891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A064387 (n + 1)).toNat (A003557 (A084696 (n + 1)).toNat).toNat

end

end A064389.P10420272774434652891

/-! ## A064389.P3286421799164597957

`A064387(n+1)+A000007(A220168(n+1))`
-/

namespace A064389.P3286421799164597957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064387 (n + 1) + A000007 (A220168 (n + 1)).toNat

end

end A064389.P3286421799164597957

/-! ## A064389.P7350390812603403777

`A064387(n+1)*A297159(A142130(n+1))`
-/

namespace A064389.P7350390812603403777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064387 (n + 1) * A297159 (A142130 (n + 1)).toNat

end

end A064389.P7350390812603403777

/-! ## A064389.P2622591113915412364

`A064387(n+1)+A000035(A001749(2*n+5))`
-/

namespace A064389.P2622591113915412364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064387 (n + 1) + A000035 (A001749 (2 * n + 5)).toNat

end

end A064389.P2622591113915412364

/-! ## A064389.P7485355622085615384

`A064387(n+1)%A007484(n)`
-/

namespace A064389.P7485355622085615384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064387 (n + 1)) (A007484 n)

end

end A064389.P7485355622085615384

/-! ## A064389.P11355648180613832882

`A064387(n+1)+A000007(A005728(n))`
-/

namespace A064389.P11355648180613832882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064387 (n + 1) + A000007 (A005728 n).toNat

end

end A064389.P11355648180613832882

/-! ## A064389.P9459858051225815800

`A335446(A119288(n+1))+A064387(n+1)`
-/

namespace A064389.P9459858051225815800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A119288 (n + 1)).toNat + A064387 (n + 1)

end

end A064389.P9459858051225815800

/-! ## A064389.P18131791557583584242

`A064387(n+1)+A000007(A044597(n+1))`
-/

namespace A064389.P18131791557583584242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064387 (n + 1) + A000007 (A044597 (n + 1)).toNat

end

end A064389.P18131791557583584242

/-! ## A064389.P18423402037908124348

`xor(A000007(A044621(n+3)), A064387(n+1))`
-/

namespace A064389.P18423402037908124348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A044621 (n + 3)).toNat) (A064387 (n + 1))

end

end A064389.P18423402037908124348

/-! ## A064389.P2773870454230270634

`A064387(A000027(n+1))%A130430(2*n+2)`
-/

namespace A064389.P2773870454230270634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064387 (A000027 (n + 1)).toNat) (A130430 (2 * n + 2))

end

end A064389.P2773870454230270634

/-! ## A064389.P4001609511182773710

`A064387(n+1)+A000989(A005836(3*n+2))`
-/

namespace A064389.P4001609511182773710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064387 (n + 1) + A000989 (A005836 (3 * n + 2)).toNat

end

end A064389.P4001609511182773710

/-! ## A064389.P5040468123263301252

`A064387(n+1)*A218403(A061239(n+1))`
-/

namespace A064389.P5040468123263301252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064387 (n + 1) * A218403 (A061239 (n + 1)).toNat

end

end A064389.P5040468123263301252

/-! ## A064389.P13098075504987120444

`and(A064387(n+1), A103454(n))`
-/

namespace A064389.P13098075504987120444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064387 (n + 1)) (A103454 n)

end

end A064389.P13098075504987120444

/-! ## A064389.P14205714355332669604

`and(A064387(n+1), A263806(n))`
-/

namespace A064389.P14205714355332669604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064387 (n + 1)) (A263806 n)

end

end A064389.P14205714355332669604

/-! ## A064389.P7358533330931318465

`A064387(A335299(A335300(n+1)))`
-/

namespace A064389.P7358533330931318465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064387 (A335299 (A335300 (n + 1)).toNat).toNat

end

end A064389.P7358533330931318465

/-! ## A064389.P3693398089583948722

`and(A064387(n+1), A083420(n))`
-/

namespace A064389.P3693398089583948722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064387 (n + 1)) (A083420 n)

end

end A064389.P3693398089583948722

/-! ## A064389.P15627791799744329298

`and(A064387(n+1), A186942(n))`
-/

namespace A064389.P15627791799744329298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064387 (n + 1)) (A186942 n)

end

end A064389.P15627791799744329298

/-! ## A064389.P7564846730455129803

`and(A064387(n+1), A267816(n))`
-/

namespace A064389.P7564846730455129803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064387 (n + 1)) (A267816 n)

end

end A064389.P7564846730455129803

/-! ## A064389.P10547281673160320717

`and(A064387(n+1), A267941(n))`
-/

namespace A064389.P10547281673160320717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064387 (n + 1)) (A267941 n)

end

end A064389.P10547281673160320717

/-!
# A064390: Numbers of the form 2^k*(2^n+1) or 2^k*(4^n-2^n+1).

The programs for A064390, there is no canonical definition to state claims against.
-/

/-! ## A064390.P15170478527942036630

`lt[A143773(A019565(n)), A025586(n+1)]`
-/

namespace A064390.P15170478527942036630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143773 (A019565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064390.P15170478527942036630

/-! ## A064390.P4000543238818885706

`lt[A008619(A003987(n)), A357622(2*n)]`
-/

namespace A064390.P4000543238818885706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003987 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064390.P4000543238818885706

/-! ## A064390.P4702823682267895315

`lt[A284002(n), dr(A168264(n+1))]`
-/

namespace A064390.P4702823682267895315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A168264 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A064390.P4702823682267895315

/-! ## A064390.P3019097362394188483

`eq[A086342(n), A140195(A001105(n))]`
-/

namespace A064390.P3019097362394188483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140195 (A001105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064390.P3019097362394188483

/-! ## A064390.P16730551152426823858

`lt[A160974(A134662(2*n)), A053828(n)]`
-/

namespace A064390.P16730551152426823858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160974 (A134662 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064390.P16730551152426823858

/-!
# A064391: Triangle T(n,k) with zeroth row {1} and row n for n >= 1 giving number of partitions of n with crank k, for -n <= k <= n.

The programs for A064391, there is no canonical definition to state claims against.
-/

/-! ## A064391.P10545346084384719486

`A190669(A190894(n+1)+37)`
-/

namespace A064391.P10545346084384719486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (A190894 (n + 1) + 37).toNat

end

end A064391.P10545346084384719486

/-! ## A064391.P6815919464294475005

`A087049(lcm(n, A273330(2*n)))`
-/

namespace A064391.P6815919464294475005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (Int.lcm (n : ℤ) (A273330 (2 * n)))

end

end A064391.P6815919464294475005

/-! ## A064391.P5166013061405138067

`A266155(A322193(n)+A064875(n))`
-/

namespace A064391.P5166013061405138067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266155 (A322193 n + A064875 n).toNat

end

end A064391.P5166013061405138067

/-! ## A064391.P18055697260681011825

`A025461(n)^A056169(A103314(n))`
-/

namespace A064391.P18055697260681011825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025461 n : ℚ) ^ (A056169 (A103314 n).toNat : ℤ)

end

end A064391.P18055697260681011825

/-! ## A064391.P499391279747005367

`A378550(A018068(n))`
-/

namespace A064391.P499391279747005367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (A018068 n).toNat

end

end A064391.P499391279747005367

/-!
# A064392: Numbers in A064383 that are squarefree.

The programs for A064392, there is no canonical definition to state claims against.
-/

/-! ## A064392.P1495819742698054688

`record[∏{p}[A064383(n+1), #]]`
-/

namespace A064392.P1495819742698054688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064383 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064392.P1495819742698054688

/-! ## A064392.P18322254376557172748

`record[A007913(A064383(n+1))]`
-/

namespace A064392.P18322254376557172748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A064383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064392.P18322254376557172748

/-! ## A064392.P2343765517750108447

`filter[A064383(n+1), A008966(#)]`
-/

namespace A064392.P2343765517750108447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A064392.P2343765517750108447

/-! ## A064392.P496056324443451307

`filter[A064383(n+1), A359374(#)]`
-/

namespace A064392.P496056324443451307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A064392.P496056324443451307

/-! ## A064392.P7417563579223509582

`filter[A064383(n+1), A359377(#)]`
-/

namespace A064392.P7417563579223509582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A064392.P7417563579223509582

/-!
# A064393: Numbers k such that the exponent of highest power of 2 dividing k! equals the largest prime <= k.

The programs for A064393, there is no canonical definition to state claims against.
-/

/-! ## A064393.P13054223215563279945

`filter[A064394(n+1), A005171(#)]`
-/

namespace A064393.P13054223215563279945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A064393.P13054223215563279945

/-! ## A064393.P16948055013278589871

`filter[A064394(n+1), A066247(#)]`
-/

namespace A064393.P16948055013278589871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A064393.P16948055013278589871

/-! ## A064393.P5373144552913963749

`∩[A064394(n+1), A091212(n+1)]`
-/

namespace A064393.P5373144552913963749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064393.P5373144552913963749

/-! ## A064393.P15890156034915355199

`∩[A002808(n+1), A064394(n+1)]`
-/

namespace A064393.P15890156034915355199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064393.P15890156034915355199

/-! ## A064393.P17166337447577288332

`∩[A018252(n+1), A064394(n+1)]`
-/

namespace A064393.P17166337447577288332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064393.P17166337447577288332

/-! ## A064393.P17010173562879041708

`∩[A064394(n+1), A141468(n+1)]`
-/

namespace A064393.P17010173562879041708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064393.P17010173562879041708

/-! ## A064393.P6675799605811594246

`∩[A064394(n+1), A065090(n+1)]`
-/

namespace A064393.P6675799605811594246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064393.P6675799605811594246

/-! ## A064393.P15908328785087748954

`∩[A064394(n+1), A171581(n+1)]`
-/

namespace A064393.P15908328785087748954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064393.P15908328785087748954

/-! ## A064393.P16179554968870703651

`∩[A064394(n+1), A173905(n+1)]`
-/

namespace A064393.P16179554968870703651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064393.P16179554968870703651

/-! ## A064393.P13783738927557657907

`eq[A000120(n), A007920(A210882(n+1))]`
-/

namespace A064393.P13783738927557657907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A210882 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064393.P13783738927557657907

/-! ## A064393.P12971354585251121685

`eq[A011371(n), A341516(A007918(n+1))]`
-/

namespace A064393.P12971354585251121685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341516 (A007918 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064393.P12971354585251121685

/-! ## A064393.P5407130622312649175

`eq[1, A011371(n)/A136548(n+1)]`
-/

namespace A064393.P5407130622312649175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011371 n : ℚ) / (A136548 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A064393.P5407130622312649175

/-! ## A064393.P7126389795956144894

`eq[n, A136548(n+1)+A000120(n)]`
-/

namespace A064393.P7126389795956144894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1) + A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064393.P7126389795956144894

/-! ## A064393.P10137057554595465973

`eq[n, A005187(n)-A136548(n+1)]`
-/

namespace A064393.P10137057554595465973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A136548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064393.P10137057554595465973

/-! ## A064393.P11146666433202513921

`eq[A026741(A011371(n)), A136548(n+1)]`
-/

namespace A064393.P11146666433202513921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A011371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064393.P11146666433202513921

/-!
# A064394: Numbers k such that the exponent of highest power of 2 dividing k! equals the largest prime < k.

The programs for A064394, there is no canonical definition to state claims against.
-/

/-! ## A064394.P18269746871008265646

`A064503(∑[log2(gcd(2, n))])+n%2`
-/

namespace A064394.P18269746871008265646
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064503 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A064394.P18269746871008265646

/-! ## A064394.P15222685491050808278

`A064503(A008619(n))+n%2`
-/

namespace A064394.P15222685491050808278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064503 (A008619 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A064394.P15222685491050808278

/-! ## A064394.P9147839201930267966

`∪[A064393(n+1), A064395(n+1)]`
-/

namespace A064394.P9147839201930267966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064394.P9147839201930267966

/-! ## A064394.P7988244632098281429

`∪[A064503(n+1)+1, A064503(n+1)]`
-/

namespace A064394.P7988244632098281429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064503 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064394.P7988244632098281429

/-! ## A064394.P6914888284517117610

`A064503(A008619(n))+A000035(n)`
-/

namespace A064394.P6914888284517117610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064503 (A008619 n).toNat + A000035 n

end

end A064394.P6914888284517117610

/-! ## A064394.P18328659250012545351

`A064503(A008619(n))+char[A005408(n)]`
-/

namespace A064394.P18328659250012545351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064503 (A008619 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A064394.P18328659250012545351

/-! ## A064394.P18298317814452873276

`A302555((-1)^n+3)+A064503(A008619(n))`
-/

namespace A064394.P18298317814452873276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302555 ((-1) ^ n + 3).toNat + A064503 (A008619 n).toNat

end

end A064394.P18298317814452873276

/-! ## A064394.P11141678261520266061

`A064503(A008619(n))+Δ[A004526(n)]`
-/

namespace A064394.P11141678261520266061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064503 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A064394.P11141678261520266061

/-! ## A064394.P7645343356519780083

`or(A000035(5*n), A064503(A008619(n)))`
-/

namespace A064394.P7645343356519780083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (5 * n)) (A064503 (A008619 n).toNat)

end

end A064394.P7645343356519780083

/-! ## A064394.P12628112978331997902

`eq[A011371(n), A341516(A007918(n))]`
-/

namespace A064394.P12628112978331997902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341516 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064394.P12628112978331997902

/-!
# A064395: Primes p for which the exponent of the highest power of 2 dividing p! is equal to prevprime(p).

The programs for A064395, there is no canonical definition to state claims against.
-/

/-! ## A064395.P2182028682283485473

`p?[A064393(n+1)+1]`
-/

namespace A064395.P2182028682283485473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064395.P2182028682283485473

/-! ## A064395.P3294041085133973686

`p?[A064394(n+1)]`
-/

namespace A064395.P3294041085133973686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064395.P3294041085133973686

/-! ## A064395.P9561915597382156164

`∩[A027699(n+1), A064394(n+1)]`
-/

namespace A064395.P9561915597382156164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P9561915597382156164

/-! ## A064395.P15284670853475801424

`∩[A064394(n+1), A091209(n+1)]`
-/

namespace A064395.P15284670853475801424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P15284670853475801424

/-! ## A064395.P684719686418797480

`∩[A064394(n+1), A243442(n+1)]`
-/

namespace A064395.P684719686418797480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P684719686418797480

/-! ## A064395.P7825250647936559124

`∩[A000040(n+1), A064394(n+1)]`
-/

namespace A064395.P7825250647936559124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P7825250647936559124

/-! ## A064395.P14386255009629870020

`∩[A006005(n+1), A064394(n+1)]`
-/

namespace A064395.P14386255009629870020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P14386255009629870020

/-! ## A064395.P9025225882775797816

`∩[A008578(n+1), A064394(n+1)]`
-/

namespace A064395.P9025225882775797816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P9025225882775797816

/-! ## A064395.P18215592090422060981

`∩[A045344(n+1), A064394(n+1)]`
-/

namespace A064395.P18215592090422060981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P18215592090422060981

/-! ## A064395.P16542358185013435906

`∩[A064394(n+1), A065091(n+1)]`
-/

namespace A064395.P16542358185013435906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P16542358185013435906

/-! ## A064395.P314130990812102452

`∩[A064394(n+1), A065396(n+1)]`
-/

namespace A064395.P314130990812102452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P314130990812102452

/-! ## A064395.P7978027313011786584

`∩[A064394(n+1), A070957(n+1)]`
-/

namespace A064395.P7978027313011786584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P7978027313011786584

/-! ## A064395.P15248453201911932541

`∩[A064394(n+1), A108719(n+1)]`
-/

namespace A064395.P15248453201911932541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P15248453201911932541

/-! ## A064395.P5631532961347496189

`∩[A064394(n+1), A116974(n+1)]`
-/

namespace A064395.P5631532961347496189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P5631532961347496189

/-! ## A064395.P541355349656938536

`∩[A064394(n+1), A138837(n+1)]`
-/

namespace A064395.P541355349656938536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P541355349656938536

/-! ## A064395.P1920974318770370988

`∩[A064394(n+1), A140475(n+1)]`
-/

namespace A064395.P1920974318770370988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P1920974318770370988

/-! ## A064395.P1344783771256257794

`∩[A064394(n+1), A158611(n+1)]`
-/

namespace A064395.P1344783771256257794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P1344783771256257794

/-! ## A064395.P9162121817785264504

`∩[A064394(n+1), A171577(n+1)]`
-/

namespace A064395.P9162121817785264504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P9162121817785264504

/-! ## A064395.P15095659498620883094

`∩[A064394(n+1), A182986(n+1)]`
-/

namespace A064395.P15095659498620883094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P15095659498620883094

/-! ## A064395.P7843001487120177806

`∩[A064394(n+1), A215848(n+1)]`
-/

namespace A064395.P7843001487120177806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064395.P7843001487120177806

/-!
# A064396: Primes p for which the exponent of the highest power of 2 dividing p! is equal to prevprime(prevprime(p)).

The programs for A064396, there is no canonical definition to state claims against.
-/

/-! ## A064396.P7958920070939135862

`∩[A098415(n+1), A376235(n+1)]`
-/

namespace A064396.P7958920070939135862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064396.P7958920070939135862

/-!
# A064397: Numbers k such that prime(k) + prime(k+1) is a square.

The programs for A064397, there is no canonical definition to state claims against.
-/

/-! ## A064397.P1607493341238758658

`A000720(A061275(n+1))`
-/

namespace A064397.P1607493341238758658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061275 (n + 1)).toNat

end

end A064397.P1607493341238758658

/-! ## A064397.P11717611341283572383

`A278114(A139013(n+1))`
-/

namespace A064397.P11717611341283572383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (A139013 (n + 1)).toNat

end

end A064397.P11717611341283572383

/-! ## A064397.P13653006467509586233

`A278114(A074924(n+1)/2)`
-/

namespace A064397.P13653006467509586233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (SequenceMachineLib.roundAway ((A074924 (n + 1) : ℚ) / 2)).toNat

end

end A064397.P13653006467509586233

/-! ## A064397.P6759672752841322012

`A278114(sqrt(A062703(n+1))/2)`
-/

namespace A064397.P6759672752841322012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (SequenceMachineLib.roundAway (Real.sqrt (A062703 (n + 1) : ℝ) / 2)).toNat

end

end A064397.P6759672752841322012

/-! ## A064397.P2752925622865547672

`∩[A132746(n+1), A278114(n+1)]`
-/

namespace A064397.P2752925622865547672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064397.P2752925622865547672

/-! ## A064397.P14646339474469312454

`A278114(A298462(n+1)%A074924(n+1))`
-/

namespace A064397.P14646339474469312454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (Int.tmod (A298462 (n + 1)) (A074924 (n + 1))).toNat

end

end A064397.P14646339474469312454

/-! ## A064397.P4383733088780382254

`A278114(gcd(A062703(n+1), A298462(n+1)))`
-/

namespace A064397.P4383733088780382254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (Int.gcd (A062703 (n + 1)) (A298462 (n + 1)))

end

end A064397.P4383733088780382254

/-! ## A064397.P1126257777243435776

`A278114(C(A074924(n+1), 2)%A074924(n+1))`
-/

namespace A064397.P1126257777243435776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (Int.tmod (Nat.choose (A074924 (n + 1)).toNat 2 : ℤ) (A074924 (n + 1))).toNat

end

end A064397.P1126257777243435776

/-!
# A064398: Numbers n such that p(n) + p(n+1) is a square and n is prime.

The programs for A064398, there is no canonical definition to state claims against.
-/

/-! ## A064398.P5881814862008288528

`p?[A064397(n+1)]`
-/

namespace A064398.P5881814862008288528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064398.P5881814862008288528

/-! ## A064398.P987514710561165347

`p?[A132746(n+2)]`
-/

namespace A064398.P987514710561165347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132746 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064398.P987514710561165347

/-! ## A064398.P5953684969898250519

`p?[record[A064397(A052938(n))]]`
-/

namespace A064398.P5953684969898250519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064397 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064398.P5953684969898250519

/-! ## A064398.P3521334839899169573

`p?[record[A064397(A291769(n))]]`
-/

namespace A064398.P3521334839899169573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064397 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064398.P3521334839899169573

/-! ## A064398.P1158708365041214206

`p?[record[A064397(A324347(n))]]`
-/

namespace A064398.P1158708365041214206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064397 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064398.P1158708365041214206

/-!
# A064399: Numbers k whose sum of digits exceeds the sum of the digits of k^2.

The programs for A064399, the canonical program `A064399.P18127450818113564184` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064399 has offset 1).

The definition of A064399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064399.P18127450818113564184

`lt[A004159(n), A007953(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A064399

/-- `lt[A004159(n), A007953(n)]` -/
def P18127450818113564184.Spec : Prop :=
  ∀ n, (P18127450818113564184.a n : ℤ) = A064399 (n + 1)

theorem P18127450818113564184.correct : P18127450818113564184.Spec := by
  intro n
  simp only [A064399, Nat.add_sub_cancel]

end A064399

/-! ## A064399.P7403245862869646057

`lt[A004159(n)², A067552(n)]`
-/

namespace A064399.P7403245862869646057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P7403245862869646057

namespace A064399

/-- `lt[A004159(n)², A067552(n)]` -/
def P7403245862869646057.Spec : Prop :=
  ∀ n, (P7403245862869646057.a n : ℤ) = A064399 (n + 1)

end A064399

/-! ## A064399.P14094032089823712413

`lt[A004159(n)², A118881(n)]`
-/

namespace A064399.P14094032089823712413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P14094032089823712413

namespace A064399

/-- `lt[A004159(n)², A118881(n)]` -/
def P14094032089823712413.Spec : Prop :=
  ∀ n, (P14094032089823712413.a n : ℤ) = A064399 (n + 1)

end A064399

/-! ## A064399.P1322646241681514219

`lt[n*A004159(n), A057147(n)]`
-/

namespace A064399.P1322646241681514219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P1322646241681514219

namespace A064399

/-- `lt[n*A004159(n), A057147(n)]` -/
def P1322646241681514219.Spec : Prop :=
  ∀ n, (P1322646241681514219.a n : ℤ) = A064399 (n + 1)

end A064399

/-! ## A064399.P4645411987971524493

`lt[n²-A224977(n), A007953(n)]`
-/

namespace A064399.P4645411987971524493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P4645411987971524493

namespace A064399

/-- `lt[n²-A224977(n), A007953(n)]` -/
def P4645411987971524493.Spec : Prop :=
  ∀ n, (P4645411987971524493.a n : ℤ) = A064399 (n + 1)

theorem P4645411987971524493.correct : P4645411987971524493.Spec := by
  intro n
  simp only [A064399, Nat.add_sub_cancel, A064399.P4645411987971524493.f1, A064399.P4645411987971524493.f2, A064399.P4645411987971524493.a, A064399.P18127450818113564184.f1, A064399.P18127450818113564184.f2, A064399.P18127450818113564184.a, A004159, A004159.P12894520007403696170.a, A007953, A007953.P3472751987379697826.a, A224977, A224977.P2433633673610591437.a, A000290, A000290.P12206242496348924484.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064399

/-! ## A064399.P8164809686639142336

`lt[(n²-A224977(n))², A067552(n)]`
-/

namespace A064399.P8164809686639142336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A224977 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P8164809686639142336

namespace A064399

/-- `lt[(n²-A224977(n))², A067552(n)]` -/
def P8164809686639142336.Spec : Prop :=
  ∀ n, (P8164809686639142336.a n : ℤ) = A064399 (n + 1)

end A064399

/-! ## A064399.P686224285583805643

`lt[(n²-A224977(n))², A118881(n)]`
-/

namespace A064399.P686224285583805643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A224977 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P686224285583805643

namespace A064399

/-- `lt[(n²-A224977(n))², A118881(n)]` -/
def P686224285583805643.Spec : Prop :=
  ∀ n, (P686224285583805643.a n : ℤ) = A064399 (n + 1)

end A064399

/-! ## A064399.P3052555298801530666

`lt[A007953(n)², A067552(n)+A007953(n)]`
-/

namespace A064399.P3052555298801530666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n + A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P3052555298801530666

namespace A064399

/-- `lt[A007953(n)², A067552(n)+A007953(n)]` -/
def P3052555298801530666.Spec : Prop :=
  ∀ n, (P3052555298801530666.a n : ℤ) = A064399 (n + 1)

end A064399

/-! ## A064399.P11651735918211000375

`lt[A004159(n)²*A004159(n), A118880(n)]`
-/

namespace A064399.P11651735918211000375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n ^ 2 * A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P11651735918211000375

namespace A064399

/-- `lt[A004159(n)²*A004159(n), A118880(n)]` -/
def P11651735918211000375.Spec : Prop :=
  ∀ n, (P11651735918211000375.a n : ℤ) = A064399 (n + 1)

end A064399

