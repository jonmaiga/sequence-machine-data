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
import Seq.B000.C011
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A029000: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^6)).

The programs for A029000, the canonical program `A029000.P12795243510521895474` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029000 has offset 0).

The definition of A029000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029000.P12795243510521895474

`∑[C(ceil(xor(1, n)/6)+1, 2)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029000

/-- `∑[C(ceil(xor(1, n)/6)+1, 2)]` -/
def P12795243510521895474.Spec : Prop :=
  ∀ n, (P12795243510521895474.a n : ℤ) = A029000 n

theorem P12795243510521895474.correct : P12795243510521895474.Spec := by
  intro n
  simp only [A029000]

end A029000

/-! ## A029000.P6744137392273696246

`a(n-1)+C(ceil(xor(1, n)/6)+1, 2)` with `a(0)=1`
-/

namespace A029000.P6744137392273696246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (⌈(Nat.xor 1 n : ℚ) / 6⌉ + 1).toNat 2

end

end A029000.P6744137392273696246

namespace A029000

/-- `a(n-1)+C(ceil(xor(1, n)/6)+1, 2)` -/
def P6744137392273696246.Spec : Prop :=
  ∀ n, (P6744137392273696246.a n : ℤ) = A029000 n

end A029000

/-! ## A029000.P16712409076734504261

`∑[A025796(n)]`
-/

namespace A029000.P16712409076734504261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P16712409076734504261

namespace A029000

/-- `∑[A025796(n)]` -/
def P16712409076734504261.Spec : Prop :=
  ∀ n, P16712409076734504261.a n = A029000 n

end A029000

/-! ## A029000.P52345740089491036

`∑[C(A103221(n)+1, 2)]`
-/

namespace A029000.P52345740089491036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A103221 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P52345740089491036

namespace A029000

/-- `∑[C(A103221(n)+1, 2)]` -/
def P52345740089491036.Spec : Prop :=
  ∀ n, (P52345740089491036.a n : ℤ) = A029000 n

end A029000

/-! ## A029000.P2006740385420275017

`∑[A000217(ceil(xor(1, n)/6))]`
-/

namespace A029000.P2006740385420275017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(Nat.xor 1 n : ℚ) / 6⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P2006740385420275017

namespace A029000

/-- `∑[A000217(ceil(xor(1, n)/6))]` -/
def P2006740385420275017.Spec : Prop :=
  ∀ n, P2006740385420275017.a n = A029000 n

end A029000

/-! ## A029000.P15318521584616334489

`A086159(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029000.P15318521584616334489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A086159 n + a (n - 2)

end

end A029000.P15318521584616334489

namespace A029000

/-- `A086159(n)+a(n-2)` -/
def P15318521584616334489.Spec : Prop :=
  ∀ n, P15318521584616334489.a n = A029000 n

end A029000

/-! ## A029000.P17047860765142486904

`A028289(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029000.P17047860765142486904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A028289 n - a (n - 3)

end

end A029000.P17047860765142486904

namespace A029000

/-- `A028289(n)-a(n-3)` -/
def P17047860765142486904.Spec : Prop :=
  ∀ n, P17047860765142486904.a n = A029000 n

end A029000

/-! ## A029000.P7488554942935918760

`∑[A000217(A103221(n))]`
-/

namespace A029000.P7488554942935918760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P7488554942935918760

namespace A029000

/-- `∑[A000217(A103221(n))]` -/
def P7488554942935918760.Spec : Prop :=
  ∀ n, P7488554942935918760.a n = A029000 n

end A029000

/-! ## A029000.P2306049260005109201

`∑[A000217(∑[A115360(n)])]`
-/

namespace A029000.P2306049260005109201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P2306049260005109201

namespace A029000

/-- `∑[A000217(∑[A115360(n)])]` -/
def P2306049260005109201.Spec : Prop :=
  ∀ n, P2306049260005109201.a n = A029000 n

end A029000

/-! ## A029000.P14676425801030584880

`∑[A161680(A103221(n)+1)]`
-/

namespace A029000.P14676425801030584880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A103221 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P14676425801030584880

namespace A029000

/-- `∑[A161680(A103221(n)+1)]` -/
def P14676425801030584880.Spec : Prop :=
  ∀ n, P14676425801030584880.a n = A029000 n

end A029000

/-! ## A029000.P17044118774291124680

`∑[C(A026806(n+2), 2)]`
-/

namespace A029000.P17044118774291124680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026806 (n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P17044118774291124680

namespace A029000

/-- `∑[C(A026806(n+2), 2)]` -/
def P17044118774291124680.Spec : Prop :=
  ∀ n, (P17044118774291124680.a n : ℤ) = A029000 n

end A029000

/-! ## A029000.P10434250375055066487

`∑[A000217(A008615(n+2))]`
-/

namespace A029000.P10434250375055066487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008615 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P10434250375055066487

namespace A029000

/-- `∑[A000217(A008615(n+2))]` -/
def P10434250375055066487.Spec : Prop :=
  ∀ n, P10434250375055066487.a n = A029000 n

end A029000

/-! ## A029000.P463463781802005629

`∑[A161680(A026806(n+2))]`
-/

namespace A029000.P463463781802005629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A026806 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P463463781802005629

namespace A029000

/-- `∑[A161680(A026806(n+2))]` -/
def P463463781802005629.Spec : Prop :=
  ∀ n, P463463781802005629.a n = A029000 n

end A029000

/-! ## A029000.P15207763606686052269

`A008719(2*n)`
-/

namespace A029000.P15207763606686052269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008719 (2 * n)

end

end A029000.P15207763606686052269

namespace A029000

/-- `A008719(2*n)` -/
def P15207763606686052269.Spec : Prop :=
  ∀ n, P15207763606686052269.a n = A029000 n

end A029000

/-! ## A029000.P5409981655351213506

`A029057(2*n)`
-/

namespace A029000.P5409981655351213506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (2 * n)

end

end A029000.P5409981655351213506

namespace A029000

/-- `A029057(2*n)` -/
def P5409981655351213506.Spec : Prop :=
  ∀ n, P5409981655351213506.a n = A029000 n

end A029000

/-! ## A029000.P14397178186852945352

`A029142(2*n)`
-/

namespace A029000.P14397178186852945352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (2 * n)

end

end A029000.P14397178186852945352

namespace A029000

/-- `A029142(2*n)` -/
def P14397178186852945352.Spec : Prop :=
  ∀ n, P14397178186852945352.a n = A029000 n

end A029000

/-! ## A029000.P15950102523420415797

`∑[A025834(2*n)]`
-/

namespace A029000.P15950102523420415797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025834 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P15950102523420415797

namespace A029000

/-- `∑[A025834(2*n)]` -/
def P15950102523420415797.Spec : Prop :=
  ∀ n, P15950102523420415797.a n = A029000 n

end A029000

/-! ## A029000.P14675033461972055092

`∑[A090176(2*n)]`
-/

namespace A029000.P14675033461972055092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090176 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P14675033461972055092

namespace A029000

/-- `∑[A090176(2*n)]` -/
def P14675033461972055092.Spec : Prop :=
  ∀ n, P14675033461972055092.a n = A029000 n

end A029000

/-! ## A029000.P7007920947490001259

`A025834(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029000.P7007920947490001259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025834 (n + n) + a (n - 1)

end

end A029000.P7007920947490001259

namespace A029000

/-- `A025834(n+n)+a(n-1)` -/
def P7007920947490001259.Spec : Prop :=
  ∀ n, P7007920947490001259.a n = A029000 n

end A029000

/-! ## A029000.P13444303774903544166

`A090176(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029000.P13444303774903544166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090176 (n + n) + a (n - 1)

end

end A029000.P13444303774903544166

namespace A029000

/-- `A090176(n+n)+a(n-1)` -/
def P13444303774903544166.Spec : Prop :=
  ∀ n, P13444303774903544166.a n = A029000 n

end A029000

/-!
# A029001: Expansion of 1/((1-x)(1-x^2)(1-x^3)(1-x^7)).

The programs for A029001, the canonical program `A029001.P9690577901768069254` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029001 has offset 0).

The definition of A029001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029001.P9690577901768069254

`∑[A008671(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029001

/-- `∑[A008671(n)]` -/
def P9690577901768069254.Spec : Prop :=
  ∀ n, P9690577901768069254.a n = A029001 n

theorem P9690577901768069254.correct : P9690577901768069254.Spec := by
  intro n
  simp only [A029001]

end A029001

/-! ## A029001.P13327695322682264631

`A025768(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029001.P13327695322682264631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025768 n + a (n - 2)

end

end A029001.P13327695322682264631

namespace A029001

/-- `A025768(n)+a(n-2)` -/
def P13327695322682264631.Spec : Prop :=
  ∀ n, P13327695322682264631.a n = A029001 n

end A029001

/-! ## A029001.P15612453036955988553

`A025764(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029001.P15612453036955988553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A025764 n + a (n - 3)

end

end A029001.P15612453036955988553

namespace A029001

/-- `A025764(n)+a(n-3)` -/
def P15612453036955988553.Spec : Prop :=
  ∀ n, P15612453036955988553.a n = A029001 n

end A029001

/-! ## A029001.P17788498424697563617

`A029178(2*n)`
-/

namespace A029001.P17788498424697563617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (2 * n)

end

end A029001.P17788498424697563617

namespace A029001

/-- `A029178(2*n)` -/
def P17788498424697563617.Spec : Prop :=
  ∀ n, P17788498424697563617.a n = A029001 n

end A029001

/-! ## A029001.P3999464496881253338

`A029077(Δ[n²])`
-/

namespace A029001.P3999464496881253338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029077 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A029001.P3999464496881253338

namespace A029001

/-- `A029077(Δ[n²])` -/
def P3999464496881253338.Spec : Prop :=
  ∀ n, P3999464496881253338.a n = A029001 n

end A029001

/-! ## A029001.P17492862160445583329

`∑[A008614(2*n)]`
-/

namespace A029001.P17492862160445583329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029001.P17492862160445583329

namespace A029001

/-- `∑[A008614(2*n)]` -/
def P17492862160445583329.Spec : Prop :=
  ∀ n, P17492862160445583329.a n = A029001 n

end A029001

/-! ## A029001.P7349295369108728823

`∑[A008622(2*n)]`
-/

namespace A029001.P7349295369108728823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029001.P7349295369108728823

namespace A029001

/-- `∑[A008622(2*n)]` -/
def P7349295369108728823.Spec : Prop :=
  ∀ n, P7349295369108728823.a n = A029001 n

end A029001

/-! ## A029001.P16953752035528492627

`A008614(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029001.P16953752035528492627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008614 (n + n) + a (n - 1)

end

end A029001.P16953752035528492627

namespace A029001

/-- `A008614(n+n)+a(n-1)` -/
def P16953752035528492627.Spec : Prop :=
  ∀ n, P16953752035528492627.a n = A029001 n

end A029001

/-! ## A029001.P11289788984821962697

`A008622(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029001.P11289788984821962697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008622 (n + n) + a (n - 1)

end

end A029001.P11289788984821962697

namespace A029001

/-- `A008622(n+n)+a(n-1)` -/
def P11289788984821962697.Spec : Prop :=
  ∀ n, P11289788984821962697.a n = A029001 n

end A029001

/-! ## A029001.P2367704541583508944

`A029185(2*n+1)+A029185(2*n)`
-/

namespace A029001.P2367704541583508944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029185 (2 * n + 1) + A029185 (2 * n)

end

end A029001.P2367704541583508944

namespace A029001

/-- `A029185(2*n+1)+A029185(2*n)` -/
def P2367704541583508944.Spec : Prop :=
  ∀ n, P2367704541583508944.a n = A029001 n

end A029001

/-! ## A029001.P7782367771114561814

`A029216(2*n+1)+A029183(2*n)`
-/

namespace A029001.P7782367771114561814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (2 * n + 1) + A029183 (2 * n)

end

end A029001.P7782367771114561814

namespace A029001

/-- `A029216(2*n+1)+A029183(2*n)` -/
def P7782367771114561814.Spec : Prop :=
  ∀ n, P7782367771114561814.a n = A029001 n

end A029001

/-! ## A029001.P770109329440985414

`A029347(2*n+1)+A029181(2*n)`
-/

namespace A029001.P770109329440985414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (2 * n + 1) + A029181 (2 * n)

end

end A029001.P770109329440985414

namespace A029001

/-- `A029347(2*n+1)+A029181(2*n)` -/
def P770109329440985414.Spec : Prop :=
  ∀ n, P770109329440985414.a n = A029001 n

end A029001

/-! ## A029001.P10255054818039626640

`∑[A025871(2*n+1)+A025871(2*n)]`
-/

namespace A029001.P10255054818039626640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 (2 * n + 1) + A025871 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029001.P10255054818039626640

namespace A029001

/-- `∑[A025871(2*n+1)+A025871(2*n)]` -/
def P10255054818039626640.Spec : Prop :=
  ∀ n, P10255054818039626640.a n = A029001 n

end A029001

/-! ## A029001.P1160838190807139656

`A029261(2*n)+∑[A025849(2*n+1)]`
-/

namespace A029001.P1160838190807139656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025849 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029261 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029001.P1160838190807139656

namespace A029001

/-- `A029261(2*n)+∑[A025849(2*n+1)]` -/
def P1160838190807139656.Spec : Prop :=
  ∀ n, P1160838190807139656.a n = A029001 n

end A029001

/-! ## A029001.P8997949232861579911

`A029181(2*n)-(A025867(2*n)-A029347(2*n))`
-/

namespace A029001.P8997949232861579911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029181 (2 * n) - (A025867 (2 * n) - A029347 (2 * n))

end

end A029001.P8997949232861579911

namespace A029001

/-- `A029181(2*n)-(A025867(2*n)-A029347(2*n))` -/
def P8997949232861579911.Spec : Prop :=
  ∀ n, P8997949232861579911.a n = A029001 n

end A029001

/-! ## A029001.P9737202784552042506

`A029156(2*n+3)`
-/

namespace A029001.P9737202784552042506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029156 (2 * n + 3)

end

end A029001.P9737202784552042506

namespace A029001

/-- `A029156(2*n+3)` -/
def P9737202784552042506.Spec : Prop :=
  ∀ n, P9737202784552042506.a n = A029001 n

end A029001

/-! ## A029001.P7597127790740133244

`∑[A025845(2*n+3)]`
-/

namespace A029001.P7597127790740133244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029001.P7597127790740133244

namespace A029001

/-- `∑[A025845(2*n+3)]` -/
def P7597127790740133244.Spec : Prop :=
  ∀ n, P7597127790740133244.a n = A029001 n

end A029001

/-! ## A029001.P16122685381582817448

`A029214(2*n+3)+A029214(2*n)`
-/

namespace A029001.P16122685381582817448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (2 * n + 3) + A029214 (2 * n)

end

end A029001.P16122685381582817448

namespace A029001

/-- `A029214(2*n+3)+A029214(2*n)` -/
def P16122685381582817448.Spec : Prop :=
  ∀ n, P16122685381582817448.a n = A029001 n

end A029001

/-! ## A029001.P10908844359727508758

`A029257(2*n+1)+A029257(2*n+3)`
-/

namespace A029001.P10908844359727508758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029257 (2 * n + 1) + A029257 (2 * n + 3)

end

end A029001.P10908844359727508758

namespace A029001

/-- `A029257(2*n+1)+A029257(2*n+3)` -/
def P10908844359727508758.Spec : Prop :=
  ∀ n, P10908844359727508758.a n = A029001 n

end A029001

/-! ## A029001.P9664944768759313470

`A029293(3*n)`
-/

namespace A029001.P9664944768759313470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029293 (3 * n)

end

end A029001.P9664944768759313470

namespace A029001

/-- `A029293(3*n)` -/
def P9664944768759313470.Spec : Prop :=
  ∀ n, P9664944768759313470.a n = A029001 n

end A029001

/-!
# A029002: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^8)).

The programs for A029002, the canonical program `A029002.P12151412825664143134` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029002 has offset 0).

The definition of A029002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029002.P12151412825664143134

`1+floor((2*n^3+42*n²+(255+9*(-1)^n)*n)/576)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029002

/-- `1+floor((2*n^3+42*n²+(255+9*(-1)^n)*n)/576)` -/
def P12151412825664143134.Spec : Prop :=
  ∀ n, P12151412825664143134.a n = A029002 n

theorem P12151412825664143134.correct : P12151412825664143134.Spec := by
  intro n
  simp only [A029002]

end A029002

/-! ## A029002.P15328926851085422092

`∑[A025797(n)]`
-/

namespace A029002.P15328926851085422092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029002.P15328926851085422092

namespace A029002

/-- `∑[A025797(n)]` -/
def P15328926851085422092.Spec : Prop :=
  ∀ n, P15328926851085422092.a n = A029002 n

end A029002

/-! ## A029002.P13866291888777071402

`∑[round(A001972(A028242(n))/3)]`
-/

namespace A029002.P13866291888777071402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001972 (A028242 n).toNat : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029002.P13866291888777071402

namespace A029002

/-- `∑[round(A001972(A028242(n))/3)]` -/
def P13866291888777071402.Spec : Prop :=
  ∀ n, P13866291888777071402.a n = A029002 n

end A029002

/-! ## A029002.P18134327741661740064

`A029297(3*n)`
-/

namespace A029002.P18134327741661740064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029297 (3 * n)

end

end A029002.P18134327741661740064

namespace A029002

/-- `A029297(3*n)` -/
def P18134327741661740064.Spec : Prop :=
  ∀ n, P18134327741661740064.a n = A029002 n

end A029002

/-! ## A029002.P7441974046866525190

`∑[A025902(3*n)]`
-/

namespace A029002.P7441974046866525190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029002.P7441974046866525190

namespace A029002

/-- `∑[A025902(3*n)]` -/
def P7441974046866525190.Spec : Prop :=
  ∀ n, P7441974046866525190.a n = A029002 n

end A029002

/-! ## A029002.P650078221466714671

`A008619(A320592(n+6)+A002265(n))`
-/

namespace A029002.P650078221466714671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A320592 (n + 6) + A002265 n).toNat

end

end A029002.P650078221466714671

namespace A029002

/-- `A008619(A320592(n+6)+A002265(n))` -/
def P650078221466714671.Spec : Prop :=
  ∀ n, P650078221466714671.a n = A029002 n

end A029002

/-!
# A029003: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^9)).

The programs for A029003, the canonical program `A029003.P4148205043917680536` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029003 has offset 0).

The definition of A029003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029003.P4148205043917680536

`∑[A025798(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029003

/-- `∑[A025798(n)]` -/
def P4148205043917680536.Spec : Prop :=
  ∀ n, P4148205043917680536.a n = A029003 n

theorem P4148205043917680536.correct : P4148205043917680536.Spec := by
  intro n
  simp only [A029003]

end A029003

/-! ## A029003.P1955206195710192308

`A008649(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029003.P1955206195710192308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008649 n + a (n - 2)

end

end A029003.P1955206195710192308

namespace A029003

/-- `A008649(n)+a(n-2)` -/
def P1955206195710192308.Spec : Prop :=
  ∀ n, P1955206195710192308.a n = A029003 n

end A029003

/-! ## A029003.P9300372512702256332

`A025765(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029003.P9300372512702256332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A025765 n + a (n - 3)

end

end A029003.P9300372512702256332

namespace A029003

/-- `A025765(n)+a(n-3)` -/
def P9300372512702256332.Spec : Prop :=
  ∀ n, P9300372512702256332.a n = A029003 n

end A029003

/-! ## A029003.P8324059949800427282

`A001840(A008620(n))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029003.P8324059949800427282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001840 (A008620 n).toNat + a (n - 2)

end

end A029003.P8324059949800427282

namespace A029003

/-- `A001840(A008620(n))+a(n-2)` -/
def P8324059949800427282.Spec : Prop :=
  ∀ n, P8324059949800427282.a n = A029003 n

end A029003

/-! ## A029003.P10598226886779279843

`A001840(Δ[A001840(n)])+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029003.P10598226886779279843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001840 (f1 (n + 1) - f1 n).toNat + a (n - 2)

end

end A029003.P10598226886779279843

namespace A029003

/-- `A001840(Δ[A001840(n)])+a(n-2)` -/
def P10598226886779279843.Spec : Prop :=
  ∀ n, P10598226886779279843.a n = A029003 n

end A029003

/-! ## A029003.P17589601355322443704

`A029179(2*n)`
-/

namespace A029003.P17589601355322443704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 (2 * n)

end

end A029003.P17589601355322443704

namespace A029003

/-- `A029179(2*n)` -/
def P17589601355322443704.Spec : Prop :=
  ∀ n, P17589601355322443704.a n = A029003 n

end A029003

/-! ## A029003.P17164222789541327867

`∑[A025865(2*n)]`
-/

namespace A029003.P17164222789541327867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029003.P17164222789541327867

namespace A029003

/-- `∑[A025865(2*n)]` -/
def P17164222789541327867.Spec : Prop :=
  ∀ n, P17164222789541327867.a n = A029003 n

end A029003

/-! ## A029003.P10638326159237500504

`A025865(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029003.P10638326159237500504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025865 (n + n) + a (n - 1)

end

end A029003.P10638326159237500504

namespace A029003

/-- `A025865(n+n)+a(n-1)` -/
def P10638326159237500504.Spec : Prop :=
  ∀ n, P10638326159237500504.a n = A029003 n

end A029003

/-! ## A029003.P4369223282896052231

`∑[A005044(A063942(2*n)+2)]`
-/

namespace A029003.P4369223282896052231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A063942 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029003.P4369223282896052231

namespace A029003

/-- `∑[A005044(A063942(2*n)+2)]` -/
def P4369223282896052231.Spec : Prop :=
  ∀ n, P4369223282896052231.a n = A029003 n

end A029003

/-! ## A029003.P10202821123646000744

`∑[A069905(A008612(2*n)+2)]`
-/

namespace A029003.P10202821123646000744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A008612 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029003.P10202821123646000744

namespace A029003

/-- `∑[A069905(A008612(2*n)+2)]` -/
def P10202821123646000744.Spec : Prop :=
  ∀ n, P10202821123646000744.a n = A029003 n

end A029003

/-! ## A029003.P11448951012527316357

`∑[A029352(2*n)-A029352(2*n+1)]`
-/

namespace A029003.P11448951012527316357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029352 (2 * n) - A029352 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029003.P11448951012527316357

namespace A029003

/-- `∑[A029352(2*n)-A029352(2*n+1)]` -/
def P11448951012527316357.Spec : Prop :=
  ∀ n, P11448951012527316357.a n = A029003 n

end A029003

/-! ## A029003.P16190733811842210876

`∑[A029253(2*n)-A288165(2*n+1)]`
-/

namespace A029003.P16190733811842210876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (2 * n) - A288165 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029003.P16190733811842210876

namespace A029003

/-- `∑[A029253(2*n)-A288165(2*n+1)]` -/
def P16190733811842210876.Spec : Prop :=
  ∀ n, P16190733811842210876.a n = A029003 n

end A029003

/-! ## A029003.P14052419456073097947

`A029153(2*n)+A029188(2*n)-A029165(2*n)`
-/

namespace A029003.P14052419456073097947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 (2 * n) + (A029188 (2 * n) - A029165 (2 * n))

end

end A029003.P14052419456073097947

namespace A029003

/-- `A029153(2*n)+A029188(2*n)-A029165(2*n)` -/
def P14052419456073097947.Spec : Prop :=
  ∀ n, P14052419456073097947.a n = A029003 n

end A029003

/-! ## A029003.P6095188224715424719

`A029175(2*n)+A029221(2*n)-A029208(2*n)`
-/

namespace A029003.P6095188224715424719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029175 (2 * n) + (A029221 (2 * n) - A029208 (2 * n))

end

end A029003.P6095188224715424719

namespace A029003

/-- `A029175(2*n)+A029221(2*n)-A029208(2*n)` -/
def P6095188224715424719.Spec : Prop :=
  ∀ n, P6095188224715424719.a n = A029003 n

end A029003

/-! ## A029003.P17736187157210578409

`A029190(2*n+3)+A029190(2*n)`
-/

namespace A029003.P17736187157210578409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 (2 * n + 3) + A029190 (2 * n)

end

end A029003.P17736187157210578409

namespace A029003

/-- `A029190(2*n+3)+A029190(2*n)` -/
def P17736187157210578409.Spec : Prop :=
  ∀ n, P17736187157210578409.a n = A029003 n

end A029003

/-! ## A029003.P15341994702991362462

`∑[A266755(A008611(6*A008611(n)))]`
-/

namespace A029003.P15341994702991362462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (A008611 (6 * A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029003.P15341994702991362462

namespace A029003

/-- `∑[A266755(A008611(6*A008611(n)))]` -/
def P15341994702991362462.Spec : Prop :=
  ∀ n, P15341994702991362462.a n = A029003 n

end A029003

/-! ## A029003.P8650570004766744692

`A029371(4*n)`
-/

namespace A029003.P8650570004766744692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029371 (4 * n)

end

end A029003.P8650570004766744692

namespace A029003

/-- `A029371(4*n)` -/
def P8650570004766744692.Spec : Prop :=
  ∀ n, P8650570004766744692.a n = A029003 n

end A029003

/-! ## A029003.P9915902450285907487

`∑[A025920(4*n)]`
-/

namespace A029003.P9915902450285907487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029003.P9915902450285907487

namespace A029003

/-- `∑[A025920(4*n)]` -/
def P9915902450285907487.Spec : Prop :=
  ∀ n, P9915902450285907487.a n = A029003 n

end A029003

/-!
# A029004: Expansion of 1/((1-x)(1-x^2)(1-x^3)(1-x^10)).

The programs for A029004, the canonical program `A029004.P1012158499936873267` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029004 has offset 0).

The definition of A029004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029004.P1012158499936873267

`floor((2*n^3+48*n²+327*n+927+9*(n+1)*(-1)^n)/720)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029004

/-- `floor((2*n^3+48*n²+327*n+927+9*(n+1)*(-1)^n)/720)` -/
def P1012158499936873267.Spec : Prop :=
  ∀ n, P1012158499936873267.a n = A029004 n

theorem P1012158499936873267.correct : P1012158499936873267.Spec := by
  intro n
  simp only [A029004]

end A029004

/-! ## A029004.P16129281298566548294

`∑[A025799(n)]`
-/

namespace A029004.P16129281298566548294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P16129281298566548294

namespace A029004

/-- `∑[A025799(n)]` -/
def P16129281298566548294.Spec : Prop :=
  ∀ n, P16129281298566548294.a n = A029004 n

end A029004

/-! ## A029004.P9788836976667380045

`A025770(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029004.P9788836976667380045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025770 n + a (n - 2)

end

end A029004.P9788836976667380045

namespace A029004

/-- `A025770(n)+a(n-2)` -/
def P9788836976667380045.Spec : Prop :=
  ∀ n, P9788836976667380045.a n = A029004 n

end A029004

/-! ## A029004.P1825576616189566431

`∑[A025806(xor(1, n+1))]`
-/

namespace A029004.P1825576616189566431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P1825576616189566431

namespace A029004

/-- `∑[A025806(xor(1, n+1))]` -/
def P1825576616189566431.Spec : Prop :=
  ∀ n, P1825576616189566431.a n = A029004 n

end A029004

/-! ## A029004.P9027960027134154901

`∑[A025806(A004442(n+1))]`
-/

namespace A029004.P9027960027134154901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (A004442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P9027960027134154901

namespace A029004

/-- `∑[A025806(A004442(n+1))]` -/
def P9027960027134154901.Spec : Prop :=
  ∀ n, P9027960027134154901.a n = A029004 n

end A029004

/-! ## A029004.P11451286987162232976

`∑[A008680(A005408(A028242(n)))]`
-/

namespace A029004.P11451286987162232976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A005408 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P11451286987162232976

namespace A029004

/-- `∑[A008680(A005408(A028242(n)))]` -/
def P11451286987162232976.Spec : Prop :=
  ∀ n, P11451286987162232976.a n = A029004 n

end A029004

/-! ## A029004.P3367540335595166747

`∑[A025837(A007494(n))]`
-/

namespace A029004.P3367540335595166747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A007494 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P3367540335595166747

namespace A029004

/-- `∑[A025837(A007494(n))]` -/
def P3367540335595166747.Spec : Prop :=
  ∀ n, P3367540335595166747.a n = A029004 n

end A029004

/-! ## A029004.P15955049560202245075

`∑[A025837(record[A064429(n)])]`
-/

namespace A029004.P15955049560202245075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P15955049560202245075

namespace A029004

/-- `∑[A025837(record[A064429(n)])]` -/
def P15955049560202245075.Spec : Prop :=
  ∀ n, P15955049560202245075.a n = A029004 n

end A029004

/-! ## A029004.P16583362588972123350

`∑[A025837(A110654(n)+n)]`
-/

namespace A029004.P16583362588972123350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A110654 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P16583362588972123350

namespace A029004

/-- `∑[A025837(A110654(n)+n)]` -/
def P16583362588972123350.Spec : Prop :=
  ∀ n, P16583362588972123350.a n = A029004 n

end A029004

/-! ## A029004.P8140737828254312843

`∑[A025837(A004526(n+1)+n)]`
-/

namespace A029004.P8140737828254312843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A004526 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P8140737828254312843

namespace A029004

/-- `∑[A025837(A004526(n+1)+n)]` -/
def P8140737828254312843.Spec : Prop :=
  ∀ n, P8140737828254312843.a n = A029004 n

end A029004

/-! ## A029004.P2986454628981496521

`∑[A025837(A057353(2*n+1))]`
-/

namespace A029004.P2986454628981496521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A057353 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P2986454628981496521

namespace A029004

/-- `∑[A025837(A057353(2*n+1))]` -/
def P2986454628981496521.Spec : Prop :=
  ∀ n, P2986454628981496521.a n = A029004 n

end A029004

/-! ## A029004.P4543916602360922199

`A029301(3*n)`
-/

namespace A029004.P4543916602360922199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029301 (3 * n)

end

end A029004.P4543916602360922199

namespace A029004

/-- `A029301(3*n)` -/
def P4543916602360922199.Spec : Prop :=
  ∀ n, P4543916602360922199.a n = A029004 n

end A029004

/-! ## A029004.P12480525183082304328

`∑[A025904(3*n)]`
-/

namespace A029004.P12480525183082304328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P12480525183082304328

namespace A029004

/-- `∑[A025904(3*n)]` -/
def P12480525183082304328.Spec : Prop :=
  ∀ n, P12480525183082304328.a n = A029004 n

end A029004

/-! ## A029004.P11800538906912756219

`∑[A025837(A110654(3*n))]`
-/

namespace A029004.P11800538906912756219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A110654 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P11800538906912756219

namespace A029004

/-- `∑[A025837(A110654(3*n))]` -/
def P11800538906912756219.Spec : Prop :=
  ∀ n, P11800538906912756219.a n = A029004 n

end A029004

/-! ## A029004.P15196105140585067452

`∑[A025837(A004526(A016777(n)))]`
-/

namespace A029004.P15196105140585067452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A004526 (A016777 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029004.P15196105140585067452

namespace A029004

/-- `∑[A025837(A004526(A016777(n)))]` -/
def P15196105140585067452.Spec : Prop :=
  ∀ n, P15196105140585067452.a n = A029004 n

end A029004

/-!
# A029005: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^11)).

The programs for A029005, the canonical program `A029005.P16280960447125148726` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029005 has offset 0).

The definition of A029005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029005.P16280960447125148726

`∑[A025800(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029005

/-- `∑[A025800(n)]` -/
def P16280960447125148726.Spec : Prop :=
  ∀ n, P16280960447125148726.a n = A029005 n

theorem P16280960447125148726.correct : P16280960447125148726.Spec := by
  intro n
  simp only [A029005]

end A029005

/-! ## A029005.P5499392213535345351

`A025771(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029005.P5499392213535345351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025771 n + a (n - 2)

end

end A029005.P5499392213535345351

namespace A029005

/-- `A025771(n)+a(n-2)` -/
def P5499392213535345351.Spec : Prop :=
  ∀ n, P5499392213535345351.a n = A029005 n

end A029005

/-! ## A029005.P9133181169688857848

`A025766(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029005.P9133181169688857848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A025766 n + a (n - 3)

end

end A029005.P9133181169688857848

namespace A029005

/-- `A025766(n)+a(n-3)` -/
def P9133181169688857848.Spec : Prop :=
  ∀ n, P9133181169688857848.a n = A029005 n

end A029005

/-! ## A029005.P10463239205700630133

`a(n-1)+A025800(n)%A000096(n)` with `a(0)=1`
-/

namespace A029005.P10463239205700630133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025800 n) (A000096 n)

end

end A029005.P10463239205700630133

namespace A029005

/-- `a(n-1)+A025800(n)%A000096(n)` -/
def P10463239205700630133.Spec : Prop :=
  ∀ n, P10463239205700630133.a n = A029005 n

end A029005

/-! ## A029005.P4781575863389398711

`A029180(2*n)`
-/

namespace A029005.P4781575863389398711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 (2 * n)

end

end A029005.P4781575863389398711

namespace A029005

/-- `A029180(2*n)` -/
def P4781575863389398711.Spec : Prop :=
  ∀ n, P4781575863389398711.a n = A029005 n

end A029005

/-! ## A029005.P3525657665806690793

`∑[A025866(2*n)]`
-/

namespace A029005.P3525657665806690793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025866 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029005.P3525657665806690793

namespace A029005

/-- `∑[A025866(2*n)]` -/
def P3525657665806690793.Spec : Prop :=
  ∀ n, P3525657665806690793.a n = A029005 n

end A029005

/-! ## A029005.P788158106475716720

`A025866(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029005.P788158106475716720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025866 (n + n) + a (n - 1)

end

end A029005.P788158106475716720

namespace A029005

/-- `A025866(n+n)+a(n-1)` -/
def P788158106475716720.Spec : Prop :=
  ∀ n, P788158106475716720.a n = A029005 n

end A029005

/-! ## A029005.P7071323361299007207

`record[A029225(n)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A029005.P7071323361299007207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A029225 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A029005.P7071323361299007207

namespace A029005

/-- `record[A029225(n)-a(n-1)]-a(n-1)` -/
def P7071323361299007207.Spec : Prop :=
  ∀ n, P7071323361299007207.a n = A029005 n

end A029005

/-! ## A029005.P5877538536520489231

`∑[A029357(2*n)-A029357(2*n+1)]`
-/

namespace A029005.P5877538536520489231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 (2 * n) - A029357 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029005.P5877538536520489231

namespace A029005

/-- `∑[A029357(2*n)-A029357(2*n+1)]` -/
def P5877538536520489231.Spec : Prop :=
  ∀ n, P5877538536520489231.a n = A029005 n

end A029005

/-! ## A029005.P10741692349672113386

`A029191(2*n)+A029196(2*n)-A029211(2*n)`
-/

namespace A029005.P10741692349672113386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029191 (2 * n) + (A029196 (2 * n) - A029211 (2 * n))

end

end A029005.P10741692349672113386

namespace A029005

/-- `A029191(2*n)+A029196(2*n)-A029211(2*n)` -/
def P10741692349672113386.Spec : Prop :=
  ∀ n, P10741692349672113386.a n = A029005 n

end A029005

/-! ## A029005.P13105966859343768021

`A029302(3*n)`
-/

namespace A029005.P13105966859343768021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 (3 * n)

end

end A029005.P13105966859343768021

namespace A029005

/-- `A029302(3*n)` -/
def P13105966859343768021.Spec : Prop :=
  ∀ n, P13105966859343768021.a n = A029005 n

end A029005

/-! ## A029005.P12164944044433914415

`∑[A025905(3*n)]`
-/

namespace A029005.P12164944044433914415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029005.P12164944044433914415

namespace A029005

/-- `∑[A025905(3*n)]` -/
def P12164944044433914415.Spec : Prop :=
  ∀ n, P12164944044433914415.a n = A029005 n

end A029005

/-! ## A029005.P5230243821208697416

`A029373(4*n)`
-/

namespace A029005.P5230243821208697416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029373 (4 * n)

end

end A029005.P5230243821208697416

namespace A029005

/-- `A029373(4*n)` -/
def P5230243821208697416.Spec : Prop :=
  ∀ n, P5230243821208697416.a n = A029005 n

end A029005

/-! ## A029005.P17869331312007701220

`∑[A025922(4*n)]`
-/

namespace A029005.P17869331312007701220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029005.P17869331312007701220

namespace A029005

/-- `∑[A025922(4*n)]` -/
def P17869331312007701220.Spec : Prop :=
  ∀ n, P17869331312007701220.a n = A029005 n

end A029005

/-!
# A029006: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^12)).

The programs for A029006, the canonical program `A029006.P2540204812080187277` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029006 has offset 0).

The definition of A029006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029006.P2540204812080187277

`∑[A025801(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029006

/-- `∑[A025801(n)]` -/
def P2540204812080187277.Spec : Prop :=
  ∀ n, P2540204812080187277.a n = A029006 n

theorem P2540204812080187277.correct : P2540204812080187277.Spec := by
  intro n
  simp only [A029006]

end A029006

/-! ## A029006.P18044635398317549065

`∑[abs(A083392(A103221(n)))]`
-/

namespace A029006.P18044635398317549065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083392 (A103221 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029006.P18044635398317549065

namespace A029006

/-- `∑[abs(A083392(A103221(n)))]` -/
def P18044635398317549065.Spec : Prop :=
  ∀ n, P18044635398317549065.a n = A029006 n

end A029006

/-! ## A029006.P3576664779919499308

`∑[A002620(A103221(n)+1)]`
-/

namespace A029006.P3576664779919499308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A103221 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029006.P3576664779919499308

namespace A029006

/-- `∑[A002620(A103221(n)+1)]` -/
def P3576664779919499308.Spec : Prop :=
  ∀ n, P3576664779919499308.a n = A029006 n

end A029006

/-! ## A029006.P12669108894577898976

`∑[A008733(A004442(A008611(n)))]`
-/

namespace A029006.P12669108894577898976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (A004442 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029006.P12669108894577898976

namespace A029006

/-- `∑[A008733(A004442(A008611(n)))]` -/
def P12669108894577898976.Spec : Prop :=
  ∀ n, P12669108894577898976.a n = A029006 n

end A029006

/-! ## A029006.P16611845024932503330

`∑[A002620(A026806(n+2))]`
-/

namespace A029006.P16611845024932503330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A026806 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029006.P16611845024932503330

namespace A029006

/-- `∑[A002620(A026806(n+2))]` -/
def P16611845024932503330.Spec : Prop :=
  ∀ n, P16611845024932503330.a n = A029006 n

end A029006

/-! ## A029006.P10848257718693371426

`∑[A002620(A008615(n+2)+1)]`
-/

namespace A029006.P10848257718693371426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008615 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029006.P10848257718693371426

namespace A029006

/-- `∑[A002620(A008615(n+2)+1)]` -/
def P10848257718693371426.Spec : Prop :=
  ∀ n, P10848257718693371426.a n = A029006 n

end A029006

/-! ## A029006.P15478377303969299542

`∑[A002620(A008615(n+8))]`
-/

namespace A029006.P15478377303969299542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008615 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029006.P15478377303969299542

namespace A029006

/-- `∑[A002620(A008615(n+8))]` -/
def P15478377303969299542.Spec : Prop :=
  ∀ n, P15478377303969299542.a n = A029006 n

end A029006

/-! ## A029006.P9311551495314029026

`∑[A244306(A025796(n)+1)]`
-/

namespace A029006.P9311551495314029026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244306 (A025796 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029006.P9311551495314029026

namespace A029006

/-- `∑[A244306(A025796(n)+1)]` -/
def P9311551495314029026.Spec : Prop :=
  ∀ n, P9311551495314029026.a n = A029006 n

end A029006

/-! ## A029006.P549796185996506450

`∑[A344646(A025796(n))]`
-/

namespace A029006.P549796185996506450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A025796 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029006.P549796185996506450

namespace A029006

/-- `∑[A344646(A025796(n))]` -/
def P549796185996506450.Spec : Prop :=
  ∀ n, P549796185996506450.a n = A029006 n

end A029006

/-!
# A029007: Expansion of 1/((1-x)(1-x^2)(1-x^4)(1-x^5)).

The programs for A029007, the canonical program `A029007.P13255438278896847720` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029007 has offset 0).

The definition of A029007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029007.P13255438278896847720

`∑[A025802(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029007

/-- `∑[A025802(n)]` -/
def P13255438278896847720.Spec : Prop :=
  ∀ n, P13255438278896847720.a n = A029007 n

theorem P13255438278896847720.correct : P13255438278896847720.Spec := by
  intro n
  simp only [A029007]

end A029007

/-! ## A029007.P5911426069845055101

`A025772(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029007.P5911426069845055101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025772 n + a (n - 2)

end

end A029007.P5911426069845055101

namespace A029007

/-- `A025772(n)+a(n-2)` -/
def P5911426069845055101.Spec : Prop :=
  ∀ n, P5911426069845055101.a n = A029007 n

end A029007

/-! ## A029007.P15693768443052720035

`A008667(n)+A029032(n)-A008680(n)`
-/

namespace A029007.P15693768443052720035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n + (A029032 n - A008680 n)

end

end A029007.P15693768443052720035

namespace A029007

/-- `A008667(n)+A029032(n)-A008680(n)` -/
def P15693768443052720035.Spec : Prop :=
  ∀ n, P15693768443052720035.a n = A029007 n

end A029007

/-! ## A029007.P12543318202701507617

`A001401(n)-A026811(n+2)`
-/

namespace A029007.P12543318202701507617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026811 (n + 2)

end

end A029007.P12543318202701507617

namespace A029007

/-- `A001401(n)-A026811(n+2)` -/
def P12543318202701507617.Spec : Prop :=
  ∀ n, P12543318202701507617.a n = A029007 n

end A029007

/-! ## A029007.P5648205151362071815

`A008669(n+1)-A008667(n+1)`
-/

namespace A029007.P5648205151362071815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (n + 1) - A008667 (n + 1)

end

end A029007.P5648205151362071815

namespace A029007

/-- `A008669(n+1)-A008667(n+1)` -/
def P5648205151362071815.Spec : Prop :=
  ∀ n, P5648205151362071815.a n = A029007 n

end A029007

/-! ## A029007.P6240412871143954294

`A008669(n+1)+A001401(n)-A001401(n+1)`
-/

namespace A029007.P6240412871143954294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (n + 1) + (A001401 n - A001401 (n + 1))

end

end A029007.P6240412871143954294

namespace A029007

/-- `A008669(n+1)+A001401(n)-A001401(n+1)` -/
def P6240412871143954294.Spec : Prop :=
  ∀ n, P6240412871143954294.a n = A029007 n

end A029007

/-! ## A029007.P1753851745712151183

`A008669(n+1)+A008669(n)-A001400(n+1)`
-/

namespace A029007.P1753851745712151183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (n + 1) + (A008669 n - A001400 (n + 1))

end

end A029007.P1753851745712151183

namespace A029007

/-- `A008669(n+1)+A008669(n)-A001400(n+1)` -/
def P1753851745712151183.Spec : Prop :=
  ∀ n, P1753851745712151183.a n = A029007 n

end A029007

/-! ## A029007.P2867169942547249112

`A001401(n)-(A026929(n+2)+A026925(n+2))`
-/

namespace A029007.P2867169942547249112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - (A026929 (n + 2) + A026925 (n + 2))

end

end A029007.P2867169942547249112

namespace A029007

/-- `A001401(n)-(A026929(n+2)+A026925(n+2))` -/
def P2867169942547249112.Spec : Prop :=
  ∀ n, P2867169942547249112.a n = A029007 n

end A029007

/-! ## A029007.P16330557768870736524

`A001400(n+2)-A029032(n+2)`
-/

namespace A029007.P16330557768870736524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 2) - A029032 (n + 2)

end

end A029007.P16330557768870736524

namespace A029007

/-- `A001400(n+2)-A029032(n+2)` -/
def P16330557768870736524.Spec : Prop :=
  ∀ n, P16330557768870736524.a n = A029007 n

end A029007

/-! ## A029007.P16248998916175857879

`∑[A008680(2*n)-A005044(n)]`
-/

namespace A029007.P16248998916175857879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (2 * n) - A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029007.P16248998916175857879

namespace A029007

/-- `∑[A008680(2*n)-A005044(n)]` -/
def P16248998916175857879.Spec : Prop :=
  ∀ n, P16248998916175857879.a n = A029007 n

end A029007

/-! ## A029007.P7878161597418003674

`A029173(2*n)`
-/

namespace A029007.P7878161597418003674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029173 (2 * n)

end

end A029007.P7878161597418003674

namespace A029007

/-- `A029173(2*n)` -/
def P7878161597418003674.Spec : Prop :=
  ∀ n, P7878161597418003674.a n = A029007 n

end A029007

/-! ## A029007.P9055063997403910520

`∑[A025860(2*n)]`
-/

namespace A029007.P9055063997403910520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025860 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029007.P9055063997403910520

namespace A029007

/-- `∑[A025860(2*n)]` -/
def P9055063997403910520.Spec : Prop :=
  ∀ n, P9055063997403910520.a n = A029007 n

end A029007

/-! ## A029007.P892481370795141765

`A025860(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029007.P892481370795141765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025860 (n + n) + a (n - 1)

end

end A029007.P892481370795141765

namespace A029007

/-- `A025860(n+n)+a(n-1)` -/
def P892481370795141765.Spec : Prop :=
  ∀ n, P892481370795141765.a n = A029007 n

end A029007

/-! ## A029007.P13827554597316539912

`A008667(2*n)-A026810(n+1)`
-/

namespace A029007.P13827554597316539912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (2 * n) - A026810 (n + 1)

end

end A029007.P13827554597316539912

namespace A029007

/-- `A008667(2*n)-A026810(n+1)` -/
def P13827554597316539912.Spec : Prop :=
  ∀ n, P13827554597316539912.a n = A029007 n

end A029007

/-! ## A029007.P14323929573666760053

`A266768(2*n)-A026811(n+2)`
-/

namespace A029007.P14323929573666760053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (2 * n) - A026811 (n + 2)

end

end A029007.P14323929573666760053

namespace A029007

/-- `A266768(2*n)-A026811(n+2)` -/
def P14323929573666760053.Spec : Prop :=
  ∀ n, P14323929573666760053.a n = A029007 n

end A029007

/-! ## A029007.P11535840630373650114

`A029188(2*n)+A029186(2*n+1)`
-/

namespace A029007.P11535840630373650114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029188 (2 * n) + A029186 (2 * n + 1)

end

end A029007.P11535840630373650114

namespace A029007

/-- `A029188(2*n)+A029186(2*n+1)` -/
def P11535840630373650114.Spec : Prop :=
  ∀ n, P11535840630373650114.a n = A029007 n

end A029007

/-! ## A029007.P4356336523298093587

`A029277(3*n)`
-/

namespace A029007.P4356336523298093587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 (3 * n)

end

end A029007.P4356336523298093587

namespace A029007

/-- `A029277(3*n)` -/
def P4356336523298093587.Spec : Prop :=
  ∀ n, P4356336523298093587.a n = A029007 n

end A029007

/-! ## A029007.P3440997333288657915

`∑[A025881(3*n)]`
-/

namespace A029007.P3440997333288657915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029007.P3440997333288657915

namespace A029007

/-- `∑[A025881(3*n)]` -/
def P3440997333288657915.Spec : Prop :=
  ∀ n, P3440997333288657915.a n = A029007 n

end A029007

/-! ## A029007.P6208297886626793959

`A029210(3*n+4)`
-/

namespace A029007.P6208297886626793959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029210 (3 * n + 4)

end

end A029007.P6208297886626793959

namespace A029007

/-- `A029210(3*n+4)` -/
def P6208297886626793959.Spec : Prop :=
  ∀ n, P6208297886626793959.a n = A029007 n

end A029007

/-! ## A029007.P7643963399939169862

`∑[abs(Δ[A029210(A016777(n))])]`
-/

namespace A029007.P7643963399939169862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029210 (A016777 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029007.P7643963399939169862

namespace A029007

/-- `∑[abs(Δ[A029210(A016777(n))])]` -/
def P7643963399939169862.Spec : Prop :=
  ∀ n, P7643963399939169862.a n = A029007 n

end A029007

/-!
# A029008: Expansion of 1/((1-x)*(1-x^2)*(1-x^4)*(1-x^7)).

The programs for A029008, the canonical program `A029008.P567600214815192432` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029008 has offset 0).

The definition of A029008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029008.P567600214815192432

`∑[A025803(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029008

/-- `∑[A025803(n)]` -/
def P567600214815192432.Spec : Prop :=
  ∀ n, P567600214815192432.a n = A029008 n

theorem P567600214815192432.correct : P567600214815192432.Spec := by
  intro n
  simp only [A029008]

end A029008

/-! ## A029008.P10078322607714548609

`A025773(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029008.P10078322607714548609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025773 n + a (n - 2)

end

end A029008.P10078322607714548609

namespace A029008

/-- `A025773(n)+a(n-2)` -/
def P10078322607714548609.Spec : Prop :=
  ∀ n, P10078322607714548609.a n = A029008 n

end A029008

/-! ## A029008.P18213977393531680598

`(A025773(n)+∑[A008721(n)])/2`
-/

namespace A029008.P18213977393531680598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008721 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A025773 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A029008.P18213977393531680598

namespace A029008

/-- `(A025773(n)+∑[A008721(n)])/2` -/
def P18213977393531680598.Spec : Prop :=
  ∀ n, P18213977393531680598.a n = (A029008 n : ℚ)

end A029008

/-! ## A029008.P5544716168616959594

`A008667(n)+A008673(n)-A008677(n)`
-/

namespace A029008.P5544716168616959594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n + (A008673 n - A008677 n)

end

end A029008.P5544716168616959594

namespace A029008

/-- `A008667(n)+A008673(n)-A008677(n)` -/
def P5544716168616959594.Spec : Prop :=
  ∀ n, P5544716168616959594.a n = A029008 n

end A029008

/-! ## A029008.P9841414479012667801

`A029033(n)+A029137(n)-A025829(n)`
-/

namespace A029008.P9841414479012667801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029033 n + (A029137 n - A025829 n)

end

end A029008.P9841414479012667801

namespace A029008

/-- `A029033(n)+A029137(n)-A025829(n)` -/
def P9841414479012667801.Spec : Prop :=
  ∀ n, P9841414479012667801.a n = A029008 n

end A029008

/-! ## A029008.P1294191995122591841

`∑[∑[A025773(n+1)-A008721(n+1)]]`
-/

namespace A029008.P1294191995122591841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025773 (n + 1) - A008721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029008.P1294191995122591841

namespace A029008

/-- `∑[∑[A025773(n+1)-A008721(n+1)]]` -/
def P1294191995122591841.Spec : Prop :=
  ∀ n, P1294191995122591841.a n = A029008 n

end A029008

/-! ## A029008.P3920522142299404055

`A029229(abs(A060747(n)))+A029017(n)`
-/

namespace A029008.P3920522142299404055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 |A060747 n|.toNat + A029017 n

end

end A029008.P3920522142299404055

namespace A029008

/-- `A029229(abs(A060747(n)))+A029017(n)` -/
def P3920522142299404055.Spec : Prop :=
  ∀ n, P3920522142299404055.a n = A029008 n

end A029008

/-! ## A029008.P8896438332459637826

`A029181(2*n)`
-/

namespace A029008.P8896438332459637826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029181 (2 * n)

end

end A029008.P8896438332459637826

namespace A029008

/-- `A029181(2*n)` -/
def P8896438332459637826.Spec : Prop :=
  ∀ n, P8896438332459637826.a n = A029008 n

end A029008

/-! ## A029008.P10388865685863092984

`∑[A025867(2*n)]`
-/

namespace A029008.P10388865685863092984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029008.P10388865685863092984

namespace A029008

/-- `∑[A025867(2*n)]` -/
def P10388865685863092984.Spec : Prop :=
  ∀ n, P10388865685863092984.a n = A029008 n

end A029008

/-! ## A029008.P14603529498929092283

`A025867(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029008.P14603529498929092283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025867 (n + n) + a (n - 1)

end

end A029008.P14603529498929092283

namespace A029008

/-- `A025867(n+n)+a(n-1)` -/
def P14603529498929092283.Spec : Prop :=
  ∀ n, P14603529498929092283.a n = A029008 n

end A029008

/-! ## A029008.P15876596424980280049

`A029178(2*n)-A029347(2*n+1)`
-/

namespace A029008.P15876596424980280049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (2 * n) - A029347 (2 * n + 1)

end

end A029008.P15876596424980280049

namespace A029008

/-- `A029178(2*n)-A029347(2*n+1)` -/
def P15876596424980280049.Spec : Prop :=
  ∀ n, P15876596424980280049.a n = A029008 n

end A029008

/-! ## A029008.P47642332464660564

`∑[A029347(2*n)-A029347(2*n+1)]`
-/

namespace A029008.P47642332464660564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (2 * n) - A029347 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029008.P47642332464660564

namespace A029008

/-- `∑[A029347(2*n)-A029347(2*n+1)]` -/
def P47642332464660564.Spec : Prop :=
  ∀ n, P47642332464660564.a n = A029008 n

end A029008

/-! ## A029008.P12706059864069639059

`A029186(2*n)+A029359(2*n)-A025872(2*n)`
-/

namespace A029008.P12706059864069639059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029186 (2 * n) + (A029359 (2 * n) - A025872 (2 * n))

end

end A029008.P12706059864069639059

namespace A029008

/-- `A029186(2*n)+A029359(2*n)-A025872(2*n)` -/
def P12706059864069639059.Spec : Prop :=
  ∀ n, P12706059864069639059.a n = A029008 n

end A029008

/-! ## A029008.P3251635334586569586

`A029214(2*n)+A029347(2*n)-A025897(2*n)`
-/

namespace A029008.P3251635334586569586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (2 * n) + (A029347 (2 * n) - A025897 (2 * n))

end

end A029008.P3251635334586569586

namespace A029008

/-- `A029214(2*n)+A029347(2*n)-A025897(2*n)` -/
def P3251635334586569586.Spec : Prop :=
  ∀ n, P3251635334586569586.a n = A029008 n

end A029008

/-! ## A029008.P1925068165071266705

`A025867(2*n)-(A029347(2*n)-A029178(2*n))`
-/

namespace A029008.P1925068165071266705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 (2 * n) - (A029347 (2 * n) - A029178 (2 * n))

end

end A029008.P1925068165071266705

namespace A029008

/-- `A025867(2*n)-(A029347(2*n)-A029178(2*n))` -/
def P1925068165071266705.Spec : Prop :=
  ∀ n, P1925068165071266705.a n = A029008 n

end A029008

/-! ## A029008.P640778550599713672

`A029185(2*n+1)+A029185(2*n)-A029347(2*n+1)`
-/

namespace A029008.P640778550599713672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029185 (2 * n + 1) + (A029185 (2 * n) - A029347 (2 * n + 1))

end

end A029008.P640778550599713672

namespace A029008

/-- `A029185(2*n+1)+A029185(2*n)-A029347(2*n+1)` -/
def P640778550599713672.Spec : Prop :=
  ∀ n, P640778550599713672.a n = A029008 n

end A029008

/-! ## A029008.P10768069128686887397

`A029216(A005818(n+1))+A008667(n)`
-/

namespace A029008.P10768069128686887397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (A005818 (n + 1)).toNat + A008667 n

end

end A029008.P10768069128686887397

namespace A029008

/-- `A029216(A005818(n+1))+A008667(n)` -/
def P10768069128686887397.Spec : Prop :=
  ∀ n, P10768069128686887397.a n = A029008 n

end A029008

/-! ## A029008.P12776847471054859717

`A029214(A005818(n+1))+A029137(n)`
-/

namespace A029008.P12776847471054859717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (A005818 (n + 1)).toNat + A029137 n

end

end A029008.P12776847471054859717

namespace A029008

/-- `A029214(A005818(n+1))+A029137(n)` -/
def P12776847471054859717.Spec : Prop :=
  ∀ n, P12776847471054859717.a n = A029008 n

end A029008

/-! ## A029008.P9174987306827572476

`A029214(A005408(n+2))+A029137(n)`
-/

namespace A029008.P9174987306827572476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (A005408 (n + 2)).toNat + A029137 n

end

end A029008.P9174987306827572476

namespace A029008

/-- `A029214(A005408(n+2))+A029137(n)` -/
def P9174987306827572476.Spec : Prop :=
  ∀ n, P9174987306827572476.a n = A029008 n

end A029008

/-! ## A029008.P3530351306423966740

`A029296(3*n)`
-/

namespace A029008.P3530351306423966740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029296 (3 * n)

end

end A029008.P3530351306423966740

namespace A029008

/-- `A029296(3*n)` -/
def P3530351306423966740.Spec : Prop :=
  ∀ n, P3530351306423966740.a n = A029008 n

end A029008

/-!
# A029009: Expansion of 1/((1-x)*(1-x^2)*(1-x^4)*(1-x^9)).

The programs for A029009, the canonical program `A029009.P3349253957532002275` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029009 has offset 0).

The definition of A029009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029009.P3349253957532002275

`∑[A025804(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029009

/-- `∑[A025804(n)]` -/
def P3349253957532002275.Spec : Prop :=
  ∀ n, P3349253957532002275.a n = A029009 n

theorem P3349253957532002275.correct : P3349253957532002275.Spec := by
  intro n
  simp only [A029009]

end A029009

/-! ## A029009.P18170484221746865341

`A025774(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029009.P18170484221746865341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025774 n + a (n - 2)

end

end A029009.P18170484221746865341

namespace A029009

/-- `A025774(n)+a(n-2)` -/
def P18170484221746865341.Spec : Prop :=
  ∀ n, P18170484221746865341.a n = A029009 n

end A029009

/-! ## A029009.P7431946998895511597

`A025804(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029009.P7431946998895511597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025804 n + a (A023443 n).toNat

end

end A029009.P7431946998895511597

namespace A029009

/-- `A025804(n)+a(A023443(n))` -/
def P7431946998895511597.Spec : Prop :=
  ∀ n, P7431946998895511597.a n = A029009 n

end A029009

/-! ## A029009.P8013098930504470888

`(A025774(n)+∑[A008722(n)])/2`
-/

namespace A029009.P8013098930504470888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A025774 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A029009.P8013098930504470888

namespace A029009

/-- `(A025774(n)+∑[A008722(n)])/2` -/
def P8013098930504470888.Spec : Prop :=
  ∀ n, P8013098930504470888.a n = (A029009 n : ℚ)

end A029009

/-! ## A029009.P13426728043248453667

`∑[(A033183(n)+A008722(n))/2]`
-/

namespace A029009.P13426728043248453667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033183 n + A008722 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029009.P13426728043248453667

namespace A029009

/-- `∑[(A033183(n)+A008722(n))/2]` -/
def P13426728043248453667.Spec : Prop :=
  ∀ n, P13426728043248453667.a n = (A029009 n : ℚ)

end A029009

/-! ## A029009.P1486156778431775921

`∑[∑[A025774(n+1)-A008722(n+1)]]`
-/

namespace A029009.P1486156778431775921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025774 (n + 1) - A008722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029009.P1486156778431775921

namespace A029009

/-- `∑[∑[A025774(n+1)-A008722(n+1)]]` -/
def P1486156778431775921.Spec : Prop :=
  ∀ n, P1486156778431775921.a n = A029009 n

end A029009

/-! ## A029009.P7169769592444982055

`A029186(2*n)`
-/

namespace A029009.P7169769592444982055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029186 (2 * n)

end

end A029009.P7169769592444982055

namespace A029009

/-- `A029186(2*n)` -/
def P7169769592444982055.Spec : Prop :=
  ∀ n, P7169769592444982055.a n = A029009 n

end A029009

/-! ## A029009.P13932333610860057521

`∑[A025872(2*n)]`
-/

namespace A029009.P13932333610860057521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029009.P13932333610860057521

namespace A029009

/-- `∑[A025872(2*n)]` -/
def P13932333610860057521.Spec : Prop :=
  ∀ n, P13932333610860057521.a n = A029009 n

end A029009

/-! ## A029009.P1902257475995165724

`A025872(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029009.P1902257475995165724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025872 (n + n) + a (n - 1)

end

end A029009.P1902257475995165724

namespace A029009

/-- `A025872(n+n)+a(n-1)` -/
def P1902257475995165724.Spec : Prop :=
  ∀ n, P1902257475995165724.a n = A029009 n

end A029009

/-! ## A029009.P5651054428049167563

`A029238(2*n+1)+A029190(2*n)`
-/

namespace A029009.P5651054428049167563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n + 1) + A029190 (2 * n)

end

end A029009.P5651054428049167563

namespace A029009

/-- `A029238(2*n+1)+A029190(2*n)` -/
def P5651054428049167563.Spec : Prop :=
  ∀ n, P5651054428049167563.a n = A029009 n

end A029009

/-! ## A029009.P17902986319795385003

`A025872(2*n)+A029181(2*n)-A029359(2*n)`
-/

namespace A029009.P17902986319795385003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (2 * n) + (A029181 (2 * n) - A029359 (2 * n))

end

end A029009.P17902986319795385003

namespace A029009

/-- `A025872(2*n)+A029181(2*n)-A029359(2*n)` -/
def P17902986319795385003.Spec : Prop :=
  ∀ n, P17902986319795385003.a n = A029009 n

end A029009

/-! ## A029009.P14307565385045987710

`A029187(2*n)+A029370(2*n)-A025873(2*n)`
-/

namespace A029009.P14307565385045987710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029187 (2 * n) + (A029370 (2 * n) - A025873 (2 * n))

end

end A029009.P14307565385045987710

namespace A029009

/-- `A029187(2*n)+A029370(2*n)-A025873(2*n)` -/
def P14307565385045987710.Spec : Prop :=
  ∀ n, P14307565385045987710.a n = A029009 n

end A029009

/-! ## A029009.P7574266246185860660

`A029177(2*n)+A029238(2*n)-A029210(2*n)`
-/

namespace A029009.P7574266246185860660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 (2 * n) + (A029238 (2 * n) - A029210 (2 * n))

end

end A029009.P7574266246185860660

namespace A029009

/-- `A029177(2*n)+A029238(2*n)-A029210(2*n)` -/
def P7574266246185860660.Spec : Prop :=
  ∀ n, P7574266246185860660.a n = A029009 n

end A029009

/-! ## A029009.P2122052529078265821

`A029190(2*n)-(A025825(2*n)-A029238(2*n))`
-/

namespace A029009.P2122052529078265821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 (2 * n) - (A025825 (2 * n) - A029238 (2 * n))

end

end A029009.P2122052529078265821

namespace A029009

/-- `A029190(2*n)-(A025825(2*n)-A029238(2*n))` -/
def P2122052529078265821.Spec : Prop :=
  ∀ n, P2122052529078265821.a n = A029009 n

end A029009

/-! ## A029009.P17320123028465291243

`∑[A001281(A033183(n)+A008722(n))]`
-/

namespace A029009.P17320123028465291243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033183 n + A008722 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029009.P17320123028465291243

namespace A029009

/-- `∑[A001281(A033183(n)+A008722(n))]` -/
def P17320123028465291243.Spec : Prop :=
  ∀ n, P17320123028465291243.a n = A029009 n

end A029009

/-! ## A029009.P11430187333883845848

`A001281(A025774(n)+∑[A008722(n)])`
-/

namespace A029009.P11430187333883845848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A025774 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029009.P11430187333883845848

namespace A029009

/-- `A001281(A025774(n)+∑[A008722(n)])` -/
def P11430187333883845848.Spec : Prop :=
  ∀ n, P11430187333883845848.a n = A029009 n

end A029009

/-! ## A029009.P9123962977358887991

`A004525(A025774(n)+∑[A008722(n)])`
-/

namespace A029009.P9123962977358887991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A025774 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029009.P9123962977358887991

namespace A029009

/-- `A004525(A025774(n)+∑[A008722(n)])` -/
def P9123962977358887991.Spec : Prop :=
  ∀ n, P9123962977358887991.a n = A029009 n

end A029009

/-! ## A029009.P5435432428816147569

`A004526(A025774(n)+∑[A008722(n)])`
-/

namespace A029009.P5435432428816147569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A025774 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029009.P5435432428816147569

namespace A029009

/-- `A004526(A025774(n)+∑[A008722(n)])` -/
def P5435432428816147569.Spec : Prop :=
  ∀ n, P5435432428816147569.a n = A029009 n

end A029009

/-! ## A029009.P9245233943686635883

`A006370(A025774(n)+∑[A008722(n)])`
-/

namespace A029009.P9245233943686635883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A025774 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029009.P9245233943686635883

namespace A029009

/-- `A006370(A025774(n)+∑[A008722(n)])` -/
def P9245233943686635883.Spec : Prop :=
  ∀ n, P9245233943686635883.a n = A029009 n

end A029009

/-!
# A029010: Expansion of 1/((1-x)(1-x^2)(1-x^4)(1-x^11)).

The programs for A029010, the canonical program `A029010.P6526692035284058419` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029010 has offset 0).

The definition of A029010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029010.P6526692035284058419

`∑[A025805(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029010

/-- `∑[A025805(n)]` -/
def P6526692035284058419.Spec : Prop :=
  ∀ n, P6526692035284058419.a n = A029010 n

theorem P6526692035284058419.correct : P6526692035284058419.Spec := by
  intro n
  simp only [A029010]

end A029010

/-! ## A029010.P14824263172503027645

`A025775(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029010.P14824263172503027645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025775 n + a (n - 2)

end

end A029010.P14824263172503027645

namespace A029010

/-- `A025775(n)+a(n-2)` -/
def P14824263172503027645.Spec : Prop :=
  ∀ n, P14824263172503027645.a n = A029010 n

end A029010

/-! ## A029010.P3194153003137231019

`A025805(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029010.P3194153003137231019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025805 n + a (A023443 n).toNat

end

end A029010.P3194153003137231019

namespace A029010

/-- `A025805(n)+a(A023443(n))` -/
def P3194153003137231019.Spec : Prop :=
  ∀ n, P3194153003137231019.a n = A029010 n

end A029010

/-! ## A029010.P4777966845313619540

`A025805(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A029010.P4777966845313619540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025805 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A029010.P4777966845313619540

namespace A029010

/-- `A025805(A000007(n)+n)+a(n-1)` -/
def P4777966845313619540.Spec : Prop :=
  ∀ n, P4777966845313619540.a n = A029010 n

end A029010

/-! ## A029010.P11307570949421075803

`A029187(2*n)`
-/

namespace A029010.P11307570949421075803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029187 (2 * n)

end

end A029010.P11307570949421075803

namespace A029010

/-- `A029187(2*n)` -/
def P11307570949421075803.Spec : Prop :=
  ∀ n, P11307570949421075803.a n = A029010 n

end A029010

/-! ## A029010.P8358658799822223320

`∑[A025873(2*n)]`
-/

namespace A029010.P8358658799822223320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029010.P8358658799822223320

namespace A029010

/-- `∑[A025873(2*n)]` -/
def P8358658799822223320.Spec : Prop :=
  ∀ n, P8358658799822223320.a n = A029010 n

end A029010

/-! ## A029010.P5802375662099742515

`A025873(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029010.P5802375662099742515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025873 (n + n) + a (n - 1)

end

end A029010.P5802375662099742515

namespace A029010

/-- `A025873(n+n)+a(n-1)` -/
def P5802375662099742515.Spec : Prop :=
  ∀ n, P5802375662099742515.a n = A029010 n

end A029010

/-! ## A029010.P10423491122334686849

`∑[A029372(2*n)-A029372(2*n+1)]`
-/

namespace A029010.P10423491122334686849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 (2 * n) - A029372 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029010.P10423491122334686849

namespace A029010

/-- `∑[A029372(2*n)-A029372(2*n+1)]` -/
def P10423491122334686849.Spec : Prop :=
  ∀ n, P10423491122334686849.a n = A029010 n

end A029010

/-! ## A029010.P2917382687269939554

`A029220(2*n)+A029353(2*n)-A025903(2*n)`
-/

namespace A029010.P2917382687269939554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (2 * n) + (A029353 (2 * n) - A025903 (2 * n))

end

end A029010.P2917382687269939554

namespace A029010

/-- `A029220(2*n)+A029353(2*n)-A025903(2*n)` -/
def P2917382687269939554.Spec : Prop :=
  ∀ n, P2917382687269939554.a n = A029010 n

end A029010

/-! ## A029010.P12825653873171502571

`A029164(2*n)+A029192(2*n)-A029170(2*n)`
-/

namespace A029010.P12825653873171502571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029164 (2 * n) + (A029192 (2 * n) - A029170 (2 * n))

end

end A029010.P12825653873171502571

namespace A029010

/-- `A029164(2*n)+A029192(2*n)-A029170(2*n)` -/
def P12825653873171502571.Spec : Prop :=
  ∀ n, P12825653873171502571.a n = A029010 n

end A029010

/-! ## A029010.P2670594739336037436

`A029240(2*n+3)+A029240(2*n+7)+A029240(2*n)`
-/

namespace A029010.P2670594739336037436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n + 3) + (A029240 (2 * n + 7) + A029240 (2 * n))

end

end A029010.P2670594739336037436

namespace A029010

/-- `A029240(2*n+3)+A029240(2*n+7)+A029240(2*n)` -/
def P2670594739336037436.Spec : Prop :=
  ∀ n, P2670594739336037436.a n = A029010 n

end A029010

/-! ## A029010.P2571194058379985104

`A029305(3*n)`
-/

namespace A029010.P2571194058379985104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029305 (3 * n)

end

end A029010.P2571194058379985104

namespace A029010

/-- `A029305(3*n)` -/
def P2571194058379985104.Spec : Prop :=
  ∀ n, P2571194058379985104.a n = A029010 n

end A029010

/-! ## A029010.P12676634167041193120

`∑[A025907(3*n)]`
-/

namespace A029010.P12676634167041193120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029010.P12676634167041193120

namespace A029010

/-- `∑[A025907(3*n)]` -/
def P12676634167041193120.Spec : Prop :=
  ∀ n, P12676634167041193120.a n = A029010 n

end A029010

/-!
# A029011: Expansion of 1/((1-x)*(1-x^2)*(1-x^5)*(1-x^6)).

The programs for A029011, the canonical program `A029011.P14410284561223263083` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029011 has offset 0).

The definition of A029011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029011.P14410284561223263083

`∑[A025806(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029011

/-- `∑[A025806(n)]` -/
def P14410284561223263083.Spec : Prop :=
  ∀ n, P14410284561223263083.a n = A029011 n

theorem P14410284561223263083.correct : P14410284561223263083.Spec := by
  intro n
  simp only [A029011]

end A029011

/-! ## A029011.P14313246536200824859

`A025776(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029011.P14313246536200824859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025776 n + a (n - 2)

end

end A029011.P14313246536200824859

namespace A029011

/-- `A025776(n)+a(n-2)` -/
def P14313246536200824859.Spec : Prop :=
  ∀ n, P14313246536200824859.a n = A029011 n

end A029011

/-! ## A029011.P8483444963985626326

`A008669(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029011.P8483444963985626326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A008669 n - a (n - 3)

end

end A029011.P8483444963985626326

namespace A029011

/-- `A008669(n)-a(n-3)` -/
def P8483444963985626326.Spec : Prop :=
  ∀ n, P8483444963985626326.a n = A029011 n

end A029011

/-! ## A029011.P3949224814462706235

`∑[A025837(A166517(n+1)-1)]`
-/

namespace A029011.P3949224814462706235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A166517 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029011.P3949224814462706235

namespace A029011

/-- `∑[A025837(A166517(n+1)-1)]` -/
def P3949224814462706235.Spec : Prop :=
  ∀ n, P3949224814462706235.a n = A029011 n

end A029011

/-! ## A029011.P155852111213531111

`∑[A025837(A166517(n+2))]`
-/

namespace A029011.P155852111213531111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A166517 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029011.P155852111213531111

namespace A029011

/-- `∑[A025837(A166517(n+2))]` -/
def P155852111213531111.Spec : Prop :=
  ∀ n, P155852111213531111.a n = A029011 n

end A029011

/-! ## A029011.P14521611651658477644

`A029177(2*n)`
-/

namespace A029011.P14521611651658477644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 (2 * n)

end

end A029011.P14521611651658477644

namespace A029011

/-- `A029177(2*n)` -/
def P14521611651658477644.Spec : Prop :=
  ∀ n, P14521611651658477644.a n = A029011 n

end A029011

/-! ## A029011.P10413196087171670141

`A029099(Δ[n²])`
-/

namespace A029011.P10413196087171670141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A029011.P10413196087171670141

namespace A029011

/-- `A029099(Δ[n²])` -/
def P10413196087171670141.Spec : Prop :=
  ∀ n, P10413196087171670141.a n = A029011 n

end A029011

/-! ## A029011.P12063724785218455081

`∑[A025864(2*n)]`
-/

namespace A029011.P12063724785218455081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029011.P12063724785218455081

namespace A029011

/-- `∑[A025864(2*n)]` -/
def P12063724785218455081.Spec : Prop :=
  ∀ n, P12063724785218455081.a n = A029011 n

end A029011

/-! ## A029011.P11979973071092043995

`or(char[1], A029177(n+n))`
-/

namespace A029011.P11979973071092043995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A029177 (n + n))

end

end A029011.P11979973071092043995

namespace A029011

/-- `or(char[1], A029177(n+n))` -/
def P11979973071092043995.Spec : Prop :=
  ∀ n, P11979973071092043995.a n = A029011 n

end A029011

/-! ## A029011.P17701891963746258948

`A025864(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029011.P17701891963746258948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025864 (n + n) + a (n - 1)

end

end A029011.P17701891963746258948

namespace A029011

/-- `A025864(n+n)+a(n-1)` -/
def P17701891963746258948.Spec : Prop :=
  ∀ n, P17701891963746258948.a n = A029011 n

end A029011

/-! ## A029011.P1175189757397658103

`A029192(2*n)+A029191(2*n+1)`
-/

namespace A029011.P1175189757397658103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 (2 * n) + A029191 (2 * n + 1)

end

end A029011.P1175189757397658103

namespace A029011

/-- `A029192(2*n)+A029191(2*n+1)` -/
def P1175189757397658103.Spec : Prop :=
  ∀ n, P1175189757397658103.a n = A029011 n

end A029011

/-! ## A029011.P9654765927668421371

`A029207(2*n+1)+A029207(2*n)`
-/

namespace A029011.P9654765927668421371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 (2 * n + 1) + A029207 (2 * n)

end

end A029011.P9654765927668421371

namespace A029011

/-- `A029207(2*n+1)+A029207(2*n)` -/
def P9654765927668421371.Spec : Prop :=
  ∀ n, P9654765927668421371.a n = A029011 n

end A029011

/-! ## A029011.P1815488980535345715

`A029331(2*n+1)+A029198(2*n)`
-/

namespace A029011.P1815488980535345715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (2 * n + 1) + A029198 (2 * n)

end

end A029011.P1815488980535345715

namespace A029011

/-- `A029331(2*n+1)+A029198(2*n)` -/
def P1815488980535345715.Spec : Prop :=
  ∀ n, P1815488980535345715.a n = A029011 n

end A029011

/-! ## A029011.P17527315239728392963

`∑[A025890(2*n+1)+A025890(2*n)]`
-/

namespace A029011.P17527315239728392963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (2 * n + 1) + A025890 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029011.P17527315239728392963

namespace A029011

/-- `∑[A025890(2*n+1)+A025890(2*n)]` -/
def P17527315239728392963.Spec : Prop :=
  ∀ n, P17527315239728392963.a n = A029011 n

end A029011

/-! ## A029011.P16115467740361201690

`A029177(A004277(n))+A000007(n)`
-/

namespace A029011.P16115467740361201690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 (A004277 n).toNat + A000007 n

end

end A029011.P16115467740361201690

namespace A029011

/-- `A029177(A004277(n))+A000007(n)` -/
def P16115467740361201690.Spec : Prop :=
  ∀ n, P16115467740361201690.a n = A029011 n

end A029011

/-! ## A029011.P15429591022482997703

`A000027(A029177(record[A038608(n)]))`
-/

namespace A029011.P15429591022482997703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029177 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A029011.P15429591022482997703

namespace A029011

/-- `A000027(A029177(record[A038608(n)]))` -/
def P15429591022482997703.Spec : Prop :=
  ∀ n, P15429591022482997703.a n = A029011 n

end A029011

/-! ## A029011.P3245144914351290916

`filter[A029099(2*n+1), A276398(#)]`
-/

namespace A029011.P3245144914351290916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029099 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A029011.P3245144914351290916

namespace A029011

/-- `filter[A029099(2*n+1), A276398(#)]` -/
def P3245144914351290916.Spec : Prop :=
  ∀ n, P3245144914351290916.a n = A029011 n

end A029011

/-! ## A029011.P10629047898385211083

`A053188(n²)+A029177(n+n)`
-/

namespace A029011.P10629047898385211083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (n ^ 2) + A029177 (n + n)

end

end A029011.P10629047898385211083

namespace A029011

/-- `A053188(n²)+A029177(n+n)` -/
def P10629047898385211083.Spec : Prop :=
  ∀ n, P10629047898385211083.a n = A029011 n

end A029011

/-!
# A029012: Expansion of 1/((1-x)*(1-x^2)*(1-x^5)*(1-x^7)).

The programs for A029012, the canonical program `A029012.P11179866681866116779` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029012 has offset 0).

The definition of A029012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029012.P11179866681866116779

`∑[A025807(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029012

/-- `∑[A025807(n)]` -/
def P11179866681866116779.Spec : Prop :=
  ∀ n, P11179866681866116779.a n = A029012 n

theorem P11179866681866116779.correct : P11179866681866116779.Spec := by
  intro n
  simp only [A029012]

end A029012

/-! ## A029012.P9626680685350269018

`A025777(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029012.P9626680685350269018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025777 n + a (n - 2)

end

end A029012.P9626680685350269018

namespace A029012

/-- `A025777(n)+a(n-2)` -/
def P9626680685350269018.Spec : Prop :=
  ∀ n, P9626680685350269018.a n = A029012 n

end A029012

/-! ## A029012.P5634331349496353455

`∑[A025859(abs(2-n))+A025859(n)]`
-/

namespace A029012.P5634331349496353455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025859 |2 - (n : ℤ)|.toNat + A025859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029012.P5634331349496353455

namespace A029012

/-- `∑[A025859(abs(2-n))+A025859(n)]` -/
def P5634331349496353455.Spec : Prop :=
  ∀ n, P5634331349496353455.a n = A029012 n

end A029012

/-! ## A029012.P8953398044076872411

`a(n-1)+A025807(n)%A000096(n)` with `a(0)=1`
-/

namespace A029012.P8953398044076872411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025807 n) (A000096 n)

end

end A029012.P8953398044076872411

namespace A029012

/-- `a(n-1)+A025807(n)%A000096(n)` -/
def P8953398044076872411.Spec : Prop :=
  ∀ n, P8953398044076872411.a n = A029012 n

end A029012

/-! ## A029012.P16097280710367093261

`A008673(n)+A029144(n)-A008677(n)`
-/

namespace A029012.P16097280710367093261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008673 n + (A029144 n - A008677 n)

end

end A029012.P16097280710367093261

namespace A029012

/-- `A008673(n)+A029144(n)-A008677(n)` -/
def P16097280710367093261.Spec : Prop :=
  ∀ n, P16097280710367093261.a n = A029012 n

end A029012

/-! ## A029012.P12225489976191436187

`A029183(2*n)`
-/

namespace A029012.P12225489976191436187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029183 (2 * n)

end

end A029012.P12225489976191436187

namespace A029012

/-- `A029183(2*n)` -/
def P12225489976191436187.Spec : Prop :=
  ∀ n, P12225489976191436187.a n = A029012 n

end A029012

/-! ## A029012.P10152375478963947158

`∑[A025869(2*n)]`
-/

namespace A029012.P10152375478963947158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025869 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029012.P10152375478963947158

namespace A029012

/-- `∑[A025869(2*n)]` -/
def P10152375478963947158.Spec : Prop :=
  ∀ n, P10152375478963947158.a n = A029012 n

end A029012

/-! ## A029012.P15549932690449541380

`A025869(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029012.P15549932690449541380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025869 (n + n) + a (n - 1)

end

end A029012.P15549932690449541380

namespace A029012

/-- `A025869(n+n)+a(n-1)` -/
def P15549932690449541380.Spec : Prop :=
  ∀ n, P15549932690449541380.a n = A029012 n

end A029012

/-! ## A029012.P4550022472945532116

`A029204(2*n+1)+A029092(n)`
-/

namespace A029012.P4550022472945532116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (2 * n + 1) + A029092 n

end

end A029012.P4550022472945532116

namespace A029012

/-- `A029204(2*n+1)+A029092(n)` -/
def P4550022472945532116.Spec : Prop :=
  ∀ n, P4550022472945532116.a n = A029012 n

end A029012

/-! ## A029012.P4582545137565142612

`A025859(2*n+1)+∑[A025882(2*n)]`
-/

namespace A029012.P4582545137565142612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025882 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025859 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029012.P4582545137565142612

namespace A029012

/-- `A025859(2*n+1)+∑[A025882(2*n)]` -/
def P4582545137565142612.Spec : Prop :=
  ∀ n, P4582545137565142612.a n = A029012 n

end A029012

/-! ## A029012.P8908148771427080099

`∑[A029349(2*n)-A029349(2*n+1)]`
-/

namespace A029012.P8908148771427080099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 (2 * n) - A029349 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029012.P8908148771427080099

namespace A029012

/-- `∑[A029349(2*n)-A029349(2*n+1)]` -/
def P8908148771427080099.Spec : Prop :=
  ∀ n, P8908148771427080099.a n = A029012 n

end A029012

/-! ## A029012.P10603394279889750343

`A029216(2*n)+A029349(2*n)-A025899(2*n)`
-/

namespace A029012.P10603394279889750343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (2 * n) + (A029349 (2 * n) - A025899 (2 * n))

end

end A029012.P10603394279889750343

namespace A029012

/-- `A029216(2*n)+A029349(2*n)-A025899(2*n)` -/
def P10603394279889750343.Spec : Prop :=
  ∀ n, P10603394279889750343.a n = A029012 n

end A029012

/-! ## A029012.P9628204521899029787

`A029180(2*n)+A029233(2*n)-A029224(2*n)`
-/

namespace A029012.P9628204521899029787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 (2 * n) + (A029233 (2 * n) - A029224 (2 * n))

end

end A029012.P9628204521899029787

namespace A029012

/-- `A029180(2*n)+A029233(2*n)-A029224(2*n)` -/
def P9628204521899029787.Spec : Prop :=
  ∀ n, P9628204521899029787.a n = A029012 n

end A029012

/-! ## A029012.P15111275790651852812

`A029227(2*n+3)+A029227(2*n)`
-/

namespace A029012.P15111275790651852812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029227 (2 * n + 3) + A029227 (2 * n)

end

end A029012.P15111275790651852812

namespace A029012

/-- `A029227(2*n+3)+A029227(2*n)` -/
def P15111275790651852812.Spec : Prop :=
  ∀ n, P15111275790651852812.a n = A029012 n

end A029012

/-! ## A029012.P14622885757239960894

`A029216(A005818(n+1))+A029144(n)`
-/

namespace A029012.P14622885757239960894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (A005818 (n + 1)).toNat + A029144 n

end

end A029012.P14622885757239960894

namespace A029012

/-- `A029216(A005818(n+1))+A029144(n)` -/
def P14622885757239960894.Spec : Prop :=
  ∀ n, P14622885757239960894.a n = A029012 n

end A029012

/-! ## A029012.P66066864140536417

`A029137(2*n)-A029274(3*n+1)`
-/

namespace A029012.P66066864140536417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029137 (2 * n) - A029274 (3 * n + 1)

end

end A029012.P66066864140536417

namespace A029012

/-- `A029137(2*n)-A029274(3*n+1)` -/
def P66066864140536417.Spec : Prop :=
  ∀ n, P66066864140536417.a n = A029012 n

end A029012

/-!
# A029013: Expansion of 1/((1-x)*(1-x^2)*(1-x^5)*(1-x^8)).

The programs for A029013, the canonical program `A029013.P17688571077656891261` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029013 has offset 0).

The definition of A029013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029013.P17688571077656891261

`∑[A025808(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029013

/-- `∑[A025808(n)]` -/
def P17688571077656891261.Spec : Prop :=
  ∀ n, P17688571077656891261.a n = A029013 n

theorem P17688571077656891261.correct : P17688571077656891261.Spec := by
  intro n
  simp only [A029013]

end A029013

/-! ## A029013.P11440213427069304559

`A025778(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029013.P11440213427069304559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025778 n + a (n - 2)

end

end A029013.P11440213427069304559

namespace A029013

/-- `A025778(n)+a(n-2)` -/
def P11440213427069304559.Spec : Prop :=
  ∀ n, P11440213427069304559.a n = A029013 n

end A029013

/-! ## A029013.P16516974281838529893

`A025808(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029013.P16516974281838529893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025808 n + a (A023443 n).toNat

end

end A029013.P16516974281838529893

namespace A029013

/-- `A025808(n)+a(A023443(n))` -/
def P16516974281838529893.Spec : Prop :=
  ∀ n, P16516974281838529893.a n = A029013 n

end A029013

/-! ## A029013.P10936751758636508298

`A029012(n+1)-A029199(n+1)`
-/

namespace A029013.P10936751758636508298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029012 (n + 1) - A029199 (n + 1)

end

end A029013.P10936751758636508298

namespace A029013

/-- `A029012(n+1)-A029199(n+1)` -/
def P10936751758636508298.Spec : Prop :=
  ∀ n, P10936751758636508298.a n = A029013 n

end A029013

/-! ## A029013.P6588646266821673007

`∑[A025840(A166517(n+1)-1)]`
-/

namespace A029013.P6588646266821673007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A166517 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029013.P6588646266821673007

namespace A029013

/-- `∑[A025840(A166517(n+1)-1)]` -/
def P6588646266821673007.Spec : Prop :=
  ∀ n, P6588646266821673007.a n = A029013 n

end A029013

/-! ## A029013.P9481917061372656441

`∑[A025840(A166517(n+2))]`
-/

namespace A029013.P9481917061372656441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A166517 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029013.P9481917061372656441

namespace A029013

/-- `∑[A025840(A166517(n+2))]` -/
def P9481917061372656441.Spec : Prop :=
  ∀ n, P9481917061372656441.a n = A029013 n

end A029013

/-! ## A029013.P555030824926269686

`A029204(2*n+3)+A029204(n)`
-/

namespace A029013.P555030824926269686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (2 * n + 3) + A029204 n

end

end A029013.P555030824926269686

namespace A029013

/-- `A029204(2*n+3)+A029204(n)` -/
def P555030824926269686.Spec : Prop :=
  ∀ n, P555030824926269686.a n = A029013 n

end A029013

/-! ## A029013.P12608604364351855867

`A029383(3*(n+3)+1)`
-/

namespace A029013.P12608604364351855867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029383 (3 * (n + 3) + 1)

end

end A029013.P12608604364351855867

namespace A029013

/-- `A029383(3*(n+3)+1)` -/
def P12608604364351855867.Spec : Prop :=
  ∀ n, P12608604364351855867.a n = A029013 n

end A029013

/-!
# A029014: Expansion of 1/((1-x)*(1-x^2)*(1-x^5)*(1-x^9)).

The programs for A029014, the canonical program `A029014.P5735620079549582816` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029014 has offset 0).

The definition of A029014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029014.P5735620079549582816

`∑[A025809(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029014

/-- `∑[A025809(n)]` -/
def P5735620079549582816.Spec : Prop :=
  ∀ n, P5735620079549582816.a n = A029014 n

theorem P5735620079549582816.correct : P5735620079549582816.Spec := by
  intro n
  simp only [A029014]

end A029014

/-! ## A029014.P12201337570515774988

`A025779(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029014.P12201337570515774988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025779 n + a (n - 2)

end

end A029014.P12201337570515774988

namespace A029014

/-- `A025779(n)+a(n-2)` -/
def P12201337570515774988.Spec : Prop :=
  ∀ n, P12201337570515774988.a n = A029014 n

end A029014

/-! ## A029014.P820556047768983050

`A029188(2*n)`
-/

namespace A029014.P820556047768983050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029188 (2 * n)

end

end A029014.P820556047768983050

namespace A029014

/-- `A029188(2*n)` -/
def P820556047768983050.Spec : Prop :=
  ∀ n, P820556047768983050.a n = A029014 n

end A029014

/-! ## A029014.P2982053100958121468

`∑[A025893(Δ[n²])+A025878(n)]`
-/

namespace A029014.P2982053100958121468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + A025878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029014.P2982053100958121468

namespace A029014

/-- `∑[A025893(Δ[n²])+A025878(n)]` -/
def P2982053100958121468.Spec : Prop :=
  ∀ n, P2982053100958121468.a n = A029014 n

end A029014

/-! ## A029014.P534187736655280985

`A029190(2*n)+A029375(2*n)-A025874(2*n)`
-/

namespace A029014.P534187736655280985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 (2 * n) + (A029375 (2 * n) - A025874 (2 * n))

end

end A029014.P534187736655280985

namespace A029014

/-- `A029190(2*n)+A029375(2*n)-A025874(2*n)` -/
def P534187736655280985.Spec : Prop :=
  ∀ n, P534187736655280985.a n = A029014 n

end A029014

/-! ## A029014.P6066329058485772133

`A029221(2*n)+A029354(2*n)-A025904(2*n)`
-/

namespace A029014.P6066329058485772133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (2 * n) + (A029354 (2 * n) - A025904 (2 * n))

end

end A029014.P6066329058485772133

namespace A029014

/-- `A029221(2*n)+A029354(2*n)-A025904(2*n)` -/
def P6066329058485772133.Spec : Prop :=
  ∀ n, P6066329058485772133.a n = A029014 n

end A029014

/-! ## A029014.P2910435995106010100

`A029165(2*n)+A029179(2*n)-A029153(2*n)`
-/

namespace A029014.P2910435995106010100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029165 (2 * n) + (A029179 (2 * n) - A029153 (2 * n))

end

end A029014.P2910435995106010100

namespace A029014

/-- `A029165(2*n)+A029179(2*n)-A029153(2*n)` -/
def P2910435995106010100.Spec : Prop :=
  ∀ n, P2910435995106010100.a n = A029014 n

end A029014

/-! ## A029014.P12443724797510604064

`A029204(2*n+1)+A029236(2*n)-A029236(2*n+1)`
-/

namespace A029014.P12443724797510604064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (2 * n + 1) + (A029236 (2 * n) - A029236 (2 * n + 1))

end

end A029014.P12443724797510604064

namespace A029014

/-- `A029204(2*n+1)+A029236(2*n)-A029236(2*n+1)` -/
def P12443724797510604064.Spec : Prop :=
  ∀ n, P12443724797510604064.a n = A029014 n

end A029014

/-! ## A029014.P5236457413047772561

`A029204(2*n+5)`
-/

namespace A029014.P5236457413047772561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (2 * n + 5)

end

end A029014.P5236457413047772561

namespace A029014

/-- `A029204(2*n+5)` -/
def P5236457413047772561.Spec : Prop :=
  ∀ n, P5236457413047772561.a n = A029014 n

end A029014

/-! ## A029014.P17486526512273953483

`∑[A025887(2*n+5)]`
-/

namespace A029014.P17486526512273953483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025887 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029014.P17486526512273953483

namespace A029014

/-- `∑[A025887(2*n+5)]` -/
def P17486526512273953483.Spec : Prop :=
  ∀ n, P17486526512273953483.a n = A029014 n

end A029014

/-!
# A029015: Expansion of 1/((1-x)(1-x^2)(1-x^5)(1-x^11)).

The programs for A029015, the canonical program `A029015.P777395226449315672` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029015 has offset 0).

The definition of A029015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029015.P777395226449315672

`∑[A025811(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029015

/-- `∑[A025811(n)]` -/
def P777395226449315672.Spec : Prop :=
  ∀ n, P777395226449315672.a n = A029015 n

theorem P777395226449315672.correct : P777395226449315672.Spec := by
  intro n
  simp only [A029015]

end A029015

/-! ## A029015.P9650450245964322975

`A025780(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029015.P9650450245964322975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025780 n + a (n - 2)

end

end A029015.P9650450245964322975

namespace A029015

/-- `A025780(n)+a(n-2)` -/
def P9650450245964322975.Spec : Prop :=
  ∀ n, P9650450245964322975.a n = A029015 n

end A029015

/-! ## A029015.P2281619830945202726

`A025811(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029015.P2281619830945202726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025811 n + a (A023443 n).toNat

end

end A029015.P2281619830945202726

namespace A029015

/-- `A025811(n)+a(A023443(n))` -/
def P2281619830945202726.Spec : Prop :=
  ∀ n, P2281619830945202726.a n = A029015 n

end A029015

/-! ## A029015.P14672367016510987654

`A029191(2*n)`
-/

namespace A029015.P14672367016510987654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029191 (2 * n)

end

end A029015.P14672367016510987654

namespace A029015

/-- `A029191(2*n)` -/
def P14672367016510987654.Spec : Prop :=
  ∀ n, P14672367016510987654.a n = A029015 n

end A029015

/-! ## A029015.P8333124482366674972

`A029377(2*n+1)+A029192(2*n)`
-/

namespace A029015.P8333124482366674972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 (2 * n + 1) + A029192 (2 * n)

end

end A029015.P8333124482366674972

namespace A029015

/-- `A029377(2*n+1)+A029192(2*n)` -/
def P8333124482366674972.Spec : Prop :=
  ∀ n, P8333124482366674972.a n = A029015 n

end A029015

/-! ## A029015.P1935463196590349578

`A029168(2*n)+A029183(2*n)-A029159(2*n)`
-/

namespace A029015.P1935463196590349578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029168 (2 * n) + (A029183 (2 * n) - A029159 (2 * n))

end

end A029015.P1935463196590349578

namespace A029015

/-- `A029168(2*n)+A029183(2*n)-A029159(2*n)` -/
def P1935463196590349578.Spec : Prop :=
  ∀ n, P1935463196590349578.a n = A029015 n

end A029015

/-! ## A029015.P6174691855140220100

`A029180(2*n)+A029211(2*n)-A029196(2*n)`
-/

namespace A029015.P6174691855140220100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 (2 * n) + (A029211 (2 * n) - A029196 (2 * n))

end

end A029015.P6174691855140220100

namespace A029015

/-- `A029180(2*n)+A029211(2*n)-A029196(2*n)` -/
def P6174691855140220100.Spec : Prop :=
  ∀ n, P6174691855140220100.a n = A029015 n

end A029015

/-! ## A029015.P7746259530682074466

`A029192(2*n)-(A025875(2*n)-A029377(2*n))`
-/

namespace A029015.P7746259530682074466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 (2 * n) - (A025875 (2 * n) - A029377 (2 * n))

end

end A029015.P7746259530682074466

namespace A029015

/-- `A029192(2*n)-(A025875(2*n)-A029377(2*n))` -/
def P7746259530682074466.Spec : Prop :=
  ∀ n, P7746259530682074466.a n = A029015 n

end A029015

/-! ## A029015.P1363116410633939456

`A029206(2*n+1)+A029239(2*n)-A029239(2*n+1)`
-/

namespace A029015.P1363116410633939456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029206 (2 * n + 1) + (A029239 (2 * n) - A029239 (2 * n + 1))

end

end A029015.P1363116410633939456

namespace A029015

/-- `A029206(2*n+1)+A029239(2*n)-A029239(2*n+1)` -/
def P1363116410633939456.Spec : Prop :=
  ∀ n, P1363116410633939456.a n = A029015 n

end A029015

/-! ## A029015.P2034165015211186275

`A029239(2*n+7)+A029239(2*n)`
-/

namespace A029015.P2034165015211186275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (2 * n + 7) + A029239 (2 * n)

end

end A029015.P2034165015211186275

namespace A029015

/-- `A029239(2*n+7)+A029239(2*n)` -/
def P2034165015211186275.Spec : Prop :=
  ∀ n, P2034165015211186275.a n = A029015 n

end A029015

/-!
# A029016: Expansion of 1/((1-x)*(1-x^2)*(1-x^5)*(1-x^12)).

The programs for A029016, the canonical program `A029016.P5481738887745611909` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029016 has offset 0).

The definition of A029016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029016.P5481738887745611909

`∑[A025812(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029016

/-- `∑[A025812(n)]` -/
def P5481738887745611909.Spec : Prop :=
  ∀ n, P5481738887745611909.a n = A029016 n

theorem P5481738887745611909.correct : P5481738887745611909.Spec := by
  intro n
  simp only [A029016]

end A029016

/-! ## A029016.P15144804982908786900

`A025781(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029016.P15144804982908786900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025781 n + a (n - 2)

end

end A029016.P15144804982908786900

namespace A029016

/-- `A025781(n)+a(n-2)` -/
def P15144804982908786900.Spec : Prop :=
  ∀ n, P15144804982908786900.a n = A029016 n

end A029016

/-! ## A029016.P11725623526045277049

`A025812(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029016.P11725623526045277049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025812 n + a (A023443 n).toNat

end

end A029016.P11725623526045277049

namespace A029016

/-- `A025812(n)+a(A023443(n))` -/
def P11725623526045277049.Spec : Prop :=
  ∀ n, P11725623526045277049.a n = A029016 n

end A029016

/-! ## A029016.P16784661687886167179

`a(n-1)+A025812(n)%A000096(n)` with `a(0)=1`
-/

namespace A029016.P16784661687886167179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025812 n) (A000096 n)

end

end A029016.P16784661687886167179

namespace A029016

/-- `a(n-1)+A025812(n)%A000096(n)` -/
def P16784661687886167179.Spec : Prop :=
  ∀ n, P16784661687886167179.a n = A029016 n

end A029016

/-! ## A029016.P4840709731413647093

`A029044(n)+A029149(n)-A025840(n)`
-/

namespace A029016.P4840709731413647093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029044 n + (A029149 n - A025840 n)

end

end A029016.P4840709731413647093

namespace A029016

/-- `A029044(n)+A029149(n)-A025840(n)` -/
def P4840709731413647093.Spec : Prop :=
  ∀ n, P4840709731413647093.a n = A029016 n

end A029016

/-! ## A029016.P11307615355161919684

`A029047(n)+A029149(n)-A025857(n)`
-/

namespace A029016.P11307615355161919684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029047 n + (A029149 n - A025857 n)

end

end A029016.P11307615355161919684

namespace A029016

/-- `A029047(n)+A029149(n)-A025857(n)` -/
def P11307615355161919684.Spec : Prop :=
  ∀ n, P11307615355161919684.a n = A029016 n

end A029016

/-! ## A029016.P15551458788943751002

`A029015(n+1)-A029213(n+1)`
-/

namespace A029016.P15551458788943751002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029015 (n + 1) - A029213 (n + 1)

end

end A029016.P15551458788943751002

namespace A029016

/-- `A029015(n+1)-A029213(n+1)` -/
def P15551458788943751002.Spec : Prop :=
  ∀ n, P15551458788943751002.a n = A029016 n

end A029016

/-! ## A029016.P7107366146735996933

`∑[A120565(A029212(n))]`
-/

namespace A029016.P7107366146735996933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A029212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029016.P7107366146735996933

namespace A029016

/-- `∑[A120565(A029212(n))]` -/
def P7107366146735996933.Spec : Prop :=
  ∀ n, P7107366146735996933.a n = A029016 n

end A029016

/-!
# A029017: Expansion of 1/((1-x)*(1-x^2)*(1-x^6)*(1-x^7)).

The programs for A029017, the canonical program `A029017.P6240289409752224327` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029017 has offset 0).

The definition of A029017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029017.P6240289409752224327

`∑[A025813(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029017

/-- `∑[A025813(n)]` -/
def P6240289409752224327.Spec : Prop :=
  ∀ n, P6240289409752224327.a n = A029017 n

theorem P6240289409752224327.correct : P6240289409752224327.Spec := by
  intro n
  simp only [A029017]

end A029017

/-! ## A029017.P16208255767561161679

`A025782(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029017.P16208255767561161679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025782 n + a (n - 2)

end

end A029017.P16208255767561161679

namespace A029017

/-- `A025782(n)+a(n-2)` -/
def P16208255767561161679.Spec : Prop :=
  ∀ n, P16208255767561161679.a n = A029017 n

end A029017

/-! ## A029017.P13725643656176680561

`A029001(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029017.P13725643656176680561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A029001 n - a (n - 3)

end

end A029017.P13725643656176680561

namespace A029017

/-- `A029001(n)-a(n-3)` -/
def P13725643656176680561.Spec : Prop :=
  ∀ n, P13725643656176680561.a n = A029017 n

end A029017

/-! ## A029017.P12027468809394900578

`∑[A008622(abs(2-n))+A008622(n)]`
-/

namespace A029017.P12027468809394900578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 |2 - (n : ℤ)|.toNat + A008622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029017.P12027468809394900578

namespace A029017

/-- `∑[A008622(abs(2-n))+A008622(n)]` -/
def P12027468809394900578.Spec : Prop :=
  ∀ n, P12027468809394900578.a n = A029017 n

end A029017

/-! ## A029017.P921175474982140928

`∑[round(A008721(n+2)/3)]`
-/

namespace A029017.P921175474982140928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008721 (n + 2) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029017.P921175474982140928

namespace A029017

/-- `∑[round(A008721(n+2)/3)]` -/
def P921175474982140928.Spec : Prop :=
  ∀ n, P921175474982140928.a n = A029017 n

end A029017

/-! ## A029017.P311147964234038679

`A029185(2*n)`
-/

namespace A029017.P311147964234038679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029185 (2 * n)

end

end A029017.P311147964234038679

namespace A029017

/-- `A029185(2*n)` -/
def P311147964234038679.Spec : Prop :=
  ∀ n, P311147964234038679.a n = A029017 n

end A029017

/-! ## A029017.P2502903370120825248

`∑[A025871(2*n)]`
-/

namespace A029017.P2502903370120825248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029017.P2502903370120825248

namespace A029017

/-- `∑[A025871(2*n)]` -/
def P2502903370120825248.Spec : Prop :=
  ∀ n, P2502903370120825248.a n = A029017 n

end A029017

/-! ## A029017.P16746973906276952035

`A025871(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029017.P16746973906276952035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025871 (n + n) + a (n - 1)

end

end A029017.P16746973906276952035

namespace A029017

/-- `A025871(n+n)+a(n-1)` -/
def P16746973906276952035.Spec : Prop :=
  ∀ n, P16746973906276952035.a n = A029017 n

end A029017

/-! ## A029017.P5152010946985188978

`∑[A029218(2*n)-A029261(2*n+1)]`
-/

namespace A029017.P5152010946985188978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (2 * n) - A029261 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029017.P5152010946985188978

namespace A029017

/-- `∑[A029218(2*n)-A029261(2*n+1)]` -/
def P5152010946985188978.Spec : Prop :=
  ∀ n, P5152010946985188978.a n = A029017 n

end A029017

/-! ## A029017.P2511830834937054374

`A025871(2*n)+A029214(2*n)-A025911(2*n)`
-/

namespace A029017.P2511830834937054374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 (2 * n) + (A029214 (2 * n) - A025911 (2 * n))

end

end A029017.P2511830834937054374

namespace A029017

/-- `A025871(2*n)+A029214(2*n)-A025911(2*n)` -/
def P2511830834937054374.Spec : Prop :=
  ∀ n, P2511830834937054374.a n = A029017 n

end A029017

/-! ## A029017.P9522218010496345209

`A029229(2*n)+A029347(2*n)-A025911(2*n)`
-/

namespace A029017.P9522218010496345209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n) + (A029347 (2 * n) - A025911 (2 * n))

end

end A029017.P9522218010496345209

namespace A029017

/-- `A029229(2*n)+A029347(2*n)-A025911(2*n)` -/
def P9522218010496345209.Spec : Prop :=
  ∀ n, P9522218010496345209.a n = A029017 n

end A029017

/-! ## A029017.P4890121425950369181

`A029192(2*n)+A029202(2*n)-A029213(2*n)`
-/

namespace A029017.P4890121425950369181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 (2 * n) + (A029202 (2 * n) - A029213 (2 * n))

end

end A029017.P4890121425950369181

namespace A029017

/-- `A029192(2*n)+A029202(2*n)-A029213(2*n)` -/
def P4890121425950369181.Spec : Prop :=
  ∀ n, P4890121425950369181.a n = A029017 n

end A029017

/-! ## A029017.P17504863189683845111

`A029229(2*n+3)+A029229(2*n)`
-/

namespace A029017.P17504863189683845111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n + 3) + A029229 (2 * n)

end

end A029017.P17504863189683845111

namespace A029017

/-- `A029229(2*n+3)+A029229(2*n)` -/
def P17504863189683845111.Spec : Prop :=
  ∀ n, P17504863189683845111.a n = A029017 n

end A029017

/-! ## A029017.P6710417913770037419

`A029214(A005843(n+1))-A008622(n+1)`
-/

namespace A029017.P6710417913770037419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (A005843 (n + 1)).toNat - A008622 (n + 1)

end

end A029017.P6710417913770037419

namespace A029017

/-- `A029214(A005843(n+1))-A008622(n+1)` -/
def P6710417913770037419.Spec : Prop :=
  ∀ n, P6710417913770037419.a n = A029017 n

end A029017

/-! ## A029017.P3665088259338101345

`A029214(A020742(n+1))-A008622(n+1)`
-/

namespace A029017.P3665088259338101345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (A020742 (n + 1)).toNat - A008622 (n + 1)

end

end A029017.P3665088259338101345

namespace A029017

/-- `A029214(A020742(n+1))-A008622(n+1)` -/
def P3665088259338101345.Spec : Prop :=
  ∀ n, P3665088259338101345.a n = A029017 n

end A029017

/-!
# A029018: Expansion of 1/((1-x)*(1-x^2)*(1-x^6)*(1-x^9)).

The programs for A029018, the canonical program `A029018.P6303500404425571801` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029018 has offset 0).

The definition of A029018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029018.P6303500404425571801

`∑[A025814(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029018

/-- `∑[A025814(n)]` -/
def P6303500404425571801.Spec : Prop :=
  ∀ n, P6303500404425571801.a n = A029018 n

theorem P6303500404425571801.correct : P6303500404425571801.Spec := by
  intro n
  simp only [A029018]

end A029018

/-! ## A029018.P16183773253621565343

`A029003(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029018.P16183773253621565343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A029003 n - a (n - 3)

end

end A029018.P16183773253621565343

namespace A029018

/-- `A029003(n)-a(n-3)` -/
def P16183773253621565343.Spec : Prop :=
  ∀ n, P16183773253621565343.a n = A029018 n

end A029018

/-! ## A029018.P4931268121004276359

`∑[A025798(n)]-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029018.P4931268121004276359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025798 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 3)

end

end A029018.P4931268121004276359

namespace A029018

/-- `∑[A025798(n)]-a(n-3)` -/
def P4931268121004276359.Spec : Prop :=
  ∀ n, P4931268121004276359.a n = A029018 n

end A029018

/-! ## A029018.P5256039762537273491

`∑[A114209(A008611(n)+1)]`
-/

namespace A029018.P5256039762537273491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (A008611 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029018.P5256039762537273491

namespace A029018

/-- `∑[A114209(A008611(n)+1)]` -/
def P5256039762537273491.Spec : Prop :=
  ∀ n, P5256039762537273491.a n = A029018 n

end A029018

/-! ## A029018.P17841709756642323611

`A025814(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029018.P17841709756642323611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025814 n + a (A023443 n).toNat

end

end A029018.P17841709756642323611

namespace A029018

/-- `A025814(n)+a(A023443(n))` -/
def P17841709756642323611.Spec : Prop :=
  ∀ n, P17841709756642323611.a n = A029018 n

end A029018

/-! ## A029018.P16665357235772849523

`∑[A001399(A002264(n))-a(n-1)]` with `a(0)=1`
-/

namespace A029018.P16665357235772849523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001399 (A002264 n).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029018.P16665357235772849523

namespace A029018

/-- `∑[A001399(A002264(n))-a(n-1)]` -/
def P16665357235772849523.Spec : Prop :=
  ∀ n, P16665357235772849523.a n = A029018 n

end A029018

/-! ## A029018.P4712078812726148691

`∑[A008799(A165754(A008611(n)))]`
-/

namespace A029018.P4712078812726148691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A165754 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029018.P4712078812726148691

namespace A029018

/-- `∑[A008799(A165754(A008611(n)))]` -/
def P4712078812726148691.Spec : Prop :=
  ∀ n, P4712078812726148691.a n = A029018 n

end A029018

/-! ## A029018.P15475501758453474160

`∑[A025825(n)+A005044(A008611(n))]`
-/

namespace A029018.P15475501758453474160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025825 n + A005044 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029018.P15475501758453474160

namespace A029018

/-- `∑[A025825(n)+A005044(A008611(n))]` -/
def P15475501758453474160.Spec : Prop :=
  ∀ n, P15475501758453474160.a n = A029018 n

end A029018

/-! ## A029018.P14064309248579126355

`A029190(2*n)`
-/

namespace A029018.P14064309248579126355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 (2 * n)

end

end A029018.P14064309248579126355

namespace A029018

/-- `A029190(2*n)` -/
def P14064309248579126355.Spec : Prop :=
  ∀ n, P14064309248579126355.a n = A029018 n

end A029018

/-! ## A029018.P2932979626513587062

`∑[A025874(2*n)]`
-/

namespace A029018.P2932979626513587062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029018.P2932979626513587062

namespace A029018

/-- `∑[A025874(2*n)]` -/
def P2932979626513587062.Spec : Prop :=
  ∀ n, P2932979626513587062.a n = A029018 n

end A029018

/-! ## A029018.P17554468637963583343

`A025874(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029018.P17554468637963583343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025874 (n + n) + a (n - 1)

end

end A029018.P17554468637963583343

namespace A029018

/-- `A025874(n+n)+a(n-1)` -/
def P17554468637963583343.Spec : Prop :=
  ∀ n, P17554468637963583343.a n = A029018 n

end A029018

/-! ## A029018.P385233491772741097

`A029186(2*n)-A029238(2*n+1)`
-/

namespace A029018.P385233491772741097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029186 (2 * n) - A029238 (2 * n + 1)

end

end A029018.P385233491772741097

namespace A029018

/-- `A029186(2*n)-A029238(2*n+1)` -/
def P385233491772741097.Spec : Prop :=
  ∀ n, P385233491772741097.a n = A029018 n

end A029018

/-! ## A029018.P6022200472019862365

`A025874(2*n)+A029219(2*n)-A025920(2*n)`
-/

namespace A029018.P6022200472019862365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (2 * n) + (A029219 (2 * n) - A025920 (2 * n))

end

end A029018.P6022200472019862365

namespace A029018

/-- `A025874(2*n)+A029219(2*n)-A025920(2*n)` -/
def P6022200472019862365.Spec : Prop :=
  ∀ n, P6022200472019862365.a n = A029018 n

end A029018

/-! ## A029018.P12165033918030910525

`A025874(2*n)+A029188(2*n)-A029375(2*n)`
-/

namespace A029018.P12165033918030910525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (2 * n) + (A029188 (2 * n) - A029375 (2 * n))

end

end A029018.P12165033918030910525

namespace A029018

/-- `A025874(2*n)+A029188(2*n)-A029375(2*n)` -/
def P12165033918030910525.Spec : Prop :=
  ∀ n, P12165033918030910525.a n = A029018 n

end A029018

/-! ## A029018.P7846892129614245018

`A029177(2*n)+A029232(2*n)-A029200(2*n)`
-/

namespace A029018.P7846892129614245018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 (2 * n) + (A029232 (2 * n) - A029200 (2 * n))

end

end A029018.P7846892129614245018

namespace A029018

/-- `A029177(2*n)+A029232(2*n)-A029200(2*n)` -/
def P7846892129614245018.Spec : Prop :=
  ∀ n, P7846892129614245018.a n = A029018 n

end A029018

/-! ## A029018.P10401794530965029944

`A029238(2*n)+A029238(A005818(n+1))`
-/

namespace A029018.P10401794530965029944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n) + A029238 (A005818 (n + 1)).toNat

end

end A029018.P10401794530965029944

namespace A029018

/-- `A029238(2*n)+A029238(A005818(n+1))` -/
def P10401794530965029944.Spec : Prop :=
  ∀ n, P10401794530965029944.a n = A029018 n

end A029018

/-! ## A029018.P437788429411437160

`A029238(2*n)+A029238(A062545(n+1))`
-/

namespace A029018.P437788429411437160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n) + A029238 (A062545 (n + 1)).toNat

end

end A029018.P437788429411437160

namespace A029018

/-- `A029238(2*n)+A029238(A062545(n+1))` -/
def P437788429411437160.Spec : Prop :=
  ∀ n, P437788429411437160.a n = A029018 n

end A029018

/-! ## A029018.P5423203074705331030

`A029204(2*n+7)-A029195(n+1)`
-/

namespace A029018.P5423203074705331030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (2 * n + 7) - A029195 (n + 1)

end

end A029018.P5423203074705331030

namespace A029018

/-- `A029204(2*n+7)-A029195(n+1)` -/
def P5423203074705331030.Spec : Prop :=
  ∀ n, P5423203074705331030.a n = A029018 n

end A029018

/-!
# A029019: Expansion of 1/((1-x)*(1-x^2)*(1-x^6)*(1-x^11)).

The programs for A029019, the canonical program `A029019.P1049519990538111962` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029019 has offset 0).

The definition of A029019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029019.P1049519990538111962

`∑[A025815(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029019

/-- `∑[A025815(n)]` -/
def P1049519990538111962.Spec : Prop :=
  ∀ n, P1049519990538111962.a n = A029019 n

theorem P1049519990538111962.correct : P1049519990538111962.Spec := by
  intro n
  simp only [A029019]

end A029019

/-! ## A029019.P70436223613207247

`A025783(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029019.P70436223613207247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025783 n + a (n - 2)

end

end A029019.P70436223613207247

namespace A029019

/-- `A025783(n)+a(n-2)` -/
def P70436223613207247.Spec : Prop :=
  ∀ n, P70436223613207247.a n = A029019 n

end A029019

/-! ## A029019.P1421831944075761902

`A029005(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029019.P1421831944075761902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A029005 n - a (n - 3)

end

end A029019.P1421831944075761902

namespace A029019

/-- `A029005(n)-a(n-3)` -/
def P1421831944075761902.Spec : Prop :=
  ∀ n, P1421831944075761902.a n = A029019 n

end A029019

/-! ## A029019.P396193215068330478

`A029192(2*n)`
-/

namespace A029019.P396193215068330478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 (2 * n)

end

end A029019.P396193215068330478

namespace A029019

/-- `A029192(2*n)` -/
def P396193215068330478.Spec : Prop :=
  ∀ n, P396193215068330478.a n = A029019 n

end A029019

/-! ## A029019.P8749730004879522133

`∑[A025875(2*n)]`
-/

namespace A029019.P8749730004879522133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029019.P8749730004879522133

namespace A029019

/-- `∑[A025875(2*n)]` -/
def P8749730004879522133.Spec : Prop :=
  ∀ n, P8749730004879522133.a n = A029019 n

end A029019

/-! ## A029019.P6188293524360986434

`A025875(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029019.P6188293524360986434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025875 (n + n) + a (n - 1)

end

end A029019.P6188293524360986434

namespace A029019

/-- `A025875(n+n)+a(n-1)` -/
def P6188293524360986434.Spec : Prop :=
  ∀ n, P6188293524360986434.a n = A029019 n

end A029019

/-! ## A029019.P3592075876494991921

`∑[A029377(2*n)-A029377(2*n+1)]`
-/

namespace A029019.P3592075876494991921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 (2 * n) - A029377 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029019.P3592075876494991921

namespace A029019

/-- `∑[A029377(2*n)-A029377(2*n+1)]` -/
def P3592075876494991921.Spec : Prop :=
  ∀ n, P3592075876494991921.a n = A029019 n

end A029019

/-! ## A029019.P14361588438382238127

`A029224(2*n)+A029377(2*n)-A025926(2*n)`
-/

namespace A029019.P14361588438382238127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (2 * n) + (A029377 (2 * n) - A025926 (2 * n))

end

end A029019.P14361588438382238127

namespace A029019

/-- `A029224(2*n)+A029377(2*n)-A025926(2*n)` -/
def P14361588438382238127.Spec : Prop :=
  ∀ n, P14361588438382238127.a n = A029019 n

end A029019

/-! ## A029019.P12312989664685432945

`A029170(2*n)+A029187(2*n)-A029164(2*n)`
-/

namespace A029019.P12312989664685432945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029170 (2 * n) + (A029187 (2 * n) - A029164 (2 * n))

end

end A029019.P12312989664685432945

namespace A029019

/-- `A029170(2*n)+A029187(2*n)-A029164(2*n)` -/
def P12312989664685432945.Spec : Prop :=
  ∀ n, P12312989664685432945.a n = A029019 n

end A029019

/-! ## A029019.P1899773445498785056

`A029185(2*n)+A029213(2*n)-A029202(2*n)`
-/

namespace A029019.P1899773445498785056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029185 (2 * n) + (A029213 (2 * n) - A029202 (2 * n))

end

end A029019.P1899773445498785056

namespace A029019

/-- `A029185(2*n)+A029213(2*n)-A029202(2*n)` -/
def P1899773445498785056.Spec : Prop :=
  ∀ n, P1899773445498785056.a n = A029019 n

end A029019

/-! ## A029019.P3302595833992321163

`A029217(A005818(n+2))-A029437(2*n+1)`
-/

namespace A029019.P3302595833992321163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029217 (A005818 (n + 2)).toNat - A029437 (2 * n + 1)

end

end A029019.P3302595833992321163

namespace A029019

/-- `A029217(A005818(n+2))-A029437(2*n+1)` -/
def P3302595833992321163.Spec : Prop :=
  ∀ n, P3302595833992321163.a n = A029019 n

end A029019

/-! ## A029019.P4570833808267145283

`A029217(A020735(n+2))-A029437(2*n+1)`
-/

namespace A029019.P4570833808267145283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029217 (A020735 (n + 2)).toNat - A029437 (2 * n + 1)

end

end A029019.P4570833808267145283

namespace A029019

/-- `A029217(A020735(n+2))-A029437(2*n+1)` -/
def P4570833808267145283.Spec : Prop :=
  ∀ n, P4570833808267145283.a n = A029019 n

end A029019

/-! ## A029019.P260727065972189848

`A000027(A029192(n+n))`
-/

namespace A029019.P260727065972189848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029192 (n + n)).toNat

end

end A029019.P260727065972189848

namespace A029019

/-- `A000027(A029192(n+n))` -/
def P260727065972189848.Spec : Prop :=
  ∀ n, P260727065972189848.a n = A029019 n

end A029019

/-!
# A029020: Expansion of 1/((1-x)*(1-x^2)*(1-x^7)*(1-x^8)).

The programs for A029020, the canonical program `A029020.P6858622026024199747` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029020 has offset 0).

The definition of A029020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029020.P6858622026024199747

`∑[A025816(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029020

/-- `∑[A025816(n)]` -/
def P6858622026024199747.Spec : Prop :=
  ∀ n, P6858622026024199747.a n = A029020 n

theorem P6858622026024199747.correct : P6858622026024199747.Spec := by
  intro n
  simp only [A029020]

end A029020

/-! ## A029020.P15245191134334835192

`A025784(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029020.P15245191134334835192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025784 n + a (n - 2)

end

end A029020.P15245191134334835192

namespace A029020

/-- `A025784(n)+a(n-2)` -/
def P15245191134334835192.Spec : Prop :=
  ∀ n, P15245191134334835192.a n = A029020 n

end A029020

/-! ## A029020.P7873589406391783641

`A025816(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029020.P7873589406391783641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025816 n + a (A023443 n).toNat

end

end A029020.P7873589406391783641

namespace A029020

/-- `A025816(n)+a(A023443(n))` -/
def P7873589406391783641.Spec : Prop :=
  ∀ n, P7873589406391783641.a n = A029020 n

end A029020

/-! ## A029020.P12047137497687404436

`∑[A025867(abs(2-n))+A025867(n)]`
-/

namespace A029020.P12047137497687404436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 |2 - (n : ℤ)|.toNat + A025867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029020.P12047137497687404436

namespace A029020

/-- `∑[A025867(abs(2-n))+A025867(n)]` -/
def P12047137497687404436.Spec : Prop :=
  ∀ n, P12047137497687404436.a n = A029020 n

end A029020

/-! ## A029020.P14490506710084464294

`a(n-1)+A025816(n)+A000007(n)` with `a(0)=1, a(1)=1`
-/

namespace A029020.P14490506710084464294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A025816 n + A000007 n)

end

end A029020.P14490506710084464294

namespace A029020

/-- `a(n-1)+A025816(n)+A000007(n)` -/
def P14490506710084464294.Spec : Prop :=
  ∀ n, P14490506710084464294.a n = A029020 n

end A029020

/-! ## A029020.P641545869095569281

`A028310(a(n-1))+A025816(n)` with `a(0)=1`
-/

namespace A029020.P641545869095569281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025816 n

end

end A029020.P641545869095569281

namespace A029020

/-- `A028310(a(n-1))+A025816(n)` -/
def P641545869095569281.Spec : Prop :=
  ∀ n, P641545869095569281.a n = A029020 n

end A029020

/-!
# A029021: Expansion of 1/((1-x)*(1-x^2)*(1-x^7)*(1-x^9)).

The programs for A029021, the canonical program `A029021.P13032765609088074308` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029021 has offset 0).

The definition of A029021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029021.P13032765609088074308

`∑[A025817(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029021

/-- `∑[A025817(n)]` -/
def P13032765609088074308.Spec : Prop :=
  ∀ n, P13032765609088074308.a n = A029021 n

theorem P13032765609088074308.correct : P13032765609088074308.Spec := by
  intro n
  simp only [A029021]

end A029021

/-! ## A029021.P14887063374007313781

`A025785(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029021.P14887063374007313781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025785 n + a (n - 2)

end

end A029021.P14887063374007313781

namespace A029021

/-- `A025785(n)+a(n-2)` -/
def P14887063374007313781.Spec : Prop :=
  ∀ n, P14887063374007313781.a n = A029021 n

end A029021

/-! ## A029021.P2284104467891552665

`A025817(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029021.P2284104467891552665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025817 n + a (A023443 n).toNat

end

end A029021.P2284104467891552665

namespace A029021

/-- `A025817(n)+a(A023443(n))` -/
def P2284104467891552665.Spec : Prop :=
  ∀ n, P2284104467891552665.a n = A029021 n

end A029021

/-! ## A029021.P13254854483550777171

`∑[A025868(abs(2-n))+A025868(n)]`
-/

namespace A029021.P13254854483550777171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 |2 - (n : ℤ)|.toNat + A025868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029021.P13254854483550777171

namespace A029021

/-- `∑[A025868(abs(2-n))+A025868(n)]` -/
def P13254854483550777171.Spec : Prop :=
  ∀ n, P13254854483550777171.a n = A029021 n

end A029021

/-! ## A029021.P4247627752073855936

`A029050(n)+A029157(n)-A025846(n)`
-/

namespace A029021.P4247627752073855936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029050 n + (A029157 n - A025846 n)

end

end A029021.P4247627752073855936

namespace A029021

/-- `A029050(n)+A029157(n)-A025846(n)` -/
def P4247627752073855936.Spec : Prop :=
  ∀ n, P4247627752073855936.a n = A029021 n

end A029021

/-! ## A029021.P4372952701020701526

`A029025(n)+A029226(n)-A025821(n)`
-/

namespace A029021.P4372952701020701526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029025 n + (A029226 n - A025821 n)

end

end A029021.P4372952701020701526

namespace A029021

/-- `A029025(n)+A029226(n)-A025821(n)` -/
def P4372952701020701526.Spec : Prop :=
  ∀ n, P4372952701020701526.a n = A029021 n

end A029021

/-! ## A029021.P2327923031867166221

`A025817(n)+a(A028242(A004273(n)))` with `a(0)=1`
-/

namespace A029021.P2327923031867166221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025817 n + a (A028242 (A004273 n).toNat).toNat

end

end A029021.P2327923031867166221

namespace A029021

/-- `A025817(n)+a(A028242(A004273(n)))` -/
def P2327923031867166221.Spec : Prop :=
  ∀ n, P2327923031867166221.a n = A029021 n

end A029021

/-! ## A029021.P2100319343761791844

`A029359(A005408(n+1))+A029074(n)`
-/

namespace A029021.P2100319343761791844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A005408 (n + 1)).toNat + A029074 n

end

end A029021.P2100319343761791844

namespace A029021

/-- `A029359(A005408(n+1))+A029074(n)` -/
def P2100319343761791844.Spec : Prop :=
  ∀ n, P2100319343761791844.a n = A029021 n

end A029021

/-! ## A029021.P13861332158151583576

`A029359(A144396(n+1))+A029074(n)`
-/

namespace A029021.P13861332158151583576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A144396 (n + 1)).toNat + A029074 n

end

end A029021.P13861332158151583576

namespace A029021

/-- `A029359(A144396(n+1))+A029074(n)` -/
def P13861332158151583576.Spec : Prop :=
  ∀ n, P13861332158151583576.a n = A029021 n

end A029021

/-! ## A029021.P13031489942847946673

`A029359(A144396(n+1))+∑[A025868(n)]`
-/

namespace A029021.P13031489942847946673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A144396 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029021.P13031489942847946673

namespace A029021

/-- `A029359(A144396(n+1))+∑[A025868(n)]` -/
def P13031489942847946673.Spec : Prop :=
  ∀ n, P13031489942847946673.a n = A029021 n

end A029021

/-! ## A029021.P5895714705663403045

`A065033(2*a(n-1))+A025817(n)` with `a(0)=1`
-/

namespace A029021.P5895714705663403045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065033 (2 * a (n - 1)).toNat + A025817 n

end

end A029021.P5895714705663403045

namespace A029021

/-- `A065033(2*a(n-1))+A025817(n)` -/
def P5895714705663403045.Spec : Prop :=
  ∀ n, P5895714705663403045.a n = A029021 n

end A029021

/-! ## A029021.P5337156036570008873

`A174221(2*a(n-1))+A025817(n)` with `a(0)=1`
-/

namespace A029021.P5337156036570008873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A174221 (2 * a (n - 1)).toNat + A025817 n

end

end A029021.P5337156036570008873

namespace A029021

/-- `A174221(2*a(n-1))+A025817(n)` -/
def P5337156036570008873.Spec : Prop :=
  ∀ n, P5337156036570008873.a n = A029021 n

end A029021

/-!
# A029022: Expansion of 1/((1-x)*(1-x^2)*(1-x^7)*(1-x^10)).

The programs for A029022, the canonical program `A029022.P11910295019392272593` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029022 has offset 0).

The definition of A029022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029022.P11910295019392272593

`∑[A025818(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029022

/-- `∑[A025818(n)]` -/
def P11910295019392272593.Spec : Prop :=
  ∀ n, P11910295019392272593.a n = A029022 n

theorem P11910295019392272593.correct : P11910295019392272593.Spec := by
  intro n
  simp only [A029022]

end A029022

/-! ## A029022.P10057458197215010313

`A025786(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029022.P10057458197215010313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025786 n + a (n - 2)

end

end A029022.P10057458197215010313

namespace A029022

/-- `A025786(n)+a(n-2)` -/
def P10057458197215010313.Spec : Prop :=
  ∀ n, P10057458197215010313.a n = A029022 n

end A029022

/-! ## A029022.P18425518716876960962

`A025818(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029022.P18425518716876960962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025818 n + a (A023443 n).toNat

end

end A029022.P18425518716876960962

namespace A029022

/-- `A025818(n)+a(A023443(n))` -/
def P18425518716876960962.Spec : Prop :=
  ∀ n, P18425518716876960962.a n = A029022 n

end A029022

/-! ## A029022.P8371072326211580333

`A025818(or(n, A000035(n)))+a(n-1)` with `a(0)=1`
-/

namespace A029022.P8371072326211580333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025818 (Int.lor (n : ℤ) (A000035 n)).toNat + a (n - 1)

end

end A029022.P8371072326211580333

namespace A029022

/-- `A025818(or(n, A000035(n)))+a(n-1)` -/
def P8371072326211580333.Spec : Prop :=
  ∀ n, P8371072326211580333.a n = A029022 n

end A029022

/-! ## A029022.P13681838234581038229

`A029051(n)+A029158(n)-A025847(n)`
-/

namespace A029022.P13681838234581038229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029051 n + (A029158 n - A025847 n)

end

end A029022.P13681838234581038229

namespace A029022

/-- `A029051(n)+A029158(n)-A025847(n)` -/
def P13681838234581038229.Spec : Prop :=
  ∀ n, P13681838234581038229.a n = A029022 n

end A029022

/-! ## A029022.P17601148120270332520

`A029051(n)+A029193(n)-A025899(n)`
-/

namespace A029022.P17601148120270332520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029051 n + (A029193 n - A025899 n)

end

end A029022.P17601148120270332520

namespace A029022

/-- `A029051(n)+A029193(n)-A025899(n)` -/
def P17601148120270332520.Spec : Prop :=
  ∀ n, P17601148120270332520.a n = A029022 n

end A029022

/-! ## A029022.P15957123397444677917

`∑[round(A008721(n+4)/5)]`
-/

namespace A029022.P15957123397444677917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008721 (n + 4) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029022.P15957123397444677917

namespace A029022

/-- `∑[round(A008721(n+4)/5)]` -/
def P15957123397444677917.Spec : Prop :=
  ∀ n, P15957123397444677917.a n = A029022 n

end A029022

/-! ## A029022.P5909765198678092303

`A025818(n)+A004442(A004442(a(n-1)))` with `a(0)=1`
-/

namespace A029022.P5909765198678092303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025818 n + A004442 (A004442 (a (n - 1)).toNat).toNat

end

end A029022.P5909765198678092303

namespace A029022

/-- `A025818(n)+A004442(A004442(a(n-1)))` -/
def P5909765198678092303.Spec : Prop :=
  ∀ n, P5909765198678092303.a n = A029022 n

end A029022

/-!
# A029023: Expansion of 1/((1-x)*(1-x^2)*(1-x^7)*(1-x^11)).

The programs for A029023, the canonical program `A029023.P12404370847291015571` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029023 has offset 0).

The definition of A029023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029023.P12404370847291015571

`∑[A025819(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029023

/-- `∑[A025819(n)]` -/
def P12404370847291015571.Spec : Prop :=
  ∀ n, P12404370847291015571.a n = A029023 n

theorem P12404370847291015571.correct : P12404370847291015571.Spec := by
  intro n
  simp only [A029023]

end A029023

/-! ## A029023.P15459302669454364167

`A025787(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029023.P15459302669454364167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025787 n + a (n - 2)

end

end A029023.P15459302669454364167

namespace A029023

/-- `A025787(n)+a(n-2)` -/
def P15459302669454364167.Spec : Prop :=
  ∀ n, P15459302669454364167.a n = A029023 n

end A029023

/-! ## A029023.P5800465022841330659

`A029180(2*n)-A029217(2*n+1)`
-/

namespace A029023.P5800465022841330659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 (2 * n) - A029217 (2 * n + 1)

end

end A029023.P5800465022841330659

namespace A029023

/-- `A029180(2*n)-A029217(2*n+1)` -/
def P5800465022841330659.Spec : Prop :=
  ∀ n, P5800465022841330659.a n = A029023 n

end A029023

/-! ## A029023.P4369183837436134106

`∑[A025907(2*n)+Δ[A029422(2*n+1)]]`
-/

namespace A029023.P4369183837436134106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029023.P4369183837436134106

namespace A029023

/-- `∑[A025907(2*n)+Δ[A029422(2*n+1)]]` -/
def P4369183837436134106.Spec : Prop :=
  ∀ n, P4369183837436134106.a n = A029023 n

end A029023

/-! ## A029023.P13962821022517311840

`A029228(2*n+7)`
-/

namespace A029023.P13962821022517311840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (2 * n + 7)

end

end A029023.P13962821022517311840

namespace A029023

/-- `A029228(2*n+7)` -/
def P13962821022517311840.Spec : Prop :=
  ∀ n, P13962821022517311840.a n = A029023 n

end A029023

/-! ## A029023.P3277519488457026288

`∑[A025910(2*n+7)]`
-/

namespace A029023.P3277519488457026288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029023.P3277519488457026288

namespace A029023

/-- `∑[A025910(2*n+7)]` -/
def P3277519488457026288.Spec : Prop :=
  ∀ n, P3277519488457026288.a n = A029023 n

end A029023

/-! ## A029023.P9127469280063134257

`A029228(A020742(n))+A000007(n+1)`
-/

namespace A029023.P9127469280063134257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (A020742 n).toNat + A000007 (n + 1)

end

end A029023.P9127469280063134257

namespace A029023

/-- `A029228(A020742(n))+A000007(n+1)` -/
def P9127469280063134257.Spec : Prop :=
  ∀ n, P9127469280063134257.a n = A029023 n

end A029023

/-! ## A029023.P528847500079831516

`A029228(A020742(n))/A001221(A126990(n+1))`
-/

namespace A029023.P528847500079831516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029228 (A020742 n).toNat : ℚ) / (A001221 (A126990 (n + 1)).toNat : ℚ)

end

end A029023.P528847500079831516

namespace A029023

/-- `A029228(A020742(n))/A001221(A126990(n+1))` -/
def P528847500079831516.Spec : Prop :=
  ∀ n, P528847500079831516.a n = (A029023 n : ℚ)

end A029023

/-! ## A029023.P11296832738489714403

`A029228(A020742(n))/A078898(A095959(n+1))`
-/

namespace A029023.P11296832738489714403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029228 (A020742 n).toNat : ℚ) / (A078898 (A095959 (n + 1)).toNat : ℚ)

end

end A029023.P11296832738489714403

namespace A029023

/-- `A029228(A020742(n))/A078898(A095959(n+1))` -/
def P11296832738489714403.Spec : Prop :=
  ∀ n, P11296832738489714403.a n = (A029023 n : ℚ)

end A029023

/-! ## A029023.P12963019356003262034

`A029228(A020742(n))^A001221(A008578(n+1))`
-/

namespace A029023.P12963019356003262034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029228 (A020742 n).toNat : ℚ) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A029023.P12963019356003262034

namespace A029023

/-- `A029228(A020742(n))^A001221(A008578(n+1))` -/
def P12963019356003262034.Spec : Prop :=
  ∀ n, P12963019356003262034.a n = (A029023 n : ℚ)

end A029023

/-! ## A029023.P15557698389194590786

`A090418(A001749(n+1))+A029228(A020742(n))`
-/

namespace A029023.P15557698389194590786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 (A001749 (n + 1)).toNat + A029228 (A020742 n).toNat

end

end A029023.P15557698389194590786

namespace A029023

/-- `A090418(A001749(n+1))+A029228(A020742(n))` -/
def P15557698389194590786.Spec : Prop :=
  ∀ n, P15557698389194590786.a n = A029023 n

end A029023

/-!
# A029024: Expansion of 1/((1-x)*(1-x^2)*(1-x^7)*(1-x^12)).

The programs for A029024, the canonical program `A029024.P968207086213750906` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029024 has offset 0).

The definition of A029024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029024.P968207086213750906

`∑[A025820(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029024

/-- `∑[A025820(n)]` -/
def P968207086213750906.Spec : Prop :=
  ∀ n, P968207086213750906.a n = A029024 n

theorem P968207086213750906.correct : P968207086213750906.Spec := by
  intro n
  simp only [A029024]

end A029024

/-! ## A029024.P11033914745187273928

`A025788(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029024.P11033914745187273928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025788 n + a (n - 2)

end

end A029024.P11033914745187273928

namespace A029024

/-- `A025788(n)+a(n-2)` -/
def P11033914745187273928.Spec : Prop :=
  ∀ n, P11033914745187273928.a n = A029024 n

end A029024

/-! ## A029024.P5299501276237633501

`A025820(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029024.P5299501276237633501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025820 n + a (A023443 n).toNat

end

end A029024.P5299501276237633501

namespace A029024

/-- `A025820(n)+a(A023443(n))` -/
def P5299501276237633501.Spec : Prop :=
  ∀ n, P5299501276237633501.a n = A029024 n

end A029024

/-! ## A029024.P6087333926652296331

`∑[abs(∑[A025788(n)*A033999(n)])]`
-/

namespace A029024.P6087333926652296331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 n * A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029024.P6087333926652296331

namespace A029024

/-- `∑[abs(∑[A025788(n)*A033999(n)])]` -/
def P6087333926652296331.Spec : Prop :=
  ∀ n, P6087333926652296331.a n = A029024 n

end A029024

/-! ## A029024.P2976198678494867702

`A029053(n)+A029160(n)-A025849(n)`
-/

namespace A029024.P2976198678494867702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 n + (A029160 n - A025849 n)

end

end A029024.P2976198678494867702

namespace A029024

/-- `A029053(n)+A029160(n)-A025849(n)` -/
def P2976198678494867702.Spec : Prop :=
  ∀ n, P2976198678494867702.a n = A029024 n

end A029024

/-! ## A029024.P4550348524019079963

`A029228(A020742(n+1))-A029235(n+1)`
-/

namespace A029024.P4550348524019079963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (A020742 (n + 1)).toNat - A029235 (n + 1)

end

end A029024.P4550348524019079963

namespace A029024

/-- `A029228(A020742(n+1))-A029235(n+1)` -/
def P4550348524019079963.Spec : Prop :=
  ∀ n, P4550348524019079963.a n = A029024 n

end A029024

/-! ## A029024.P2025228970657639639

`A025820(n)+a(A025581(A000124(n)))` with `a(0)=1`
-/

namespace A029024.P2025228970657639639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025820 n + a (A025581 (A000124 n).toNat).toNat

end

end A029024.P2025228970657639639

namespace A029024

/-- `A025820(n)+a(A025581(A000124(n)))` -/
def P2025228970657639639.Spec : Prop :=
  ∀ n, P2025228970657639639.a n = A029024 n

end A029024

/-! ## A029024.P12228471091557493626

`A025820(n)+a(A259361(n²))` with `a(0)=1`
-/

namespace A029024.P12228471091557493626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025820 n + a (A259361 (n ^ 2)).toNat

end

end A029024.P12228471091557493626

namespace A029024

/-- `A025820(n)+a(A259361(n²))` -/
def P12228471091557493626.Spec : Prop :=
  ∀ n, P12228471091557493626.a n = A029024 n

end A029024

/-!
# A029025: Expansion of 1/((1-x)*(1-x^2)*(1-x^8)*(1-x^9)).

The programs for A029025, the canonical program `A029025.P4180660963339087720` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029025 has offset 0).

The definition of A029025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029025.P4180660963339087720

`∑[A025821(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029025

/-- `∑[A025821(n)]` -/
def P4180660963339087720.Spec : Prop :=
  ∀ n, P4180660963339087720.a n = A029025 n

theorem P4180660963339087720.correct : P4180660963339087720.Spec := by
  intro n
  simp only [A029025]

end A029025

/-! ## A029025.P6946515418046615110

`A025789(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029025.P6946515418046615110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025789 n + a (n - 2)

end

end A029025.P6946515418046615110

namespace A029025

/-- `A025789(n)+a(n-2)` -/
def P6946515418046615110.Spec : Prop :=
  ∀ n, P6946515418046615110.a n = A029025 n

end A029025

/-! ## A029025.P5809917748558657653

`∑[A025804(n)-a(n-4)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A029025.P5809917748558657653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  A025804 n - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029025.P5809917748558657653

namespace A029025

/-- `∑[A025804(n)-a(n-4)]` -/
def P5809917748558657653.Spec : Prop :=
  ∀ n, P5809917748558657653.a n = A029025 n

end A029025

/-! ## A029025.P4377226945786743966

`a(n-1)+A025821(n)+A000007(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029025.P4377226945786743966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (A025821 n + A000007 n)

end

end A029025.P4377226945786743966

namespace A029025

/-- `a(n-1)+A025821(n)+A000007(n)` -/
def P4377226945786743966.Spec : Prop :=
  ∀ n, P4377226945786743966.a n = A029025 n

end A029025

/-! ## A029025.P17092527442218952466

`A025821(n)+a(n-1)%A251791(n)` with `a(0)=1`
-/

namespace A029025.P17092527442218952466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025821 n + Int.tmod (a (n - 1)) (A251791 n)

end

end A029025.P17092527442218952466

namespace A029025

/-- `A025821(n)+a(n-1)%A251791(n)` -/
def P17092527442218952466.Spec : Prop :=
  ∀ n, P17092527442218952466.a n = A029025 n

end A029025

/-! ## A029025.P17386703649625858836

`A028310(a(n-1))+A025821(n)` with `a(0)=1, a(1)=1`
-/

namespace A029025.P17386703649625858836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A028310 (a (n - 1)).toNat + A025821 n

end

end A029025.P17386703649625858836

namespace A029025

/-- `A028310(a(n-1))+A025821(n)` -/
def P17386703649625858836.Spec : Prop :=
  ∀ n, P17386703649625858836.a n = A029025 n

end A029025

/-! ## A029025.P7819360627818428893

`a(n-1)+A025821(n)%A112671(n+2)` with `a(0)=1`
-/

namespace A029025.P7819360627818428893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025821 n) (A112671 (n + 2))

end

end A029025.P7819360627818428893

namespace A029025

/-- `a(n-1)+A025821(n)%A112671(n+2)` -/
def P7819360627818428893.Spec : Prop :=
  ∀ n, P7819360627818428893.a n = A029025 n

end A029025

/-!
# A029026: Expansion of 1/((1-x)(1-x^2)(1-x^8)(1-x^11)).

The programs for A029026, the canonical program `A029026.P10562045008763740111` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029026 has offset 0).

The definition of A029026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029026.P10562045008763740111

`∑[A025822(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029026

/-- `∑[A025822(n)]` -/
def P10562045008763740111.Spec : Prop :=
  ∀ n, P10562045008763740111.a n = A029026 n

theorem P10562045008763740111.correct : P10562045008763740111.Spec := by
  intro n
  simp only [A029026]

end A029026

/-! ## A029026.P15800149195608875214

`A025790(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029026.P15800149195608875214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025790 n + a (n - 2)

end

end A029026.P15800149195608875214

namespace A029026

/-- `A025790(n)+a(n-2)` -/
def P15800149195608875214.Spec : Prop :=
  ∀ n, P15800149195608875214.a n = A029026 n

end A029026

/-! ## A029026.P1666119949304564171

`A025822(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029026.P1666119949304564171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025822 n + a (A023443 n).toNat

end

end A029026.P1666119949304564171

namespace A029026

/-- `A025822(n)+a(A023443(n))` -/
def P1666119949304564171.Spec : Prop :=
  ∀ n, P1666119949304564171.a n = A029026 n

end A029026

/-! ## A029026.P994422063246259648

`A025822(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A029026.P994422063246259648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025822 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A029026.P994422063246259648

namespace A029026

/-- `A025822(A000007(n)+n)+a(n-1)` -/
def P994422063246259648.Spec : Prop :=
  ∀ n, P994422063246259648.a n = A029026 n

end A029026

/-! ## A029026.P12868917328513293231

`A029056(n)+A029163(n)-A025852(n)`
-/

namespace A029026.P12868917328513293231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029056 n + (A029163 n - A025852 n)

end

end A029026.P12868917328513293231

namespace A029026

/-- `A029056(n)+A029163(n)-A025852(n)` -/
def P12868917328513293231.Spec : Prop :=
  ∀ n, P12868917328513293231.a n = A029026 n

end A029026

/-! ## A029026.P715479996683891681

`A029072(n)+A029163(n)-A025903(n)`
-/

namespace A029026.P715479996683891681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n + (A029163 n - A025903 n)

end

end A029026.P715479996683891681

namespace A029026

/-- `A029072(n)+A029163(n)-A025903(n)` -/
def P715479996683891681.Spec : Prop :=
  ∀ n, P715479996683891681.a n = A029026 n

end A029026

/-! ## A029026.P312075069367535372

`A029023(n+1)-A029228(n+1)`
-/

namespace A029026.P312075069367535372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029023 (n + 1) - A029228 (n + 1)

end

end A029026.P312075069367535372

namespace A029026

/-- `A029023(n+1)-A029228(n+1)` -/
def P312075069367535372.Spec : Prop :=
  ∀ n, P312075069367535372.a n = A029026 n

end A029026

/-! ## A029026.P17537088297976226766

`A029228(A020742(n+1))-A029228(n+1)`
-/

namespace A029026.P17537088297976226766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (A020742 (n + 1)).toNat - A029228 (n + 1)

end

end A029026.P17537088297976226766

namespace A029026

/-- `A029228(A020742(n+1))-A029228(n+1)` -/
def P17537088297976226766.Spec : Prop :=
  ∀ n, P17537088297976226766.a n = A029026 n

end A029026

/-! ## A029026.P2178189802909834788

`A029228(A005408(n+4))-A029228(n+1)`
-/

namespace A029026.P2178189802909834788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (A005408 (n + 4)).toNat - A029228 (n + 1)

end

end A029026.P2178189802909834788

namespace A029026

/-- `A029228(A005408(n+4))-A029228(n+1)` -/
def P2178189802909834788.Spec : Prop :=
  ∀ n, P2178189802909834788.a n = A029026 n

end A029026

/-! ## A029026.P16990596218481514364

`A025822(n)+a(A220062(A000124(n)))` with `a(0)=1`
-/

namespace A029026.P16990596218481514364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025822 n + a (A220062 (A000124 n).toNat).toNat

end

end A029026.P16990596218481514364

namespace A029026

/-- `A025822(n)+a(A220062(A000124(n)))` -/
def P16990596218481514364.Spec : Prop :=
  ∀ n, P16990596218481514364.a n = A029026 n

end A029026

/-!
# A029027: Expansion of 1/((1-x)*(1-x^2)*(1-x^9)*(1-x^10)).

The programs for A029027, the canonical program `A029027.P11280766384065519404` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029027 has offset 0).

The definition of A029027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029027.P11280766384065519404

`∑[A025823(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029027

/-- `∑[A025823(n)]` -/
def P11280766384065519404.Spec : Prop :=
  ∀ n, P11280766384065519404.a n = A029027 n

theorem P11280766384065519404.correct : P11280766384065519404.Spec := by
  intro n
  simp only [A029027]

end A029027

/-! ## A029027.P2206988146551569189

`A025791(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029027.P2206988146551569189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025791 n + a (n - 2)

end

end A029027.P2206988146551569189

namespace A029027

/-- `A025791(n)+a(n-2)` -/
def P2206988146551569189.Spec : Prop :=
  ∀ n, P2206988146551569189.a n = A029027 n

end A029027

/-! ## A029027.P8290912782830161338

`A025823(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029027.P8290912782830161338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025823 n + a (A023443 n).toNat

end

end A029027.P8290912782830161338

namespace A029027

/-- `A025823(n)+a(A023443(n))` -/
def P8290912782830161338.Spec : Prop :=
  ∀ n, P8290912782830161338.a n = A029027 n

end A029027

/-! ## A029027.P9346327459017927357

`A025823(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A029027.P9346327459017927357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025823 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A029027.P9346327459017927357

namespace A029027

/-- `A025823(A000007(n)+n)+a(n-1)` -/
def P9346327459017927357.Spec : Prop :=
  ∀ n, P9346327459017927357.a n = A029027 n

end A029027

/-! ## A029027.P12755131646053276913

`a(n-1)+A025823(n)*A057427(n)` with `a(0)=1`
-/

namespace A029027.P12755131646053276913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A025823 n * A057427 n

end

end A029027.P12755131646053276913

namespace A029027

/-- `a(n-1)+A025823(n)*A057427(n)` -/
def P12755131646053276913.Spec : Prop :=
  ∀ n, P12755131646053276913.a n = A029027 n

end A029027

/-! ## A029027.P5921193032896361774

`a(n-1)+A000041(gcd(n, n+1))*A025823(n)` with `a(0)=1`
-/

namespace A029027.P5921193032896361774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000041 (Nat.gcd n (n + 1)) * A025823 n

end

end A029027.P5921193032896361774

namespace A029027

/-- `a(n-1)+A000041(gcd(n, n+1))*A025823(n)` -/
def P5921193032896361774.Spec : Prop :=
  ∀ n, P5921193032896361774.a n = A029027 n

end A029027

/-! ## A029027.P11831116241930932643

`a(n-1)+1-(A309873(n+1)²-A025823(n))` with `a(0)=1`
-/

namespace A029027.P11831116241930932643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A309873 (n + 1) ^ 2 - A025823 n)

end

end A029027.P11831116241930932643

namespace A029027

/-- `a(n-1)+1-(A309873(n+1)²-A025823(n))` -/
def P11831116241930932643.Spec : Prop :=
  ∀ n, P11831116241930932643.a n = A029027 n

end A029027

/-! ## A029027.P6467049088756341414

`A028310(a(n-1))+A025823(n)` with `a(0)=1`
-/

namespace A029027.P6467049088756341414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025823 n

end

end A029027.P6467049088756341414

namespace A029027

/-- `A028310(a(n-1))+A025823(n)` -/
def P6467049088756341414.Spec : Prop :=
  ∀ n, P6467049088756341414.a n = A029027 n

end A029027

/-! ## A029027.P13422229632109057307

`A175676(3*a(n-1))+A025823(n)` with `a(0)=1`
-/

namespace A029027.P13422229632109057307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175676 (3 * a (n - 1)).toNat + A025823 n

end

end A029027.P13422229632109057307

namespace A029027

/-- `A175676(3*a(n-1))+A025823(n)` -/
def P13422229632109057307.Spec : Prop :=
  ∀ n, P13422229632109057307.a n = A029027 n

end A029027

/-!
# A029028: Expansion of 1/((1-x)(1-x^2)(1-x^9)(1-x^11)).

The programs for A029028, the canonical program `A029028.P12826529296820235701` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029028 has offset 0).

The definition of A029028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029028.P12826529296820235701

`∑[A025824(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029028

/-- `∑[A025824(n)]` -/
def P12826529296820235701.Spec : Prop :=
  ∀ n, P12826529296820235701.a n = A029028 n

theorem P12826529296820235701.correct : P12826529296820235701.Spec := by
  intro n
  simp only [A029028]

end A029028

/-! ## A029028.P16796223840526581804

`A025792(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029028.P16796223840526581804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025792 n + a (n - 2)

end

end A029028.P16796223840526581804

namespace A029028

/-- `A025792(n)+a(n-2)` -/
def P16796223840526581804.Spec : Prop :=
  ∀ n, P16796223840526581804.a n = A029028 n

end A029028

/-! ## A029028.P11655770046857747261

`A025824(or(n, char[1]))+a(n-1)` with `a(0)=1`
-/

namespace A029028.P11655770046857747261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025824 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A029028.P11655770046857747261

namespace A029028

/-- `A025824(or(n, char[1]))+a(n-1)` -/
def P11655770046857747261.Spec : Prop :=
  ∀ n, P11655770046857747261.a n = A029028 n

end A029028

/-! ## A029028.P958841715160886872

`A025824(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029028.P958841715160886872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025824 n + a (A023443 n).toNat

end

end A029028.P958841715160886872

namespace A029028

/-- `A025824(n)+a(A023443(n))` -/
def P958841715160886872.Spec : Prop :=
  ∀ n, P958841715160886872.a n = A029028 n

end A029028

/-! ## A029028.P5002759694901923425

`A029059(n)+A029166(n)-A025855(n)`
-/

namespace A029028.P5002759694901923425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029059 n + (A029166 n - A025855 n)

end

end A029028.P5002759694901923425

namespace A029028

/-- `A029059(n)+A029166(n)-A025855(n)` -/
def P5002759694901923425.Spec : Prop :=
  ∀ n, P5002759694901923425.a n = A029028 n

end A029028

/-!
# A029029: Expansion of 1/((1-x)*(1-x^2)*(1-x^9)*(1-x^12)).

The programs for A029029, the canonical program `A029029.P18356996008769846066` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029029 has offset 0).

The definition of A029029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029029.P18356996008769846066

`∑[A025825(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029029

/-- `∑[A025825(n)]` -/
def P18356996008769846066.Spec : Prop :=
  ∀ n, P18356996008769846066.a n = A029029 n

theorem P18356996008769846066.correct : P18356996008769846066.Spec := by
  intro n
  simp only [A029029]

end A029029

/-! ## A029029.P16855684517119675756

`∑[A005044(A008611(n)+2)]`
-/

namespace A029029.P16855684517119675756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008611 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029029.P16855684517119675756

namespace A029029

/-- `∑[A005044(A008611(n)+2)]` -/
def P16855684517119675756.Spec : Prop :=
  ∀ n, P16855684517119675756.a n = A029029 n

end A029029

/-! ## A029029.P16574875709438412607

`∑[A005044(∑[A257075(n)]+2)]`
-/

namespace A029029.P16574875709438412607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029029.P16574875709438412607

namespace A029029

/-- `∑[A005044(∑[A257075(n)]+2)]` -/
def P16574875709438412607.Spec : Prop :=
  ∀ n, P16574875709438412607.a n = A029029 n

end A029029

/-! ## A029029.P2339723816357551642

`∑[A025830(A005408(A008611(n)))]`
-/

namespace A029029.P2339723816357551642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (A005408 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029029.P2339723816357551642

namespace A029029

/-- `∑[A025830(A005408(A008611(n)))]` -/
def P2339723816357551642.Spec : Prop :=
  ∀ n, P2339723816357551642.a n = A029029 n

end A029029

/-! ## A029029.P4904758147931057653

`∑[A069905(2-Δ[A060022(n)])]`
-/

namespace A029029.P4904758147931057653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060022 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029029.P4904758147931057653

namespace A029029

/-- `∑[A069905(2-Δ[A060022(n)])]` -/
def P4904758147931057653.Spec : Prop :=
  ∀ n, P4904758147931057653.a n = A029029 n

end A029029

/-! ## A029029.P17054614332275252552

`∑[A005044(A008611(A020715(n)))]`
-/

namespace A029029.P17054614332275252552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008611 (A020715 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029029.P17054614332275252552

namespace A029029

/-- `∑[A005044(A008611(A020715(n)))]` -/
def P17054614332275252552.Spec : Prop :=
  ∀ n, P17054614332275252552.a n = A029029 n

end A029029

/-! ## A029029.P2118048254660093436

`∑[A351742(2*n)]`
-/

namespace A029029.P2118048254660093436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351742 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029029.P2118048254660093436

namespace A029029

/-- `∑[A351742(2*n)]` -/
def P2118048254660093436.Spec : Prop :=
  ∀ n, P2118048254660093436.a n = A029029 n

end A029029

/-! ## A029029.P13198764873053066635

`A351742(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029029.P13198764873053066635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A351742 (n + n) + a (n - 1)

end

end A029029.P13198764873053066635

namespace A029029

/-- `A351742(n+n)+a(n-1)` -/
def P13198764873053066635.Spec : Prop :=
  ∀ n, P13198764873053066635.a n = A029029 n

end A029029

/-! ## A029029.P6451832492039235563

`∑[A005044(A008612(2*n)+2)]`
-/

namespace A029029.P6451832492039235563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008612 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029029.P6451832492039235563

namespace A029029

/-- `∑[A005044(A008612(2*n)+2)]` -/
def P6451832492039235563.Spec : Prop :=
  ∀ n, P6451832492039235563.a n = A029029 n

end A029029

/-! ## A029029.P12427623899533608314

`∑[A351725(A046092(2*n))]`
-/

namespace A029029.P12427623899533608314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (A046092 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029029.P12427623899533608314

namespace A029029

/-- `∑[A351725(A046092(2*n))]` -/
def P12427623899533608314.Spec : Prop :=
  ∀ n, P12427623899533608314.a n = A029029 n

end A029029

/-!
# A029030: Expansion of 1/((1-x)(1-x^2)(1-x^10)(1-x^11)).

The programs for A029030, the canonical program `A029030.P16404387939384550290` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029030 has offset 0).

The definition of A029030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029030.P16404387939384550290

`∑[A025826(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029030

/-- `∑[A025826(n)]` -/
def P16404387939384550290.Spec : Prop :=
  ∀ n, P16404387939384550290.a n = A029030 n

theorem P16404387939384550290.correct : P16404387939384550290.Spec := by
  intro n
  simp only [A029030]

end A029030

/-! ## A029030.P3923350658642791689

`A025793(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029030.P3923350658642791689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025793 n + a (n - 2)

end

end A029030.P3923350658642791689

namespace A029030

/-- `A025793(n)+a(n-2)` -/
def P3923350658642791689.Spec : Prop :=
  ∀ n, P3923350658642791689.a n = A029030 n

end A029030

/-! ## A029030.P18252882275822960061

`A025826(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029030.P18252882275822960061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025826 n + a (A023443 n).toNat

end

end A029030.P18252882275822960061

namespace A029030

/-- `A025826(n)+a(A023443(n))` -/
def P18252882275822960061.Spec : Prop :=
  ∀ n, P18252882275822960061.a n = A029030 n

end A029030

/-! ## A029030.P720950139603613239

`a(n-1)+A025826(n)+A000007(n)` with `a(0)=1`
-/

namespace A029030.P720950139603613239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025826 n + A000007 n)

end

end A029030.P720950139603613239

namespace A029030

/-- `a(n-1)+A025826(n)+A000007(n)` -/
def P720950139603613239.Spec : Prop :=
  ∀ n, P720950139603613239.a n = A029030 n

end A029030

/-! ## A029030.P17124685455602981299

`a(n-1)-A025826(n)*A057428(n)` with `a(0)=1`
-/

namespace A029030.P17124685455602981299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A025826 n * A057428 n

end

end A029030.P17124685455602981299

namespace A029030

/-- `a(n-1)-A025826(n)*A057428(n)` -/
def P17124685455602981299.Spec : Prop :=
  ∀ n, P17124685455602981299.a n = A029030 n

end A029030

/-! ## A029030.P3106024559673034524

`a(n-1)+A025826(n)%A000096(n)` with `a(0)=1`
-/

namespace A029030.P3106024559673034524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025826 n) (A000096 n)

end

end A029030.P3106024559673034524

namespace A029030

/-- `a(n-1)+A025826(n)%A000096(n)` -/
def P3106024559673034524.Spec : Prop :=
  ∀ n, P3106024559673034524.a n = A029030 n

end A029030

/-! ## A029030.P9494230847157200351

`∑[A025822(n+2)-A025921(n+2)]`
-/

namespace A029030.P9494230847157200351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 (n + 2) - A025921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029030.P9494230847157200351

namespace A029030

/-- `∑[A025822(n+2)-A025921(n+2)]` -/
def P9494230847157200351.Spec : Prop :=
  ∀ n, P9494230847157200351.a n = A029030 n

end A029030

/-! ## A029030.P13769670324912147578

`A025826(n)+a(n-ceil(n/A000041(n)))` with `a(0)=1`
-/

namespace A029030.P13769670324912147578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025826 n + a ((n : ℤ) - ⌈(n : ℚ) / (A000041 n : ℚ)⌉).toNat

end

end A029030.P13769670324912147578

namespace A029030

/-- `A025826(n)+a(n-ceil(n/A000041(n)))` -/
def P13769670324912147578.Spec : Prop :=
  ∀ n, P13769670324912147578.a n = A029030 n

end A029030

/-! ## A029030.P9157177390085375252

`A061579(A061579(a(n-1)))+A025826(n)` with `a(0)=1`
-/

namespace A029030.P9157177390085375252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061579 (A061579 (a (n - 1)).toNat).toNat + A025826 n

end

end A029030.P9157177390085375252

namespace A029030

/-- `A061579(A061579(a(n-1)))+A025826(n)` -/
def P9157177390085375252.Spec : Prop :=
  ∀ n, P9157177390085375252.a n = A029030 n

end A029030

/-! ## A029030.P8104010340169999126

`A032742(2*a(n-1))+A025826(n)` with `a(0)=1`
-/

namespace A029030.P8104010340169999126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032742 (2 * a (n - 1)).toNat + A025826 n

end

end A029030.P8104010340169999126

namespace A029030

/-- `A032742(2*a(n-1))+A025826(n)` -/
def P8104010340169999126.Spec : Prop :=
  ∀ n, P8104010340169999126.a n = A029030 n

end A029030

/-!
# A029031: Expansion of 1/((1-x)(1-x^2)(1-x^11)(1-x^12)).

The programs for A029031, the canonical program `A029031.P834443779075650966` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029031 has offset 0).

The definition of A029031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029031.P6249128138260853945

`∑[A025827(n)]`
-/

namespace A029031.P6249128138260853945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029031.P6249128138260853945

namespace A029031

/-- `∑[A025827(n)]` -/
def P6249128138260853945.Spec : Prop :=
  ∀ n, P6249128138260853945.a n = A029031 n

end A029031

/-! ## A029031.P8675983184439315021

`A025794(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029031.P8675983184439315021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025794 n + a (n - 2)

end

end A029031.P8675983184439315021

namespace A029031

/-- `A025794(n)+a(n-2)` -/
def P8675983184439315021.Spec : Prop :=
  ∀ n, P8675983184439315021.a n = A029031 n

end A029031

/-! ## A029031.P18435894781390166945

`A025827(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029031.P18435894781390166945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025827 n + a (A023443 n).toNat

end

end A029031.P18435894781390166945

namespace A029031

/-- `A025827(n)+a(A023443(n))` -/
def P18435894781390166945.Spec : Prop :=
  ∀ n, P18435894781390166945.a n = A029031 n

end A029031

/-! ## A029031.P4466943821966628232

`∑[A025875(abs(2-n))+A025875(n)]`
-/

namespace A029031.P4466943821966628232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 |2 - (n : ℤ)|.toNat + A025875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029031.P4466943821966628232

namespace A029031

/-- `∑[A025875(abs(2-n))+A025875(n)]` -/
def P4466943821966628232.Spec : Prop :=
  ∀ n, P4466943821966628232.a n = A029031 n

end A029031

/-! ## A029031.P834443779075650966

`A029062(n)+A029170(n)-A025858(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029031

/-- `A029062(n)+A029170(n)-A025858(n)` -/
def P834443779075650966.Spec : Prop :=
  ∀ n, P834443779075650966.a n = A029031 n

theorem P834443779075650966.correct : P834443779075650966.Spec := by
  intro n
  simp only [A029031]

end A029031

/-!
# A029032: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)*(1-x^5)).

The programs for A029032, the canonical program `A029032.P5921861359942327218` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029032 has offset 0).

The definition of A029032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029032.P5921861359942327218

`1+floor((2*n^3+39*n²+228*n)/720)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029032

/-- `1+floor((2*n^3+39*n²+228*n)/720)` -/
def P5921861359942327218.Spec : Prop :=
  ∀ n, P5921861359942327218.a n = A029032 n

theorem P5921861359942327218.correct : P5921861359942327218.Spec := by
  intro n
  simp only [A029032]

end A029032

/-! ## A029032.P17782906979117092245

`∑[A008680(n)]`
-/

namespace A029032.P17782906979117092245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029032.P17782906979117092245

namespace A029032

/-- `∑[A008680(n)]` -/
def P17782906979117092245.Spec : Prop :=
  ∀ n, P17782906979117092245.a n = A029032 n

end A029032

/-! ## A029032.P14439742491387347030

`A029162(2*n)`
-/

namespace A029032.P14439742491387347030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029162 (2 * n)

end

end A029032.P14439742491387347030

namespace A029032

/-- `A029162(2*n)` -/
def P14439742491387347030.Spec : Prop :=
  ∀ n, P14439742491387347030.a n = A029032 n

end A029032

/-! ## A029032.P15846049451950555703

`A029099(2*n)`
-/

namespace A029032.P15846049451950555703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029099 (2 * n)

end

end A029032.P15846049451950555703

namespace A029032

/-- `A029099(2*n)` -/
def P15846049451950555703.Spec : Prop :=
  ∀ n, P15846049451950555703.a n = A029032 n

end A029032

/-! ## A029032.P17164266809823638533

`A029194(2*n)`
-/

namespace A029032.P17164266809823638533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 (2 * n)

end

end A029032.P17164266809823638533

namespace A029032

/-- `A029194(2*n)` -/
def P17164266809823638533.Spec : Prop :=
  ∀ n, P17164266809823638533.a n = A029032 n

end A029032

/-! ## A029032.P14791495154041935156

`∑[A025851(2*n)]`
-/

namespace A029032.P14791495154041935156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029032.P14791495154041935156

namespace A029032

/-- `∑[A025851(2*n)]` -/
def P14791495154041935156.Spec : Prop :=
  ∀ n, P14791495154041935156.a n = A029032 n

end A029032

/-! ## A029032.P16333294632000920243

`∑[A025877(2*n)]`
-/

namespace A029032.P16333294632000920243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029032.P16333294632000920243

namespace A029032

/-- `∑[A025877(2*n)]` -/
def P16333294632000920243.Spec : Prop :=
  ∀ n, P16333294632000920243.a n = A029032 n

end A029032

/-! ## A029032.P5447323451299776211

`∑[A029327(2*n)-A029327(2*n+1)]`
-/

namespace A029032.P5447323451299776211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (2 * n) - A029327 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029032.P5447323451299776211

namespace A029032

/-- `∑[A029327(2*n)-A029327(2*n+1)]` -/
def P5447323451299776211.Spec : Prop :=
  ∀ n, P5447323451299776211.a n = A029032 n

end A029032

/-! ## A029032.P8966619089944212652

`A029246(2*n+3)`
-/

namespace A029032.P8966619089944212652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029246 (2 * n + 3)

end

end A029032.P8966619089944212652

namespace A029032

/-- `A029246(2*n+3)` -/
def P8966619089944212652.Spec : Prop :=
  ∀ n, P8966619089944212652.a n = A029032 n

end A029032

/-! ## A029032.P3567732585173212694

`A029288(3*n)`
-/

namespace A029032.P3567732585173212694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (3 * n)

end

end A029032.P3567732585173212694

namespace A029032

/-- `A029288(3*n)` -/
def P3567732585173212694.Spec : Prop :=
  ∀ n, P3567732585173212694.a n = A029032 n

end A029032

/-! ## A029032.P8464883298620823921

`∑[A025893(3*n)]`
-/

namespace A029032.P8464883298620823921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029032.P8464883298620823921

namespace A029032

/-- `∑[A025893(3*n)]` -/
def P8464883298620823921.Spec : Prop :=
  ∀ n, P8464883298620823921.a n = A029032 n

end A029032

/-!
# A029033: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)*(1-x^7)).

The programs for A029033, the canonical program `A029033.P14067260972338451208` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029033 has offset 0).

The definition of A029033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029033.P14067260972338451208

`∑[A025829(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029033

/-- `∑[A025829(n)]` -/
def P14067260972338451208.Spec : Prop :=
  ∀ n, P14067260972338451208.a n = A029033 n

theorem P14067260972338451208.correct : P14067260972338451208.Spec := by
  intro n
  simp only [A029033]

end A029033

/-! ## A029033.P15165851804556422132

`A029001(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029033.P15165851804556422132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029001 n - a (n - 2)

end

end A029033.P15165851804556422132

namespace A029033

/-- `A029001(n)-a(n-2)` -/
def P15165851804556422132.Spec : Prop :=
  ∀ n, P15165851804556422132.a n = A029033 n

end A029033

/-! ## A029033.P17160548890169350756

`A025773(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029033.P17160548890169350756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025773 n + a (n - 3)

end

end A029033.P17160548890169350756

namespace A029033

/-- `A025773(n)+a(n-3)` -/
def P17160548890169350756.Spec : Prop :=
  ∀ n, P17160548890169350756.a n = A029033 n

end A029033

/-! ## A029033.P77998364854594959

`A029137(abs(1-n))+A029137(n)`
-/

namespace A029033.P77998364854594959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029137 |1 - (n : ℤ)|.toNat + A029137 n

end

end A029033.P77998364854594959

namespace A029033

/-- `A029137(abs(1-n))+A029137(n)` -/
def P77998364854594959.Spec : Prop :=
  ∀ n, P77998364854594959.a n = A029033 n

end A029033

/-! ## A029033.P1327342420890550989

`A029214(2*n)`
-/

namespace A029033.P1327342420890550989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (2 * n)

end

end A029033.P1327342420890550989

namespace A029033

/-- `A029214(2*n)` -/
def P1327342420890550989.Spec : Prop :=
  ∀ n, P1327342420890550989.a n = A029033 n

end A029033

/-! ## A029033.P12569630840146181446

`A029120(Δ[n²])`
-/

namespace A029033.P12569630840146181446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029120 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A029033.P12569630840146181446

namespace A029033

/-- `A029120(Δ[n²])` -/
def P12569630840146181446.Spec : Prop :=
  ∀ n, P12569630840146181446.a n = A029033 n

end A029033

/-! ## A029033.P367151183919135331

`∑[A025897(2*n)]`
-/

namespace A029033.P367151183919135331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029033.P367151183919135331

namespace A029033

/-- `∑[A025897(2*n)]` -/
def P367151183919135331.Spec : Prop :=
  ∀ n, P367151183919135331.a n = A029033 n

end A029033

/-! ## A029033.P2855209498283712810

`A025897(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029033.P2855209498283712810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025897 (n + n) + a (n - 1)

end

end A029033.P2855209498283712810

namespace A029033

/-- `A025897(n+n)+a(n-1)` -/
def P2855209498283712810.Spec : Prop :=
  ∀ n, P2855209498283712810.a n = A029033 n

end A029033

/-! ## A029033.P13052182308591292674

`A029229(2*n+1)+A029229(2*n)`
-/

namespace A029033.P13052182308591292674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n + 1) + A029229 (2 * n)

end

end A029033.P13052182308591292674

namespace A029033

/-- `A029229(2*n+1)+A029229(2*n)` -/
def P13052182308591292674.Spec : Prop :=
  ∀ n, P13052182308591292674.a n = A029033 n

end A029033

/-! ## A029033.P882362753218019032

`∑[A025911(2*n+1)+A025911(2*n)]`
-/

namespace A029033.P882362753218019032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (2 * n + 1) + A025911 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029033.P882362753218019032

namespace A029033

/-- `∑[A025911(2*n+1)+A025911(2*n)]` -/
def P882362753218019032.Spec : Prop :=
  ∀ n, P882362753218019032.a n = A029033 n

end A029033

/-! ## A029033.P2090761914694350964

`A025911(2*n)+A029185(2*n)-A025871(2*n)`
-/

namespace A029033.P2090761914694350964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (2 * n) + (A029185 (2 * n) - A025871 (2 * n))

end

end A029033.P2090761914694350964

namespace A029033

/-- `A025911(2*n)+A029185(2*n)-A025871(2*n)` -/
def P2090761914694350964.Spec : Prop :=
  ∀ n, P2090761914694350964.a n = A029033 n

end A029033

/-! ## A029033.P3774195782720398678

`A025897(2*n)+A029181(2*n)-A029347(2*n)`
-/

namespace A029033.P3774195782720398678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (2 * n) + (A029181 (2 * n) - A029347 (2 * n))

end

end A029033.P3774195782720398678

namespace A029033

/-- `A025897(2*n)+A029181(2*n)-A029347(2*n)` -/
def P3774195782720398678.Spec : Prop :=
  ∀ n, P3774195782720398678.a n = A029033 n

end A029033

/-! ## A029033.P7445500917418409893

`A029216(2*n)+A029414(2*n)-A025899(2*n)`
-/

namespace A029033.P7445500917418409893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (2 * n) + (A029414 (2 * n) - A025899 (2 * n))

end

end A029033.P7445500917418409893

namespace A029033

/-- `A029216(2*n)+A029414(2*n)-A025899(2*n)` -/
def P7445500917418409893.Spec : Prop :=
  ∀ n, P7445500917418409893.a n = A029033 n

end A029033

/-! ## A029033.P4573154057670841214

`A029257(2*n+1)+A029347(2*n)-A029347(2*n+1)`
-/

namespace A029033.P4573154057670841214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029257 (2 * n + 1) + (A029347 (2 * n) - A029347 (2 * n + 1))

end

end A029033.P4573154057670841214

namespace A029033

/-- `A029257(2*n+1)+A029347(2*n)-A029347(2*n+1)` -/
def P4573154057670841214.Spec : Prop :=
  ∀ n, P4573154057670841214.a n = A029033 n

end A029033

/-! ## A029033.P10325633374602542415

`A029053(2*n+1)+A029073(2*n+1)-A029038(2*n+1)`
-/

namespace A029033.P10325633374602542415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (2 * n + 1) + (A029073 (2 * n + 1) - A029038 (2 * n + 1))

end

end A029033.P10325633374602542415

namespace A029033

/-- `A029053(2*n+1)+A029073(2*n+1)-A029038(2*n+1)` -/
def P10325633374602542415.Spec : Prop :=
  ∀ n, P10325633374602542415.a n = A029033 n

end A029033

/-! ## A029033.P16183737819361184005

`A029312(3*n)`
-/

namespace A029033.P16183737819361184005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029312 (3 * n)

end

end A029033.P16183737819361184005

namespace A029033

/-- `A029312(3*n)` -/
def P16183737819361184005.Spec : Prop :=
  ∀ n, P16183737819361184005.a n = A029033 n

end A029033

/-! ## A029033.P10463662886904534540

`∑[A025914(3*n)]`
-/

namespace A029033.P10463662886904534540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025914 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029033.P10463662886904534540

namespace A029033

/-- `∑[A025914(3*n)]` -/
def P10463662886904534540.Spec : Prop :=
  ∀ n, P10463662886904534540.a n = A029033 n

end A029033

/-!
# A029034: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)*(1-x^8)).

The programs for A029034, the canonical program `A029034.P9715275909230728830` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029034 has offset 0).

The definition of A029034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029034.P9715275909230728830

`∑[A025830(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029034

/-- `∑[A025830(n)]` -/
def P9715275909230728830.Spec : Prop :=
  ∀ n, P9715275909230728830.a n = A029034 n

theorem P9715275909230728830.correct : P9715275909230728830.Spec := by
  intro n
  simp only [A029034]

end A029034

/-! ## A029034.P8767535707562813059

`A029002(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029034.P8767535707562813059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029002 n - a (n - 2)

end

end A029034.P8767535707562813059

namespace A029034

/-- `A029002(n)-a(n-2)` -/
def P8767535707562813059.Spec : Prop :=
  ∀ n, P8767535707562813059.a n = A029034 n

end A029034

/-! ## A029034.P3778793685846938972

`A092532(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029034.P3778793685846938972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A092532 n + a (n - 3)

end

end A029034.P3778793685846938972

namespace A029034

/-- `A092532(n)+a(n-3)` -/
def P3778793685846938972.Spec : Prop :=
  ∀ n, P3778793685846938972.a n = A029034 n

end A029034

/-! ## A029034.P8340679126112702142

`∑[A266755(abs(A097140(n)))]`
-/

namespace A029034.P8340679126112702142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 |A097140 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P8340679126112702142

namespace A029034

/-- `∑[A266755(abs(A097140(n)))]` -/
def P8340679126112702142.Spec : Prop :=
  ∀ n, P8340679126112702142.a n = A029034 n

end A029034

/-! ## A029034.P13695387044906381676

`∑[A005044(A052938(n+1))]`
-/

namespace A029034.P13695387044906381676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A052938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P13695387044906381676

namespace A029034

/-- `∑[A005044(A052938(n+1))]` -/
def P13695387044906381676.Spec : Prop :=
  ∀ n, P13695387044906381676.a n = A029034 n

end A029034

/-! ## A029034.P206972764233324444

`∑[A005044(A028242(n)+2)]`
-/

namespace A029034.P206972764233324444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A028242 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P206972764233324444

namespace A029034

/-- `∑[A005044(A028242(n)+2)]` -/
def P206972764233324444.Spec : Prop :=
  ∀ n, P206972764233324444.a n = A029034 n

end A029034

/-! ## A029034.P16562719030664880823

`∑[A005044(3*A008619(n)-n)]`
-/

namespace A029034.P16562719030664880823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (3 * A008619 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P16562719030664880823

namespace A029034

/-- `∑[A005044(3*A008619(n)-n)]` -/
def P16562719030664880823.Spec : Prop :=
  ∀ n, P16562719030664880823.a n = A029034 n

end A029034

/-! ## A029034.P15519667332232975455

`∑[A005044(A008619(n)+gcd(2, n))]`
-/

namespace A029034.P15519667332232975455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008619 n + (Nat.gcd 2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P15519667332232975455

namespace A029034

/-- `∑[A005044(A008619(n)+gcd(2, n))]` -/
def P15519667332232975455.Spec : Prop :=
  ∀ n, P15519667332232975455.a n = A029034 n

end A029034

/-! ## A029034.P12226034604964354250

`A008643(n)-A026810(A052938(n+1))`
-/

namespace A029034.P12226034604964354250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008643 n - A026810 (A052938 (n + 1)).toNat

end

end A029034.P12226034604964354250

namespace A029034

/-- `A008643(n)-A026810(A052938(n+1))` -/
def P12226034604964354250.Spec : Prop :=
  ∀ n, P12226034604964354250.a n = A029034 n

end A029034

/-! ## A029034.P14297021700942727627

`∑[A005044(A030451(n+1)+1)]`
-/

namespace A029034.P14297021700942727627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A030451 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P14297021700942727627

namespace A029034

/-- `∑[A005044(A030451(n+1)+1)]` -/
def P14297021700942727627.Spec : Prop :=
  ∀ n, P14297021700942727627.a n = A029034 n

end A029034

/-! ## A029034.P17815906669715756681

`∑[A005044(A030451(n+3))]`
-/

namespace A029034.P17815906669715756681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A030451 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P17815906669715756681

namespace A029034

/-- `∑[A005044(A030451(n+3))]` -/
def P17815906669715756681.Spec : Prop :=
  ∀ n, P17815906669715756681.a n = A029034 n

end A029034

/-! ## A029034.P12917531650528719564

`∑[A025838(A271324(n+1)-2)]`
-/

namespace A029034.P12917531650528719564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 (A271324 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P12917531650528719564

namespace A029034

/-- `∑[A025838(A271324(n+1)-2)]` -/
def P12917531650528719564.Spec : Prop :=
  ∀ n, P12917531650528719564.a n = A029034 n

end A029034

/-! ## A029034.P10931527502418878246

`∑[A025838(A271324(n))]`
-/

namespace A029034.P10931527502418878246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 (A271324 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P10931527502418878246

namespace A029034

/-- `∑[A025838(A271324(n))]` -/
def P10931527502418878246.Spec : Prop :=
  ∀ n, P10931527502418878246.a n = A029034 n

end A029034

/-! ## A029034.P10072455984467939472

`A029318(3*n)`
-/

namespace A029034.P10072455984467939472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029318 (3 * n)

end

end A029034.P10072455984467939472

namespace A029034

/-- `A029318(3*n)` -/
def P10072455984467939472.Spec : Prop :=
  ∀ n, P10072455984467939472.a n = A029034 n

end A029034

/-! ## A029034.P6911070611462777466

`∑[A025920(3*n)]`
-/

namespace A029034.P6911070611462777466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P6911070611462777466

namespace A029034

/-- `∑[A025920(3*n)]` -/
def P6911070611462777466.Spec : Prop :=
  ∀ n, P6911070611462777466.a n = A029034 n

end A029034

/-! ## A029034.P5781701605729523160

`∑[A351742(3*n)]`
-/

namespace A029034.P5781701605729523160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351742 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P5781701605729523160

namespace A029034

/-- `∑[A351742(3*n)]` -/
def P5781701605729523160.Spec : Prop :=
  ∀ n, P5781701605729523160.a n = A029034 n

end A029034

/-!
# A029035: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)*(1-x^9)).

The programs for A029035, the canonical program `A029035.P11810468101524185872` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029035 has offset 0).

The definition of A029035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029035.P11810468101524185872

`∑[A025831(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029035

/-- `∑[A025831(n)]` -/
def P11810468101524185872.Spec : Prop :=
  ∀ n, P11810468101524185872.a n = A029035 n

theorem P11810468101524185872.correct : P11810468101524185872.Spec := by
  intro n
  simp only [A029035]

end A029035

/-! ## A029035.P1618225196057184306

`A029003(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029035.P1618225196057184306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029003 n - a (n - 2)

end

end A029035.P1618225196057184306

namespace A029035

/-- `A029003(n)-a(n-2)` -/
def P1618225196057184306.Spec : Prop :=
  ∀ n, P1618225196057184306.a n = A029035 n

end A029035

/-! ## A029035.P14804306656449605842

`A025774(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029035.P14804306656449605842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025774 n + a (n - 3)

end

end A029035.P14804306656449605842

namespace A029035

/-- `A025774(n)+a(n-3)` -/
def P14804306656449605842.Spec : Prop :=
  ∀ n, P14804306656449605842.a n = A029035 n

end A029035

/-! ## A029035.P8248150915840299450

`A029219(2*n)`
-/

namespace A029035.P8248150915840299450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (2 * n)

end

end A029035.P8248150915840299450

namespace A029035

/-- `A029219(2*n)` -/
def P8248150915840299450.Spec : Prop :=
  ∀ n, P8248150915840299450.a n = A029035 n

end A029035

/-! ## A029035.P3467333991510598100

`∑[A025902(2*n)]`
-/

namespace A029035.P3467333991510598100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029035.P3467333991510598100

namespace A029035

/-- `∑[A025902(2*n)]` -/
def P3467333991510598100.Spec : Prop :=
  ∀ n, P3467333991510598100.a n = A029035 n

end A029035

/-! ## A029035.P15630475082837982469

`A025902(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029035.P15630475082837982469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025902 (n + n) + a (n - 1)

end

end A029035.P15630475082837982469

namespace A029035

/-- `A025902(n+n)+a(n-1)` -/
def P15630475082837982469.Spec : Prop :=
  ∀ n, P15630475082837982469.a n = A029035 n

end A029035

/-! ## A029035.P8744594490920384287

`record[A110654(n)+A029219(n)]-n`
-/

namespace A029035.P8744594490920384287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A029219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A029035.P8744594490920384287

namespace A029035

/-- `record[A110654(n)+A029219(n)]-n` -/
def P8744594490920384287.Spec : Prop :=
  ∀ n, P8744594490920384287.a n = A029035 n

end A029035

/-! ## A029035.P11928743443227013225

`A029423(2*n+1)+A029221(2*n)`
-/

namespace A029035.P11928743443227013225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (2 * n + 1) + A029221 (2 * n)

end

end A029035.P11928743443227013225

namespace A029035

/-- `A029423(2*n+1)+A029221(2*n)` -/
def P11928743443227013225.Spec : Prop :=
  ∀ n, P11928743443227013225.a n = A029035 n

end A029035

/-! ## A029035.P14640298945350440888

`A029219(A005843(n))%A016898(n)`
-/

namespace A029035.P14640298945350440888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029219 (A005843 n).toNat) (A016898 n)

end

end A029035.P14640298945350440888

namespace A029035

/-- `A029219(A005843(n))%A016898(n)` -/
def P14640298945350440888.Spec : Prop :=
  ∀ n, P14640298945350440888.a n = A029035 n

end A029035

/-! ## A029035.P11537479284612950013

`A025920(2*n)+A029190(2*n)-A025874(2*n)`
-/

namespace A029035.P11537479284612950013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (2 * n) + (A029190 (2 * n) - A025874 (2 * n))

end

end A029035.P11537479284612950013

namespace A029035

/-- `A025920(2*n)+A029190(2*n)-A025874(2*n)` -/
def P11537479284612950013.Spec : Prop :=
  ∀ n, P11537479284612950013.a n = A029035 n

end A029035

/-! ## A029035.P4867402436025669886

`A029348(2*n+1)+A029071(n+1)-A029348(n+1)`
-/

namespace A029035.P4867402436025669886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 (2 * n + 1) + (A029071 (n + 1) - A029348 (n + 1))

end

end A029035.P4867402436025669886

namespace A029035

/-- `A029348(2*n+1)+A029071(n+1)-A029348(n+1)` -/
def P4867402436025669886.Spec : Prop :=
  ∀ n, P4867402436025669886.a n = A029035 n

end A029035

/-! ## A029035.P15603005699738905406

`A029262(2*n+1)+A029352(2*n)-A029352(2*n+1)`
-/

namespace A029035.P15603005699738905406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 (2 * n + 1) + (A029352 (2 * n) - A029352 (2 * n + 1))

end

end A029035.P15603005699738905406

namespace A029035

/-- `A029262(2*n+1)+A029352(2*n)-A029352(2*n+1)` -/
def P15603005699738905406.Spec : Prop :=
  ∀ n, P15603005699738905406.a n = A029035 n

end A029035

/-! ## A029035.P15294315521860254172

`A029238(2*n+3)+A029238(2*n)`
-/

namespace A029035.P15294315521860254172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n + 3) + A029238 (2 * n)

end

end A029035.P15294315521860254172

namespace A029035

/-- `A029238(2*n+3)+A029238(2*n)` -/
def P15294315521860254172.Spec : Prop :=
  ∀ n, P15294315521860254172.a n = A029035 n

end A029035

/-! ## A029035.P1412315261109085572

`∑[abs(Δ[A029219(A020742(n))])]`
-/

namespace A029035.P1412315261109085572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (A020742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029035.P1412315261109085572

namespace A029035

/-- `∑[abs(Δ[A029219(A020742(n))])]` -/
def P1412315261109085572.Spec : Prop :=
  ∀ n, P1412315261109085572.a n = A029035 n

end A029035

/-! ## A029035.P5101197226599475521

`A029219(A005843(n))^A014963(A017089(n))`
-/

namespace A029035.P5101197226599475521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029219 (A005843 n).toNat : ℚ) ^ (A014963 (A017089 n).toNat : ℤ)

end

end A029035.P5101197226599475521

namespace A029035

/-- `A029219(A005843(n))^A014963(A017089(n))` -/
def P5101197226599475521.Spec : Prop :=
  ∀ n, P5101197226599475521.a n = (A029035 n : ℚ)

end A029035

/-! ## A029035.P10907460331197525238

`A029219(A005843(n))^A014963(A120097(n+1))`
-/

namespace A029035.P10907460331197525238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029219 (A005843 n).toNat : ℚ) ^ (A014963 (A120097 (n + 1)).toNat : ℤ)

end

end A029035.P10907460331197525238

namespace A029035

/-- `A029219(A005843(n))^A014963(A120097(n+1))` -/
def P10907460331197525238.Spec : Prop :=
  ∀ n, P10907460331197525238.a n = (A029035 n : ℚ)

end A029035

/-! ## A029035.P2275618010993234535

`A000027(A029219(record[A046666(n+2)]))`
-/

namespace A029035.P2275618010993234535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A029035.P2275618010993234535

namespace A029035

/-- `A000027(A029219(record[A046666(n+2)]))` -/
def P2275618010993234535.Spec : Prop :=
  ∀ n, P2275618010993234535.a n = A029035 n

end A029035

/-!
# A029036: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)*(1-x^10)).

The programs for A029036, the canonical program `A029036.P2822500179201987379` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029036 has offset 0).

The definition of A029036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029036.P2822500179201987379

`∑[A025832(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029036

/-- `∑[A025832(n)]` -/
def P2822500179201987379.Spec : Prop :=
  ∀ n, P2822500179201987379.a n = A029036 n

theorem P2822500179201987379.correct : P2822500179201987379.Spec := by
  intro n
  simp only [A029036]

end A029036

/-! ## A029036.P10408009023302288146

`A029004(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029036.P10408009023302288146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029004 n - a (n - 2)

end

end A029036.P10408009023302288146

namespace A029036

/-- `A029004(n)-a(n-2)` -/
def P10408009023302288146.Spec : Prop :=
  ∀ n, P10408009023302288146.a n = A029036 n

end A029036

/-! ## A029036.P10133715920171905210

`∑[A025795(abs(A097140(n)))]`
-/

namespace A029036.P10133715920171905210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 |A097140 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029036.P10133715920171905210

namespace A029036

/-- `∑[A025795(abs(A097140(n)))]` -/
def P10133715920171905210.Spec : Prop :=
  ∀ n, P10133715920171905210.a n = A029036 n

end A029036

/-! ## A029036.P4378942940496250492

`A029140(abs(A024000(n)))+A029140(n)`
-/

namespace A029036.P4378942940496250492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 |A024000 n|.toNat + A029140 n

end

end A029036.P4378942940496250492

namespace A029036

/-- `A029140(abs(A024000(n)))+A029140(n)` -/
def P4378942940496250492.Spec : Prop :=
  ∀ n, P4378942940496250492.a n = A029036 n

end A029036

/-! ## A029036.P8911578056451114187

`∑[A008682(xor(1, n+1))]`
-/

namespace A029036.P8911578056451114187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029036.P8911578056451114187

namespace A029036

/-- `∑[A008682(xor(1, n+1))]` -/
def P8911578056451114187.Spec : Prop :=
  ∀ n, P8911578056451114187.a n = A029036 n

end A029036

/-! ## A029036.P2078431861514848478

`∑[A008682(n+1-(-1)^n)]`
-/

namespace A029036.P2078431861514848478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 ((n + 1 : ℤ) - (-1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029036.P2078431861514848478

namespace A029036

/-- `∑[A008682(n+1-(-1)^n)]` -/
def P2078431861514848478.Spec : Prop :=
  ∀ n, P2078431861514848478.a n = A029036 n

end A029036

/-! ## A029036.P17147152715041088245

`∑[A008682(A065190(n+1))]+1`
-/

namespace A029036.P17147152715041088245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A029036.P17147152715041088245

namespace A029036

/-- `∑[A008682(A065190(n+1))]+1` -/
def P17147152715041088245.Spec : Prop :=
  ∀ n, P17147152715041088245.a n = A029036 n

end A029036

/-! ## A029036.P9041085783901898013

`A029063(n+1)-A325488(n+1)`
-/

namespace A029036.P9041085783901898013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029063 (n + 1) - A325488 (n + 1)

end

end A029036.P9041085783901898013

namespace A029036

/-- `A029063(n+1)-A325488(n+1)` -/
def P9041085783901898013.Spec : Prop :=
  ∀ n, P9041085783901898013.a n = A029036 n

end A029036

/-! ## A029036.P9785880291757027770

`A008682(or(1, n+1))+∑[A008682(n)]`
-/

namespace A029036.P9785880291757027770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (Nat.lor 1 (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029036.P9785880291757027770

namespace A029036

/-- `A008682(or(1, n+1))+∑[A008682(n)]` -/
def P9785880291757027770.Spec : Prop :=
  ∀ n, P9785880291757027770.a n = A029036 n

end A029036

/-! ## A029036.P7783160583125007330

`A029323(3*n)`
-/

namespace A029036.P7783160583125007330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029323 (3 * n)

end

end A029036.P7783160583125007330

namespace A029036

/-- `A029323(3*n)` -/
def P7783160583125007330.Spec : Prop :=
  ∀ n, P7783160583125007330.a n = A029036 n

end A029036

/-! ## A029036.P17811222637687694116

`∑[A025924(3*n)]`
-/

namespace A029036.P17811222637687694116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029036.P17811222637687694116

namespace A029036

/-- `∑[A025924(3*n)]` -/
def P17811222637687694116.Spec : Prop :=
  ∀ n, P17811222637687694116.a n = A029036 n

end A029036

/-!
# A029037: Expansion of 1/((1-x)(1-x^3)(1-x^4)(1-x^11)).

The programs for A029037, the canonical program `A029037.P1354871978218841119` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029037 has offset 0).

The definition of A029037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029037.P1354871978218841119

`∑[A025833(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029037

/-- `∑[A025833(n)]` -/
def P1354871978218841119.Spec : Prop :=
  ∀ n, P1354871978218841119.a n = A029037 n

theorem P1354871978218841119.correct : P1354871978218841119.Spec := by
  intro n
  simp only [A029037]

end A029037

/-! ## A029037.P8246478467406636600

`A029005(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029037.P8246478467406636600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029005 n - a (n - 2)

end

end A029037.P8246478467406636600

namespace A029037

/-- `A029005(n)-a(n-2)` -/
def P8246478467406636600.Spec : Prop :=
  ∀ n, P8246478467406636600.a n = A029037 n

end A029037

/-! ## A029037.P5535229786731483172

`A025775(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029037.P5535229786731483172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025775 n + a (n - 3)

end

end A029037.P5535229786731483172

namespace A029037

/-- `A025775(n)+a(n-3)` -/
def P5535229786731483172.Spec : Prop :=
  ∀ n, P5535229786731483172.a n = A029037 n

end A029037

/-! ## A029037.P17670450720469104213

`A029220(2*n)`
-/

namespace A029037.P17670450720469104213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (2 * n)

end

end A029037.P17670450720469104213

namespace A029037

/-- `A029220(2*n)` -/
def P17670450720469104213.Spec : Prop :=
  ∀ n, P17670450720469104213.a n = A029037 n

end A029037

/-! ## A029037.P4121781581571802799

`∑[A025903(2*n)]`
-/

namespace A029037.P4121781581571802799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025903 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029037.P4121781581571802799

namespace A029037

/-- `∑[A025903(2*n)]` -/
def P4121781581571802799.Spec : Prop :=
  ∀ n, P4121781581571802799.a n = A029037 n

end A029037

/-! ## A029037.P11793087487224773596

`A025903(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029037.P11793087487224773596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025903 (n + n) + a (n - 1)

end

end A029037.P11793087487224773596

namespace A029037

/-- `A025903(n+n)+a(n-1)` -/
def P11793087487224773596.Spec : Prop :=
  ∀ n, P11793087487224773596.a n = A029037 n

end A029037

/-! ## A029037.P16567579744451331939

`A029220(n+n)/gcd(n, n+1)`
-/

namespace A029037.P16567579744451331939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029220 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A029037.P16567579744451331939

namespace A029037

/-- `A029220(n+n)/gcd(n, n+1)` -/
def P16567579744451331939.Spec : Prop :=
  ∀ n, P16567579744451331939.a n = (A029037 n : ℚ)

end A029037

/-! ## A029037.P7230715593651861252

`∑[A029426(2*n)-A029426(2*n+1)]`
-/

namespace A029037.P7230715593651861252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 (2 * n) - A029426 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029037.P7230715593651861252

namespace A029037

/-- `∑[A029426(2*n)-A029426(2*n+1)]` -/
def P7230715593651861252.Spec : Prop :=
  ∀ n, P7230715593651861252.a n = A029037 n

end A029037

/-! ## A029037.P13950440404034995860

`A029220(A005843(n))+A000007(n+1)`
-/

namespace A029037.P13950440404034995860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (A005843 n).toNat + A000007 (n + 1)

end

end A029037.P13950440404034995860

namespace A029037

/-- `A029220(A005843(n))+A000007(n+1)` -/
def P13950440404034995860.Spec : Prop :=
  ∀ n, P13950440404034995860.a n = A029037 n

end A029037

/-! ## A029037.P8745183621610922069

`A029220(A005843(n))%A033001(n+1)`
-/

namespace A029037.P8745183621610922069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029220 (A005843 n).toNat) (A033001 (n + 1))

end

end A029037.P8745183621610922069

namespace A029037

/-- `A029220(A005843(n))%A033001(n+1)` -/
def P8745183621610922069.Spec : Prop :=
  ∀ n, P8745183621610922069.a n = A029037 n

end A029037

/-! ## A029037.P17188542625283652496

`A029220(n+n)/A337337(A337337(n+1))`
-/

namespace A029037.P17188542625283652496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029220 (n + n) : ℚ) / (A337337 (A337337 (n + 1)).toNat : ℚ)

end

end A029037.P17188542625283652496

namespace A029037

/-- `A029220(n+n)/A337337(A337337(n+1))` -/
def P17188542625283652496.Spec : Prop :=
  ∀ n, P17188542625283652496.a n = (A029037 n : ℚ)

end A029037

/-! ## A029037.P15113046963348335902

`A029240(2*n)+A029353(2*n)-A025875(2*n)`
-/

namespace A029037.P15113046963348335902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n) + (A029353 (2 * n) - A025875 (2 * n))

end

end A029037.P15113046963348335902

namespace A029037

/-- `A029240(2*n)+A029353(2*n)-A025875(2*n)` -/
def P15113046963348335902.Spec : Prop :=
  ∀ n, P15113046963348335902.a n = A029037 n

end A029037

/-! ## A029037.P8894734437643412238

`A029194(A020715(2*n))-A029206(A020715(2*n))`
-/

namespace A029037.P8894734437643412238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 (A020715 (2 * n)).toNat - A029206 (A020715 (2 * n)).toNat

end

end A029037.P8894734437643412238

namespace A029037

/-- `A029194(A020715(2*n))-A029206(A020715(2*n))` -/
def P8894734437643412238.Spec : Prop :=
  ∀ n, P8894734437643412238.a n = A029037 n

end A029037

/-! ## A029037.P15257405713109084252

`A029324(3*n)`
-/

namespace A029037.P15257405713109084252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029324 (3 * n)

end

end A029037.P15257405713109084252

namespace A029037

/-- `A029324(3*n)` -/
def P15257405713109084252.Spec : Prop :=
  ∀ n, P15257405713109084252.a n = A029037 n

end A029037

/-! ## A029037.P17944958883087693867

`∑[A025925(3*n)]`
-/

namespace A029037.P17944958883087693867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029037.P17944958883087693867

namespace A029037

/-- `∑[A025925(3*n)]` -/
def P17944958883087693867.Spec : Prop :=
  ∀ n, P17944958883087693867.a n = A029037 n

end A029037

/-! ## A029037.P10323519408824502308

`∑{d}[A029220(A005843(n)), A000010(#)]`
-/

namespace A029037.P10323519408824502308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A029037.P10323519408824502308

namespace A029037

/-- `∑{d}[A029220(A005843(n)), A000010(#)]` -/
def P10323519408824502308.Spec : Prop :=
  ∀ n, P10323519408824502308.a n = A029037 n

end A029037

/-!
# A029038: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)*(1-x^12)).

The programs for A029038, the canonical program `A029038.P10356634279202362763` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029038 has offset 0).

The definition of A029038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029038.P10356634279202362763

`∑[C(floor(floor(n/3)+1-n/4)+1, 2)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029038

/-- `∑[C(floor(floor(n/3)+1-n/4)+1, 2)]` -/
def P10356634279202362763.Spec : Prop :=
  ∀ n, (P10356634279202362763.a n : ℤ) = A029038 n

theorem P10356634279202362763.correct : P10356634279202362763.Spec := by
  intro n
  simp only [A029038]

end A029038

/-! ## A029038.P17515343360081085921

`∑[A025834(n)]`
-/

namespace A029038.P17515343360081085921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029038.P17515343360081085921

namespace A029038

/-- `∑[A025834(n)]` -/
def P17515343360081085921.Spec : Prop :=
  ∀ n, P17515343360081085921.a n = A029038 n

end A029038

/-! ## A029038.P11648469515142999886

`A029006(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029038.P11648469515142999886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029006 n - a (n - 2)

end

end A029038.P11648469515142999886

namespace A029038

/-- `A029006(n)-a(n-2)` -/
def P11648469515142999886.Spec : Prop :=
  ∀ n, P11648469515142999886.a n = A029038 n

end A029038

/-! ## A029038.P10402946253971048379

`∑[A000217(A008679(n))]`
-/

namespace A029038.P10402946253971048379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008679 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029038.P10402946253971048379

namespace A029038

/-- `∑[A000217(A008679(n))]` -/
def P10402946253971048379.Spec : Prop :=
  ∀ n, P10402946253971048379.a n = A029038 n

end A029038

/-! ## A029038.P11002998496279595416

`∑[A025796(abs(A097140(n)))]`
-/

namespace A029038.P11002998496279595416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 |A097140 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029038.P11002998496279595416

namespace A029038

/-- `∑[A025796(abs(A097140(n)))]` -/
def P11002998496279595416.Spec : Prop :=
  ∀ n, P11002998496279595416.a n = A029038 n

end A029038

/-! ## A029038.P11975064031370059681

`∑[A000217(ceil(A008612(n)/2))]`
-/

namespace A029038.P11975064031370059681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(A008612 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029038.P11975064031370059681

namespace A029038

/-- `∑[A000217(ceil(A008612(n)/2))]` -/
def P11975064031370059681.Spec : Prop :=
  ∀ n, P11975064031370059681.a n = A029038 n

end A029038

/-! ## A029038.P3592336706946540357

`∑[A090176(A168195(n+2))]`
-/

namespace A029038.P3592336706946540357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090176 (A168195 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029038.P3592336706946540357

namespace A029038

/-- `∑[A090176(A168195(n+2))]` -/
def P3592336706946540357.Spec : Prop :=
  ∀ n, P3592336706946540357.a n = A029038 n

end A029038

/-! ## A029038.P14269627842253989045

`∑[A000217(A033183(3*n))]`
-/

namespace A029038.P14269627842253989045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033183 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029038.P14269627842253989045

namespace A029038

/-- `∑[A000217(A033183(3*n))]` -/
def P14269627842253989045.Spec : Prop :=
  ∀ n, P14269627842253989045.a n = A029038 n

end A029038

/-!
# A029039: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^6)).

The programs for A029039, the canonical program `A029039.P13891949853867952978` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029039 has offset 0).

The definition of A029039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029039.P13891949853867952978

`∑[A025835(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029039

/-- `∑[A025835(n)]` -/
def P13891949853867952978.Spec : Prop :=
  ∀ n, P13891949853867952978.a n = A029039 n

theorem P13891949853867952978.correct : P13891949853867952978.Spec := by
  intro n
  simp only [A029039]

end A029039

/-! ## A029039.P380273427886882124

`A025776(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029039.P380273427886882124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025776 n + a (n - 3)

end

end A029039.P380273427886882124

namespace A029039

/-- `A025776(n)+a(n-3)` -/
def P380273427886882124.Spec : Prop :=
  ∀ n, P380273427886882124.a n = A029039 n

end A029039

/-! ## A029039.P15348731921635491923

`A051263(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029039.P15348731921635491923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A051263 n - a (n - 3)

end

end A029039.P15348731921635491923

namespace A029039

/-- `A051263(n)-a(n-3)` -/
def P15348731921635491923.Spec : Prop :=
  ∀ n, P15348731921635491923.a n = A029039 n

end A029039

/-! ## A029039.P14050203146965812866

`A008670(n+1)-A008681(n+1)`
-/

namespace A029039.P14050203146965812866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 (n + 1) - A008681 (n + 1)

end

end A029039.P14050203146965812866

namespace A029039

/-- `A008670(n+1)-A008681(n+1)` -/
def P14050203146965812866.Spec : Prop :=
  ∀ n, P14050203146965812866.a n = A029039 n

end A029039

/-! ## A029039.P6878438501155055499

`A029169(2*n)`
-/

namespace A029039.P6878438501155055499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029169 (2 * n)

end

end A029039.P6878438501155055499

namespace A029039

/-- `A029169(2*n)` -/
def P6878438501155055499.Spec : Prop :=
  ∀ n, P6878438501155055499.a n = A029039 n

end A029039

/-! ## A029039.P16831549571391093177

`A029198(2*n)`
-/

namespace A029039.P16831549571391093177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (2 * n)

end

end A029039.P16831549571391093177

namespace A029039

/-- `A029198(2*n)` -/
def P16831549571391093177.Spec : Prop :=
  ∀ n, P16831549571391093177.a n = A029039 n

end A029039

/-! ## A029039.P17931804966850505657

`∑[A025857(2*n)]`
-/

namespace A029039.P17931804966850505657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029039.P17931804966850505657

namespace A029039

/-- `∑[A025857(2*n)]` -/
def P17931804966850505657.Spec : Prop :=
  ∀ n, P17931804966850505657.a n = A029039 n

end A029039

/-! ## A029039.P9553700167425473842

`∑[A025881(2*n)]`
-/

namespace A029039.P9553700167425473842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029039.P9553700167425473842

namespace A029039

/-- `∑[A025881(2*n)]` -/
def P9553700167425473842.Spec : Prop :=
  ∀ n, P9553700167425473842.a n = A029039 n

end A029039

/-! ## A029039.P16600374346077479269

`A025857(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029039.P16600374346077479269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025857 (n + n) + a (n - 1)

end

end A029039.P16600374346077479269

namespace A029039

/-- `A025857(n+n)+a(n-1)` -/
def P16600374346077479269.Spec : Prop :=
  ∀ n, P16600374346077479269.a n = A029039 n

end A029039

/-! ## A029039.P91232958475669178

`A025881(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029039.P91232958475669178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025881 (n + n) + a (n - 1)

end

end A029039.P91232958475669178

namespace A029039

/-- `A025881(n+n)+a(n-1)` -/
def P91232958475669178.Spec : Prop :=
  ∀ n, P91232958475669178.a n = A029039 n

end A029039

/-! ## A029039.P16247592233058128113

`or(char[1], A029198(A005843(n)))`
-/

namespace A029039.P16247592233058128113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A029198 (A005843 n).toNat)

end

end A029039.P16247592233058128113

namespace A029039

/-- `or(char[1], A029198(A005843(n)))` -/
def P16247592233058128113.Spec : Prop :=
  ∀ n, P16247592233058128113.a n = A029039 n

end A029039

/-! ## A029039.P12584054805404392879

`∑[A025796(n)-A025864(2*n+1)]`
-/

namespace A029039.P12584054805404392879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 n - A025864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029039.P12584054805404392879

namespace A029039

/-- `∑[A025796(n)-A025864(2*n+1)]` -/
def P12584054805404392879.Spec : Prop :=
  ∀ n, P12584054805404392879.a n = A029039 n

end A029039

/-! ## A029039.P3212014493399056435

`A029225(2*n)+A029224(2*n+1)`
-/

namespace A029039.P3212014493399056435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (2 * n) + A029224 (2 * n + 1)

end

end A029039.P3212014493399056435

namespace A029039

/-- `A029225(2*n)+A029224(2*n+1)` -/
def P3212014493399056435.Spec : Prop :=
  ∀ n, P3212014493399056435.a n = A029039 n

end A029039

/-! ## A029039.P12538090914775180756

`A029270(2*n+1)+A029270(2*n)`
-/

namespace A029039.P12538090914775180756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 (2 * n + 1) + A029270 (2 * n)

end

end A029039.P12538090914775180756

namespace A029039

/-- `A029270(2*n+1)+A029270(2*n)` -/
def P12538090914775180756.Spec : Prop :=
  ∀ n, P12538090914775180756.a n = A029039 n

end A029039

/-! ## A029039.P8768908785069925087

`A029198(A005843(n))%A017306(n)`
-/

namespace A029039.P8768908785069925087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029198 (A005843 n).toNat) (A017306 n)

end

end A029039.P8768908785069925087

namespace A029039

/-- `A029198(A005843(n))%A017306(n)` -/
def P8768908785069925087.Spec : Prop :=
  ∀ n, P8768908785069925087.a n = A029039 n

end A029039

/-! ## A029039.P11424377272530644909

`A029250(2*n+3)`
-/

namespace A029039.P11424377272530644909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029250 (2 * n + 3)

end

end A029039.P11424377272530644909

namespace A029039

/-- `A029250(2*n+3)` -/
def P11424377272530644909.Spec : Prop :=
  ∀ n, P11424377272530644909.a n = A029039 n

end A029039

/-! ## A029039.P17770562565022289688

`A029331(2*n+3)+A029331(2*n)`
-/

namespace A029039.P17770562565022289688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (2 * n + 3) + A029331 (2 * n)

end

end A029039.P17770562565022289688

namespace A029039

/-- `A029331(2*n+3)+A029331(2*n)` -/
def P17770562565022289688.Spec : Prop :=
  ∀ n, P17770562565022289688.a n = A029039 n

end A029039

/-! ## A029039.P10490725076697443880

`A000027(A029198(n+n))`
-/

namespace A029039.P10490725076697443880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029198 (n + n)).toNat

end

end A029039.P10490725076697443880

namespace A029039

/-- `A000027(A029198(n+n))` -/
def P10490725076697443880.Spec : Prop :=
  ∀ n, P10490725076697443880.a n = A029039 n

end A029039

/-! ## A029039.P10940080600145151189

`A000027(A029250(Δ[(n+1)²]))`
-/

namespace A029039.P10940080600145151189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029250 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A029039.P10940080600145151189

namespace A029039

/-- `A000027(A029250(Δ[(n+1)²]))` -/
def P10940080600145151189.Spec : Prop :=
  ∀ n, P10940080600145151189.a n = A029039 n

end A029039

/-!
# A029040: Expansion of 1/((1-x)(1-x^3)(1-x^5)(1-x^8)).

The programs for A029040, the canonical program `A029040.P3667181917675631272` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029040 has offset 0).

The definition of A029040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029040.P8308802416902745309

`∑[A025836(n)]`
-/

namespace A029040.P8308802416902745309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P8308802416902745309

namespace A029040

/-- `∑[A025836(n)]` -/
def P8308802416902745309.Spec : Prop :=
  ∀ n, P8308802416902745309.a n = A029040 n

end A029040

/-! ## A029040.P5619917732658422763

`∑[abs(∑[A291985(n)])]`
-/

namespace A029040.P5619917732658422763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P5619917732658422763

namespace A029040

/-- `∑[abs(∑[A291985(n)])]` -/
def P5619917732658422763.Spec : Prop :=
  ∀ n, P5619917732658422763.a n = A029040 n

end A029040

/-! ## A029040.P3667181917675631272

`A025778(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029040

/-- `A025778(n)+a(n-3)` -/
def P3667181917675631272.Spec : Prop :=
  ∀ n, P3667181917675631272.a n = A029040 n

theorem P3667181917675631272.correct : P3667181917675631272.Spec := by
  intro n
  simp only [A029040]

end A029040

/-! ## A029040.P16135298650732568657

`∑[∑[A291985(n)]*A033999(n)]`
-/

namespace A029040.P16135298650732568657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P16135298650732568657

namespace A029040

/-- `∑[∑[A291985(n)]*A033999(n)]` -/
def P16135298650732568657.Spec : Prop :=
  ∀ n, P16135298650732568657.a n = A029040 n

end A029040

/-! ## A029040.P8828107709501368613

`A029145(abs(1-n))+A029145(n)`
-/

namespace A029040.P8828107709501368613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029145 |1 - (n : ℤ)|.toNat + A029145 n

end

end A029040.P8828107709501368613

namespace A029040

/-- `A029145(abs(1-n))+A029145(n)` -/
def P8828107709501368613.Spec : Prop :=
  ∀ n, P8828107709501368613.a n = A029040 n

end A029040

/-! ## A029040.P8331370880923444083

`A029013(n)+A029273(n)-A029143(n)`
-/

namespace A029040.P8331370880923444083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 n + (A029273 n - A029143 n)

end

end A029040.P8331370880923444083

namespace A029040

/-- `A029013(n)+A029273(n)-A029143(n)` -/
def P8331370880923444083.Spec : Prop :=
  ∀ n, P8331370880923444083.a n = A029040 n

end A029040

/-! ## A029040.P9590448090195621396

`A029263(2*n+1)+A025797(n)`
-/

namespace A029040.P9590448090195621396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029263 (2 * n + 1) + A025797 n

end

end A029040.P9590448090195621396

namespace A029040

/-- `A029263(2*n+1)+A025797(n)` -/
def P9590448090195621396.Spec : Prop :=
  ∀ n, P9590448090195621396.a n = A029040 n

end A029040

/-! ## A029040.P14085077631292665492

`A029318(A008585(n+1))-A029246(n+1)`
-/

namespace A029040.P14085077631292665492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029318 (A008585 (n + 1)).toNat - A029246 (n + 1)

end

end A029040.P14085077631292665492

namespace A029040

/-- `A029318(A008585(n+1))-A029246(n+1)` -/
def P14085077631292665492.Spec : Prop :=
  ∀ n, P14085077631292665492.a n = A029040 n

end A029040

/-! ## A029040.P11672778352134582727

`∑[A056926(∑[A291985(n)]²)]`
-/

namespace A029040.P11672778352134582727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P11672778352134582727

namespace A029040

/-- `∑[A056926(∑[A291985(n)]²)]` -/
def P11672778352134582727.Spec : Prop :=
  ∀ n, P11672778352134582727.a n = A029040 n

end A029040

/-! ## A029040.P1635039967797523857

`A028310(a(n-1))+A025836(n)` with `a(0)=1`
-/

namespace A029040.P1635039967797523857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025836 n

end

end A029040.P1635039967797523857

namespace A029040

/-- `A028310(a(n-1))+A025836(n)` -/
def P1635039967797523857.Spec : Prop :=
  ∀ n, P1635039967797523857.a n = A029040 n

end A029040

/-! ## A029040.P11960285316121758209

`∑[A018851(∑[A291985(n)]²)]`
-/

namespace A029040.P11960285316121758209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P11960285316121758209

namespace A029040

/-- `∑[A018851(∑[A291985(n)]²)]` -/
def P11960285316121758209.Spec : Prop :=
  ∀ n, P11960285316121758209.a n = A029040 n

end A029040

/-! ## A029040.P13844392667786205838

`∑[A000196(∑[A291985(n)]²)]`
-/

namespace A029040.P13844392667786205838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P13844392667786205838

namespace A029040

/-- `∑[A000196(∑[A291985(n)]²)]` -/
def P13844392667786205838.Spec : Prop :=
  ∀ n, P13844392667786205838.a n = A029040 n

end A029040

/-! ## A029040.P4246385304442779017

`∑[A037213(∑[A291985(n)]²)]`
-/

namespace A029040.P4246385304442779017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P4246385304442779017

namespace A029040

/-- `∑[A037213(∑[A291985(n)]²)]` -/
def P4246385304442779017.Spec : Prop :=
  ∀ n, P4246385304442779017.a n = A029040 n

end A029040

/-! ## A029040.P8944310959287709503

`∑[A178786(∑[A291985(n)]²)]`
-/

namespace A029040.P8944310959287709503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P8944310959287709503

namespace A029040

/-- `∑[A178786(∑[A291985(n)]²)]` -/
def P8944310959287709503.Spec : Prop :=
  ∀ n, P8944310959287709503.a n = A029040 n

end A029040

/-! ## A029040.P12895177756103383347

`∑[A331958(∑[A291985(n)]²)]`
-/

namespace A029040.P12895177756103383347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P12895177756103383347

namespace A029040

/-- `∑[A331958(∑[A291985(n)]²)]` -/
def P12895177756103383347.Spec : Prop :=
  ∀ n, P12895177756103383347.a n = A029040 n

end A029040

/-! ## A029040.P2534526304082586857

`∑[A000194(∑[A291985(n)]²)]`
-/

namespace A029040.P2534526304082586857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029040.P2534526304082586857

namespace A029040

/-- `∑[A000194(∑[A291985(n)]²)]` -/
def P2534526304082586857.Spec : Prop :=
  ∀ n, P2534526304082586857.a n = A029040 n

end A029040

/-!
# A029041: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^9)).

The programs for A029041, the canonical program `A029041.P7111796206172511067` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029041 has offset 0).

The definition of A029041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029041.P11538605084336023438

`∑[A025837(n)]`
-/

namespace A029041.P11538605084336023438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029041.P11538605084336023438

namespace A029041

/-- `∑[A025837(n)]` -/
def P11538605084336023438.Spec : Prop :=
  ∀ n, P11538605084336023438.a n = A029041 n

end A029041

/-! ## A029041.P7111796206172511067

`A025779(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029041

/-- `A025779(n)+a(n-3)` -/
def P7111796206172511067.Spec : Prop :=
  ∀ n, P7111796206172511067.a n = A029041 n

theorem P7111796206172511067.correct : P7111796206172511067.Spec := by
  intro n
  simp only [A029041]

end A029041

/-! ## A029041.P15491560591831024741

`A029221(2*n)`
-/

namespace A029041.P15491560591831024741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (2 * n)

end

end A029041.P15491560591831024741

namespace A029041

/-- `A029221(2*n)` -/
def P15491560591831024741.Spec : Prop :=
  ∀ n, P15491560591831024741.a n = A029041 n

end A029041

/-! ## A029041.P14126937608381458679

`∑[A025904(2*n)]`
-/

namespace A029041.P14126937608381458679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029041.P14126937608381458679

namespace A029041

/-- `∑[A025904(2*n)]` -/
def P14126937608381458679.Spec : Prop :=
  ∀ n, P14126937608381458679.a n = A029041 n

end A029041

/-! ## A029041.P8348151680693549514

`A025904(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029041.P8348151680693549514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025904 (n + n) + a (n - 1)

end

end A029041.P8348151680693549514

namespace A029041

/-- `A025904(n+n)+a(n-1)` -/
def P8348151680693549514.Spec : Prop :=
  ∀ n, P8348151680693549514.a n = A029041 n

end A029041

/-! ## A029041.P14354491784543988376

`∑[A029423(2*n)-A029423(2*n+1)]`
-/

namespace A029041.P14354491784543988376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (2 * n) - A029423 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029041.P14354491784543988376

namespace A029041

/-- `∑[A029423(2*n)-A029423(2*n+1)]` -/
def P14354491784543988376.Spec : Prop :=
  ∀ n, P14354491784543988376.a n = A029041 n

end A029041

/-! ## A029041.P11356211009440246621

`A029221(A004277(n))+A000007(n)`
-/

namespace A029041.P11356211009440246621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (A004277 n).toNat + A000007 n

end

end A029041.P11356211009440246621

namespace A029041

/-- `A029221(A004277(n))+A000007(n)` -/
def P11356211009440246621.Spec : Prop :=
  ∀ n, P11356211009440246621.a n = A029041 n

end A029041

/-! ## A029041.P6727933835376946263

`A029221(record[A014681(n)])%A000041(n+2)`
-/

namespace A029041.P6727933835376946263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000041 (n + 2))

end

end A029041.P6727933835376946263

namespace A029041

/-- `A029221(record[A014681(n)])%A000041(n+2)` -/
def P6727933835376946263.Spec : Prop :=
  ∀ n, P6727933835376946263.a n = A029041 n

end A029041

/-! ## A029041.P3979048741760210880

`A029354(abs(A023444(2*n)))+A029354(2*n)`
-/

namespace A029041.P3979048741760210880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 |A023444 (2 * n)|.toNat + A029354 (2 * n)

end

end A029041.P3979048741760210880

namespace A029041

/-- `A029354(abs(A023444(2*n)))+A029354(2*n)` -/
def P3979048741760210880.Spec : Prop :=
  ∀ n, P3979048741760210880.a n = A029041 n

end A029041

/-! ## A029041.P1226636447564028943

`A025904(2*n)+A029188(2*n)-A029354(2*n)`
-/

namespace A029041.P1226636447564028943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (2 * n) + (A029188 (2 * n) - A029354 (2 * n))

end

end A029041.P1226636447564028943

namespace A029041

/-- `A025904(2*n)+A029188(2*n)-A029354(2*n)` -/
def P1226636447564028943.Spec : Prop :=
  ∀ n, P1226636447564028943.a n = A029041 n

end A029041

/-! ## A029041.P12361972280976838724

`A029242(2*n+3)+A029242(2*n)`
-/

namespace A029041.P12361972280976838724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (2 * n + 3) + A029242 (2 * n)

end

end A029041.P12361972280976838724

namespace A029041

/-- `A029242(2*n+3)+A029242(2*n)` -/
def P12361972280976838724.Spec : Prop :=
  ∀ n, P12361972280976838724.a n = A029041 n

end A029041

/-! ## A029041.P4203776026222449231

`A029354(2*n+7)+A029354(2*n)`
-/

namespace A029041.P4203776026222449231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (2 * n + 7) + A029354 (2 * n)

end

end A029041.P4203776026222449231

namespace A029041

/-- `A029354(2*n+7)+A029354(2*n)` -/
def P4203776026222449231.Spec : Prop :=
  ∀ n, P4203776026222449231.a n = A029041 n

end A029041

/-! ## A029041.P12221224072036101693

`∑[abs(Δ[A029221(A020742(n))])]`
-/

namespace A029041.P12221224072036101693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (A020742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029041.P12221224072036101693

namespace A029041

/-- `∑[abs(Δ[A029221(A020742(n))])]` -/
def P12221224072036101693.Spec : Prop :=
  ∀ n, P12221224072036101693.a n = A029041 n

end A029041

/-! ## A029041.P3468350502994220000

`A000027(A029221(n+n))`
-/

namespace A029041.P3468350502994220000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029221 (n + n)).toNat

end

end A029041.P3468350502994220000

namespace A029041

/-- `A000027(A029221(n+n))` -/
def P3468350502994220000.Spec : Prop :=
  ∀ n, P3468350502994220000.a n = A029041 n

end A029041

/-! ## A029041.P16681765321472070032

`∑{d}[A029221(A005843(n)), A000010(#)]`
-/

namespace A029041.P16681765321472070032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A029041.P16681765321472070032

namespace A029041

/-- `∑{d}[A029221(A005843(n)), A000010(#)]` -/
def P16681765321472070032.Spec : Prop :=
  ∀ n, P16681765321472070032.a n = A029041 n

end A029041

/-!
# A029042: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^10)).

The programs for A029042, the canonical program `A029042.P13199233752711391955` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029042 has offset 0).

The definition of A029042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029042.P4030596383937244897

`∑[A025838(n)]`
-/

namespace A029042.P4030596383937244897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029042.P4030596383937244897

namespace A029042

/-- `∑[A025838(n)]` -/
def P4030596383937244897.Spec : Prop :=
  ∀ n, P4030596383937244897.a n = A029042 n

end A029042

/-! ## A029042.P13199233752711391955

`A187243(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029042

/-- `A187243(n)+a(n-3)` -/
def P13199233752711391955.Spec : Prop :=
  ∀ n, P13199233752711391955.a n = A029042 n

theorem P13199233752711391955.correct : P13199233752711391955.Spec := by
  intro n
  simp only [A029042]

end A029042

/-! ## A029042.P5267769735671853897

`A025838(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029042.P5267769735671853897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025838 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029042.P5267769735671853897

namespace A029042

/-- `A025838(char[1]+n)+a(n-1)` -/
def P5267769735671853897.Spec : Prop :=
  ∀ n, P5267769735671853897.a n = A029042 n

end A029042

/-! ## A029042.P12549248677532450319

`A029147(abs(1-n))+A029147(n)`
-/

namespace A029042.P12549248677532450319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029147 |1 - (n : ℤ)|.toNat + A029147 n

end

end A029042.P12549248677532450319

namespace A029042

/-- `A029147(abs(1-n))+A029147(n)` -/
def P12549248677532450319.Spec : Prop :=
  ∀ n, P12549248677532450319.a n = A029042 n

end A029042

/-! ## A029042.P13260281121151220073

`∑[-Δ[A029147(n)-A000008(n)]]`
-/

namespace A029042.P13260281121151220073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029147 n - A000008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029042.P13260281121151220073

namespace A029042

/-- `∑[-Δ[A029147(n)-A000008(n)]]` -/
def P13260281121151220073.Spec : Prop :=
  ∀ n, P13260281121151220073.a n = A029042 n

end A029042

/-! ## A029042.P6291653359631317427

`A000008(n+1)-A029147(n+1)`
-/

namespace A029042.P6291653359631317427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 (n + 1) - A029147 (n + 1)

end

end A029042.P6291653359631317427

namespace A029042

/-- `A000008(n+1)-A029147(n+1)` -/
def P6291653359631317427.Spec : Prop :=
  ∀ n, P6291653359631317427.a n = A029042 n

end A029042

/-! ## A029042.P10315439309583225821

`A029041(n+1)-A029286(n+1)`
-/

namespace A029042.P10315439309583225821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029041 (n + 1) - A029286 (n + 1)

end

end A029042.P10315439309583225821

namespace A029042

/-- `A029041(n+1)-A029286(n+1)` -/
def P10315439309583225821.Spec : Prop :=
  ∀ n, P10315439309583225821.a n = A029042 n

end A029042

/-! ## A029042.P6917641238641260483

`∑[A025865(xor(1, A304808(n)))]`
-/

namespace A029042.P6917641238641260483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (Int.xor 1 (A304808 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029042.P6917641238641260483

namespace A029042

/-- `∑[A025865(xor(1, A304808(n)))]` -/
def P6917641238641260483.Spec : Prop :=
  ∀ n, P6917641238641260483.a n = A029042 n

end A029042

/-!
# A029043: Expansion of 1/((1-x)(1-x^3)(1-x^5)(1-x^11)).

The programs for A029043, the canonical program `A029043.P10333574690023070009` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029043 has offset 0).

The definition of A029043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029043.P6602078107027285512

`∑[A025839(n)]`
-/

namespace A029043.P6602078107027285512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029043.P6602078107027285512

namespace A029043

/-- `∑[A025839(n)]` -/
def P6602078107027285512.Spec : Prop :=
  ∀ n, P6602078107027285512.a n = A029043 n

end A029043

/-! ## A029043.P10333574690023070009

`A025780(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029043

/-- `A025780(n)+a(n-3)` -/
def P10333574690023070009.Spec : Prop :=
  ∀ n, P10333574690023070009.a n = A029043 n

theorem P10333574690023070009.correct : P10333574690023070009.Spec := by
  intro n
  simp only [A029043]

end A029043

/-! ## A029043.P6653876208158305331

`A029224(2*n)`
-/

namespace A029043.P6653876208158305331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (2 * n)

end

end A029043.P6653876208158305331

namespace A029043

/-- `A029224(2*n)` -/
def P6653876208158305331.Spec : Prop :=
  ∀ n, P6653876208158305331.a n = A029043 n

end A029043

/-! ## A029043.P3026439469530803074

`∑[A025906(2*n)]`
-/

namespace A029043.P3026439469530803074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029043.P3026439469530803074

namespace A029043

/-- `∑[A025906(2*n)]` -/
def P3026439469530803074.Spec : Prop :=
  ∀ n, P3026439469530803074.a n = A029043 n

end A029043

/-! ## A029043.P15209698078926063450

`A025906(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029043.P15209698078926063450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025906 (n + n) + a (n - 1)

end

end A029043.P15209698078926063450

namespace A029043

/-- `A025906(n+n)+a(n-1)` -/
def P15209698078926063450.Spec : Prop :=
  ∀ n, P15209698078926063450.a n = A029043 n

end A029043

/-! ## A029043.P7222321572102562614

`xor(1, xor(1, A029224(A005843(n))))`
-/

namespace A029043.P7222321572102562614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A029224 (A005843 n).toNat))

end

end A029043.P7222321572102562614

namespace A029043

/-- `xor(1, xor(1, A029224(A005843(n))))` -/
def P7222321572102562614.Spec : Prop :=
  ∀ n, P7222321572102562614.a n = A029043 n

end A029043

/-! ## A029043.P4502279194170546691

`A029431(2*n+1)+A029225(2*n)`
-/

namespace A029043.P4502279194170546691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (2 * n + 1) + A029225 (2 * n)

end

end A029043.P4502279194170546691

namespace A029043

/-- `A029431(2*n+1)+A029225(2*n)` -/
def P4502279194170546691.Spec : Prop :=
  ∀ n, P4502279194170546691.a n = A029043 n

end A029043

/-! ## A029043.P14719786688597718574

`A029224(A005843(n))%A000041(n+2)`
-/

namespace A029043.P14719786688597718574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029224 (A005843 n).toNat) (A000041 (n + 2))

end

end A029043.P14719786688597718574

namespace A029043

/-- `A029224(A005843(n))%A000041(n+2)` -/
def P14719786688597718574.Spec : Prop :=
  ∀ n, P14719786688597718574.a n = A029043 n

end A029043

/-! ## A029043.P5459607550219688854

`A025926(2*n)+A029192(2*n)-A029377(2*n)`
-/

namespace A029043.P5459607550219688854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n) + (A029192 (2 * n) - A029377 (2 * n))

end

end A029043.P5459607550219688854

namespace A029043

/-- `A025926(2*n)+A029192(2*n)-A029377(2*n)` -/
def P5459607550219688854.Spec : Prop :=
  ∀ n, P5459607550219688854.a n = A029043 n

end A029043

/-! ## A029043.P5270285200546739982

`A029239(2*n)+A029384(2*n)-A029406(2*n)`
-/

namespace A029043.P5270285200546739982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (2 * n) + (A029384 (2 * n) - A029406 (2 * n))

end

end A029043.P5270285200546739982

namespace A029043

/-- `A029239(2*n)+A029384(2*n)-A029406(2*n)` -/
def P5270285200546739982.Spec : Prop :=
  ∀ n, P5270285200546739982.a n = A029043 n

end A029043

/-! ## A029043.P13953590049971799298

`A029213(2*n+5)`
-/

namespace A029043.P13953590049971799298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 (2 * n + 5)

end

end A029043.P13953590049971799298

namespace A029043

/-- `A029213(2*n+5)` -/
def P13953590049971799298.Spec : Prop :=
  ∀ n, P13953590049971799298.a n = A029043 n

end A029043

/-! ## A029043.P6517168449313564244

`A000027(A029224(n+n))`
-/

namespace A029043.P6517168449313564244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029224 (n + n)).toNat

end

end A029043.P6517168449313564244

namespace A029043

/-- `A000027(A029224(n+n))` -/
def P6517168449313564244.Spec : Prop :=
  ∀ n, P6517168449313564244.a n = A029043 n

end A029043

/-!
# A029044: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^12)).

The programs for A029044, the canonical program `A029044.P17699817528028773973` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029044 has offset 0).

The definition of A029044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029044.P17699817528028773973

`∑[A025840(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029044

/-- `∑[A025840(n)]` -/
def P17699817528028773973.Spec : Prop :=
  ∀ n, P17699817528028773973.a n = A029044 n

theorem P17699817528028773973.correct : P17699817528028773973.Spec := by
  intro n
  simp only [A029044]

end A029044

/-! ## A029044.P18221622519122015263

`A025781(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029044.P18221622519122015263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025781 n + a (n - 3)

end

end A029044.P18221622519122015263

namespace A029044

/-- `A025781(n)+a(n-3)` -/
def P18221622519122015263.Spec : Prop :=
  ∀ n, P18221622519122015263.a n = A029044 n

end A029044

/-! ## A029044.P8635620544785978838

`A025840(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029044.P8635620544785978838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025840 n + a (A023443 n).toNat

end

end A029044.P8635620544785978838

namespace A029044

/-- `A025840(n)+a(A023443(n))` -/
def P8635620544785978838.Spec : Prop :=
  ∀ n, P8635620544785978838.a n = A029044 n

end A029044

/-! ## A029044.P10276525929818619540

`A029149(abs(1-n))+A029149(n)`
-/

namespace A029044.P10276525929818619540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029149 |1 - (n : ℤ)|.toNat + A029149 n

end

end A029044.P10276525929818619540

namespace A029044

/-- `A029149(abs(1-n))+A029149(n)` -/
def P10276525929818619540.Spec : Prop :=
  ∀ n, P10276525929818619540.a n = A029044 n

end A029044

/-! ## A029044.P15140600320013204872

`A025840(n)+A029016(n)-A029149(n)`
-/

namespace A029044.P15140600320013204872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 n + (A029016 n - A029149 n)

end

end A029044.P15140600320013204872

namespace A029044

/-- `A025840(n)+A029016(n)-A029149(n)` -/
def P15140600320013204872.Spec : Prop :=
  ∀ n, P15140600320013204872.a n = A029044 n

end A029044

/-! ## A029044.P13701907391699012089

`A029047(n+1)-Δ[A029061(n)]`
-/

namespace A029044.P13701907391699012089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029047 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029044.P13701907391699012089

namespace A029044

/-- `A029047(n+1)-Δ[A029061(n)]` -/
def P13701907391699012089.Spec : Prop :=
  ∀ n, P13701907391699012089.a n = A029044 n

end A029044

/-! ## A029044.P5496124910976811728

`A029047(n+1)-A025857(n+1)`
-/

namespace A029044.P5496124910976811728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029047 (n + 1) - A025857 (n + 1)

end

end A029044.P5496124910976811728

namespace A029044

/-- `A029047(n+1)-A025857(n+1)` -/
def P5496124910976811728.Spec : Prop :=
  ∀ n, P5496124910976811728.a n = A029044 n

end A029044

/-! ## A029044.P5215261143500567265

`A029016(n+1)-A029149(n+1)`
-/

namespace A029044.P5215261143500567265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029016 (n + 1) - A029149 (n + 1)

end

end A029044.P5215261143500567265

namespace A029044

/-- `A029016(n+1)-A029149(n+1)` -/
def P5215261143500567265.Spec : Prop :=
  ∀ n, P5215261143500567265.a n = A029044 n

end A029044

/-! ## A029044.P18178635951555242977

`A029224(A005843(n+1))-A029291(n+1)`
-/

namespace A029044.P18178635951555242977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (A005843 (n + 1)).toNat - A029291 (n + 1)

end

end A029044.P18178635951555242977

namespace A029044

/-- `A029224(A005843(n+1))-A029291(n+1)` -/
def P18178635951555242977.Spec : Prop :=
  ∀ n, P18178635951555242977.a n = A029044 n

end A029044

/-! ## A029044.P14854633588466774150

`A051176(3*A025840(n))+a(n-1)` with `a(0)=1`
-/

namespace A029044.P14854633588466774150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051176 (3 * A025840 n).toNat + a (n - 1)

end

end A029044.P14854633588466774150

namespace A029044

/-- `A051176(3*A025840(n))+a(n-1)` -/
def P14854633588466774150.Spec : Prop :=
  ∀ n, P14854633588466774150.a n = A029044 n

end A029044

/-!
# A029045: Expansion of 1/((1-x)*(1-x^3)*(1-x^6)*(1-x^7)).

The programs for A029045, the canonical program `A029045.P18068245637882968988` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029045 has offset 0).

The definition of A029045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029045.P269757230967520278

`∑[A025841(n)]`
-/

namespace A029045.P269757230967520278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029045.P269757230967520278

namespace A029045

/-- `∑[A025841(n)]` -/
def P269757230967520278.Spec : Prop :=
  ∀ n, P269757230967520278.a n = A029045 n

end A029045

/-! ## A029045.P18068245637882968988

`A025782(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029045

/-- `A025782(n)+a(n-3)` -/
def P18068245637882968988.Spec : Prop :=
  ∀ n, P18068245637882968988.a n = A029045 n

theorem P18068245637882968988.correct : P18068245637882968988.Spec := by
  intro n
  simp only [A029045]

end A029045

/-! ## A029045.P15431787970457033250

`A029150(abs(A023443(n)))+A029150(n)`
-/

namespace A029045.P15431787970457033250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029150 |A023443 n|.toNat + A029150 n

end

end A029045.P15431787970457033250

namespace A029045

/-- `A029150(abs(A023443(n)))+A029150(n)` -/
def P15431787970457033250.Spec : Prop :=
  ∀ n, P15431787970457033250.a n = A029045 n

end A029045

/-! ## A029045.P944086817895600977

`∑[A025842(n)]+A029292(n)-A025842(n)`
-/

namespace A029045.P944086817895600977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029292 n - A025842 n)

end

end A029045.P944086817895600977

namespace A029045

/-- `∑[A025842(n)]+A029292(n)-A025842(n)` -/
def P944086817895600977.Spec : Prop :=
  ∀ n, P944086817895600977.a n = A029045 n

end A029045

/-! ## A029045.P13862812567758676531

`A029017(n+1)-A029150(n+1)`
-/

namespace A029045.P13862812567758676531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 (n + 1) - A029150 (n + 1)

end

end A029045.P13862812567758676531

namespace A029045

/-- `A029017(n+1)-A029150(n+1)` -/
def P13862812567758676531.Spec : Prop :=
  ∀ n, P13862812567758676531.a n = A029045 n

end A029045

/-! ## A029045.P1135481621318522730

`A029218(2*n)`
-/

namespace A029045.P1135481621318522730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (2 * n)

end

end A029045.P1135481621318522730

namespace A029045

/-- `A029218(2*n)` -/
def P1135481621318522730.Spec : Prop :=
  ∀ n, P1135481621318522730.a n = A029045 n

end A029045

/-! ## A029045.P7448633134378052761

`∑[A025901(2*n)]`
-/

namespace A029045.P7448633134378052761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029045.P7448633134378052761

namespace A029045

/-- `∑[A025901(2*n)]` -/
def P7448633134378052761.Spec : Prop :=
  ∀ n, P7448633134378052761.a n = A029045 n

end A029045

/-! ## A029045.P16764049290674183415

`A025901(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029045.P16764049290674183415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025901 (n + n) + a (n - 1)

end

end A029045.P16764049290674183415

namespace A029045

/-- `A025901(n+n)+a(n-1)` -/
def P16764049290674183415.Spec : Prop :=
  ∀ n, P16764049290674183415.a n = A029045 n

end A029045

/-! ## A029045.P12631976809617036659

`or(char[1], A029218(A005843(n)))`
-/

namespace A029045.P12631976809617036659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A029218 (A005843 n).toNat)

end

end A029045.P12631976809617036659

namespace A029045

/-- `or(char[1], A029218(A005843(n)))` -/
def P12631976809617036659.Spec : Prop :=
  ∀ n, P12631976809617036659.a n = A029045 n

end A029045

/-! ## A029045.P2216169434240503476

`or(char[1], A029218(A005408(n)-1))`
-/

namespace A029045.P2216169434240503476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A029218 (A005408 n - 1).toNat)

end

end A029045.P2216169434240503476

namespace A029045

/-- `or(char[1], A029218(A005408(n)-1))` -/
def P2216169434240503476.Spec : Prop :=
  ∀ n, P2216169434240503476.a n = A029045 n

end A029045

/-! ## A029045.P2010252582969298812

`A029218(A004277(n))+C(2, n+2)`
-/

namespace A029045.P2010252582969298812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (A004277 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A029045.P2010252582969298812

namespace A029045

/-- `A029218(A004277(n))+C(2, n+2)` -/
def P2010252582969298812.Spec : Prop :=
  ∀ n, P2010252582969298812.a n = A029045 n

end A029045

/-! ## A029045.P10340471634517751874

`A029261(2*n)+A025849(2*n+1)`
-/

namespace A029045.P10340471634517751874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029261 (2 * n) + A025849 (2 * n + 1)

end

end A029045.P10340471634517751874

namespace A029045

/-- `A029261(2*n)+A025849(2*n+1)` -/
def P10340471634517751874.Spec : Prop :=
  ∀ n, P10340471634517751874.a n = A029045 n

end A029045

/-! ## A029045.P5135378708414009198

`A029218(A004277(n))+A000007(n)`
-/

namespace A029045.P5135378708414009198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (A004277 n).toNat + A000007 n

end

end A029045.P5135378708414009198

namespace A029045

/-- `A029218(A004277(n))+A000007(n)` -/
def P5135378708414009198.Spec : Prop :=
  ∀ n, P5135378708414009198.a n = A029045 n

end A029045

/-! ## A029045.P13295831644657338773

`A029218(A005408(n)-1)%A000040(n+1)²`
-/

namespace A029045.P13295831644657338773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029218 (A005408 n - 1).toNat) (A000040 (n + 1) ^ 2)

end

end A029045.P13295831644657338773

namespace A029045

/-- `A029218(A005408(n)-1)%A000040(n+1)²` -/
def P13295831644657338773.Spec : Prop :=
  ∀ n, P13295831644657338773.a n = A029045 n

end A029045

/-! ## A029045.P8798448024528609036

`A029053(2*n+1)+A029261(2*n)-A029053(2*n)`
-/

namespace A029045.P8798448024528609036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (2 * n + 1) + (A029261 (2 * n) - A029053 (2 * n))

end

end A029045.P8798448024528609036

namespace A029045

/-- `A029053(2*n+1)+A029261(2*n)-A029053(2*n)` -/
def P8798448024528609036.Spec : Prop :=
  ∀ n, P8798448024528609036.a n = A029045 n

end A029045

/-! ## A029045.P8028774799616088046

`A029309(2*n+1)+A029309(2*n+3)`
-/

namespace A029045.P8028774799616088046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029309 (2 * n + 1) + A029309 (2 * n + 3)

end

end A029045.P8028774799616088046

namespace A029045

/-- `A029309(2*n+1)+A029309(2*n+3)` -/
def P8028774799616088046.Spec : Prop :=
  ∀ n, P8028774799616088046.a n = A029045 n

end A029045

/-! ## A029045.P17558995145639992223

`A000027(A029218(Δ[A002061(n)]))`
-/

namespace A029045.P17558995145639992223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029218 (f1 (n + 1) - f1 n).toNat).toNat

end

end A029045.P17558995145639992223

namespace A029045

/-- `A000027(A029218(Δ[A002061(n)]))` -/
def P17558995145639992223.Spec : Prop :=
  ∀ n, P17558995145639992223.a n = A029045 n

end A029045

/-! ## A029045.P6959325053824696231

`A000027(A029218(A005408(n)-1))`
-/

namespace A029045.P6959325053824696231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029218 (A005408 n - 1).toNat).toNat

end

end A029045.P6959325053824696231

namespace A029045

/-- `A000027(A029218(A005408(n)-1))` -/
def P6959325053824696231.Spec : Prop :=
  ∀ n, P6959325053824696231.a n = A029045 n

end A029045

/-! ## A029045.P5650354023525443552

`A000027(A029218(xor(1, A005408(n))))`
-/

namespace A029045.P5650354023525443552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029218 (Int.xor 1 (A005408 n)).toNat).toNat

end

end A029045.P5650354023525443552

namespace A029045

/-- `A000027(A029218(xor(1, A005408(n))))` -/
def P5650354023525443552.Spec : Prop :=
  ∀ n, P5650354023525443552.a n = A029045 n

end A029045

/-!
# A029046: Expansion of 1/((1-x)*(1-x^3)*(1-x^6)*(1-x^8)).

The programs for A029046, the canonical program `A029046.P944543083982543891` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029046 has offset 0).

The definition of A029046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029046.P6110898077523402006

`∑[A025842(n)]`
-/

namespace A029046.P6110898077523402006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029046.P6110898077523402006

namespace A029046

/-- `∑[A025842(n)]` -/
def P6110898077523402006.Spec : Prop :=
  ∀ n, P6110898077523402006.a n = A029046 n

end A029046

/-! ## A029046.P7646025580199738106

`A025842(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029046.P7646025580199738106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025842 n + a (A023443 n).toNat

end

end A029046.P7646025580199738106

namespace A029046

/-- `A025842(n)+a(A023443(n))` -/
def P7646025580199738106.Spec : Prop :=
  ∀ n, P7646025580199738106.a n = A029046 n

end A029046

/-! ## A029046.P17813930055432201417

`A029151(abs(1-n))+A029151(n)`
-/

namespace A029046.P17813930055432201417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029151 |1 - (n : ℤ)|.toNat + A029151 n

end

end A029046.P17813930055432201417

namespace A029046

/-- `A029151(abs(1-n))+A029151(n)` -/
def P17813930055432201417.Spec : Prop :=
  ∀ n, P17813930055432201417.a n = A029046 n

end A029046

/-! ## A029046.P2897023034144347958

`A029156(abs(A023443(n)))+A029150(n)`
-/

namespace A029046.P2897023034144347958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029156 |A023443 n|.toNat + A029150 n

end

end A029046.P2897023034144347958

namespace A029046

/-- `A029156(abs(A023443(n)))+A029150(n)` -/
def P2897023034144347958.Spec : Prop :=
  ∀ n, P2897023034144347958.a n = A029046 n

end A029046

/-! ## A029046.P944543083982543891

`∑[A307018(A110657(n))+A025853(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029046

/-- `∑[A307018(A110657(n))+A025853(n)]` -/
def P944543083982543891.Spec : Prop :=
  ∀ n, P944543083982543891.a n = A029046 n

theorem P944543083982543891.correct : P944543083982543891.Spec := by
  intro n
  simp only [A029046]

end A029046

/-! ## A029046.P1397373946241053536

`A025842(n)+A029045(n)-A029292(n)`
-/

namespace A029046.P1397373946241053536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 n + (A029045 n - A029292 n)

end

end A029046.P1397373946241053536

namespace A029046

/-- `A025842(n)+A029045(n)-A029292(n)` -/
def P1397373946241053536.Spec : Prop :=
  ∀ n, P1397373946241053536.a n = A029046 n

end A029046

/-! ## A029046.P1019370608470670478

`A029013(n+1)-A029143(n+1)`
-/

namespace A029046.P1019370608470670478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 (n + 1) - A029143 (n + 1)

end

end A029046.P1019370608470670478

namespace A029046

/-- `A029013(n+1)-A029143(n+1)` -/
def P1019370608470670478.Spec : Prop :=
  ∀ n, P1019370608470670478.a n = A029046 n

end A029046

/-! ## A029046.P13925574616390943861

`A029045(n+1)-A029292(n+1)`
-/

namespace A029046.P13925574616390943861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029045 (n + 1) - A029292 (n + 1)

end

end A029046.P13925574616390943861

namespace A029046

/-- `A029045(n+1)-A029292(n+1)` -/
def P13925574616390943861.Spec : Prop :=
  ∀ n, P13925574616390943861.a n = A029046 n

end A029046

/-!
# A029047: Expansion of 1/((1-x)*(1-x^3)*(1-x^6)*(1-x^10)).

The programs for A029047, the canonical program `A029047.P8527402338630775460` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029047 has offset 0).

The definition of A029047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029047.P8527402338630775460

`∑[A025843(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029047

/-- `∑[A025843(n)]` -/
def P8527402338630775460.Spec : Prop :=
  ∀ n, P8527402338630775460.a n = A029047 n

theorem P8527402338630775460.correct : P8527402338630775460.Spec := by
  intro n
  simp only [A029047]

end A029047

/-! ## A029047.P2353741049604458990

`A025843(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029047.P2353741049604458990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025843 n + a (A023443 n).toNat

end

end A029047.P2353741049604458990

namespace A029047

/-- `A025843(n)+a(A023443(n))` -/
def P2353741049604458990.Spec : Prop :=
  ∀ n, P2353741049604458990.a n = A029047 n

end A029047

/-! ## A029047.P17198562364513027065

`A025857(n)+A029044(n)-A025840(n)`
-/

namespace A029047.P17198562364513027065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n + (A029044 n - A025840 n)

end

end A029047.P17198562364513027065

namespace A029047

/-- `A025857(n)+A029044(n)-A025840(n)` -/
def P17198562364513027065.Spec : Prop :=
  ∀ n, P17198562364513027065.a n = A029047 n

end A029047

/-! ## A029047.P11031622311321974342

`A025857(n)+A029016(n)-A029149(n)`
-/

namespace A029047.P11031622311321974342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n + (A029016 n - A029149 n)

end

end A029047.P11031622311321974342

namespace A029047

/-- `A025857(n)+A029016(n)-A029149(n)` -/
def P11031622311321974342.Spec : Prop :=
  ∀ n, P11031622311321974342.a n = A029047 n

end A029047

/-! ## A029047.P3114967389312904965

`A029042(n+1)-A029275(n+1)`
-/

namespace A029047.P3114967389312904965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 (n + 1) - A029275 (n + 1)

end

end A029047.P3114967389312904965

namespace A029047

/-- `A029042(n+1)-A029275(n+1)` -/
def P3114967389312904965.Spec : Prop :=
  ∀ n, P3114967389312904965.a n = A029047 n

end A029047

/-! ## A029047.P418816801524085179

`A029270(2*n+1)+A025799(n)`
-/

namespace A029047.P418816801524085179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 (2 * n + 1) + A025799 n

end

end A029047.P418816801524085179

namespace A029047

/-- `A029270(2*n+1)+A025799(n)` -/
def P418816801524085179.Spec : Prop :=
  ∀ n, P418816801524085179.a n = A029047 n

end A029047

/-! ## A029047.P4947325150431932497

`A025843(n)+a(n-1)%A000244(n)` with `a(0)=1`
-/

namespace A029047.P4947325150431932497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025843 n + Int.tmod (a (n - 1)) (A000244 n)

end

end A029047.P4947325150431932497

namespace A029047

/-- `A025843(n)+a(n-1)%A000244(n)` -/
def P4947325150431932497.Spec : Prop :=
  ∀ n, P4947325150431932497.a n = A029047 n

end A029047

/-! ## A029047.P1786066848186555014

`A263273(A263273(a(n-1)))+A025843(n)` with `a(0)=1`
-/

namespace A029047.P1786066848186555014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263273 (A263273 (a (n - 1)).toNat).toNat + A025843 n

end

end A029047.P1786066848186555014

namespace A029047

/-- `A263273(A263273(a(n-1)))+A025843(n)` -/
def P1786066848186555014.Spec : Prop :=
  ∀ n, P1786066848186555014.a n = A029047 n

end A029047

/-!
# A029048: Expansion of 1/((1-x)*(1-x^3)*(1-x^6)*(1-x^11)).

The programs for A029048, the canonical program `A029048.P8628271437068557478` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029048 has offset 0).

The definition of A029048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029048.P11151156027810615941

`∑[A025844(n)]`
-/

namespace A029048.P11151156027810615941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029048.P11151156027810615941

namespace A029048

/-- `∑[A025844(n)]` -/
def P11151156027810615941.Spec : Prop :=
  ∀ n, P11151156027810615941.a n = A029048 n

end A029048

/-! ## A029048.P8628271437068557478

`A025783(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029048

/-- `A025783(n)+a(n-3)` -/
def P8628271437068557478.Spec : Prop :=
  ∀ n, P8628271437068557478.a n = A029048 n

theorem P8628271437068557478.correct : P8628271437068557478.Spec := by
  intro n
  simp only [A029048]

end A029048

/-! ## A029048.P8085734082592068094

`A029047(n+1)-A029303(n+1)`
-/

namespace A029048.P8085734082592068094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029047 (n + 1) - A029303 (n + 1)

end

end A029048.P8085734082592068094

namespace A029048

/-- `A029047(n+1)-A029303(n+1)` -/
def P8085734082592068094.Spec : Prop :=
  ∀ n, P8085734082592068094.a n = A029048 n

end A029048

/-! ## A029048.P7472163895450497546

`A029225(2*n)`
-/

namespace A029048.P7472163895450497546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (2 * n)

end

end A029048.P7472163895450497546

namespace A029048

/-- `A029225(2*n)` -/
def P7472163895450497546.Spec : Prop :=
  ∀ n, P7472163895450497546.a n = A029048 n

end A029048

/-! ## A029048.P2096600066453114241

`∑[A025907(2*n)]`
-/

namespace A029048.P2096600066453114241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029048.P2096600066453114241

namespace A029048

/-- `∑[A025907(2*n)]` -/
def P2096600066453114241.Spec : Prop :=
  ∀ n, P2096600066453114241.a n = A029048 n

end A029048

/-! ## A029048.P12506843187593402225

`A025907(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029048.P12506843187593402225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025907 (n + n) + a (n - 1)

end

end A029048.P12506843187593402225

namespace A029048

/-- `A025907(n+n)+a(n-1)` -/
def P12506843187593402225.Spec : Prop :=
  ∀ n, P12506843187593402225.a n = A029048 n

end A029048

/-! ## A029048.P16544210585988676890

`A029224(2*n)-A029431(2*n+1)`
-/

namespace A029048.P16544210585988676890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (2 * n) - A029431 (2 * n + 1)

end

end A029048.P16544210585988676890

namespace A029048

/-- `A029224(2*n)-A029431(2*n+1)` -/
def P16544210585988676890.Spec : Prop :=
  ∀ n, P16544210585988676890.a n = A029048 n

end A029048

/-! ## A029048.P9356579720530645371

`A029225(A004277(n))+A000007(n)`
-/

namespace A029048.P9356579720530645371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (A004277 n).toNat + A000007 n

end

end A029048.P9356579720530645371

namespace A029048

/-- `A029225(A004277(n))+A000007(n)` -/
def P9356579720530645371.Spec : Prop :=
  ∀ n, P9356579720530645371.a n = A029048 n

end A029048

/-! ## A029048.P1155462751827267943

`A029240(2*n)+A029427(2*n)-A025922(2*n)`
-/

namespace A029048.P1155462751827267943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n) + (A029427 (2 * n) - A025922 (2 * n))

end

end A029048.P1155462751827267943

namespace A029048

/-- `A029240(2*n)+A029427(2*n)-A025922(2*n)` -/
def P1155462751827267943.Spec : Prop :=
  ∀ n, P1155462751827267943.a n = A029048 n

end A029048

/-! ## A029048.P12060494243062213198

`∑[abs(Δ[A029225(n+9+n)])]`
-/

namespace A029048.P12060494243062213198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (n + 9 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029048.P12060494243062213198

namespace A029048

/-- `∑[abs(Δ[A029225(n+9+n)])]` -/
def P12060494243062213198.Spec : Prop :=
  ∀ n, P12060494243062213198.a n = A029048 n

end A029048

/-! ## A029048.P4604963239322559447

`or(char[1], A029225(A004273(n+6)))`
-/

namespace A029048.P4604963239322559447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A029225 (A004273 (n + 6)).toNat)

end

end A029048.P4604963239322559447

namespace A029048

/-- `or(char[1], A029225(A004273(n+6)))` -/
def P4604963239322559447.Spec : Prop :=
  ∀ n, P4604963239322559447.a n = A029048 n

end A029048

/-! ## A029048.P14284189710245090566

`A029225(A004273(n+6))%A000041(n+2)`
-/

namespace A029048.P14284189710245090566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029225 (A004273 (n + 6)).toNat) (A000041 (n + 2))

end

end A029048.P14284189710245090566

namespace A029048

/-- `A029225(A004273(n+6))%A000041(n+2)` -/
def P14284189710245090566.Spec : Prop :=
  ∀ n, P14284189710245090566.a n = A029048 n

end A029048

/-! ## A029048.P11640515221895806538

`A000027(A029225(n+n))`
-/

namespace A029048.P11640515221895806538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029225 (n + n)).toNat

end

end A029048.P11640515221895806538

namespace A029048

/-- `A000027(A029225(n+n))` -/
def P11640515221895806538.Spec : Prop :=
  ∀ n, P11640515221895806538.a n = A029048 n

end A029048

/-! ## A029048.P2401699793199628416

`∑{d}[A029225(A004273(n+6)), A000010(#)]`
-/

namespace A029048.P2401699793199628416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (A004273 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A029048.P2401699793199628416

namespace A029048

/-- `∑{d}[A029225(A004273(n+6)), A000010(#)]` -/
def P2401699793199628416.Spec : Prop :=
  ∀ n, P2401699793199628416.a n = A029048 n

end A029048

/-! ## A029048.P16065233579722810722

`A029225(n+n)+A014473(∑[n])`
-/

namespace A029048.P16065233579722810722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (n + n) + A014473 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029048.P16065233579722810722

namespace A029048

/-- `A029225(n+n)+A014473(∑[n])` -/
def P16065233579722810722.Spec : Prop :=
  ∀ n, P16065233579722810722.a n = A029048 n

end A029048

/-!
# A029049: Expansion of 1/((1-x)(1-x^3)(1-x^7)(1-x^8)).

The programs for A029049, the canonical program `A029049.P7921418284416393183` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029049 has offset 0).

The definition of A029049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029049.P17561882669857484582

`∑[A025845(n)]`
-/

namespace A029049.P17561882669857484582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029049.P17561882669857484582

namespace A029049

/-- `∑[A025845(n)]` -/
def P17561882669857484582.Spec : Prop :=
  ∀ n, P17561882669857484582.a n = A029049 n

end A029049

/-! ## A029049.P7921418284416393183

`A025784(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029049

/-- `A025784(n)+a(n-3)` -/
def P7921418284416393183.Spec : Prop :=
  ∀ n, P7921418284416393183.a n = A029049 n

theorem P7921418284416393183.correct : P7921418284416393183.Spec := by
  intro n
  simp only [A029049]

end A029049

/-! ## A029049.P13849729850898845601

`A025845(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029049.P13849729850898845601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025845 n + a (A023443 n).toNat

end

end A029049.P13849729850898845601

namespace A029049

/-- `A025845(n)+a(A023443(n))` -/
def P13849729850898845601.Spec : Prop :=
  ∀ n, P13849729850898845601.a n = A029049 n

end A029049

/-! ## A029049.P4953684951978333388

`A029156(abs(1-n))+A029156(n)`
-/

namespace A029049.P4953684951978333388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029156 |1 - (n : ℤ)|.toNat + A029156 n

end

end A029049.P4953684951978333388

namespace A029049

/-- `A029156(abs(1-n))+A029156(n)` -/
def P4953684951978333388.Spec : Prop :=
  ∀ n, P4953684951978333388.a n = A029049 n

end A029049

/-! ## A029049.P15082179042425253726

`∑[A025897(abs(3-n))+A025897(n)]`
-/

namespace A029049.P15082179042425253726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 |3 - (n : ℤ)|.toNat + A025897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029049.P15082179042425253726

namespace A029049

/-- `∑[A025897(abs(3-n))+A025897(n)]` -/
def P15082179042425253726.Spec : Prop :=
  ∀ n, P15082179042425253726.a n = A029049 n

end A029049

/-! ## A029049.P4741178668710263587

`A025845(A005843(n)/2)+a(n-1)` with `a(0)=1`
-/

namespace A029049.P4741178668710263587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025845 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + a (n - 1)

end

end A029049.P4741178668710263587

namespace A029049

/-- `A025845(A005843(n)/2)+a(n-1)` -/
def P4741178668710263587.Spec : Prop :=
  ∀ n, P4741178668710263587.a n = A029049 n

end A029049

/-! ## A029049.P4071216373111129713

`A029070(n+1)-A025897(n+1)`
-/

namespace A029049.P4071216373111129713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029070 (n + 1) - A025897 (n + 1)

end

end A029049.P4071216373111129713

namespace A029049

/-- `A029070(n+1)-A025897(n+1)` -/
def P4071216373111129713.Spec : Prop :=
  ∀ n, P4071216373111129713.a n = A029049 n

end A029049

/-! ## A029049.P8459433464228546215

`A029046(n+1)-A029292(n+1)`
-/

namespace A029049.P8459433464228546215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029046 (n + 1) - A029292 (n + 1)

end

end A029049.P8459433464228546215

namespace A029049

/-- `A029046(n+1)-A029292(n+1)` -/
def P8459433464228546215.Spec : Prop :=
  ∀ n, P8459433464228546215.a n = A029049 n

end A029049

/-! ## A029049.P17461812301149200348

`∑[A008622(n+1)-Δ[A025897(n)]]`
-/

namespace A029049.P17461812301149200348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029049.P17461812301149200348

namespace A029049

/-- `∑[A008622(n+1)-Δ[A025897(n)]]` -/
def P17461812301149200348.Spec : Prop :=
  ∀ n, P17461812301149200348.a n = A029049 n

end A029049

/-!
# A029050: Expansion of 1/((1-x)*(1-x^3)*(1-x^7)*(1-x^9)).

The programs for A029050, the canonical program `A029050.P15315209558142707646` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029050 has offset 0).

The definition of A029050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029050.P15315209558142707646

`∑[A025846(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029050

/-- `∑[A025846(n)]` -/
def P15315209558142707646.Spec : Prop :=
  ∀ n, P15315209558142707646.a n = A029050 n

theorem P15315209558142707646.correct : P15315209558142707646.Spec := by
  intro n
  simp only [A029050]

end A029050

/-! ## A029050.P4651505157625954044

`A025785(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029050.P4651505157625954044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025785 n + a (n - 3)

end

end A029050.P4651505157625954044

namespace A029050

/-- `A025785(n)+a(n-3)` -/
def P4651505157625954044.Spec : Prop :=
  ∀ n, P4651505157625954044.a n = A029050 n

end A029050

/-! ## A029050.P7520478034161390164

`A025846(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029050.P7520478034161390164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025846 (n % (n + 1)) + a (n - 1)

end

end A029050.P7520478034161390164

namespace A029050

/-- `A025846(n%(n+1))+a(n-1)` -/
def P7520478034161390164.Spec : Prop :=
  ∀ n, P7520478034161390164.a n = A029050 n

end A029050

/-! ## A029050.P39724489520083466

`A029157(abs(A023443(n)))+A029157(n)`
-/

namespace A029050.P39724489520083466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 |A023443 n|.toNat + A029157 n

end

end A029050.P39724489520083466

namespace A029050

/-- `A029157(abs(A023443(n)))+A029157(n)` -/
def P39724489520083466.Spec : Prop :=
  ∀ n, P39724489520083466.a n = A029050 n

end A029050

/-! ## A029050.P11052596264056152102

`A029157(abs(A024000(n)))+A029157(n)`
-/

namespace A029050.P11052596264056152102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 |A024000 n|.toNat + A029157 n

end

end A029050.P11052596264056152102

namespace A029050

/-- `A029157(abs(A024000(n)))+A029157(n)` -/
def P11052596264056152102.Spec : Prop :=
  ∀ n, P11052596264056152102.a n = A029050 n

end A029050

/-! ## A029050.P7266391474539186830

`A029021(n+1)-A029157(n+1)`
-/

namespace A029050.P7266391474539186830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029021 (n + 1) - A029157 (n + 1)

end

end A029050.P7266391474539186830

namespace A029050

/-- `A029021(n+1)-A029157(n+1)` -/
def P7266391474539186830.Spec : Prop :=
  ∀ n, P7266391474539186830.a n = A029050 n

end A029050

/-! ## A029050.P16543868800878024036

`A029157(A123108(A004273(n)))+A029157(n)`
-/

namespace A029050.P16543868800878024036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 (A123108 (A004273 n).toNat).toNat + A029157 n

end

end A029050.P16543868800878024036

namespace A029050

/-- `A029157(A123108(A004273(n)))+A029157(n)` -/
def P16543868800878024036.Spec : Prop :=
  ∀ n, P16543868800878024036.a n = A029050 n

end A029050

/-! ## A029050.P14213126045228191778

`A029348(2*n+7)`
-/

namespace A029050.P14213126045228191778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 (2 * n + 7)

end

end A029050.P14213126045228191778

namespace A029050

/-- `A029348(2*n+7)` -/
def P14213126045228191778.Spec : Prop :=
  ∀ n, P14213126045228191778.a n = A029050 n

end A029050

/-! ## A029050.P6719762920725114759

`A029157(A025581(A000124(n)))+A029157(n)`
-/

namespace A029050.P6719762920725114759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 (A025581 (A000124 n).toNat).toNat + A029157 n

end

end A029050.P6719762920725114759

namespace A029050

/-- `A029157(A025581(A000124(n)))+A029157(n)` -/
def P6719762920725114759.Spec : Prop :=
  ∀ n, P6719762920725114759.a n = A029050 n

end A029050

/-!
# A029051: Expansion of 1/((1-x)(1-x^3)(1-x^7)(1-x^10)).

The programs for A029051, the canonical program `A029051.P5510241359096199053` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029051 has offset 0).

The definition of A029051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029051.P16397349172869579499

`∑[A025847(n)]`
-/

namespace A029051.P16397349172869579499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029051.P16397349172869579499

namespace A029051

/-- `∑[A025847(n)]` -/
def P16397349172869579499.Spec : Prop :=
  ∀ n, P16397349172869579499.a n = A029051 n

end A029051

/-! ## A029051.P5510241359096199053

`A025786(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029051

/-- `A025786(n)+a(n-3)` -/
def P5510241359096199053.Spec : Prop :=
  ∀ n, P5510241359096199053.a n = A029051 n

theorem P5510241359096199053.correct : P5510241359096199053.Spec := by
  intro n
  simp only [A029051]

end A029051

/-! ## A029051.P2567178831555185032

`A025847(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029051.P2567178831555185032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025847 n + a (A023443 n).toNat

end

end A029051.P2567178831555185032

namespace A029051

/-- `A025847(n)+a(A023443(n))` -/
def P2567178831555185032.Spec : Prop :=
  ∀ n, P2567178831555185032.a n = A029051 n

end A029051

/-! ## A029051.P3004537090895666792

`A025847(sqrt(A000290(n)))+a(n-1)` with `a(0)=1`
-/

namespace A029051.P3004537090895666792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025847 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + a (n - 1)

end

end A029051.P3004537090895666792

namespace A029051

/-- `A025847(sqrt(A000290(n)))+a(n-1)` -/
def P3004537090895666792.Spec : Prop :=
  ∀ n, P3004537090895666792.a n = A029051 n

end A029051

/-! ## A029051.P15993207855576692464

`a(n-1)+A025847(n)+A000007(n)` with `a(0)=1`
-/

namespace A029051.P15993207855576692464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025847 n + A000007 n)

end

end A029051.P15993207855576692464

namespace A029051

/-- `a(n-1)+A025847(n)+A000007(n)` -/
def P15993207855576692464.Spec : Prop :=
  ∀ n, P15993207855576692464.a n = A029051 n

end A029051

/-! ## A029051.P11495793987245753306

`a(n-1)+A025847(n)*A057427(n)` with `a(0)=1`
-/

namespace A029051.P11495793987245753306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A025847 n * A057427 n

end

end A029051.P11495793987245753306

namespace A029051

/-- `a(n-1)+A025847(n)*A057427(n)` -/
def P11495793987245753306.Spec : Prop :=
  ∀ n, P11495793987245753306.a n = A029051 n

end A029051

/-! ## A029051.P13035449894026279807

`A029158(abs(A023443(n)))+A029158(n)`
-/

namespace A029051.P13035449894026279807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029158 |A023443 n|.toNat + A029158 n

end

end A029051.P13035449894026279807

namespace A029051

/-- `A029158(abs(A023443(n)))+A029158(n)` -/
def P13035449894026279807.Spec : Prop :=
  ∀ n, P13035449894026279807.a n = A029051 n

end A029051

/-! ## A029051.P1986837762102778190

`A029022(n+1)-A029158(n+1)`
-/

namespace A029051.P1986837762102778190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029022 (n + 1) - A029158 (n + 1)

end

end A029051.P1986837762102778190

namespace A029051

/-- `A029022(n+1)-A029158(n+1)` -/
def P1986837762102778190.Spec : Prop :=
  ∀ n, P1986837762102778190.a n = A029051 n

end A029051

/-! ## A029051.P16371235279092165214

`A029158(n+1)+A029158(n)-A025847(n+1)`
-/

namespace A029051.P16371235279092165214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029158 (n + 1) + (A029158 n - A025847 (n + 1))

end

end A029051.P16371235279092165214

namespace A029051

/-- `A029158(n+1)+A029158(n)-A025847(n+1)` -/
def P16371235279092165214.Spec : Prop :=
  ∀ n, P16371235279092165214.a n = A029051 n

end A029051

/-!
# A029052: Expansion of 1/((1-x)(1-x^3)(1-x^7)(1-x^11)).

The programs for A029052, the canonical program `A029052.P5982845211674041304` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029052 has offset 0).

The definition of A029052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029052.P5982845211674041304

`∑[A025848(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029052

/-- `∑[A025848(n)]` -/
def P5982845211674041304.Spec : Prop :=
  ∀ n, P5982845211674041304.a n = A029052 n

theorem P5982845211674041304.correct : P5982845211674041304.Spec := by
  intro n
  simp only [A029052]

end A029052

/-! ## A029052.P7232007949218271197

`A025787(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029052.P7232007949218271197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025787 n + a (n - 3)

end

end A029052.P7232007949218271197

namespace A029052

/-- `A025787(n)+a(n-3)` -/
def P7232007949218271197.Spec : Prop :=
  ∀ n, P7232007949218271197.a n = A029052 n

end A029052

/-! ## A029052.P15042544111465254666

`A025848(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029052.P15042544111465254666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025848 n + a (A023443 n).toNat

end

end A029052.P15042544111465254666

namespace A029052

/-- `A025848(n)+a(A023443(n))` -/
def P15042544111465254666.Spec : Prop :=
  ∀ n, P15042544111465254666.a n = A029052 n

end A029052

/-! ## A029052.P8281984339546276623

`A029159(abs(1-n))+A029159(n)`
-/

namespace A029052.P8281984339546276623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029159 |1 - (n : ℤ)|.toNat + A029159 n

end

end A029052.P8281984339546276623

namespace A029052

/-- `A029159(abs(1-n))+A029159(n)` -/
def P8281984339546276623.Spec : Prop :=
  ∀ n, P8281984339546276623.a n = A029052 n

end A029052

/-! ## A029052.P6917178870448100355

`A029060(n)+A029075(n)-A029083(n)`
-/

namespace A029052.P6917178870448100355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029060 n + (A029075 n - A029083 n)

end

end A029052.P6917178870448100355

namespace A029052

/-- `A029060(n)+A029075(n)-A029083(n)` -/
def P6917178870448100355.Spec : Prop :=
  ∀ n, P6917178870448100355.a n = A029052 n

end A029052

/-! ## A029052.P13845045420465550020

`A029051(n+1)-A029313(n+1)`
-/

namespace A029052.P13845045420465550020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029051 (n + 1) - A029313 (n + 1)

end

end A029052.P13845045420465550020

namespace A029052

/-- `A029051(n+1)-A029313(n+1)` -/
def P13845045420465550020.Spec : Prop :=
  ∀ n, P13845045420465550020.a n = A029052 n

end A029052

/-!
# A029053: Expansion of 1/((1-x)(1-x^3)(1-x^7)(1-x^12)).

The programs for A029053, the canonical program `A029053.P7146044379385213165` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029053 has offset 0).

The definition of A029053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029053.P9855162458940281649

`∑[A025849(n)]`
-/

namespace A029053.P9855162458940281649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029053.P9855162458940281649

namespace A029053

/-- `∑[A025849(n)]` -/
def P9855162458940281649.Spec : Prop :=
  ∀ n, P9855162458940281649.a n = A029053 n

end A029053

/-! ## A029053.P7146044379385213165

`A025788(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029053

/-- `A025788(n)+a(n-3)` -/
def P7146044379385213165.Spec : Prop :=
  ∀ n, P7146044379385213165.a n = A029053 n

theorem P7146044379385213165.correct : P7146044379385213165.Spec := by
  intro n
  simp only [A029053]

end A029053

/-! ## A029053.P9576094816759444172

`A025849(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029053.P9576094816759444172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025849 n + a (A023443 n).toNat

end

end A029053.P9576094816759444172

namespace A029053

/-- `A025849(n)+a(A023443(n))` -/
def P9576094816759444172.Spec : Prop :=
  ∀ n, P9576094816759444172.a n = A029053 n

end A029053

/-! ## A029053.P17789876572914807674

`A029160(abs(A023443(n)))+A029160(n)`
-/

namespace A029053.P17789876572914807674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029160 |A023443 n|.toNat + A029160 n

end

end A029053.P17789876572914807674

namespace A029053

/-- `A029160(abs(A023443(n)))+A029160(n)` -/
def P17789876572914807674.Spec : Prop :=
  ∀ n, P17789876572914807674.a n = A029053 n

end A029053

/-! ## A029053.P13566416488613047017

`A029160(abs(A024000(n)))+A029160(n)`
-/

namespace A029053.P13566416488613047017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029160 |A024000 n|.toNat + A029160 n

end

end A029053.P13566416488613047017

namespace A029053

/-- `A029160(abs(A024000(n)))+A029160(n)` -/
def P13566416488613047017.Spec : Prop :=
  ∀ n, P13566416488613047017.a n = A029053 n

end A029053

/-! ## A029053.P7067070209578996655

`A025849(n)+A029024(n)-A029160(n)`
-/

namespace A029053.P7067070209578996655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025849 n + (A029024 n - A029160 n)

end

end A029053.P7067070209578996655

namespace A029053

/-- `A025849(n)+A029024(n)-A029160(n)` -/
def P7067070209578996655.Spec : Prop :=
  ∀ n, P7067070209578996655.a n = A029053 n

end A029053

/-! ## A029053.P15152726262800665807

`A029061(n)+A029093(n)-A029104(n)`
-/

namespace A029053.P15152726262800665807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029061 n + (A029093 n - A029104 n)

end

end A029053.P15152726262800665807

namespace A029053

/-- `A029061(n)+A029093(n)-A029104(n)` -/
def P15152726262800665807.Spec : Prop :=
  ∀ n, P15152726262800665807.a n = A029053 n

end A029053

/-! ## A029053.P12383464393383360859

`A029024(n+1)-A029160(n+1)`
-/

namespace A029053.P12383464393383360859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029024 (n + 1) - A029160 (n + 1)

end

end A029053.P12383464393383360859

namespace A029053

/-- `A029024(n+1)-A029160(n+1)` -/
def P12383464393383360859.Spec : Prop :=
  ∀ n, P12383464393383360859.a n = A029053 n

end A029053

/-! ## A029053.P1428542782729947765

`a(n-1)+A014963(A008602(n+1))*A025849(n)` with `a(0)=1`
-/

namespace A029053.P1428542782729947765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A014963 (A008602 (n + 1)).toNat * A025849 n

end

end A029053.P1428542782729947765

namespace A029053

/-- `a(n-1)+A014963(A008602(n+1))*A025849(n)` -/
def P1428542782729947765.Spec : Prop :=
  ∀ n, P1428542782729947765.a n = A029053 n

end A029053

/-!
# A029054: Expansion of 1/((1-x)*(1-x^3)*(1-x^8)*(1-x^9)).

The programs for A029054, the canonical program `A029054.P18238557960311303445` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029054 has offset 0).

The definition of A029054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029054.P18238557960311303445

`∑[A025850(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029054

/-- `∑[A025850(n)]` -/
def P18238557960311303445.Spec : Prop :=
  ∀ n, P18238557960311303445.a n = A029054 n

theorem P18238557960311303445.correct : P18238557960311303445.Spec := by
  intro n
  simp only [A029054]

end A029054

/-! ## A029054.P1734089504117184227

`A025789(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029054.P1734089504117184227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025789 n + a (n - 3)

end

end A029054.P1734089504117184227

namespace A029054

/-- `A025789(n)+a(n-3)` -/
def P1734089504117184227.Spec : Prop :=
  ∀ n, P1734089504117184227.a n = A029054 n

end A029054

/-! ## A029054.P16338959556578817527

`A025850(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029054.P16338959556578817527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025850 (n % (n + 1)) + a (n - 1)

end

end A029054.P16338959556578817527

namespace A029054

/-- `A025850(n%(n+1))+a(n-1)` -/
def P16338959556578817527.Spec : Prop :=
  ∀ n, P16338959556578817527.a n = A029054 n

end A029054

/-! ## A029054.P860963410994854263

`A025850(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029054.P860963410994854263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025850 n + a (A023443 n).toNat

end

end A029054.P860963410994854263

namespace A029054

/-- `A025850(n)+a(A023443(n))` -/
def P860963410994854263.Spec : Prop :=
  ∀ n, P860963410994854263.a n = A029054 n

end A029054

/-! ## A029054.P4432599286720749977

`A029161(abs(1-n))+A029161(n)`
-/

namespace A029054.P4432599286720749977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029161 |1 - (n : ℤ)|.toNat + A029161 n

end

end A029054.P4432599286720749977

namespace A029054

/-- `A029161(abs(1-n))+A029161(n)` -/
def P4432599286720749977.Spec : Prop :=
  ∀ n, P4432599286720749977.a n = A029054 n

end A029054

/-! ## A029054.P3078719555018980638

`A029074(n)+A029262(n)-A029359(n)`
-/

namespace A029054.P3078719555018980638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 n + (A029262 n - A029359 n)

end

end A029054.P3078719555018980638

namespace A029054

/-- `A029074(n)+A029262(n)-A029359(n)` -/
def P3078719555018980638.Spec : Prop :=
  ∀ n, P3078719555018980638.a n = A029054 n

end A029054

/-! ## A029054.P14045927010710457364

`A029071(n+1)-A025902(n+1)`
-/

namespace A029054.P14045927010710457364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 (n + 1) - A025902 (n + 1)

end

end A029054.P14045927010710457364

namespace A029054

/-- `A029071(n+1)-A025902(n+1)` -/
def P14045927010710457364.Spec : Prop :=
  ∀ n, P14045927010710457364.a n = A029054 n

end A029054

/-! ## A029054.P4873264652683823258

`a(n-1)+A025850(n)%A000041(n)` with `a(0)=1`
-/

namespace A029054.P4873264652683823258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025850 n) (A000041 n)

end

end A029054.P4873264652683823258

namespace A029054

/-- `a(n-1)+A025850(n)%A000041(n)` -/
def P4873264652683823258.Spec : Prop :=
  ∀ n, P4873264652683823258.a n = A029054 n

end A029054

/-! ## A029054.P15673630734167194171

`∑[A319951(A029297(n))]`
-/

namespace A029054.P15673630734167194171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A029297 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029054.P15673630734167194171

namespace A029054

/-- `∑[A319951(A029297(n))]` -/
def P15673630734167194171.Spec : Prop :=
  ∀ n, P15673630734167194171.a n = A029054 n

end A029054

/-!
# A029055: Expansion of 1/((1-x)*(1-x^3)*(1-x^8)*(1-x^10)).

The programs for A029055, the canonical program `A029055.P69612204024206493` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029055 has offset 0).

The definition of A029055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029055.P69612204024206493

`∑[A025851(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029055

/-- `∑[A025851(n)]` -/
def P69612204024206493.Spec : Prop :=
  ∀ n, P69612204024206493.a n = A029055 n

theorem P69612204024206493.correct : P69612204024206493.Spec := by
  intro n
  simp only [A029055]

end A029055

/-! ## A029055.P10987628570776146978

`∑[A025877(xor(1, n+1))]`
-/

namespace A029055.P10987628570776146978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029055.P10987628570776146978

namespace A029055

/-- `∑[A025877(xor(1, n+1))]` -/
def P10987628570776146978.Spec : Prop :=
  ∀ n, P10987628570776146978.a n = A029055 n

end A029055

/-! ## A029055.P9272313812977839580

`∑[A025877(A004442(n+1))]`
-/

namespace A029055.P9272313812977839580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (A004442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029055.P9272313812977839580

namespace A029055

/-- `∑[A025877(A004442(n+1))]` -/
def P9272313812977839580.Spec : Prop :=
  ∀ n, P9272313812977839580.a n = A029055 n

end A029055

/-! ## A029055.P11777151031652524175

`∑[A025893(∑[n%2]+n)]`
-/

namespace A029055.P11777151031652524175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029055.P11777151031652524175

namespace A029055

/-- `∑[A025893(∑[n%2]+n)]` -/
def P11777151031652524175.Spec : Prop :=
  ∀ n, P11777151031652524175.a n = A029055 n

end A029055

/-! ## A029055.P13909347042514919807

`∑[A025893(∑[and(1, n)]+n)]`
-/

namespace A029055.P13909347042514919807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029055.P13909347042514919807

namespace A029055

/-- `∑[A025893(∑[and(1, n)]+n)]` -/
def P13909347042514919807.Spec : Prop :=
  ∀ n, P13909347042514919807.a n = A029055 n

end A029055

/-! ## A029055.P1217760653424074640

`∑[A025893(floor((n+1)/2+n))]`
-/

namespace A029055.P1217760653424074640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 ⌊(n + 1 : ℚ) / 2 + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029055.P1217760653424074640

namespace A029055

/-- `∑[A025893(floor((n+1)/2+n))]` -/
def P1217760653424074640.Spec : Prop :=
  ∀ n, P1217760653424074640.a n = A029055 n

end A029055

/-!
# A029056: Expansion of 1/((1-x)*(1-x^3)*(1-x^8)*(1-x^11)).

The programs for A029056, the canonical program `A029056.P371621000028769602` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029056 has offset 0).

The definition of A029056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029056.P13009775478075942074

`∑[A025852(n)]`
-/

namespace A029056.P13009775478075942074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029056.P13009775478075942074

namespace A029056

/-- `∑[A025852(n)]` -/
def P13009775478075942074.Spec : Prop :=
  ∀ n, P13009775478075942074.a n = A029056 n

end A029056

/-! ## A029056.P371621000028769602

`A025790(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029056

/-- `A025790(n)+a(n-3)` -/
def P371621000028769602.Spec : Prop :=
  ∀ n, P371621000028769602.a n = A029056 n

theorem P371621000028769602.correct : P371621000028769602.Spec := by
  intro n
  simp only [A029056]

end A029056

/-! ## A029056.P16464557030362994541

`A025852(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029056.P16464557030362994541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025852 n + a (A023443 n).toNat

end

end A029056.P16464557030362994541

namespace A029056

/-- `A025852(n)+a(A023443(n))` -/
def P16464557030362994541.Spec : Prop :=
  ∀ n, P16464557030362994541.a n = A029056 n

end A029056

/-! ## A029056.P2923104874816164839

`A029163(abs(1-n))+A029163(n)`
-/

namespace A029056.P2923104874816164839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029163 |1 - (n : ℤ)|.toNat + A029163 n

end

end A029056.P2923104874816164839

namespace A029056

/-- `A029163(abs(1-n))+A029163(n)` -/
def P2923104874816164839.Spec : Prop :=
  ∀ n, P2923104874816164839.a n = A029056 n

end A029056

/-! ## A029056.P8907234592166247869

`∑[A029284(n)+A029299(n)-A029273(n)]`
-/

namespace A029056.P8907234592166247869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029284 n + (A029299 n - A029273 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029056.P8907234592166247869

namespace A029056

/-- `∑[A029284(n)+A029299(n)-A029273(n)]` -/
def P8907234592166247869.Spec : Prop :=
  ∀ n, P8907234592166247869.a n = A029056 n

end A029056

/-! ## A029056.P6472954550978261037

`∑[-Δ[A029163(n)-A029026(n)]]`
-/

namespace A029056.P6472954550978261037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029163 n - A029026 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029056.P6472954550978261037

namespace A029056

/-- `∑[-Δ[A029163(n)-A029026(n)]]` -/
def P6472954550978261037.Spec : Prop :=
  ∀ n, P6472954550978261037.a n = A029056 n

end A029056

/-! ## A029056.P8599400649566043419

`A029072(n+1)-A025903(n+1)`
-/

namespace A029056.P8599400649566043419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 (n + 1) - A025903 (n + 1)

end

end A029056.P8599400649566043419

namespace A029056

/-- `A029072(n+1)-A025903(n+1)` -/
def P8599400649566043419.Spec : Prop :=
  ∀ n, P8599400649566043419.a n = A029056 n

end A029056

/-! ## A029056.P5376495474514039520

`A029026(n+1)-A029163(n+1)`
-/

namespace A029056.P5376495474514039520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029026 (n + 1) - A029163 (n + 1)

end

end A029056.P5376495474514039520

namespace A029056

/-- `A029026(n+1)-A029163(n+1)` -/
def P5376495474514039520.Spec : Prop :=
  ∀ n, P5376495474514039520.a n = A029056 n

end A029056

/-! ## A029056.P5867071076732072558

`A029072(n)+A025925(A168197(n+1)+1)`
-/

namespace A029056.P5867071076732072558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n + A025925 (A168197 (n + 1) + 1).toNat

end

end A029056.P5867071076732072558

namespace A029056

/-- `A029072(n)+A025925(A168197(n+1)+1)` -/
def P5867071076732072558.Spec : Prop :=
  ∀ n, P5867071076732072558.a n = A029056 n

end A029056

/-! ## A029056.P6317840175361540478

`A028310(a(n-1))+A025852(n)` with `a(0)=1`
-/

namespace A029056.P6317840175361540478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025852 n

end

end A029056.P6317840175361540478

namespace A029056

/-- `A028310(a(n-1))+A025852(n)` -/
def P6317840175361540478.Spec : Prop :=
  ∀ n, P6317840175361540478.a n = A029056 n

end A029056

/-!
# A029057: Expansion of 1/((1-x)*(1-x^3)*(1-x^8)*(1-x^12)).

The programs for A029057, the canonical program `A029057.P8055949690666840573` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029057 has offset 0).

The definition of A029057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029057.P8055949690666840573

`∑[A025853(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029057

/-- `∑[A025853(n)]` -/
def P8055949690666840573.Spec : Prop :=
  ∀ n, P8055949690666840573.a n = A029057 n

theorem P8055949690666840573.correct : P8055949690666840573.Spec := by
  intro n
  simp only [A029057]

end A029057

/-! ## A029057.P1536065775716477677

`A025853(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029057.P1536065775716477677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025853 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029057.P1536065775716477677

namespace A029057

/-- `A025853(char[1]+n)+a(n-1)` -/
def P1536065775716477677.Spec : Prop :=
  ∀ n, P1536065775716477677.a n = A029057 n

end A029057

/-! ## A029057.P10941951070976793451

`∑[A025828(abs(A097140(n)))]`
-/

namespace A029057.P10941951070976793451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 |A097140 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029057.P10941951070976793451

namespace A029057

/-- `∑[A025828(abs(A097140(n)))]` -/
def P10941951070976793451.Spec : Prop :=
  ∀ n, P10941951070976793451.a n = A029057 n

end A029057

/-! ## A029057.P11699135901417961439

`∑[A025828(abs(A215415(n)))]`
-/

namespace A029057.P11699135901417961439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 |A215415 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029057.P11699135901417961439

namespace A029057

/-- `∑[A025828(abs(A215415(n)))]` -/
def P11699135901417961439.Spec : Prop :=
  ∀ n, P11699135901417961439.a n = A029057 n

end A029057

/-! ## A029057.P11781247003709878224

`∑[A024165(A028242(n)+12)]`
-/

namespace A029057.P11781247003709878224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (A028242 n + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029057.P11781247003709878224

namespace A029057

/-- `∑[A024165(A028242(n)+12)]` -/
def P11781247003709878224.Spec : Prop :=
  ∀ n, P11781247003709878224.a n = A029057 n

end A029057

/-! ## A029057.P536212583404389242

`∑[A025828((n+1)%A052938(n))]`
-/

namespace A029057.P536212583404389242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (Int.tmod (n + 1 : ℤ) (A052938 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029057.P536212583404389242

namespace A029057

/-- `∑[A025828((n+1)%A052938(n))]` -/
def P536212583404389242.Spec : Prop :=
  ∀ n, P536212583404389242.a n = A029057 n

end A029057

/-! ## A029057.P2062084774964853378

`∑[A307018(A052938(A028242(n)))]`
-/

namespace A029057.P2062084774964853378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A052938 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029057.P2062084774964853378

namespace A029057

/-- `∑[A307018(A052938(A028242(n)))]` -/
def P2062084774964853378.Spec : Prop :=
  ∀ n, P2062084774964853378.a n = A029057 n

end A029057

/-! ## A029057.P10994607953118931471

`A029164(abs(A023443(n)))+A029164(n)`
-/

namespace A029057.P10994607953118931471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029164 |A023443 n|.toNat + A029164 n

end

end A029057.P10994607953118931471

namespace A029057

/-- `A029164(abs(A023443(n)))+A029164(n)` -/
def P10994607953118931471.Spec : Prop :=
  ∀ n, P10994607953118931471.a n = A029057 n

end A029057

/-!
# A029058: Expansion of 1/((1-x)(1-x^3)(1-x^9)(1-x^10)).

The programs for A029058, the canonical program `A029058.P15813768449176466682` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029058 has offset 0).

The definition of A029058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029058.P4273509269782654716

`∑[A025854(n)]`
-/

namespace A029058.P4273509269782654716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029058.P4273509269782654716

namespace A029058

/-- `∑[A025854(n)]` -/
def P4273509269782654716.Spec : Prop :=
  ∀ n, P4273509269782654716.a n = A029058 n

end A029058

/-! ## A029058.P15813768449176466682

`A025791(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029058

/-- `A025791(n)+a(n-3)` -/
def P15813768449176466682.Spec : Prop :=
  ∀ n, P15813768449176466682.a n = A029058 n

theorem P15813768449176466682.correct : P15813768449176466682.Spec := by
  intro n
  simp only [A029058]

end A029058

/-! ## A029058.P6640764804873388985

`∑[A214772(2*n)]`
-/

namespace A029058.P6640764804873388985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029058.P6640764804873388985

namespace A029058

/-- `∑[A214772(2*n)]` -/
def P6640764804873388985.Spec : Prop :=
  ∀ n, P6640764804873388985.a n = A029058 n

end A029058

/-! ## A029058.P4077186570668000395

`A214772(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029058.P4077186570668000395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214772 (n + n) + a (n - 1)

end

end A029058.P4077186570668000395

namespace A029058

/-- `A214772(n+n)+a(n-1)` -/
def P4077186570668000395.Spec : Prop :=
  ∀ n, P4077186570668000395.a n = A029058 n

end A029058

/-! ## A029058.P4071511310093522876

`∑[A214772(A004277(n))]+1`
-/

namespace A029058.P4071511310093522876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A029058.P4071511310093522876

namespace A029058

/-- `∑[A214772(A004277(n))]+1` -/
def P4071511310093522876.Spec : Prop :=
  ∀ n, P4071511310093522876.a n = A029058 n

end A029058

/-! ## A029058.P12502431028316164113

`∑[A214772(A005843(n))]%A016898(n)`
-/

namespace A029058.P12502431028316164113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A016898 n)

end

end A029058.P12502431028316164113

namespace A029058

/-- `∑[A214772(A005843(n))]%A016898(n)` -/
def P12502431028316164113.Spec : Prop :=
  ∀ n, P12502431028316164113.a n = A029058 n

end A029058

/-! ## A029058.P14414270774303932351

`A000007(n+1)+∑[A214772(A005843(n))]`
-/

namespace A029058.P14414270774303932351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029058.P14414270774303932351

namespace A029058

/-- `A000007(n+1)+∑[A214772(A005843(n))]` -/
def P14414270774303932351.Spec : Prop :=
  ∀ n, P14414270774303932351.a n = A029058 n

end A029058

/-! ## A029058.P16553814630070595130

`A028310(a(n-1))+A025854(n)` with `a(0)=1`
-/

namespace A029058.P16553814630070595130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025854 n

end

end A029058.P16553814630070595130

namespace A029058

/-- `A028310(a(n-1))+A025854(n)` -/
def P16553814630070595130.Spec : Prop :=
  ∀ n, P16553814630070595130.a n = A029058 n

end A029058

/-!
# A029059: Expansion of 1/((1-x)*(1-x^3)*(1-x^9)*(1-x^11)).

The programs for A029059, the canonical program `A029059.P4126972357667091520` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029059 has offset 0).

The definition of A029059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029059.P4126972357667091520

`∑[A025855(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029059

/-- `∑[A025855(n)]` -/
def P4126972357667091520.Spec : Prop :=
  ∀ n, P4126972357667091520.a n = A029059 n

theorem P4126972357667091520.correct : P4126972357667091520.Spec := by
  intro n
  simp only [A029059]

end A029059

/-! ## A029059.P2655873314034342643

`A025792(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029059.P2655873314034342643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025792 n + a (n - 3)

end

end A029059.P2655873314034342643

namespace A029059

/-- `A025792(n)+a(n-3)` -/
def P2655873314034342643.Spec : Prop :=
  ∀ n, P2655873314034342643.a n = A029059 n

end A029059

/-! ## A029059.P2101493636231665963

`A025855(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029059.P2101493636231665963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025855 n + a (A023443 n).toNat

end

end A029059.P2101493636231665963

namespace A029059

/-- `A025855(n)+a(A023443(n))` -/
def P2101493636231665963.Spec : Prop :=
  ∀ n, P2101493636231665963.a n = A029059 n

end A029059

/-! ## A029059.P9894139694466974640

`A029166(abs(1-n))+A029166(n)`
-/

namespace A029059.P9894139694466974640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 |1 - (n : ℤ)|.toNat + A029166 n

end

end A029059.P9894139694466974640

namespace A029059

/-- `A029166(abs(1-n))+A029166(n)` -/
def P9894139694466974640.Spec : Prop :=
  ∀ n, P9894139694466974640.a n = A029059 n

end A029059

/-! ## A029059.P1116290398059077785

`a(n-1)+A025855(n)+A000007(n)` with `a(0)=1`
-/

namespace A029059.P1116290398059077785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025855 n + A000007 n)

end

end A029059.P1116290398059077785

namespace A029059

/-- `a(n-1)+A025855(n)+A000007(n)` -/
def P1116290398059077785.Spec : Prop :=
  ∀ n, P1116290398059077785.a n = A029059 n

end A029059

/-! ## A029059.P3961426624716986255

`a(n-1)+A025855(n)%A000096(n)` with `a(0)=1`
-/

namespace A029059.P3961426624716986255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025855 n) (A000096 n)

end

end A029059.P3961426624716986255

namespace A029059

/-- `a(n-1)+A025855(n)%A000096(n)` -/
def P3961426624716986255.Spec : Prop :=
  ∀ n, P3961426624716986255.a n = A029059 n

end A029059

/-! ## A029059.P11059560706462947879

`A029028(n+1)-A029166(n+1)`
-/

namespace A029059.P11059560706462947879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029028 (n + 1) - A029166 (n + 1)

end

end A029059.P11059560706462947879

namespace A029059

/-- `A029028(n+1)-A029166(n+1)` -/
def P11059560706462947879.Spec : Prop :=
  ∀ n, P11059560706462947879.a n = A029059 n

end A029059

/-! ## A029059.P16263739660153601255

`A029355(2*n+9)`
-/

namespace A029059.P16263739660153601255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029355 (2 * n + 9)

end

end A029059.P16263739660153601255

namespace A029059

/-- `A029355(2*n+9)` -/
def P16263739660153601255.Spec : Prop :=
  ∀ n, P16263739660153601255.a n = A029059 n

end A029059

/-! ## A029059.P3068130580019303304

`A025855(n)+a(A259361(n²))` with `a(0)=1`
-/

namespace A029059.P3068130580019303304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025855 n + a (A259361 (n ^ 2)).toNat

end

end A029059.P3068130580019303304

namespace A029059

/-- `A025855(n)+a(A259361(n²))` -/
def P3068130580019303304.Spec : Prop :=
  ∀ n, P3068130580019303304.a n = A029059 n

end A029059

/-! ## A029059.P12859334850849554085

`A001222(2^A025855(n))+a(n-1)` with `a(0)=1`
-/

namespace A029059.P12859334850849554085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025855 n : ℤ))).toNat + a (n - 1)

end

end A029059.P12859334850849554085

namespace A029059

/-- `A001222(2^A025855(n))+a(n-1)` -/
def P12859334850849554085.Spec : Prop :=
  ∀ n, P12859334850849554085.a n = A029059 n

end A029059

/-!
# A029060: Expansion of 1/((1-x)*(1-x^3)*(1-x^10)*(1-x^11)).

The programs for A029060, the canonical program `A029060.P15442059423398744320` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029060 has offset 0).

The definition of A029060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029060.P1717546548134825828

`∑[A025856(n)]`
-/

namespace A029060.P1717546548134825828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029060.P1717546548134825828

namespace A029060

/-- `∑[A025856(n)]` -/
def P1717546548134825828.Spec : Prop :=
  ∀ n, P1717546548134825828.a n = A029060 n

end A029060

/-! ## A029060.P15442059423398744320

`A025793(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029060

/-- `A025793(n)+a(n-3)` -/
def P15442059423398744320.Spec : Prop :=
  ∀ n, P15442059423398744320.a n = A029060 n

theorem P15442059423398744320.correct : P15442059423398744320.Spec := by
  intro n
  simp only [A029060]

end A029060

/-! ## A029060.P18220183804487022443

`A025856(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029060.P18220183804487022443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025856 n + a (A023443 n).toNat

end

end A029060.P18220183804487022443

namespace A029060

/-- `A025856(n)+a(A023443(n))` -/
def P18220183804487022443.Spec : Prop :=
  ∀ n, P18220183804487022443.a n = A029060 n

end A029060

/-! ## A029060.P4588608803051114722

`A025856(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A029060.P4588608803051114722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025856 n + a |A024000 n|.toNat

end

end A029060.P4588608803051114722

namespace A029060

/-- `A025856(n)+a(abs(A024000(n)))` -/
def P4588608803051114722.Spec : Prop :=
  ∀ n, P4588608803051114722.a n = A029060 n

end A029060

/-! ## A029060.P2932565645401567293

`A029052(n)+A029083(n)-A029075(n)`
-/

namespace A029060.P2932565645401567293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029052 n + (A029083 n - A029075 n)

end

end A029060.P2932565645401567293

namespace A029060

/-- `A029052(n)+A029083(n)-A029075(n)` -/
def P2932565645401567293.Spec : Prop :=
  ∀ n, P2932565645401567293.a n = A029060 n

end A029060

/-! ## A029060.P11825313882442153447

`A029168(A028242(A004273(n)))+A029168(n)`
-/

namespace A029060.P11825313882442153447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029168 (A028242 (A004273 n).toNat).toNat + A029168 n

end

end A029060.P11825313882442153447

namespace A029060

/-- `A029168(A028242(A004273(n)))+A029168(n)` -/
def P11825313882442153447.Spec : Prop :=
  ∀ n, P11825313882442153447.a n = A029060 n

end A029060

/-! ## A029060.P910647096957453222

`A110654(2*a(n-1))+A025856(n)` with `a(0)=1`
-/

namespace A029060.P910647096957453222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110654 (2 * a (n - 1)).toNat + A025856 n

end

end A029060.P910647096957453222

namespace A029060

/-- `A110654(2*a(n-1))+A025856(n)` -/
def P910647096957453222.Spec : Prop :=
  ∀ n, P910647096957453222.a n = A029060 n

end A029060

/-! ## A029060.P3437280765258185675

`A002264(∑[A025793(n+1)]+2)`
-/

namespace A029060.P3437280765258185675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A029060.P3437280765258185675

namespace A029060

/-- `A002264(∑[A025793(n+1)]+2)` -/
def P3437280765258185675.Spec : Prop :=
  ∀ n, P3437280765258185675.a n = A029060 n

end A029060

/-!
# A029061: Expansion of 1/((1-x)*(1-x^3)*(1-x^10)*(1-x^12)).

The programs for A029061, the canonical program `A029061.P4801605726621384143` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029061 has offset 0).

The definition of A029061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029061.P4801605726621384143

`∑[A025857(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029061

/-- `∑[A025857(n)]` -/
def P4801605726621384143.Spec : Prop :=
  ∀ n, P4801605726621384143.a n = A029061 n

theorem P4801605726621384143.correct : P4801605726621384143.Spec := by
  intro n
  simp only [A029061]

end A029061

/-! ## A029061.P13168292927712256752

`A025857(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029061.P13168292927712256752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025857 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029061.P13168292927712256752

namespace A029061

/-- `A025857(char[1]+n)+a(n-1)` -/
def P13168292927712256752.Spec : Prop :=
  ∀ n, P13168292927712256752.a n = A029061 n

end A029061

/-! ## A029061.P15336786580510952866

`∑[A025835((n+1)%A052938(n))]`
-/

namespace A029061.P15336786580510952866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 (Int.tmod (n + 1 : ℤ) (A052938 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029061.P15336786580510952866

namespace A029061

/-- `∑[A025835((n+1)%A052938(n))]` -/
def P15336786580510952866.Spec : Prop :=
  ∀ n, P15336786580510952866.a n = A029061 n

end A029061

/-! ## A029061.P5847718474144949987

`a(n-1)+A025857(n)%A016742(n)` with `a(0)=1`
-/

namespace A029061.P5847718474144949987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025857 n) (A016742 n)

end

end A029061.P5847718474144949987

namespace A029061

/-- `a(n-1)+A025857(n)%A016742(n)` -/
def P5847718474144949987.Spec : Prop :=
  ∀ n, P5847718474144949987.a n = A029061 n

end A029061

/-! ## A029061.P2838720587680365371

`∑[A025881(xor(1, n+1))]`
-/

namespace A029061.P2838720587680365371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029061.P2838720587680365371

namespace A029061

/-- `∑[A025881(xor(1, n+1))]` -/
def P2838720587680365371.Spec : Prop :=
  ∀ n, P2838720587680365371.a n = A029061 n

end A029061

/-! ## A029061.P12906086217632599964

`∑[A025881(A004442(n+1))]`
-/

namespace A029061.P12906086217632599964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (A004442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029061.P12906086217632599964

namespace A029061

/-- `∑[A025881(A004442(n+1))]` -/
def P12906086217632599964.Spec : Prop :=
  ∀ n, P12906086217632599964.a n = A029061 n

end A029061

/-!
# A029062: Expansion of 1/((1-x)*(1-x^3)*(1-x^11)*(1-x^12)).

The programs for A029062, the canonical program `A029062.P6705985955326828099` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029062 has offset 0).

The definition of A029062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029062.P1396897187937961671

`∑[A025858(n)]`
-/

namespace A029062.P1396897187937961671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029062.P1396897187937961671

namespace A029062

/-- `∑[A025858(n)]` -/
def P1396897187937961671.Spec : Prop :=
  ∀ n, P1396897187937961671.a n = A029062 n

end A029062

/-! ## A029062.P6547294381666906664

`A025794(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029062.P6547294381666906664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025794 n + a (n - 3)

end

end A029062.P6547294381666906664

namespace A029062

/-- `A025794(n)+a(n-3)` -/
def P6547294381666906664.Spec : Prop :=
  ∀ n, P6547294381666906664.a n = A029062 n

end A029062

/-! ## A029062.P6804873807205998682

`A025858(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029062.P6804873807205998682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025858 n + a (A023443 n).toNat

end

end A029062.P6804873807205998682

namespace A029062

/-- `A025858(n)+a(A023443(n))` -/
def P6804873807205998682.Spec : Prop :=
  ∀ n, P6804873807205998682.a n = A029062 n

end A029062

/-! ## A029062.P6705985955326828099

`∑[A025907(abs(3-n))+A025907(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029062

/-- `∑[A025907(abs(3-n))+A025907(n)]` -/
def P6705985955326828099.Spec : Prop :=
  ∀ n, P6705985955326828099.a n = A029062 n

theorem P6705985955326828099.correct : P6705985955326828099.Spec := by
  intro n
  simp only [A029062]

end A029062

/-! ## A029062.P9812413303925137025

`A029170(abs(A023443(n)))+A029170(n)`
-/

namespace A029062.P9812413303925137025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029170 |A023443 n|.toNat + A029170 n

end

end A029062.P9812413303925137025

namespace A029062

/-- `A029170(abs(A023443(n)))+A029170(n)` -/
def P9812413303925137025.Spec : Prop :=
  ∀ n, P9812413303925137025.a n = A029062 n

end A029062

/-! ## A029062.P13282398810556226339

`A029084(n)+A029271(n)-A025875(n)`
-/

namespace A029062.P13282398810556226339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029084 n + (A029271 n - A025875 n)

end

end A029062.P13282398810556226339

namespace A029062

/-- `A029084(n)+A029271(n)-A025875(n)` -/
def P13282398810556226339.Spec : Prop :=
  ∀ n, P13282398810556226339.a n = A029062 n

end A029062

/-! ## A029062.P5540867118333731811

`A029031(n)+A029059(n)-A029029(n)`
-/

namespace A029062.P5540867118333731811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029031 n + (A029059 n - A029029 n)

end

end A029062.P5540867118333731811

namespace A029062

/-- `A029031(n)+A029059(n)-A029029(n)` -/
def P5540867118333731811.Spec : Prop :=
  ∀ n, P5540867118333731811.a n = A029062 n

end A029062

/-! ## A029062.P1645843842585353022

`A029057(n)+A029084(n)-A029079(n)`
-/

namespace A029062.P1645843842585353022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 n + (A029084 n - A029079 n)

end

end A029062.P1645843842585353022

namespace A029062

/-- `A029057(n)+A029084(n)-A029079(n)` -/
def P1645843842585353022.Spec : Prop :=
  ∀ n, P1645843842585353022.a n = A029062 n

end A029062

/-! ## A029062.P426711226647489632

`∑[A025855(n+3)-A025925(n+3)]`
-/

namespace A029062.P426711226647489632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025855 (n + 3) - A025925 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029062.P426711226647489632

namespace A029062

/-- `∑[A025855(n+3)-A025925(n+3)]` -/
def P426711226647489632.Spec : Prop :=
  ∀ n, P426711226647489632.a n = A029062 n

end A029062

/-! ## A029062.P10499082398282090942

`∑[Δ[A029059(n+2)]-A025925(n+3)]`
-/

namespace A029062.P10499082398282090942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029059 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A025925 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029062.P10499082398282090942

namespace A029062

/-- `∑[Δ[A029059(n+2)]-A025925(n+3)]` -/
def P10499082398282090942.Spec : Prop :=
  ∀ n, P10499082398282090942.a n = A029062 n

end A029062

/-! ## A029062.P6621859117728647681

`A025858(n)+a(A002262(A055998(n)))` with `a(0)=1`
-/

namespace A029062.P6621859117728647681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025858 n + a (A002262 (A055998 n).toNat).toNat

end

end A029062.P6621859117728647681

namespace A029062

/-- `A025858(n)+a(A002262(A055998(n)))` -/
def P6621859117728647681.Spec : Prop :=
  ∀ n, P6621859117728647681.a n = A029062 n

end A029062

/-!
# A029063: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^6)).

The programs for A029063, the canonical program `A029063.P15053321772237610882` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029063 has offset 0).

The definition of A029063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029063.P15053321772237610882

`∑[A008682(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029063

/-- `∑[A008682(n)]` -/
def P15053321772237610882.Spec : Prop :=
  ∀ n, P15053321772237610882.a n = A029063 n

theorem P15053321772237610882.correct : P15053321772237610882.Spec := by
  intro n
  simp only [A029063]

end A029063

/-! ## A029063.P3180263774284024889

`A029011(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029063.P3180263774284024889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029011 n - a (n - 2)

end

end A029063.P3180263774284024889

namespace A029063

/-- `A029011(n)-a(n-2)` -/
def P3180263774284024889.Spec : Prop :=
  ∀ n, P3180263774284024889.a n = A029063 n

end A029063

/-! ## A029063.P1861181825330350443

`A029032(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029063.P1861181825330350443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029032 n - a (n - 3)

end

end A029063.P1861181825330350443

namespace A029063

/-- `A029032(n)-a(n-3)` -/
def P1861181825330350443.Spec : Prop :=
  ∀ n, P1861181825330350443.a n = A029063 n

end A029063

/-! ## A029063.P5600340543046747443

`A008682(n)+a(A004275(n+1)-(n+1))` with `a(0)=1`
-/

namespace A029063.P5600340543046747443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008682 n + a (A004275 (n + 1) - (n + 1 : ℤ)).toNat

end

end A029063.P5600340543046747443

namespace A029063

/-- `A008682(n)+a(A004275(n+1)-(n+1))` -/
def P5600340543046747443.Spec : Prop :=
  ∀ n, P5600340543046747443.a n = A029063 n

end A029063

/-! ## A029063.P7317713077031656186

`A008667(n+1)-Δ[A008682(n)]`
-/

namespace A029063.P7317713077031656186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029063.P7317713077031656186

namespace A029063

/-- `A008667(n+1)-Δ[A008682(n)]` -/
def P7317713077031656186.Spec : Prop :=
  ∀ n, P7317713077031656186.a n = A029063 n

end A029063

/-! ## A029063.P1506532179339923609

`A029207(2*n)`
-/

namespace A029063.P1506532179339923609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 (2 * n)

end

end A029063.P1506532179339923609

namespace A029063

/-- `A029207(2*n)` -/
def P1506532179339923609.Spec : Prop :=
  ∀ n, P1506532179339923609.a n = A029063 n

end A029063

/-! ## A029063.P181673586259587415

`∑[A025890(2*n)]`
-/

namespace A029063.P181673586259587415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029063.P181673586259587415

namespace A029063

/-- `∑[A025890(2*n)]` -/
def P181673586259587415.Spec : Prop :=
  ∀ n, P181673586259587415.a n = A029063 n

end A029063

/-! ## A029063.P12552717142398960522

`xor(1, xor(1, A029207(n+n)))`
-/

namespace A029063.P12552717142398960522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A029207 (n + n)))

end

end A029063.P12552717142398960522

namespace A029063

/-- `xor(1, xor(1, A029207(n+n)))` -/
def P12552717142398960522.Spec : Prop :=
  ∀ n, P12552717142398960522.a n = A029063 n

end A029063

/-! ## A029063.P6807755346582223491

`A025890(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029063.P6807755346582223491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025890 (n + n) + a (n - 1)

end

end A029063.P6807755346582223491

namespace A029063

/-- `A025890(n+n)+a(n-1)` -/
def P6807755346582223491.Spec : Prop :=
  ∀ n, P6807755346582223491.a n = A029063 n

end A029063

/-! ## A029063.P10856222515779100907

`∑[A029340(2*n)-A029340(2*n+1)]`
-/

namespace A029063.P10856222515779100907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 (2 * n) - A029340 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029063.P10856222515779100907

namespace A029063

/-- `∑[A029340(2*n)-A029340(2*n+1)]` -/
def P10856222515779100907.Spec : Prop :=
  ∀ n, P10856222515779100907.a n = A029063 n

end A029063

/-! ## A029063.P10963606060010716612

`A029340(2*n+3)+A029340(2*n)`
-/

namespace A029063.P10963606060010716612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 (2 * n + 3) + A029340 (2 * n)

end

end A029063.P10963606060010716612

namespace A029063

/-- `A029340(2*n+3)+A029340(2*n)` -/
def P10963606060010716612.Spec : Prop :=
  ∀ n, P10963606060010716612.a n = A029063 n

end A029063

/-! ## A029063.P15451153698608465523

`A029436(A073760(n+2))-A029436(2*n+1)`
-/

namespace A029063.P15451153698608465523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 (A073760 (n + 2)).toNat - A029436 (2 * n + 1)

end

end A029063.P15451153698608465523

namespace A029063

/-- `A029436(A073760(n+2))-A029436(2*n+1)` -/
def P15451153698608465523.Spec : Prop :=
  ∀ n, P15451153698608465523.a n = A029063 n

end A029063

/-! ## A029063.P16582642292196134380

`A029436(A131439(n+2))-A029436(2*n+1)`
-/

namespace A029063.P16582642292196134380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 (A131439 (n + 2)).toNat - A029436 (2 * n + 1)

end

end A029063.P16582642292196134380

namespace A029063

/-- `A029436(A131439(n+2))-A029436(2*n+1)` -/
def P16582642292196134380.Spec : Prop :=
  ∀ n, P16582642292196134380.a n = A029063 n

end A029063

/-! ## A029063.P4314874819088905787

`A297173(A161868(n+1))+A029207(n+n)`
-/

namespace A029063.P4314874819088905787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A161868 (n + 1)).toNat + A029207 (n + n)

end

end A029063.P4314874819088905787

namespace A029063

/-- `A297173(A161868(n+1))+A029207(n+n)` -/
def P4314874819088905787.Spec : Prop :=
  ∀ n, P4314874819088905787.a n = A029063 n

end A029063

/-! ## A029063.P4858460380165096373

`A029207(n+n)/A242641(∑[n]+1)`
-/

namespace A029063.P4858460380165096373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029207 (n + n) : ℚ) / (A242641 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A029063.P4858460380165096373

namespace A029063

/-- `A029207(n+n)/A242641(∑[n]+1)` -/
def P4858460380165096373.Spec : Prop :=
  ∀ n, P4858460380165096373.a n = (A029063 n : ℚ)

end A029063

/-! ## A029063.P14993032917943648954

`A029207(n+n)/A007318(∑[n])`
-/

namespace A029063.P14993032917943648954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029207 (n + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A029063.P14993032917943648954

namespace A029063

/-- `A029207(n+n)/A007318(∑[n])` -/
def P14993032917943648954.Spec : Prop :=
  ∀ n, P14993032917943648954.a n = (A029063 n : ℚ)

end A029063

/-!
# A029064: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^7)).

The programs for A029064, the canonical program `A029064.P16510016974770699599` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029064 has offset 0).

The definition of A029064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029064.P16510016974770699599

`∑[A025859(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029064

/-- `∑[A025859(n)]` -/
def P16510016974770699599.Spec : Prop :=
  ∀ n, P16510016974770699599.a n = A029064 n

theorem P16510016974770699599.correct : P16510016974770699599.Spec := by
  intro n
  simp only [A029064]

end A029064

/-! ## A029064.P12459796292802771604

`A029012(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029064.P12459796292802771604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029012 n - a (n - 2)

end

end A029064.P12459796292802771604

namespace A029064

/-- `A029012(n)-a(n-2)` -/
def P12459796292802771604.Spec : Prop :=
  ∀ n, P12459796292802771604.a n = A029064 n

end A029064

/-! ## A029064.P1266609452331716201

`A029227(2*n)`
-/

namespace A029064.P1266609452331716201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029227 (2 * n)

end

end A029064.P1266609452331716201

namespace A029064

/-- `A029227(2*n)` -/
def P1266609452331716201.Spec : Prop :=
  ∀ n, P1266609452331716201.a n = A029064 n

end A029064

/-! ## A029064.P15836423810817715950

`∑[A025909(2*n)]`
-/

namespace A029064.P15836423810817715950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029064.P15836423810817715950

namespace A029064

/-- `∑[A025909(2*n)]` -/
def P15836423810817715950.Spec : Prop :=
  ∀ n, P15836423810817715950.a n = A029064 n

end A029064

/-! ## A029064.P6614460259984822497

`A025909(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029064.P6614460259984822497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025909 (n + n) + a (n - 1)

end

end A029064.P6614460259984822497

namespace A029064

/-- `A025909(n+n)+a(n-1)` -/
def P6614460259984822497.Spec : Prop :=
  ∀ n, P6614460259984822497.a n = A029064 n

end A029064

/-! ## A029064.P7494495018608039242

`A029227(n+n)/gcd(n, n+1)`
-/

namespace A029064.P7494495018608039242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029227 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A029064.P7494495018608039242

namespace A029064

/-- `A029227(n+n)/gcd(n, n+1)` -/
def P7494495018608039242.Spec : Prop :=
  ∀ n, P7494495018608039242.a n = (A029064 n : ℚ)

end A029064

/-! ## A029064.P12995725505073735944

`A029216(2*n)-A029414(2*n+1)`
-/

namespace A029064.P12995725505073735944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (2 * n) - A029414 (2 * n + 1)

end

end A029064.P12995725505073735944

namespace A029064

/-- `A029216(2*n)-A029414(2*n+1)` -/
def P12995725505073735944.Spec : Prop :=
  ∀ n, P12995725505073735944.a n = A029064 n

end A029064

/-! ## A029064.P112663452762541272

`∑[A029414(2*n)-A029414(2*n+1)]`
-/

namespace A029064.P112663452762541272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (2 * n) - A029414 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029064.P112663452762541272

namespace A029064

/-- `∑[A029414(2*n)-A029414(2*n+1)]` -/
def P112663452762541272.Spec : Prop :=
  ∀ n, P112663452762541272.a n = A029064 n

end A029064

/-! ## A029064.P13191587920849103597

`or(A000007(n), A029227(A005843(n)))`
-/

namespace A029064.P13191587920849103597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A029227 (A005843 n).toNat)

end

end A029064.P13191587920849103597

namespace A029064

/-- `or(A000007(n), A029227(A005843(n)))` -/
def P13191587920849103597.Spec : Prop :=
  ∀ n, P13191587920849103597.a n = A029064 n

end A029064

/-! ## A029064.P1023081955026165720

`A341609(A020639(n+1))+A029227(n+n)`
-/

namespace A029064.P1023081955026165720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (A020639 (n + 1)).toNat + A029227 (n + n)

end

end A029064.P1023081955026165720

namespace A029064

/-- `A341609(A020639(n+1))+A029227(n+n)` -/
def P1023081955026165720.Spec : Prop :=
  ∀ n, P1023081955026165720.a n = A029064 n

end A029064

/-! ## A029064.P1394099024462176592

`A029332(2*n+5)`
-/

namespace A029064.P1394099024462176592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029332 (2 * n + 5)

end

end A029064.P1394099024462176592

namespace A029064

/-- `A029332(2*n+5)` -/
def P1394099024462176592.Spec : Prop :=
  ∀ n, P1394099024462176592.a n = A029064 n

end A029064

/-! ## A029064.P6039133154889510298

`A029178(2*(n+2))-record[A029162(n)]`
-/

namespace A029064.P6039133154889510298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (2 * (n + 2)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029064.P6039133154889510298

namespace A029064

/-- `A029178(2*(n+2))-record[A029162(n)]` -/
def P6039133154889510298.Spec : Prop :=
  ∀ n, P6039133154889510298.a n = A029064 n

end A029064

/-! ## A029064.P11295990793097737710

`A029178(2*(n+2))-record[A029194(n)]`
-/

namespace A029064.P11295990793097737710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (2 * (n + 2)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029064.P11295990793097737710

namespace A029064

/-- `A029178(2*(n+2))-record[A029194(n)]` -/
def P11295990793097737710.Spec : Prop :=
  ∀ n, P11295990793097737710.a n = A029064 n

end A029064

/-! ## A029064.P16191341039720564763

`A029178(2*(n+2))-A029194(2*(n+2))`
-/

namespace A029064.P16191341039720564763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (2 * (n + 2)) - A029194 (2 * (n + 2))

end

end A029064.P16191341039720564763

namespace A029064

/-- `A029178(2*(n+2))-A029194(2*(n+2))` -/
def P16191341039720564763.Spec : Prop :=
  ∀ n, P16191341039720564763.a n = A029064 n

end A029064

/-! ## A029064.P12710082660263767281

`A029227(A168203(n+1))+A000007(n+1)`
-/

namespace A029064.P12710082660263767281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029227 (A168203 (n + 1)).toNat + A000007 (n + 1)

end

end A029064.P12710082660263767281

namespace A029064

/-- `A029227(A168203(n+1))+A000007(n+1)` -/
def P12710082660263767281.Spec : Prop :=
  ∀ n, P12710082660263767281.a n = A029064 n

end A029064

/-! ## A029064.P1193129374269506430

`A029156(2*n)-A029288(3*n+1)`
-/

namespace A029064.P1193129374269506430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029156 (2 * n) - A029288 (3 * n + 1)

end

end A029064.P1193129374269506430

namespace A029064

/-- `A029156(2*n)-A029288(3*n+1)` -/
def P1193129374269506430.Spec : Prop :=
  ∀ n, P1193129374269506430.a n = A029064 n

end A029064

/-! ## A029064.P17165056001943636414

`A029227(A005843(n))%A048585(n)`
-/

namespace A029064.P17165056001943636414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029227 (A005843 n).toNat) (A048585 n)

end

end A029064.P17165056001943636414

namespace A029064

/-- `A029227(A005843(n))%A048585(n)` -/
def P17165056001943636414.Spec : Prop :=
  ∀ n, P17165056001943636414.a n = A029064 n

end A029064

/-! ## A029064.P6308411850357953579

`∑{d}[A029227(A168203(n+1)), A000010(#)]`
-/

namespace A029064.P6308411850357953579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029227 (A168203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A029064.P6308411850357953579

namespace A029064

/-- `∑{d}[A029227(A168203(n+1)), A000010(#)]` -/
def P6308411850357953579.Spec : Prop :=
  ∀ n, P6308411850357953579.a n = A029064 n

end A029064

/-!
# A029065: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^8)).

The programs for A029065, the canonical program `A029065.P18104003308073808113` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029065 has offset 0).

The definition of A029065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029065.P18104003308073808113

`∑[A025860(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029065

/-- `∑[A025860(n)]` -/
def P18104003308073808113.Spec : Prop :=
  ∀ n, P18104003308073808113.a n = A029065 n

theorem P18104003308073808113.correct : P18104003308073808113.Spec := by
  intro n
  simp only [A029065]

end A029065

/-! ## A029065.P12440058255189939837

`A029013(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029065.P12440058255189939837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029013 n - a (n - 2)

end

end A029065.P12440058255189939837

namespace A029065

/-- `A029013(n)-a(n-2)` -/
def P12440058255189939837.Spec : Prop :=
  ∀ n, P12440058255189939837.a n = A029065 n

end A029065

/-! ## A029065.P16926098008117969376

`A025778(n)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A029065.P16926098008117969376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A025778 n + a (n - 4)

end

end A029065.P16926098008117969376

namespace A029065

/-- `A025778(n)+a(n-4)` -/
def P16926098008117969376.Spec : Prop :=
  ∀ n, P16926098008117969376.a n = A029065 n

end A029065

/-! ## A029065.P3294096799228023242

`A025860(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029065.P3294096799228023242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025860 n + a (A023443 n).toNat

end

end A029065.P3294096799228023242

namespace A029065

/-- `A025860(n)+a(A023443(n))` -/
def P3294096799228023242.Spec : Prop :=
  ∀ n, P3294096799228023242.a n = A029065 n

end A029065

/-! ## A029065.P14898364898989962018

`A029173(abs(1-n))+A029173(n)`
-/

namespace A029065.P14898364898989962018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029173 |1 - (n : ℤ)|.toNat + A029173 n

end

end A029065.P14898364898989962018

namespace A029065

/-- `A029173(abs(1-n))+A029173(n)` -/
def P14898364898989962018.Spec : Prop :=
  ∀ n, P14898364898989962018.a n = A029065 n

end A029065

/-! ## A029065.P6005202886724264116

`a(n-1)+A025860(n)%A000290(n)` with `a(0)=1`
-/

namespace A029065.P6005202886724264116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025860 n) (A000290 n)

end

end A029065.P6005202886724264116

namespace A029065

/-- `a(n-1)+A025860(n)%A000290(n)` -/
def P6005202886724264116.Spec : Prop :=
  ∀ n, P6005202886724264116.a n = A029065 n

end A029065

/-! ## A029065.P4340038042270638325

`A029040(n+1)-A029246(n+1)`
-/

namespace A029065.P4340038042270638325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029040 (n + 1) - A029246 (n + 1)

end

end A029065.P4340038042270638325

namespace A029065

/-- `A029040(n+1)-A029246(n+1)` -/
def P4340038042270638325.Spec : Prop :=
  ∀ n, P4340038042270638325.a n = A029065 n

end A029065

/-! ## A029065.P16358396380332772217

`A029277(A166517(n)-1)+A029173(n)`
-/

namespace A029065.P16358396380332772217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 (A166517 n - 1).toNat + A029173 n

end

end A029065.P16358396380332772217

namespace A029065

/-- `A029277(A166517(n)-1)+A029173(n)` -/
def P16358396380332772217.Spec : Prop :=
  ∀ n, P16358396380332772217.a n = A029065 n

end A029065

/-! ## A029065.P11901183252164460763

`A029277(A166517(n+1))+A029173(n)`
-/

namespace A029065.P11901183252164460763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 (A166517 (n + 1)).toNat + A029173 n

end

end A029065.P11901183252164460763

namespace A029065

/-- `A029277(A166517(n+1))+A029173(n)` -/
def P11901183252164460763.Spec : Prop :=
  ∀ n, P11901183252164460763.a n = A029065 n

end A029065

/-! ## A029065.P647445397153195856

`A029405(3*(n+3)+1)`
-/

namespace A029065.P647445397153195856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029405 (3 * (n + 3) + 1)

end

end A029065.P647445397153195856

namespace A029065

/-- `A029405(3*(n+3)+1)` -/
def P647445397153195856.Spec : Prop :=
  ∀ n, P647445397153195856.a n = A029065 n

end A029065

/-! ## A029065.P5996463093139966216

`A174571(4*a(n-1))+A025860(n)` with `a(0)=1`
-/

namespace A029065.P5996463093139966216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A174571 (4 * a (n - 1)).toNat + A025860 n

end

end A029065.P5996463093139966216

namespace A029065

/-- `A174571(4*a(n-1))+A025860(n)` -/
def P5996463093139966216.Spec : Prop :=
  ∀ n, P5996463093139966216.a n = A029065 n

end A029065

/-!
# A029066: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^9)).

The programs for A029066, the canonical program `A029066.P9719720827509354257` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029066 has offset 0).

The definition of A029066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029066.P9719720827509354257

`∑[A025861(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029066

/-- `∑[A025861(n)]` -/
def P9719720827509354257.Spec : Prop :=
  ∀ n, P9719720827509354257.a n = A029066 n

theorem P9719720827509354257.correct : P9719720827509354257.Spec := by
  intro n
  simp only [A029066]

end A029066

/-! ## A029066.P13911517736889718826

`A029014(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029066.P13911517736889718826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029014 n - a (n - 2)

end

end A029066.P13911517736889718826

namespace A029066

/-- `A029014(n)-a(n-2)` -/
def P13911517736889718826.Spec : Prop :=
  ∀ n, P13911517736889718826.a n = A029066 n

end A029066

/-! ## A029066.P893504377410102225

`A029236(2*n)`
-/

namespace A029066.P893504377410102225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (2 * n)

end

end A029066.P893504377410102225

namespace A029066

/-- `A029236(2*n)` -/
def P893504377410102225.Spec : Prop :=
  ∀ n, P893504377410102225.a n = A029066 n

end A029066

/-! ## A029066.P12058628898548575028

`∑[A025918(2*n)]`
-/

namespace A029066.P12058628898548575028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029066.P12058628898548575028

namespace A029066

/-- `∑[A025918(2*n)]` -/
def P12058628898548575028.Spec : Prop :=
  ∀ n, P12058628898548575028.a n = A029066 n

end A029066

/-! ## A029066.P4539375370087541230

`A025918(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029066.P4539375370087541230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025918 (n + n) + a (n - 1)

end

end A029066.P4539375370087541230

namespace A029066

/-- `A025918(n+n)+a(n-1)` -/
def P4539375370087541230.Spec : Prop :=
  ∀ n, P4539375370087541230.a n = A029066 n

end A029066

/-! ## A029066.P8926619248077609187

`A029236(n+n)%A158382(n+1)`
-/

namespace A029066.P8926619248077609187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029236 (n + n)) (A158382 (n + 1))

end

end A029066.P8926619248077609187

namespace A029066

/-- `A029236(n+n)%A158382(n+1)` -/
def P8926619248077609187.Spec : Prop :=
  ∀ n, P8926619248077609187.a n = A029066 n

end A029066

/-! ## A029066.P8346836011466350026

`A029128(2*n)+A029239(2*n)-A029130(2*n)`
-/

namespace A029066.P8346836011466350026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 (2 * n) + (A029239 (2 * n) - A029130 (2 * n))

end

end A029066.P8346836011466350026

namespace A029066

/-- `A029128(2*n)+A029239(2*n)-A029130(2*n)` -/
def P8346836011466350026.Spec : Prop :=
  ∀ n, P8346836011466350026.a n = A029066 n

end A029066

/-! ## A029066.P6360281232836980270

`∑[abs(Δ[A029236(n+7+n)])]`
-/

namespace A029066.P6360281232836980270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (n + 7 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029066.P6360281232836980270

namespace A029066

/-- `∑[abs(Δ[A029236(n+7+n)])]` -/
def P6360281232836980270.Spec : Prop :=
  ∀ n, P6360281232836980270.a n = A029066 n

end A029066

/-! ## A029066.P1552775722307683479

`A000027(A029236(n+n))`
-/

namespace A029066.P1552775722307683479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029236 (n + n)).toNat

end

end A029066.P1552775722307683479

namespace A029066

/-- `A000027(A029236(n+n))` -/
def P1552775722307683479.Spec : Prop :=
  ∀ n, P1552775722307683479.a n = A029066 n

end A029066

/-! ## A029066.P9591638963131899304

`A029236(n+n)^A007318(∑[n])`
-/

namespace A029066.P9591638963131899304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029236 (n + n) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A029066.P9591638963131899304

namespace A029066

/-- `A029236(n+n)^A007318(∑[n])` -/
def P9591638963131899304.Spec : Prop :=
  ∀ n, P9591638963131899304.a n = (A029066 n : ℚ)

end A029066

/-!
# A029067: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^10)).

The programs for A029067, the canonical program `A029067.P13105805842187110081` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029067 has offset 0).

The definition of A029067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029067.P13105805842187110081

`∑[A025862(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029067

/-- `∑[A025862(n)]` -/
def P13105805842187110081.Spec : Prop :=
  ∀ n, P13105805842187110081.a n = A029067 n

theorem P13105805842187110081.correct : P13105805842187110081.Spec := by
  intro n
  simp only [A029067]

end A029067

/-! ## A029067.P3091037780687033096

`A000008(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029067.P3091037780687033096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000008 n - a (n - 2)

end

end A029067.P3091037780687033096

namespace A029067

/-- `A000008(n)-a(n-2)` -/
def P3091037780687033096.Spec : Prop :=
  ∀ n, P3091037780687033096.a n = A029067 n

end A029067

/-! ## A029067.P15288676990385029266

`∑[A025810(n)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029067.P15288676990385029266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A029067.P15288676990385029266

namespace A029067

/-- `∑[A025810(n)]-a(n-2)` -/
def P15288676990385029266.Spec : Prop :=
  ∀ n, P15288676990385029266.a n = A029067 n

end A029067

/-! ## A029067.P10637040149873743571

`A025862(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029067.P10637040149873743571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025862 n + a (A023443 n).toNat

end

end A029067.P10637040149873743571

namespace A029067

/-- `A025862(n)+a(A023443(n))` -/
def P10637040149873743571.Spec : Prop :=
  ∀ n, P10637040149873743571.a n = A029067 n

end A029067

/-! ## A029067.P14934760245736317332

`A025862(n%A004772(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029067.P14934760245736317332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025862 (Int.tmod (n : ℤ) (A004772 (n + 1))).toNat + a (n - 1)

end

end A029067.P14934760245736317332

namespace A029067

/-- `A025862(n%A004772(n+1))+a(n-1)` -/
def P14934760245736317332.Spec : Prop :=
  ∀ n, P14934760245736317332.a n = A029067 n

end A029067

/-! ## A029067.P3735685000866827925

`A029042(n+1)-A029248(n+1)`
-/

namespace A029067.P3735685000866827925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 (n + 1) - A029248 (n + 1)

end

end A029067.P3735685000866827925

namespace A029067

/-- `A029042(n+1)-A029248(n+1)` -/
def P3735685000866827925.Spec : Prop :=
  ∀ n, P3735685000866827925.a n = A029067 n

end A029067

/-! ## A029067.P12712186675682603751

`∑[A165190(n+10)*A165190(n)]`
-/

namespace A029067.P12712186675682603751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (n + 10) * A165190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029067.P12712186675682603751

namespace A029067

/-- `∑[A165190(n+10)*A165190(n)]` -/
def P12712186675682603751.Spec : Prop :=
  ∀ n, P12712186675682603751.a n = A029067 n

end A029067

/-!
# A029068: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^11)).

The programs for A029068, the canonical program `A029068.P11529397386458974623` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029068 has offset 0).

The definition of A029068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029068.P11529397386458974623

`∑[A025863(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029068

/-- `∑[A025863(n)]` -/
def P11529397386458974623.Spec : Prop :=
  ∀ n, P11529397386458974623.a n = A029068 n

theorem P11529397386458974623.correct : P11529397386458974623.Spec := by
  intro n
  simp only [A029068]

end A029068

/-! ## A029068.P4509401753412581597

`A029015(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029068.P4509401753412581597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029015 n - a (n - 2)

end

end A029068.P4509401753412581597

namespace A029068

/-- `A029015(n)-a(n-2)` -/
def P4509401753412581597.Spec : Prop :=
  ∀ n, P4509401753412581597.a n = A029068 n

end A029068

/-! ## A029068.P4474049863144265913

`A029239(2*n)`
-/

namespace A029068.P4474049863144265913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (2 * n)

end

end A029068.P4474049863144265913

namespace A029068

/-- `A029239(2*n)` -/
def P4474049863144265913.Spec : Prop :=
  ∀ n, P4474049863144265913.a n = A029068 n

end A029068

/-! ## A029068.P4232001643169989223

`∑[A025921(2*n)]`
-/

namespace A029068.P4232001643169989223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029068.P4232001643169989223

namespace A029068

/-- `∑[A025921(2*n)]` -/
def P4232001643169989223.Spec : Prop :=
  ∀ n, P4232001643169989223.a n = A029068 n

end A029068

/-! ## A029068.P2485319172329539726

`xor(1, xor(1, A029239(n+n)))`
-/

namespace A029068.P2485319172329539726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A029239 (n + n)))

end

end A029068.P2485319172329539726

namespace A029068

/-- `xor(1, xor(1, A029239(n+n)))` -/
def P2485319172329539726.Spec : Prop :=
  ∀ n, P2485319172329539726.a n = A029068 n

end A029068

/-! ## A029068.P4622259051399361267

`A025921(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029068.P4622259051399361267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025921 (n + n) + a (n - 1)

end

end A029068.P4622259051399361267

namespace A029068

/-- `A025921(n+n)+a(n-1)` -/
def P4622259051399361267.Spec : Prop :=
  ∀ n, P4622259051399361267.a n = A029068 n

end A029068

/-! ## A029068.P10324113487223273173

`A029239(Δ[n²])+A025775(n)`
-/

namespace A029068.P10324113487223273173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A025775 n

end

end A029068.P10324113487223273173

namespace A029068

/-- `A029239(Δ[n²])+A025775(n)` -/
def P10324113487223273173.Spec : Prop :=
  ∀ n, P10324113487223273173.a n = A029068 n

end A029068

/-! ## A029068.P11747660785360255165

`A029239(n+n)+A000038(n+1)`
-/

namespace A029068.P11747660785360255165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (n + n) + A000038 (n + 1)

end

end A029068.P11747660785360255165

namespace A029068

/-- `A029239(n+n)+A000038(n+1)` -/
def P11747660785360255165.Spec : Prop :=
  ∀ n, P11747660785360255165.a n = A029068 n

end A029068

/-! ## A029068.P1197745705533200173

`A029239(n+n)%A129800(n+1)²`
-/

namespace A029068.P1197745705533200173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029239 (n + n)) (A129800 (n + 1) ^ 2)

end

end A029068.P1197745705533200173

namespace A029068

/-- `A029239(n+n)%A129800(n+1)²` -/
def P1197745705533200173.Spec : Prop :=
  ∀ n, P1197745705533200173.a n = A029068 n

end A029068

/-! ## A029068.P7478399937117389859

`A029445(2*n+1)+A029240(2*n)`
-/

namespace A029068.P7478399937117389859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029445 (2 * n + 1) + A029240 (2 * n)

end

end A029068.P7478399937117389859

namespace A029068

/-- `A029445(2*n+1)+A029240(2*n)` -/
def P7478399937117389859.Spec : Prop :=
  ∀ n, P7478399937117389859.a n = A029068 n

end A029068

/-! ## A029068.P7576558508773930208

`A029128(2*n+1)-A029236(2*n+1)`
-/

namespace A029068.P7576558508773930208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 (2 * n + 1) - A029236 (2 * n + 1)

end

end A029068.P7576558508773930208

namespace A029068

/-- `A029128(2*n+1)-A029236(2*n+1)` -/
def P7576558508773930208.Spec : Prop :=
  ∀ n, P7576558508773930208.a n = A029068 n

end A029068

/-! ## A029068.P2269319511021454459

`A029239(n+n)+A002448(A051698(n))`
-/

namespace A029068.P2269319511021454459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (n + n) + A002448 (A051698 n).toNat

end

end A029068.P2269319511021454459

namespace A029068

/-- `A029239(n+n)+A002448(A051698(n))` -/
def P2269319511021454459.Spec : Prop :=
  ∀ n, P2269319511021454459.a n = A029068 n

end A029068

/-! ## A029068.P2376625313174360163

`A056594(Δ[n²])+A029239(A005843(n))`
-/

namespace A029068.P2376625313174360163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A029239 (A005843 n).toNat

end

end A029068.P2376625313174360163

namespace A029068

/-- `A056594(Δ[n²])+A029239(A005843(n))` -/
def P2376625313174360163.Spec : Prop :=
  ∀ n, P2376625313174360163.a n = A029068 n

end A029068

/-!
# A029069: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^12)).

The programs for A029069, the canonical program `A029069.P8448279059211438971` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029069 has offset 0).

The definition of A029069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029069.P8448279059211438971

`∑[A025864(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029069

/-- `∑[A025864(n)]` -/
def P8448279059211438971.Spec : Prop :=
  ∀ n, P8448279059211438971.a n = A029069 n

theorem P8448279059211438971.correct : P8448279059211438971.Spec := by
  intro n
  simp only [A029069]

end A029069

/-! ## A029069.P4437534022686349206

`A029016(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029069.P4437534022686349206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029016 n - a (n - 2)

end

end A029069.P4437534022686349206

namespace A029069

/-- `A029016(n)-a(n-2)` -/
def P4437534022686349206.Spec : Prop :=
  ∀ n, P4437534022686349206.a n = A029069 n

end A029069

/-! ## A029069.P925088577569852062

`A029177(abs(1-n))+A029177(n)`
-/

namespace A029069.P925088577569852062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 |1 - (n : ℤ)|.toNat + A029177 n

end

end A029069.P925088577569852062

namespace A029069

/-- `A029177(abs(1-n))+A029177(n)` -/
def P925088577569852062.Spec : Prop :=
  ∀ n, P925088577569852062.a n = A029069 n

end A029069

/-! ## A029069.P18159270758511023064

`A025864(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A029069.P18159270758511023064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025864 (A000027 n).toNat + a (n - 1)

end

end A029069.P18159270758511023064

namespace A029069

/-- `A025864(A000027(n))+a(n-1)` -/
def P18159270758511023064.Spec : Prop :=
  ∀ n, P18159270758511023064.a n = A029069 n

end A029069

/-! ## A029069.P12795039794771315687

`A029250(abs(A023443(n)))+A029149(n)`
-/

namespace A029069.P12795039794771315687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029250 |A023443 n|.toNat + A029149 n

end

end A029069.P12795039794771315687

namespace A029069

/-- `A029250(abs(A023443(n)))+A029149(n)` -/
def P12795039794771315687.Spec : Prop :=
  ∀ n, P12795039794771315687.a n = A029069 n

end A029069

/-! ## A029069.P2640055285299673352

`A029250(abs(A024000(n)))+A029149(n)`
-/

namespace A029069.P2640055285299673352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029250 |A024000 n|.toNat + A029149 n

end

end A029069.P2640055285299673352

namespace A029069

/-- `A029250(abs(A024000(n)))+A029149(n)` -/
def P2640055285299673352.Spec : Prop :=
  ∀ n, P2640055285299673352.a n = A029069 n

end A029069

/-! ## A029069.P13167155682393620036

`∑[A025806(A026741(n)%A052938(n))]`
-/

namespace A029069.P13167155682393620036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (Int.tmod (A026741 n) (A052938 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029069.P13167155682393620036

namespace A029069

/-- `∑[A025806(A026741(n)%A052938(n))]` -/
def P13167155682393620036.Spec : Prop :=
  ∀ n, P13167155682393620036.a n = A029069 n

end A029069

/-! ## A029069.P11200409714260474071

`∑[A025806(A109613(n)%A052938(n))]`
-/

namespace A029069.P11200409714260474071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (Int.tmod (A109613 n) (A052938 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029069.P11200409714260474071

namespace A029069

/-- `∑[A025806(A109613(n)%A052938(n))]` -/
def P11200409714260474071.Spec : Prop :=
  ∀ n, P11200409714260474071.a n = A029069 n

end A029069

/-! ## A029069.P14305546714433674903

`A029044(n+1)-A029250(n+1)`
-/

namespace A029069.P14305546714433674903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029044 (n + 1) - A029250 (n + 1)

end

end A029069.P14305546714433674903

namespace A029069

/-- `A029044(n+1)-A029250(n+1)` -/
def P14305546714433674903.Spec : Prop :=
  ∀ n, P14305546714433674903.a n = A029069 n

end A029069

/-!
# A029070: Expansion of 1/((1-x)*(1-x^4)*(1-x^6)*(1-x^7)).

The programs for A029070, the canonical program `A029070.P15506344122115421726` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029070 has offset 0).

The definition of A029070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029070.P15506344122115421726

`∑[A008622(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029070

/-- `∑[A008622(n)]` -/
def P15506344122115421726.Spec : Prop :=
  ∀ n, P15506344122115421726.a n = A029070 n

theorem P15506344122115421726.correct : P15506344122115421726.Spec := by
  intro n
  simp only [A029070]

end A029070

/-! ## A029070.P1830016932577357054

`A029017(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029070.P1830016932577357054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029017 n - a (n - 2)

end

end A029070.P1830016932577357054

namespace A029070

/-- `A029017(n)-a(n-2)` -/
def P1830016932577357054.Spec : Prop :=
  ∀ n, P1830016932577357054.a n = A029070 n

end A029070

/-! ## A029070.P2192195387055406579

`A029033(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029070.P2192195387055406579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029033 n - a (n - 3)

end

end A029070.P2192195387055406579

namespace A029070

/-- `A029033(n)-a(n-3)` -/
def P2192195387055406579.Spec : Prop :=
  ∀ n, P2192195387055406579.a n = A029070 n

end A029070

/-! ## A029070.P5537560598778273028

`A029178(abs(1-n))+A029178(n)`
-/

namespace A029070.P5537560598778273028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 |1 - (n : ℤ)|.toNat + A029178 n

end

end A029070.P5537560598778273028

namespace A029070

/-- `A029178(abs(1-n))+A029178(n)` -/
def P5537560598778273028.Spec : Prop :=
  ∀ n, P5537560598778273028.a n = A029070 n

end A029070

/-! ## A029070.P17148612060983838161

`A029229(2*n)`
-/

namespace A029070.P17148612060983838161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n)

end

end A029070.P17148612060983838161

namespace A029070

/-- `A029229(2*n)` -/
def P17148612060983838161.Spec : Prop :=
  ∀ n, P17148612060983838161.a n = A029070 n

end A029070

/-! ## A029070.P9729875214436203072

`∑[A025911(2*n)]`
-/

namespace A029070.P9729875214436203072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029070.P9729875214436203072

namespace A029070

/-- `∑[A025911(2*n)]` -/
def P9729875214436203072.Spec : Prop :=
  ∀ n, P9729875214436203072.a n = A029070 n

end A029070

/-! ## A029070.P13328112930375694751

`A025911(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029070.P13328112930375694751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025911 (n + n) + a (n - 1)

end

end A029070.P13328112930375694751

namespace A029070

/-- `A025911(n+n)+a(n-1)` -/
def P13328112930375694751.Spec : Prop :=
  ∀ n, P13328112930375694751.a n = A029070 n

end A029070

/-! ## A029070.P9000400315582768592

`A029229(n+n)/gcd(n, n+1)`
-/

namespace A029070.P9000400315582768592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029229 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A029070.P9000400315582768592

namespace A029070

/-- `A029229(n+n)/gcd(n, n+1)` -/
def P9000400315582768592.Spec : Prop :=
  ∀ n, P9000400315582768592.a n = (A029070 n : ℚ)

end A029070

/-! ## A029070.P8197181246227393796

`A029229(A005843(n))%A001539(n)`
-/

namespace A029070.P8197181246227393796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029229 (A005843 n).toNat) (A001539 n)

end

end A029070.P8197181246227393796

namespace A029070

/-- `A029229(A005843(n))%A001539(n)` -/
def P8197181246227393796.Spec : Prop :=
  ∀ n, P8197181246227393796.a n = A029070 n

end A029070

/-! ## A029070.P956573002558015739

`A029017(n)-A029229(A005818(n+1)-2)`
-/

namespace A029070.P956573002558015739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 n - A029229 (A005818 (n + 1) - 2).toNat

end

end A029070.P956573002558015739

namespace A029070

/-- `A029017(n)-A029229(A005818(n+1)-2)` -/
def P956573002558015739.Spec : Prop :=
  ∀ n, P956573002558015739.a n = A029070 n

end A029070

/-! ## A029070.P10609849719162907491

`A029017(n)-A029229(A020735(n+1)-2)`
-/

namespace A029070.P10609849719162907491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 n - A029229 (A020735 (n + 1) - 2).toNat

end

end A029070.P10609849719162907491

namespace A029070

/-- `A029017(n)-A029229(A020735(n+1)-2)` -/
def P10609849719162907491.Spec : Prop :=
  ∀ n, P10609849719162907491.a n = A029070 n

end A029070

/-! ## A029070.P18046785983156911522

`A029229(A020735(n+1))+A008622(n)`
-/

namespace A029070.P18046785983156911522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (A020735 (n + 1)).toNat + A008622 n

end

end A029070.P18046785983156911522

namespace A029070

/-- `A029229(A020735(n+1))+A008622(n)` -/
def P18046785983156911522.Spec : Prop :=
  ∀ n, P18046785983156911522.a n = A029070 n

end A029070

/-! ## A029070.P3546499404122166560

`∑[abs(Δ[A029229(A267872(n+2))])]`
-/

namespace A029070.P3546499404122166560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (A267872 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029070.P3546499404122166560

namespace A029070

/-- `∑[abs(Δ[A029229(A267872(n+2))])]` -/
def P3546499404122166560.Spec : Prop :=
  ∀ n, P3546499404122166560.a n = A029070 n

end A029070

/-! ## A029070.P15138790709319606206

`∑{d}[A029229(A005843(n)), A000010(#)]`
-/

namespace A029070.P15138790709319606206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A029070.P15138790709319606206

namespace A029070

/-- `∑{d}[A029229(A005843(n)), A000010(#)]` -/
def P15138790709319606206.Spec : Prop :=
  ∀ n, P15138790709319606206.a n = A029070 n

end A029070

/-!
# A029071: Expansion of 1/((1-x)*(1-x^4)*(1-x^6)*(1-x^9)).

The programs for A029071, the canonical program `A029071.P7762703672727769565` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029071 has offset 0).

The definition of A029071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029071.P7762703672727769565

`∑[A025865(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029071

/-- `∑[A025865(n)]` -/
def P7762703672727769565.Spec : Prop :=
  ∀ n, P7762703672727769565.a n = A029071 n

theorem P7762703672727769565.correct : P7762703672727769565.Spec := by
  intro n
  simp only [A029071]

end A029071

/-! ## A029071.P12003229765876536057

`A029018(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029071.P12003229765876536057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029018 n - a (n - 2)

end

end A029071.P12003229765876536057

namespace A029071

/-- `A029018(n)-a(n-2)` -/
def P12003229765876536057.Spec : Prop :=
  ∀ n, P12003229765876536057.a n = A029071 n

end A029071

/-! ## A029071.P13746087533918982987

`A029035(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029071.P13746087533918982987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029035 n - a (n - 3)

end

end A029071.P13746087533918982987

namespace A029071

/-- `A029035(n)-a(n-3)` -/
def P13746087533918982987.Spec : Prop :=
  ∀ n, P13746087533918982987.a n = A029071 n

end A029071

/-! ## A029071.P5949492330673874388

`∑[A005044(A063942(n)+2)]`
-/

namespace A029071.P5949492330673874388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A063942 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029071.P5949492330673874388

namespace A029071

/-- `∑[A005044(A063942(n)+2)]` -/
def P5949492330673874388.Spec : Prop :=
  ∀ n, P5949492330673874388.a n = A029071 n

end A029071

/-! ## A029071.P3137769222204656871

`∑[A029253(n)-A288165(n+1)]`
-/

namespace A029071.P3137769222204656871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 n - A288165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029071.P3137769222204656871

namespace A029071

/-- `∑[A029253(n)-A288165(n+1)]` -/
def P3137769222204656871.Spec : Prop :=
  ∀ n, P3137769222204656871.a n = A029071 n

end A029071

/-! ## A029071.P7277399877757967692

`A029238(2*n)`
-/

namespace A029071.P7277399877757967692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n)

end

end A029071.P7277399877757967692

namespace A029071

/-- `A029238(2*n)` -/
def P7277399877757967692.Spec : Prop :=
  ∀ n, P7277399877757967692.a n = A029071 n

end A029071

/-! ## A029071.P7758214816513722418

`∑[A025920(2*n)]`
-/

namespace A029071.P7758214816513722418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029071.P7758214816513722418

namespace A029071

/-- `∑[A025920(2*n)]` -/
def P7758214816513722418.Spec : Prop :=
  ∀ n, P7758214816513722418.a n = A029071 n

end A029071

/-! ## A029071.P845928163728927367

`A025920(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029071.P845928163728927367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025920 (n + n) + a (n - 1)

end

end A029071.P845928163728927367

namespace A029071

/-- `A025920(n+n)+a(n-1)` -/
def P845928163728927367.Spec : Prop :=
  ∀ n, P845928163728927367.a n = A029071 n

end A029071

/-! ## A029071.P13154997764806601766

`A029238(A005843(n))/gcd(n, n+1)`
-/

namespace A029071.P13154997764806601766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029238 (A005843 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A029071.P13154997764806601766

namespace A029071

/-- `A029238(A005843(n))/gcd(n, n+1)` -/
def P13154997764806601766.Spec : Prop :=
  ∀ n, P13154997764806601766.a n = (A029071 n : ℚ)

end A029071

/-! ## A029071.P6521360039606178741

`A029238(A004277(n))+A000007(n)`
-/

namespace A029071.P6521360039606178741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A004277 n).toNat + A000007 n

end

end A029071.P6521360039606178741

namespace A029071

/-- `A029238(A004277(n))+A000007(n)` -/
def P6521360039606178741.Spec : Prop :=
  ∀ n, P6521360039606178741.a n = A029071 n

end A029071

/-! ## A029071.P4442757664105260448

`A029186(2*n)+A029210(2*n)-A029177(2*n)`
-/

namespace A029071.P4442757664105260448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029186 (2 * n) + (A029210 (2 * n) - A029177 (2 * n))

end

end A029071.P4442757664105260448

namespace A029071

/-- `A029186(2*n)+A029210(2*n)-A029177(2*n)` -/
def P4442757664105260448.Spec : Prop :=
  ∀ n, P4442757664105260448.a n = A029071 n

end A029071

/-! ## A029071.P6844837603891579544

`A029225(2*n)+A029444(2*n)-A029427(2*n)`
-/

namespace A029071.P6844837603891579544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (2 * n) + (A029444 (2 * n) - A029427 (2 * n))

end

end A029071.P6844837603891579544

namespace A029071

/-- `A029225(2*n)+A029444(2*n)-A029427(2*n)` -/
def P6844837603891579544.Spec : Prop :=
  ∀ n, P6844837603891579544.a n = A029071 n

end A029071

/-! ## A029071.P6597741603124047719

`A000027(A029238(n+n))`
-/

namespace A029071.P6597741603124047719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029238 (n + n)).toNat

end

end A029071.P6597741603124047719

namespace A029071

/-- `A000027(A029238(n+n))` -/
def P6597741603124047719.Spec : Prop :=
  ∀ n, P6597741603124047719.a n = A029071 n

end A029071

/-! ## A029071.P9862666619372417398

`∑{d}[A029238(A005843(n)), A000010(#)]`
-/

namespace A029071.P9862666619372417398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A029071.P9862666619372417398

namespace A029071

/-- `∑{d}[A029238(A005843(n)), A000010(#)]` -/
def P9862666619372417398.Spec : Prop :=
  ∀ n, P9862666619372417398.a n = A029071 n

end A029071

/-!
# A029072: Expansion of 1/((1-x)*(1-x^4)*(1-x^6)*(1-x^11)).

The programs for A029072, the canonical program `A029072.P9773573475305398672` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029072 has offset 0).

The definition of A029072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029072.P9773573475305398672

`∑[A025866(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029072

/-- `∑[A025866(n)]` -/
def P9773573475305398672.Spec : Prop :=
  ∀ n, P9773573475305398672.a n = A029072 n

theorem P9773573475305398672.correct : P9773573475305398672.Spec := by
  intro n
  simp only [A029072]

end A029072

/-! ## A029072.P5431622220634441652

`A029019(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029072.P5431622220634441652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029019 n - a (n - 2)

end

end A029072.P5431622220634441652

namespace A029072

/-- `A029019(n)-a(n-2)` -/
def P5431622220634441652.Spec : Prop :=
  ∀ n, P5431622220634441652.a n = A029072 n

end A029072

/-! ## A029072.P14753300490626752358

`A029037(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029072.P14753300490626752358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029037 n - a (n - 3)

end

end A029072.P14753300490626752358

namespace A029072

/-- `A029037(n)-a(n-3)` -/
def P14753300490626752358.Spec : Prop :=
  ∀ n, P14753300490626752358.a n = A029072 n

end A029072

/-! ## A029072.P12450313932435429262

`∑[A025905(A168197(n+1))]`
-/

namespace A029072.P12450313932435429262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 (A168197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029072.P12450313932435429262

namespace A029072

/-- `∑[A025905(A168197(n+1))]` -/
def P12450313932435429262.Spec : Prop :=
  ∀ n, P12450313932435429262.a n = A029072 n

end A029072

/-! ## A029072.P2175712960671797679

`A029240(2*n)`
-/

namespace A029072.P2175712960671797679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n)

end

end A029072.P2175712960671797679

namespace A029072

/-- `A029240(2*n)` -/
def P2175712960671797679.Spec : Prop :=
  ∀ n, P2175712960671797679.a n = A029072 n

end A029072

/-! ## A029072.P14349630286983012192

`∑[A025922(2*n)]`
-/

namespace A029072.P14349630286983012192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029072.P14349630286983012192

namespace A029072

/-- `∑[A025922(2*n)]` -/
def P14349630286983012192.Spec : Prop :=
  ∀ n, P14349630286983012192.a n = A029072 n

end A029072

/-! ## A029072.P9347270936191267662

`A025922(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029072.P9347270936191267662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025922 (n + n) + a (n - 1)

end

end A029072.P9347270936191267662

namespace A029072

/-- `A025922(n+n)+a(n-1)` -/
def P9347270936191267662.Spec : Prop :=
  ∀ n, P9347270936191267662.a n = A029072 n

end A029072

/-! ## A029072.P11279348384386199643

`∑[A029445(2*n)-A029445(2*n+1)]`
-/

namespace A029072.P11279348384386199643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029445 (2 * n) - A029445 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029072.P11279348384386199643

namespace A029072

/-- `∑[A029445(2*n)-A029445(2*n+1)]` -/
def P11279348384386199643.Spec : Prop :=
  ∀ n, P11279348384386199643.a n = A029072 n

end A029072

/-! ## A029072.P8392034637212046309

`A029240(A004277(n))+A000007(n)`
-/

namespace A029072.P8392034637212046309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (A004277 n).toNat + A000007 n

end

end A029072.P8392034637212046309

namespace A029072

/-- `A029240(A004277(n))+A000007(n)` -/
def P8392034637212046309.Spec : Prop :=
  ∀ n, P8392034637212046309.a n = A029072 n

end A029072

/-! ## A029072.P15166481372557002332

`A025922(2*n)+A029225(2*n)-A029427(2*n)`
-/

namespace A029072.P15166481372557002332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (2 * n) + (A029225 (2 * n) - A029427 (2 * n))

end

end A029072.P15166481372557002332

namespace A029072

/-- `A025922(2*n)+A029225(2*n)-A029427(2*n)` -/
def P15166481372557002332.Spec : Prop :=
  ∀ n, P15166481372557002332.a n = A029072 n

end A029072

/-! ## A029072.P7062367603089435977

`A029244(2*n)+A029445(2*n)-A025926(2*n)`
-/

namespace A029072.P7062367603089435977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (2 * n) + (A029445 (2 * n) - A025926 (2 * n))

end

end A029072.P7062367603089435977

namespace A029072

/-- `A029244(2*n)+A029445(2*n)-A025926(2*n)` -/
def P7062367603089435977.Spec : Prop :=
  ∀ n, P7062367603089435977.a n = A029072 n

end A029072

/-! ## A029072.P4934191717439520860

`A029244(2*n)+A029372(2*n)-A029377(2*n)`
-/

namespace A029072.P4934191717439520860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (2 * n) + (A029372 (2 * n) - A029377 (2 * n))

end

end A029072.P4934191717439520860

namespace A029072

/-- `A029244(2*n)+A029372(2*n)-A029377(2*n)` -/
def P4934191717439520860.Spec : Prop :=
  ∀ n, P4934191717439520860.a n = A029072 n

end A029072

/-! ## A029072.P5617017375892784718

`A029225(2*n)+A029408(2*n)-A029386(2*n)`
-/

namespace A029072.P5617017375892784718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (2 * n) + (A029408 (2 * n) - A029386 (2 * n))

end

end A029072.P5617017375892784718

namespace A029072

/-- `A029225(2*n)+A029408(2*n)-A029386(2*n)` -/
def P5617017375892784718.Spec : Prop :=
  ∀ n, P5617017375892784718.a n = A029072 n

end A029072

/-! ## A029072.P13375558075997777231

`A029240(A004273(n+6))%A000041(n+4)`
-/

namespace A029072.P13375558075997777231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029240 (A004273 (n + 6)).toNat) (A000041 (n + 4))

end

end A029072.P13375558075997777231

namespace A029072

/-- `A029240(A004273(n+6))%A000041(n+4)` -/
def P13375558075997777231.Spec : Prop :=
  ∀ n, P13375558075997777231.a n = A029072 n

end A029072

/-! ## A029072.P3345469774416114604

`A000027(A029240(n+n))`
-/

namespace A029072.P3345469774416114604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029240 (n + n)).toNat

end

end A029072.P3345469774416114604

namespace A029072

/-- `A000027(A029240(n+n))` -/
def P3345469774416114604.Spec : Prop :=
  ∀ n, P3345469774416114604.a n = A029072 n

end A029072

/-! ## A029072.P320009227418416559

`∑{d}[A029240(A004273(n+6)), A000010(#)]`
-/

namespace A029072.P320009227418416559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (A004273 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A029072.P320009227418416559

namespace A029072

/-- `∑{d}[A029240(A004273(n+6)), A000010(#)]` -/
def P320009227418416559.Spec : Prop :=
  ∀ n, P320009227418416559.a n = A029072 n

end A029072

/-!
# A029073: Expansion of 1/((1-x)*(1-x^4)*(1-x^7)*(1-x^8)).

The programs for A029073, the canonical program `A029073.P1196765058353204642` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029073 has offset 0).

The definition of A029073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029073.P1196765058353204642

`∑[A025867(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029073

/-- `∑[A025867(n)]` -/
def P1196765058353204642.Spec : Prop :=
  ∀ n, P1196765058353204642.a n = A029073 n

theorem P1196765058353204642.correct : P1196765058353204642.Spec := by
  intro n
  simp only [A029073]

end A029073

/-! ## A029073.P15845402609625091674

`A029020(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029073.P15845402609625091674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029020 n - a (n - 2)

end

end A029073.P15845402609625091674

namespace A029073

/-- `A029020(n)-a(n-2)` -/
def P15845402609625091674.Spec : Prop :=
  ∀ n, P15845402609625091674.a n = A029073 n

end A029073

/-! ## A029073.P213648585835478676

`A025867(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029073.P213648585835478676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025867 n + a (A023443 n).toNat

end

end A029073.P213648585835478676

namespace A029073

/-- `A025867(n)+a(A023443(n))` -/
def P213648585835478676.Spec : Prop :=
  ∀ n, P213648585835478676.a n = A029073 n

end A029073

/-! ## A029073.P15676230922816255055

`A029181(abs(1-n))+A029181(n)`
-/

namespace A029073.P15676230922816255055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029181 |1 - (n : ℤ)|.toNat + A029181 n

end

end A029073.P15676230922816255055

namespace A029073

/-- `A029181(abs(1-n))+A029181(n)` -/
def P15676230922816255055.Spec : Prop :=
  ∀ n, P15676230922816255055.a n = A029073 n

end A029073

/-! ## A029073.P11551838070174985486

`A029071(n)+A029359(n)-A029348(n)`
-/

namespace A029073.P11551838070174985486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 n + (A029359 n - A029348 n)

end

end A029073.P11551838070174985486

namespace A029073

/-- `A029071(n)+A029359(n)-A029348(n)` -/
def P11551838070174985486.Spec : Prop :=
  ∀ n, P11551838070174985486.a n = A029073 n

end A029073

/-! ## A029073.P12479728889660103359

`∑[A025868(n)]+A029359(n)-A025868(n)`
-/

namespace A029073.P12479728889660103359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029359 n - A025868 n)

end

end A029073.P12479728889660103359

namespace A029073

/-- `∑[A025868(n)]+A029359(n)-A025868(n)` -/
def P12479728889660103359.Spec : Prop :=
  ∀ n, P12479728889660103359.a n = A029073 n

end A029073

/-! ## A029073.P10987032728250154840

`A029359(2*n+5)+A029359(n)`
-/

namespace A029073.P10987032728250154840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (2 * n + 5) + A029359 n

end

end A029073.P10987032728250154840

namespace A029073

/-- `A029359(2*n+5)+A029359(n)` -/
def P10987032728250154840.Spec : Prop :=
  ∀ n, P10987032728250154840.a n = A029073 n

end A029073

/-!
# A029074: Expansion of 1/((1-x)(1-x^4)(1-x^7)(1-x^9)).

The programs for A029074, the canonical program `A029074.P740633488516579496` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029074 has offset 0).

The definition of A029074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029074.P740633488516579496

`∑[A025868(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029074

/-- `∑[A025868(n)]` -/
def P740633488516579496.Spec : Prop :=
  ∀ n, P740633488516579496.a n = A029074 n

theorem P740633488516579496.correct : P740633488516579496.Spec := by
  intro n
  simp only [A029074]

end A029074

/-! ## A029074.P17599523907966923385

`A029021(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029074.P17599523907966923385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029021 n - a (n - 2)

end

end A029074.P17599523907966923385

namespace A029074

/-- `A029021(n)-a(n-2)` -/
def P17599523907966923385.Spec : Prop :=
  ∀ n, P17599523907966923385.a n = A029074 n

end A029074

/-! ## A029074.P7913090100125882952

`A029071(n+1)-A029348(n+1)`
-/

namespace A029074.P7913090100125882952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 (n + 1) - A029348 (n + 1)

end

end A029074.P7913090100125882952

namespace A029074

/-- `A029071(n+1)-A029348(n+1)` -/
def P7913090100125882952.Spec : Prop :=
  ∀ n, P7913090100125882952.a n = A029074 n

end A029074

/-! ## A029074.P2258983954397426463

`A029359(A005818(n+1))+A025868(n)`
-/

namespace A029074.P2258983954397426463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A005818 (n + 1)).toNat + A025868 n

end

end A029074.P2258983954397426463

namespace A029074

/-- `A029359(A005818(n+1))+A025868(n)` -/
def P2258983954397426463.Spec : Prop :=
  ∀ n, P2258983954397426463.a n = A029074 n

end A029074

/-! ## A029074.P4026769837361041443

`A029359(2*n+7)`
-/

namespace A029074.P4026769837361041443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (2 * n + 7)

end

end A029074.P4026769837361041443

namespace A029074

/-- `A029359(2*n+7)` -/
def P4026769837361041443.Spec : Prop :=
  ∀ n, P4026769837361041443.a n = A029074 n

end A029074

/-! ## A029074.P457060233568700122

`A029359(A020742(n))%C(n+4, 3)`
-/

namespace A029074.P457060233568700122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029359 (A020742 n).toNat) (Nat.choose (n + 4) 3 : ℤ)

end

end A029074.P457060233568700122

namespace A029074

/-- `A029359(A020742(n))%C(n+4, 3)` -/
def P457060233568700122.Spec : Prop :=
  ∀ n, P457060233568700122.a n = A029074 n

end A029074

/-! ## A029074.P1271179132092043465

`A029359(A020742(n))%A016887(n)`
-/

namespace A029074.P1271179132092043465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029359 (A020742 n).toNat) (A016887 n)

end

end A029074.P1271179132092043465

namespace A029074

/-- `A029359(A020742(n))%A016887(n)` -/
def P1271179132092043465.Spec : Prop :=
  ∀ n, P1271179132092043465.a n = A029074 n

end A029074

/-! ## A029074.P2180720068900362125

`lcm(A029359(A020742(n)), A033999(n))`
-/

namespace A029074.P2180720068900362125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029359 (A020742 n).toNat) (A033999 n)

end

end A029074.P2180720068900362125

namespace A029074

/-- `lcm(A029359(A020742(n)), A033999(n))` -/
def P2180720068900362125.Spec : Prop :=
  ∀ n, (P2180720068900362125.a n : ℤ) = A029074 n

end A029074

/-! ## A029074.P1937669293737881814

`or(A000007(n), A029359(A020742(n)))`
-/

namespace A029074.P1937669293737881814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A029359 (A020742 n).toNat)

end

end A029074.P1937669293737881814

namespace A029074

/-- `or(A000007(n), A029359(A020742(n)))` -/
def P1937669293737881814.Spec : Prop :=
  ∀ n, P1937669293737881814.a n = A029074 n

end A029074

/-! ## A029074.P6785913351477923786

`char[A004515(n)]*A029359(A020742(n))`
-/

namespace A029074.P6785913351477923786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A029359 (A020742 n).toNat

end

end A029074.P6785913351477923786

namespace A029074

/-- `char[A004515(n)]*A029359(A020742(n))` -/
def P6785913351477923786.Spec : Prop :=
  ∀ n, P6785913351477923786.a n = A029074 n

end A029074

/-! ## A029074.P13629488488633649466

`A029359(A020742(n))+A000007(n+1)`
-/

namespace A029074.P13629488488633649466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A020742 n).toNat + A000007 (n + 1)

end

end A029074.P13629488488633649466

namespace A029074

/-- `A029359(A020742(n))+A000007(n+1)` -/
def P13629488488633649466.Spec : Prop :=
  ∀ n, P13629488488633649466.a n = A029074 n

end A029074

/-! ## A029074.P651414097758058520

`gcd(2, A160834(n))*A029359(A020742(n))`
-/

namespace A029074.P651414097758058520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A160834 n) : ℤ) * A029359 (A020742 n).toNat

end

end A029074.P651414097758058520

namespace A029074

/-- `gcd(2, A160834(n))*A029359(A020742(n))` -/
def P651414097758058520.Spec : Prop :=
  ∀ n, P651414097758058520.a n = A029074 n

end A029074

/-! ## A029074.P11299042366628014096

`A029359(A020742(n))+char[A064351(n+1)]`
-/

namespace A029074.P11299042366628014096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064351 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A020742 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A029074.P11299042366628014096

namespace A029074

/-- `A029359(A020742(n))+char[A064351(n+1)]` -/
def P11299042366628014096.Spec : Prop :=
  ∀ n, P11299042366628014096.a n = A029074 n

end A029074

/-! ## A029074.P17867157167705400835

`A029359(A020742(n))+char[A017222(n)^3]`
-/

namespace A029074.P17867157167705400835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A020742 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A029074.P17867157167705400835

namespace A029074

/-- `A029359(A020742(n))+char[A017222(n)^3]` -/
def P17867157167705400835.Spec : Prop :=
  ∀ n, P17867157167705400835.a n = A029074 n

end A029074

/-! ## A029074.P15363326385725361011

`A058276(or(1, 1-n)+n)+A029359(A020742(n))`
-/

namespace A029074.P15363326385725361011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058276 (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ)).toNat + A029359 (A020742 n).toNat

end

end A029074.P15363326385725361011

namespace A029074

/-- `A058276(or(1, 1-n)+n)+A029359(A020742(n))` -/
def P15363326385725361011.Spec : Prop :=
  ∀ n, P15363326385725361011.a n = A029074 n

end A029074

/-! ## A029074.P3128912323366465652

`A080941(or(1, 1-n)+n)+A029359(A020742(n))`
-/

namespace A029074.P3128912323366465652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080941 (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ)).toNat + A029359 (A020742 n).toNat

end

end A029074.P3128912323366465652

namespace A029074

/-- `A080941(or(1, 1-n)+n)+A029359(A020742(n))` -/
def P3128912323366465652.Spec : Prop :=
  ∀ n, P3128912323366465652.a n = A029074 n

end A029074

/-! ## A029074.P2400390262490111853

`A029359(A020742(n))/A001222(A100484(n+1)/2)`
-/

namespace A029074.P2400390262490111853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029359 (A020742 n).toNat : ℚ) / (A001222 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A029074.P2400390262490111853

namespace A029074

/-- `A029359(A020742(n))/A001222(A100484(n+1)/2)` -/
def P2400390262490111853.Spec : Prop :=
  ∀ n, P2400390262490111853.a n = (A029074 n : ℚ)

end A029074

/-! ## A029074.P17459479859653692532

`A080339(A006881(n+1))+A029359(A020742(n))`
-/

namespace A029074.P17459479859653692532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A006881 (n + 1)).toNat + A029359 (A020742 n).toNat

end

end A029074.P17459479859653692532

namespace A029074

/-- `A080339(A006881(n+1))+A029359(A020742(n))` -/
def P17459479859653692532.Spec : Prop :=
  ∀ n, P17459479859653692532.a n = A029074 n

end A029074

/-! ## A029074.P14100401496182056257

`A029359(A020742(n))/A066882(A100484(n+1)/2)`
-/

namespace A029074.P14100401496182056257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029359 (A020742 n).toNat : ℚ) / (A066882 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A029074.P14100401496182056257

namespace A029074

/-- `A029359(A020742(n))/A066882(A100484(n+1)/2)` -/
def P14100401496182056257.Spec : Prop :=
  ∀ n, P14100401496182056257.a n = (A029074 n : ℚ)

end A029074

/-!
# A029075: Expansion of 1/((1-x)*(1-x^4)*(1-x^7)*(1-x^10)).

The programs for A029075, the canonical program `A029075.P5698234693971801387` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029075 has offset 0).

The definition of A029075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029075.P5698234693971801387

`∑[A025869(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029075

/-- `∑[A025869(n)]` -/
def P5698234693971801387.Spec : Prop :=
  ∀ n, P5698234693971801387.a n = A029075 n

theorem P5698234693971801387.correct : P5698234693971801387.Spec := by
  intro n
  simp only [A029075]

end A029075

/-! ## A029075.P16419341527605373184

`A029022(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029075.P16419341527605373184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029022 n - a (n - 2)

end

end A029075.P16419341527605373184

namespace A029075

/-- `A029022(n)-a(n-2)` -/
def P16419341527605373184.Spec : Prop :=
  ∀ n, P16419341527605373184.a n = A029075 n

end A029075

/-! ## A029075.P13003106769105689918

`∑[A025818(n)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029075.P13003106769105689918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A029075.P13003106769105689918

namespace A029075

/-- `∑[A025818(n)]-a(n-2)` -/
def P13003106769105689918.Spec : Prop :=
  ∀ n, P13003106769105689918.a n = A029075 n

end A029075

/-! ## A029075.P10971746920160758724

`A025869(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029075.P10971746920160758724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025869 n + a (A023443 n).toNat

end

end A029075.P10971746920160758724

namespace A029075

/-- `A025869(n)+a(A023443(n))` -/
def P10971746920160758724.Spec : Prop :=
  ∀ n, P10971746920160758724.a n = A029075 n

end A029075

/-! ## A029075.P2197588814608795533

`A029183(abs(1-n))+A029183(n)`
-/

namespace A029075.P2197588814608795533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029183 |1 - (n : ℤ)|.toNat + A029183 n

end

end A029075.P2197588814608795533

namespace A029075

/-- `A029183(abs(1-n))+A029183(n)` -/
def P2197588814608795533.Spec : Prop :=
  ∀ n, P2197588814608795533.a n = A029075 n

end A029075

/-! ## A029075.P18010485960427900349

`A025869(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A029075.P18010485960427900349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025869 n + a (A004273 n - (n : ℤ)).toNat

end

end A029075.P18010485960427900349

namespace A029075

/-- `A025869(n)+a(A004273(n)-n)` -/
def P18010485960427900349.Spec : Prop :=
  ∀ n, P18010485960427900349.a n = A029075 n

end A029075

/-! ## A029075.P3014396449761080180

`∑[A025899(n)]+A029326(n)-A025899(n)`
-/

namespace A029075.P3014396449761080180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029326 n - A025899 n)

end

end A029075.P3014396449761080180

namespace A029075

/-- `∑[A025899(n)]+A029326(n)-A025899(n)` -/
def P3014396449761080180.Spec : Prop :=
  ∀ n, P3014396449761080180.a n = A029075 n

end A029075

/-! ## A029075.P18078737936635129230

`A029074(n+1)-A029363(n+1)`
-/

namespace A029075.P18078737936635129230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 (n + 1) - A029363 (n + 1)

end

end A029075.P18078737936635129230

namespace A029075

/-- `A029074(n+1)-A029363(n+1)` -/
def P18078737936635129230.Spec : Prop :=
  ∀ n, P18078737936635129230.a n = A029075 n

end A029075

/-! ## A029075.P5036857419798186965

`A025869(n)+a(n-1)%A223907(n)` with `a(0)=1`
-/

namespace A029075.P5036857419798186965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025869 n + Int.tmod (a (n - 1)) (A223907 n)

end

end A029075.P5036857419798186965

namespace A029075

/-- `A025869(n)+a(n-1)%A223907(n)` -/
def P5036857419798186965.Spec : Prop :=
  ∀ n, P5036857419798186965.a n = A029075 n

end A029075

/-!
# A029076: Expansion of 1/((1-x)(1-x^4)(1-x^7)(1-x^11)).

The programs for A029076, the canonical program `A029076.P6539829890341637525` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029076 has offset 0).

The definition of A029076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029076.P6539829890341637525

`∑[A025870(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029076

/-- `∑[A025870(n)]` -/
def P6539829890341637525.Spec : Prop :=
  ∀ n, P6539829890341637525.a n = A029076 n

theorem P6539829890341637525.correct : P6539829890341637525.Spec := by
  intro n
  simp only [A029076]

end A029076

/-! ## A029076.P14884621406301733598

`A029023(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029076.P14884621406301733598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029023 n - a (n - 2)

end

end A029076.P14884621406301733598

namespace A029076

/-- `A029023(n)-a(n-2)` -/
def P14884621406301733598.Spec : Prop :=
  ∀ n, P14884621406301733598.a n = A029076 n

end A029076

/-! ## A029076.P13777713089660129355

`A025870(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029076.P13777713089660129355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025870 n + a (A023443 n).toNat

end

end A029076.P13777713089660129355

namespace A029076

/-- `A025870(n)+a(A023443(n))` -/
def P13777713089660129355.Spec : Prop :=
  ∀ n, P13777713089660129355.a n = A029076 n

end A029076

/-! ## A029076.P12564083697362045639

`a(n-1)+A025870(n)%A000217(n)` with `a(0)=1`
-/

namespace A029076.P12564083697362045639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025870 n) (A000217 n)

end

end A029076.P12564083697362045639

namespace A029076

/-- `a(n-1)+A025870(n)%A000217(n)` -/
def P12564083697362045639.Spec : Prop :=
  ∀ n, P12564083697362045639.a n = A029076 n

end A029076

/-! ## A029076.P8892705446522833031

`a(n-1)+A238532(2*(n+1))+A025870(n)` with `a(0)=1`
-/

namespace A029076.P8892705446522833031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A238532 (2 * (n + 1)) + A025870 n)

end

end A029076.P8892705446522833031

namespace A029076

/-- `a(n-1)+A238532(2*(n+1))+A025870(n)` -/
def P8892705446522833031.Spec : Prop :=
  ∀ n, P8892705446522833031.a n = A029076 n

end A029076

/-! ## A029076.P4706317073870111456

`A029184(abs(A023443(n)))+A029184(n)`
-/

namespace A029076.P4706317073870111456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029184 |A023443 n|.toNat + A029184 n

end

end A029076.P4706317073870111456

namespace A029076

/-- `A029184(abs(A023443(n)))+A029184(n)` -/
def P4706317073870111456.Spec : Prop :=
  ∀ n, P4706317073870111456.a n = A029076 n

end A029076

/-! ## A029076.P15667200022164103525

`A029184(abs(A024000(n)))+A029184(n)`
-/

namespace A029076.P15667200022164103525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029184 |A024000 n|.toNat + A029184 n

end

end A029076.P15667200022164103525

namespace A029076

/-- `A029184(abs(A024000(n)))+A029184(n)` -/
def P15667200022164103525.Spec : Prop :=
  ∀ n, P15667200022164103525.a n = A029076 n

end A029076

/-! ## A029076.P262358176518437576

`A029093(n)+A029335(n)-A029400(n)`
-/

namespace A029076.P262358176518437576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n + (A029335 n - A029400 n)

end

end A029076.P262358176518437576

namespace A029076

/-- `A029093(n)+A029335(n)-A029400(n)` -/
def P262358176518437576.Spec : Prop :=
  ∀ n, P262358176518437576.a n = A029076 n

end A029076

/-! ## A029076.P1843726616214478258

`A029072(n+1)-A029350(n+1)`
-/

namespace A029076.P1843726616214478258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 (n + 1) - A029350 (n + 1)

end

end A029076.P1843726616214478258

namespace A029076

/-- `A029072(n+1)-A029350(n+1)` -/
def P1843726616214478258.Spec : Prop :=
  ∀ n, P1843726616214478258.a n = A029076 n

end A029076

/-! ## A029076.P13368949002610799751

`abs(a(n-2)-A029228(A020742(n)))` with `a(0)=1, a(1)=1`
-/

namespace A029076.P13368949002610799751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 2) - A029228 (A020742 n).toNat|

end

end A029076.P13368949002610799751

namespace A029076

/-- `abs(a(n-2)-A029228(A020742(n)))` -/
def P13368949002610799751.Spec : Prop :=
  ∀ n, P13368949002610799751.a n = A029076 n

end A029076

/-!
# A029077: Expansion of 1/((1-x)*(1-x^4)*(1-x^7)*(1-x^12)).

The programs for A029077, the canonical program `A029077.P9366082050140688059` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029077 has offset 0).

The definition of A029077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029077.P9366082050140688059

`∑[A025871(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029077

/-- `∑[A025871(n)]` -/
def P9366082050140688059.Spec : Prop :=
  ∀ n, P9366082050140688059.a n = A029077 n

theorem P9366082050140688059.correct : P9366082050140688059.Spec := by
  intro n
  simp only [A029077]

end A029077

/-! ## A029077.P225785176121779562

`A029024(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029077.P225785176121779562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029024 n - a (n - 2)

end

end A029077.P225785176121779562

namespace A029077

/-- `A029024(n)-a(n-2)` -/
def P225785176121779562.Spec : Prop :=
  ∀ n, P225785176121779562.a n = A029077 n

end A029077

/-! ## A029077.P6028740007294338563

`A029185(abs(1-n))+A029185(n)`
-/

namespace A029077.P6028740007294338563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029185 |1 - (n : ℤ)|.toNat + A029185 n

end

end A029077.P6028740007294338563

namespace A029077

/-- `A029185(abs(1-n))+A029185(n)` -/
def P6028740007294338563.Spec : Prop :=
  ∀ n, P6028740007294338563.a n = A029077 n

end A029077

/-! ## A029077.P2395461486337939264

`a(n-1)+A025871(n)+A000007(n)` with `a(0)=1`
-/

namespace A029077.P2395461486337939264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025871 n + A000007 n)

end

end A029077.P2395461486337939264

namespace A029077

/-- `a(n-1)+A025871(n)+A000007(n)` -/
def P2395461486337939264.Spec : Prop :=
  ∀ n, P2395461486337939264.a n = A029077 n

end A029077

/-! ## A029077.P6073429016942798863

`A025871(n%A001704(n))+a(n-1)` with `a(0)=1`
-/

namespace A029077.P6073429016942798863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025871 (Int.tmod (n : ℤ) (A001704 n)).toNat + a (n - 1)

end

end A029077.P6073429016942798863

namespace A029077

/-- `A025871(n%A001704(n))+a(n-1)` -/
def P6073429016942798863.Spec : Prop :=
  ∀ n, P6073429016942798863.a n = A029077 n

end A029077

/-! ## A029077.P15349845117927875963

`A029053(n+1)-A029261(n+1)`
-/

namespace A029077.P15349845117927875963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (n + 1) - A029261 (n + 1)

end

end A029077.P15349845117927875963

namespace A029077

/-- `A029053(n+1)-A029261(n+1)` -/
def P15349845117927875963.Spec : Prop :=
  ∀ n, P15349845117927875963.a n = A029077 n

end A029077

/-! ## A029077.P16173752863656861755

`A025871(n)+a(n-1)%A063758(n)` with `a(0)=1`
-/

namespace A029077.P16173752863656861755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025871 n + Int.tmod (a (n - 1)) (A063758 n)

end

end A029077.P16173752863656861755

namespace A029077

/-- `A025871(n)+a(n-1)%A063758(n)` -/
def P16173752863656861755.Spec : Prop :=
  ∀ n, P16173752863656861755.a n = A029077 n

end A029077

/-! ## A029077.P9065225293068986402

`A028310(a(n-1))+A025871(n)` with `a(0)=1`
-/

namespace A029077.P9065225293068986402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025871 n

end

end A029077.P9065225293068986402

namespace A029077

/-- `A028310(a(n-1))+A025871(n)` -/
def P9065225293068986402.Spec : Prop :=
  ∀ n, P9065225293068986402.a n = A029077 n

end A029077

/-!
# A029078: Expansion of 1/((1-x)*(1-x^4)*(1-x^8)*(1-x^9)).

The programs for A029078, the canonical program `A029078.P5415010312910395147` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029078 has offset 0).

The definition of A029078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029078.P5415010312910395147

`∑[A025872(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029078

/-- `∑[A025872(n)]` -/
def P5415010312910395147.Spec : Prop :=
  ∀ n, P5415010312910395147.a n = A029078 n

theorem P5415010312910395147.correct : P5415010312910395147.Spec := by
  intro n
  simp only [A029078]

end A029078

/-! ## A029078.P2223113390095758471

`A029025(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029078.P2223113390095758471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029025 n - a (n - 2)

end

end A029078.P2223113390095758471

namespace A029078

/-- `A029025(n)-a(n-2)` -/
def P2223113390095758471.Spec : Prop :=
  ∀ n, P2223113390095758471.a n = A029078 n

end A029078

/-! ## A029078.P772330442815765429

`A025872(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029078.P772330442815765429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025872 n + a (A023443 n).toNat

end

end A029078.P772330442815765429

namespace A029078

/-- `A025872(n)+a(A023443(n))` -/
def P772330442815765429.Spec : Prop :=
  ∀ n, P772330442815765429.a n = A029078 n

end A029078

/-! ## A029078.P17335396892831018782

`A025872(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A029078.P17335396892831018782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025872 n + a (A028310 n - 1).toNat

end

end A029078.P17335396892831018782

namespace A029078

/-- `A025872(n)+a(A028310(n)-1)` -/
def P17335396892831018782.Spec : Prop :=
  ∀ n, P17335396892831018782.a n = A029078 n

end A029078

/-! ## A029078.P15882375391785098136

`A025872(n)+A029054(n)-A029262(n)`
-/

namespace A029078.P15882375391785098136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n + (A029054 n - A029262 n)

end

end A029078.P15882375391785098136

namespace A029078

/-- `A025872(n)+A029054(n)-A029262(n)` -/
def P15882375391785098136.Spec : Prop :=
  ∀ n, P15882375391785098136.a n = A029078 n

end A029078

/-! ## A029078.P15748767257981981180

`A025872(n)+A029074(n)-A029359(n)`
-/

namespace A029078.P15748767257981981180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n + (A029074 n - A029359 n)

end

end A029078.P15748767257981981180

namespace A029078

/-- `A025872(n)+A029074(n)-A029359(n)` -/
def P15748767257981981180.Spec : Prop :=
  ∀ n, P15748767257981981180.a n = A029078 n

end A029078

/-! ## A029078.P5823484363501597551

`A029054(n+1)-A029262(n+1)`
-/

namespace A029078.P5823484363501597551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029054 (n + 1) - A029262 (n + 1)

end

end A029078.P5823484363501597551

namespace A029078

/-- `A029054(n+1)-A029262(n+1)` -/
def P5823484363501597551.Spec : Prop :=
  ∀ n, P5823484363501597551.a n = A029078 n

end A029078

/-! ## A029078.P16370546242806508700

`A029074(n+1)-A029359(n+1)`
-/

namespace A029078.P16370546242806508700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 (n + 1) - A029359 (n + 1)

end

end A029078.P16370546242806508700

namespace A029078

/-- `A029074(n+1)-A029359(n+1)` -/
def P16370546242806508700.Spec : Prop :=
  ∀ n, P16370546242806508700.a n = A029078 n

end A029078

/-! ## A029078.P17553660463018649059

`∑[A025868(n+1)-Δ[A029359(n)]]`
-/

namespace A029078.P17553660463018649059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029078.P17553660463018649059

namespace A029078

/-- `∑[A025868(n+1)-Δ[A029359(n)]]` -/
def P17553660463018649059.Spec : Prop :=
  ∀ n, P17553660463018649059.a n = A029078 n

end A029078

/-! ## A029078.P1705742279459009884

`∑[abs(Δ[A029359(A020742(n))-A029359(n)])]`
-/

namespace A029078.P1705742279459009884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A020742 n).toNat - A029359 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029078.P1705742279459009884

namespace A029078

/-- `∑[abs(Δ[A029359(A020742(n))-A029359(n)])]` -/
def P1705742279459009884.Spec : Prop :=
  ∀ n, P1705742279459009884.a n = A029078 n

end A029078

/-! ## A029078.P7250540005035263245

`A029359(A020742(n+1))-A029359(n+1)`
-/

namespace A029078.P7250540005035263245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A020742 (n + 1)).toNat - A029359 (n + 1)

end

end A029078.P7250540005035263245

namespace A029078

/-- `A029359(A020742(n+1))-A029359(n+1)` -/
def P7250540005035263245.Spec : Prop :=
  ∀ n, P7250540005035263245.a n = A029078 n

end A029078

/-!
# A029079: Expansion of 1/((1-x)*(1-x^4)*(1-x^8)*(1-x^11)).

The programs for A029079, the canonical program `A029079.P4491243665832951518` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029079 has offset 0).

The definition of A029079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029079.P2696995842445319953

`∑[A025873(n)]`
-/

namespace A029079.P2696995842445319953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029079.P2696995842445319953

namespace A029079

/-- `∑[A025873(n)]` -/
def P2696995842445319953.Spec : Prop :=
  ∀ n, P2696995842445319953.a n = A029079 n

end A029079

/-! ## A029079.P13099551854145013272

`A029026(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029079.P13099551854145013272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029026 n - a (n - 2)

end

end A029079.P13099551854145013272

namespace A029079

/-- `A029026(n)-a(n-2)` -/
def P13099551854145013272.Spec : Prop :=
  ∀ n, P13099551854145013272.a n = A029079 n

end A029079

/-! ## A029079.P16754935621495673719

`∑[A025822(n)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029079.P16754935621495673719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A029079.P16754935621495673719

namespace A029079

/-- `∑[A025822(n)]-a(n-2)` -/
def P16754935621495673719.Spec : Prop :=
  ∀ n, P16754935621495673719.a n = A029079 n

end A029079

/-! ## A029079.P14867279855586130315

`A025873(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029079.P14867279855586130315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025873 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029079.P14867279855586130315

namespace A029079

/-- `A025873(char[1]+n)+a(n-1)` -/
def P14867279855586130315.Spec : Prop :=
  ∀ n, P14867279855586130315.a n = A029079 n

end A029079

/-! ## A029079.P4491243665832951518

`A029187(abs(1-n))+A029187(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029079

/-- `A029187(abs(1-n))+A029187(n)` -/
def P4491243665832951518.Spec : Prop :=
  ∀ n, P4491243665832951518.a n = A029079 n

theorem P4491243665832951518.correct : P4491243665832951518.Spec := by
  intro n
  simp only [A029079]

end A029079

/-! ## A029079.P5900970782295363245

`a(n-1)+A025873(n)%A000217(n)` with `a(0)=1`
-/

namespace A029079.P5900970782295363245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025873 n) (A000217 n)

end

end A029079.P5900970782295363245

namespace A029079

/-- `a(n-1)+A025873(n)%A000217(n)` -/
def P5900970782295363245.Spec : Prop :=
  ∀ n, P5900970782295363245.a n = A029079 n

end A029079

/-! ## A029079.P3821510622272364756

`A029076(n+1)-A029361(n+1)`
-/

namespace A029079.P3821510622272364756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029076 (n + 1) - A029361 (n + 1)

end

end A029079.P3821510622272364756

namespace A029079

/-- `A029076(n+1)-A029361(n+1)` -/
def P3821510622272364756.Spec : Prop :=
  ∀ n, P3821510622272364756.a n = A029079 n

end A029079

/-! ## A029079.P17070738313743458189

`∑[A025907(A168197(n+1))]`
-/

namespace A029079.P17070738313743458189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (A168197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029079.P17070738313743458189

namespace A029079

/-- `∑[A025907(A168197(n+1))]` -/
def P17070738313743458189.Spec : Prop :=
  ∀ n, P17070738313743458189.a n = A029079 n

end A029079

/-!
# A029080: Expansion of 1/((1-x)*(1-x^4)*(1-x^9)*(1-x^10)).

The programs for A029080, the canonical program `A029080.P7340783252293150969` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029080 has offset 0).

The definition of A029080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029080.P7340783252293150969

`A029027(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029080

/-- `A029027(n)-a(n-2)` -/
def P7340783252293150969.Spec : Prop :=
  ∀ n, P7340783252293150969.a n = A029080 n

theorem P7340783252293150969.correct : P7340783252293150969.Spec := by
  intro n
  simp only [A029080]

end A029080

/-! ## A029080.P13799375230662275535

`∑[A025823(n)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A029080.P13799375230662275535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A025823 n - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029080.P13799375230662275535

namespace A029080

/-- `∑[A025823(n)-a(n-2)]` -/
def P13799375230662275535.Spec : Prop :=
  ∀ n, P13799375230662275535.a n = A029080 n

end A029080

/-! ## A029080.P6469002852042557507

`a(n-4)+A025791(n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A029080.P6469002852042557507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 4) + A025791 n

end

end A029080.P6469002852042557507

namespace A029080

/-- `a(n-4)+A025791(n)` -/
def P6469002852042557507.Spec : Prop :=
  ∀ n, P6469002852042557507.a n = A029080 n

end A029080

/-! ## A029080.P18216366450130066368

`A029188(abs(1-n))+A029188(n)`
-/

namespace A029080.P18216366450130066368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029188 |1 - (n : ℤ)|.toNat + A029188 n

end

end A029080.P18216366450130066368

namespace A029080

/-- `A029188(abs(1-n))+A029188(n)` -/
def P18216366450130066368.Spec : Prop :=
  ∀ n, P18216366450130066368.a n = A029080 n

end A029080

/-! ## A029080.P17714407492999548228

`A029058(n)+A029071(n)-A029047(n)`
-/

namespace A029080.P17714407492999548228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029058 n + (A029071 n - A029047 n)

end

end A029080.P17714407492999548228

namespace A029080

/-- `A029058(n)+A029071(n)-A029047(n)` -/
def P17714407492999548228.Spec : Prop :=
  ∀ n, P17714407492999548228.a n = A029080 n

end A029080

/-! ## A029080.P5717825807349415642

`A029096(n+1)-Δ[A029127(n)]`
-/

namespace A029080.P5717825807349415642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029096 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029080.P5717825807349415642

namespace A029080

/-- `A029096(n+1)-Δ[A029127(n)]` -/
def P5717825807349415642.Spec : Prop :=
  ∀ n, P5717825807349415642.a n = A029080 n

end A029080

/-!
# A029081: Expansion of g.f. 1/((1-x)*(1-x^4)*(1-x^9)*(1-x^11)).

The programs for A029081, the canonical program `A029081.P254092326386085694` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029081 has offset 0).

The definition of A029081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029081.P254092326386085694

`A029028(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029081

/-- `A029028(n)-a(n-2)` -/
def P254092326386085694.Spec : Prop :=
  ∀ n, P254092326386085694.a n = A029081 n

theorem P254092326386085694.correct : P254092326386085694.Spec := by
  intro n
  simp only [A029081]

end A029081

/-! ## A029081.P12500298765264999912

`A029189(abs(1-n))+A029189(n)`
-/

namespace A029081.P12500298765264999912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029189 |1 - (n : ℤ)|.toNat + A029189 n

end

end A029081.P12500298765264999912

namespace A029081

/-- `A029189(abs(1-n))+A029189(n)` -/
def P12500298765264999912.Spec : Prop :=
  ∀ n, P12500298765264999912.a n = A029081 n

end A029081

/-! ## A029081.P8881896552054275801

`A029101(n)+A029342(n)-A025892(n)`
-/

namespace A029081.P8881896552054275801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 n + (A029342 n - A025892 n)

end

end A029081.P8881896552054275801

namespace A029081

/-- `A029101(n)+A029342(n)-A025892(n)` -/
def P8881896552054275801.Spec : Prop :=
  ∀ n, P8881896552054275801.a n = A029081 n

end A029081

/-! ## A029081.P10246331906476960715

`A029068(n)+A029114(n)-A029087(n)`
-/

namespace A029081.P10246331906476960715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029068 n + (A029114 n - A029087 n)

end

end A029081.P10246331906476960715

namespace A029081

/-- `A029068(n)+A029114(n)-A029087(n)` -/
def P10246331906476960715.Spec : Prop :=
  ∀ n, P10246331906476960715.a n = A029081 n

end A029081

/-! ## A029081.P11720995227303734902

`A029098(n)+A029342(n)-A029404(n)`
-/

namespace A029081.P11720995227303734902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029098 n + (A029342 n - A029404 n)

end

end A029081.P11720995227303734902

namespace A029081

/-- `A029098(n)+A029342(n)-A029404(n)` -/
def P11720995227303734902.Spec : Prop :=
  ∀ n, P11720995227303734902.a n = A029081 n

end A029081

/-! ## A029081.P4754112437244278293

`A029370(2*n+9)`
-/

namespace A029081.P4754112437244278293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029370 (2 * n + 9)

end

end A029081.P4754112437244278293

namespace A029081

/-- `A029370(2*n+9)` -/
def P4754112437244278293.Spec : Prop :=
  ∀ n, P4754112437244278293.a n = A029081 n

end A029081

/-!
# A029082: Expansion of 1/((1-x)(1-x^4)(1-x^9)(1-x^12)).

The programs for A029082, the canonical program `A029082.P2329619087138817251` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029082 has offset 0).

The definition of A029082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029082.P2329619087138817251

`∑[A025874(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029082

/-- `∑[A025874(n)]` -/
def P2329619087138817251.Spec : Prop :=
  ∀ n, P2329619087138817251.a n = A029082 n

theorem P2329619087138817251.correct : P2329619087138817251.Spec := by
  intro n
  simp only [A029082]

end A029082

/-! ## A029082.P17907912244857027204

`A029029(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029082.P17907912244857027204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029029 n - a (n - 2)

end

end A029082.P17907912244857027204

namespace A029082

/-- `A029029(n)-a(n-2)` -/
def P17907912244857027204.Spec : Prop :=
  ∀ n, P17907912244857027204.a n = A029082 n

end A029082

/-! ## A029082.P16915663389210360428

`∑[A025825(n)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029082.P16915663389210360428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025825 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A029082.P16915663389210360428

namespace A029082

/-- `∑[A025825(n)]-a(n-2)` -/
def P16915663389210360428.Spec : Prop :=
  ∀ n, P16915663389210360428.a n = A029082 n

end A029082

/-! ## A029082.P5200186082923544448

`A025874(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029082.P5200186082923544448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025874 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029082.P5200186082923544448

namespace A029082

/-- `A025874(char[1]+n)+a(n-1)` -/
def P5200186082923544448.Spec : Prop :=
  ∀ n, P5200186082923544448.a n = A029082 n

end A029082

/-! ## A029082.P6175892546965783654

`A029190(abs(1-n))+A029190(n)`
-/

namespace A029082.P6175892546965783654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 |1 - (n : ℤ)|.toNat + A029190 n

end

end A029082.P6175892546965783654

namespace A029082

/-- `A029190(abs(1-n))+A029190(n)` -/
def P6175892546965783654.Spec : Prop :=
  ∀ n, P6175892546965783654.a n = A029082 n

end A029082

/-! ## A029082.P2115196338195175439

`A029057(n+1)-A029262(n+1)`
-/

namespace A029082.P2115196338195175439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (n + 1) - A029262 (n + 1)

end

end A029082.P2115196338195175439

namespace A029082

/-- `A029057(n+1)-A029262(n+1)` -/
def P2115196338195175439.Spec : Prop :=
  ∀ n, P2115196338195175439.a n = A029082 n

end A029082

/-! ## A029082.P16013864202539349193

`A029081(n+1)-A029376(n+1)`
-/

namespace A029082.P16013864202539349193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 (n + 1) - A029376 (n + 1)

end

end A029082.P16013864202539349193

namespace A029082

/-- `A029081(n+1)-A029376(n+1)` -/
def P16013864202539349193.Spec : Prop :=
  ∀ n, P16013864202539349193.a n = A029082 n

end A029082

/-!
# A029083: Expansion of 1/((1-x)(1-x^4)(1-x^10)(1-x^11)).

The programs for A029083, the canonical program `A029083.P9950429381708833334` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029083 has offset 0).

The definition of A029083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029083.P9950429381708833334

`A029030(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029083

/-- `A029030(n)-a(n-2)` -/
def P9950429381708833334.Spec : Prop :=
  ∀ n, P9950429381708833334.a n = A029083 n

theorem P9950429381708833334.correct : P9950429381708833334.Spec := by
  intro n
  simp only [A029083]

end A029083

/-! ## A029083.P6159300271975626988

`A025793(n)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A029083.P6159300271975626988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A025793 n + a (n - 4)

end

end A029083.P6159300271975626988

namespace A029083

/-- `A025793(n)+a(n-4)` -/
def P6159300271975626988.Spec : Prop :=
  ∀ n, P6159300271975626988.a n = A029083 n

end A029083

/-! ## A029083.P3250465536017376554

`A029191(abs(1-n))+A029191(n)`
-/

namespace A029083.P3250465536017376554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029191 |1 - (n : ℤ)|.toNat + A029191 n

end

end A029083.P3250465536017376554

namespace A029083

/-- `A029191(abs(1-n))+A029191(n)` -/
def P3250465536017376554.Spec : Prop :=
  ∀ n, P3250465536017376554.a n = A029083 n

end A029083

/-! ## A029083.P14402640008344666075

`A029060(n)+A029075(n)-A029052(n)`
-/

namespace A029083.P14402640008344666075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029060 n + (A029075 n - A029052 n)

end

end A029083.P14402640008344666075

namespace A029083

/-- `A029060(n)+A029075(n)-A029052(n)` -/
def P14402640008344666075.Spec : Prop :=
  ∀ n, P14402640008344666075.a n = A029083 n

end A029083

/-! ## A029083.P3794756409244922681

`A029098(n+1)-A025921(n+1)`
-/

namespace A029083.P3794756409244922681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029098 (n + 1) - A025921 (n + 1)

end

end A029083.P3794756409244922681

namespace A029083

/-- `A029098(n+1)-A025921(n+1)` -/
def P3794756409244922681.Spec : Prop :=
  ∀ n, P3794756409244922681.a n = A029083 n

end A029083

/-! ## A029083.P10457368211609465646

`A029060(n+1)-A029269(n+1)`
-/

namespace A029083.P10457368211609465646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029060 (n + 1) - A029269 (n + 1)

end

end A029083.P10457368211609465646

namespace A029083

/-- `A029060(n+1)-A029269(n+1)` -/
def P10457368211609465646.Spec : Prop :=
  ∀ n, P10457368211609465646.a n = A029083 n

end A029083

/-!
# A029084: Expansion of 1/((1-x)(1-x^4)(1-x^11)(1-x^12)).

The programs for A029084, the canonical program `A029084.P1492728196900736452` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029084 has offset 0).

The definition of A029084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029084.P12588550805172775139

`∑[A025875(n)]`
-/

namespace A029084.P12588550805172775139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029084.P12588550805172775139

namespace A029084

/-- `∑[A025875(n)]` -/
def P12588550805172775139.Spec : Prop :=
  ∀ n, P12588550805172775139.a n = A029084 n

end A029084

/-! ## A029084.P1492728196900736452

`A029031(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029084

/-- `A029031(n)-a(n-2)` -/
def P1492728196900736452.Spec : Prop :=
  ∀ n, P1492728196900736452.a n = A029084 n

theorem P1492728196900736452.correct : P1492728196900736452.Spec := by
  intro n
  simp only [A029084]

end A029084

/-! ## A029084.P6486836543096715472

`A025875(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029084.P6486836543096715472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025875 n + a (A023443 n).toNat

end

end A029084.P6486836543096715472

namespace A029084

/-- `A025875(n)+a(A023443(n))` -/
def P6486836543096715472.Spec : Prop :=
  ∀ n, P6486836543096715472.a n = A029084 n

end A029084

/-! ## A029084.P18134150066980117290

`a(n-1)+A025875(n)+A000007(n)` with `a(0)=1`
-/

namespace A029084.P18134150066980117290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025875 n + A000007 n)

end

end A029084.P18134150066980117290

namespace A029084

/-- `a(n-1)+A025875(n)+A000007(n)` -/
def P18134150066980117290.Spec : Prop :=
  ∀ n, P18134150066980117290.a n = A029084 n

end A029084

/-! ## A029084.P13499741993567469610

`a(n-1)+A025875(n)+A000038(n)` with `a(0)=1`
-/

namespace A029084.P13499741993567469610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025875 n + A000038 n)

end

end A029084.P13499741993567469610

namespace A029084

/-- `a(n-1)+A025875(n)+A000038(n)` -/
def P13499741993567469610.Spec : Prop :=
  ∀ n, P13499741993567469610.a n = A029084 n

end A029084

/-! ## A029084.P3900445790439944902

`a(n-1)+A025875(n)%A000290(n)` with `a(0)=1`
-/

namespace A029084.P3900445790439944902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025875 n) (A000290 n)

end

end A029084.P3900445790439944902

namespace A029084

/-- `a(n-1)+A025875(n)%A000290(n)` -/
def P3900445790439944902.Spec : Prop :=
  ∀ n, P3900445790439944902.a n = A029084 n

end A029084

/-! ## A029084.P18339072396325991965

`A029192(abs(A023443(n)))+A029192(n)`
-/

namespace A029084.P18339072396325991965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 |A023443 n|.toNat + A029192 n

end

end A029084.P18339072396325991965

namespace A029084

/-- `A029192(abs(A023443(n)))+A029192(n)` -/
def P18339072396325991965.Spec : Prop :=
  ∀ n, P18339072396325991965.a n = A029084 n

end A029084

/-! ## A029084.P17781198822154542706

`A029062(n)+A029079(n)-A029057(n)`
-/

namespace A029084.P17781198822154542706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029062 n + (A029079 n - A029057 n)

end

end A029084.P17781198822154542706

namespace A029084

/-- `A029062(n)+A029079(n)-A029057(n)` -/
def P17781198822154542706.Spec : Prop :=
  ∀ n, P17781198822154542706.a n = A029084 n

end A029084

/-! ## A029084.P4018252164094155957

`A029077(n)+A029105(n)-A029094(n)`
-/

namespace A029084.P4018252164094155957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029077 n + (A029105 n - A029094 n)

end

end A029084.P4018252164094155957

namespace A029084

/-- `A029077(n)+A029105(n)-A029094(n)` -/
def P4018252164094155957.Spec : Prop :=
  ∀ n, P4018252164094155957.a n = A029084 n

end A029084

/-! ## A029084.P2999235825055436310

`a(n-1)-(A293403(n)-A293404(n))*A025875(n)` with `a(0)=1`
-/

namespace A029084.P2999235825055436310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A293403 n - A293404 n) * A025875 n

end

end A029084.P2999235825055436310

namespace A029084

/-- `a(n-1)-(A293403(n)-A293404(n))*A025875(n)` -/
def P2999235825055436310.Spec : Prop :=
  ∀ n, P2999235825055436310.a n = A029084 n

end A029084

/-! ## A029084.P5074756675670973492

`A029062(n+1)-A029271(n+1)`
-/

namespace A029084.P5074756675670973492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029062 (n + 1) - A029271 (n + 1)

end

end A029084.P5074756675670973492

namespace A029084

/-- `A029062(n+1)-A029271(n+1)` -/
def P5074756675670973492.Spec : Prop :=
  ∀ n, P5074756675670973492.a n = A029084 n

end A029084

/-! ## A029084.P17608937247427346211

`A025875(n)+a(A025581(A000124(n)))` with `a(0)=1`
-/

namespace A029084.P17608937247427346211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025875 n + a (A025581 (A000124 n).toNat).toNat

end

end A029084.P17608937247427346211

namespace A029084

/-- `A025875(n)+a(A025581(A000124(n)))` -/
def P17608937247427346211.Spec : Prop :=
  ∀ n, P17608937247427346211.a n = A029084 n

end A029084

/-!
# A029085: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^7)).

The programs for A029085, the canonical program `A029085.P3231664494702548784` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029085 has offset 0).

The definition of A029085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029085.P334917883670739236

`∑[A025876(n)]`
-/

namespace A029085.P334917883670739236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029085.P334917883670739236

namespace A029085

/-- `∑[A025876(n)]` -/
def P334917883670739236.Spec : Prop :=
  ∀ n, P334917883670739236.a n = A029085 n

end A029085

/-! ## A029085.P3231664494702548784

`A008673(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029085

/-- `A008673(n)-a(n-3)` -/
def P3231664494702548784.Spec : Prop :=
  ∀ n, P3231664494702548784.a n = A029085 n

theorem P3231664494702548784.correct : P3231664494702548784.Spec := by
  intro n
  simp only [A029085]

end A029085

/-! ## A029085.P714564179765842565

`A029193(abs(A023443(n)))+A029193(n)`
-/

namespace A029085.P714564179765842565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029193 |A023443 n|.toNat + A029193 n

end

end A029085.P714564179765842565

namespace A029085

/-- `A029193(abs(A023443(n)))+A029193(n)` -/
def P714564179765842565.Spec : Prop :=
  ∀ n, P714564179765842565.a n = A029085 n

end A029085

/-! ## A029085.P5625078150818771085

`A029234(2*n)`
-/

namespace A029085.P5625078150818771085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (2 * n)

end

end A029085.P5625078150818771085

namespace A029085

/-- `A029234(2*n)` -/
def P5625078150818771085.Spec : Prop :=
  ∀ n, P5625078150818771085.a n = A029085 n

end A029085

/-! ## A029085.P6873540214866824575

`∑[A025916(2*n)]`
-/

namespace A029085.P6873540214866824575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025916 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029085.P6873540214866824575

namespace A029085

/-- `∑[A025916(2*n)]` -/
def P6873540214866824575.Spec : Prop :=
  ∀ n, P6873540214866824575.a n = A029085 n

end A029085

/-! ## A029085.P15391936003102219005

`or(char[1], A029234(n+n))`
-/

namespace A029085.P15391936003102219005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A029234 (n + n))

end

end A029085.P15391936003102219005

namespace A029085

/-- `or(char[1], A029234(n+n))` -/
def P15391936003102219005.Spec : Prop :=
  ∀ n, P15391936003102219005.a n = A029085 n

end A029085

/-! ## A029085.P8883670066750724145

`A025916(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029085.P8883670066750724145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025916 (n + n) + a (n - 1)

end

end A029085.P8883670066750724145

namespace A029085

/-- `A025916(n+n)+a(n-1)` -/
def P8883670066750724145.Spec : Prop :=
  ∀ n, P8883670066750724145.a n = A029085 n

end A029085

/-! ## A029085.P2788136109593150022

`∑[A029421(2*n)-A029421(2*n+1)]`
-/

namespace A029085.P2788136109593150022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029421 (2 * n) - A029421 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029085.P2788136109593150022

namespace A029085

/-- `∑[A029421(2*n)-A029421(2*n+1)]` -/
def P2788136109593150022.Spec : Prop :=
  ∀ n, P2788136109593150022.a n = A029085 n

end A029085

/-! ## A029085.P15645445143109571938

`A029234(A005843(n))%A017186(n)`
-/

namespace A029085.P15645445143109571938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029234 (A005843 n).toNat) (A017186 n)

end

end A029085.P15645445143109571938

namespace A029085

/-- `A029234(A005843(n))%A017186(n)` -/
def P15645445143109571938.Spec : Prop :=
  ∀ n, P15645445143109571938.a n = A029085 n

end A029085

/-! ## A029085.P506443367941134566

`A029336(2*n+5)`
-/

namespace A029085.P506443367941134566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029336 (2 * n + 5)

end

end A029085.P506443367941134566

namespace A029085

/-- `A029336(2*n+5)` -/
def P506443367941134566.Spec : Prop :=
  ∀ n, P506443367941134566.a n = A029085 n

end A029085

/-! ## A029085.P5231877540076191266

`A029234(A144396(n+2))+A025876(n)`
-/

namespace A029085.P5231877540076191266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (A144396 (n + 2)).toNat + A025876 n

end

end A029085.P5231877540076191266

namespace A029085

/-- `A029234(A144396(n+2))+A025876(n)` -/
def P5231877540076191266.Spec : Prop :=
  ∀ n, P5231877540076191266.a n = A029085 n

end A029085

/-! ## A029085.P589113719154610368

`lcm(A029234(A168203(n+1)), A064179(n+1))`
-/

namespace A029085.P589113719154610368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029234 (A168203 (n + 1)).toNat) (A064179 (n + 1))

end

end A029085.P589113719154610368

namespace A029085

/-- `lcm(A029234(A168203(n+1)), A064179(n+1))` -/
def P589113719154610368.Spec : Prop :=
  ∀ n, (P589113719154610368.a n : ℤ) = A029085 n

end A029085

/-! ## A029085.P1381935469909679392

`A029234(A168203(n+1))+A001489(n)+n`
-/

namespace A029085.P1381935469909679392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (A168203 (n + 1)).toNat + (A001489 n + (n : ℤ))

end

end A029085.P1381935469909679392

namespace A029085

/-- `A029234(A168203(n+1))+A001489(n)+n` -/
def P1381935469909679392.Spec : Prop :=
  ∀ n, P1381935469909679392.a n = A029085 n

end A029085

/-! ## A029085.P16127912222501060532

`A134746(A186647(n+1))+A029234(n+n)`
-/

namespace A029085.P16127912222501060532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (A186647 (n + 1)).toNat + A029234 (n + n)

end

end A029085.P16127912222501060532

namespace A029085

/-- `A134746(A186647(n+1))+A029234(n+n)` -/
def P16127912222501060532.Spec : Prop :=
  ∀ n, P16127912222501060532.a n = A029085 n

end A029085

/-!
# A029086: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^8)).

The programs for A029086, the canonical program `A029086.P7922153744530886024` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029086 has offset 0).

The definition of A029086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029086.P7922153744530886024

`∑[A025877(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029086

/-- `∑[A025877(n)]` -/
def P7922153744530886024.Spec : Prop :=
  ∀ n, P7922153744530886024.a n = A029086 n

theorem P7922153744530886024.correct : P7922153744530886024.Spec := by
  intro n
  simp only [A029086]

end A029086

/-! ## A029086.P8772710232466568385

`A029040(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029086.P8772710232466568385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029040 n - a (n - 3)

end

end A029086.P8772710232466568385

namespace A029086

/-- `A029040(n)-a(n-3)` -/
def P8772710232466568385.Spec : Prop :=
  ∀ n, P8772710232466568385.a n = A029086 n

end A029086

/-! ## A029086.P2755759288535506642

`∑[A029194(n)-A029288(A166517(n))]`
-/

namespace A029086.P2755759288535506642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 n - A029288 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029086.P2755759288535506642

namespace A029086

/-- `∑[A029194(n)-A029288(A166517(n))]` -/
def P2755759288535506642.Spec : Prop :=
  ∀ n, P2755759288535506642.a n = A029086 n

end A029086

/-! ## A029086.P2366188465554162938

`A029288(A166517(n)-1)+A029194(n)`
-/

namespace A029086.P2366188465554162938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A166517 n - 1).toNat + A029194 n

end

end A029086.P2366188465554162938

namespace A029086

/-- `A029288(A166517(n)-1)+A029194(n)` -/
def P2366188465554162938.Spec : Prop :=
  ∀ n, P2366188465554162938.a n = A029086 n

end A029086

/-! ## A029086.P15150643047821967672

`∑[A025893(A166517(n+1)-1)]`
-/

namespace A029086.P15150643047821967672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A166517 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029086.P15150643047821967672

namespace A029086

/-- `∑[A025893(A166517(n+1)-1)]` -/
def P15150643047821967672.Spec : Prop :=
  ∀ n, P15150643047821967672.a n = A029086 n

end A029086

/-! ## A029086.P12065763247426736709

`∑[A025893(A168284(n+1)-n)]`
-/

namespace A029086.P12065763247426736709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A168284 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029086.P12065763247426736709

namespace A029086

/-- `∑[A025893(A168284(n+1)-n)]` -/
def P12065763247426736709.Spec : Prop :=
  ∀ n, P12065763247426736709.a n = A029086 n

end A029086

/-! ## A029086.P17688519948688995680

`∑[A025893(A159966(n)+A004525(n))]`
-/

namespace A029086.P17688519948688995680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A159966 n + A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029086.P17688519948688995680

namespace A029086

/-- `∑[A025893(A159966(n)+A004525(n))]` -/
def P17688519948688995680.Spec : Prop :=
  ∀ n, P17688519948688995680.a n = A029086 n

end A029086

/-! ## A029086.P6513818895854784162

`∑[A025893(A016789(n)-A166517(n))]`
-/

namespace A029086.P6513818895854784162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A016789 n - A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029086.P6513818895854784162

namespace A029086

/-- `∑[A025893(A016789(n)-A166517(n))]` -/
def P6513818895854784162.Spec : Prop :=
  ∀ n, P6513818895854784162.a n = A029086 n

end A029086

/-! ## A029086.P249715386023568790

`A029288(A166517(n+1))+A029194(n)`
-/

namespace A029086.P249715386023568790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A166517 (n + 1)).toNat + A029194 n

end

end A029086.P249715386023568790

namespace A029086

/-- `A029288(A166517(n+1))+A029194(n)` -/
def P249715386023568790.Spec : Prop :=
  ∀ n, P249715386023568790.a n = A029086 n

end A029086

/-! ## A029086.P7878223398242873562

`∑[A025893(A166517(n+2))]`
-/

namespace A029086.P7878223398242873562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A166517 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029086.P7878223398242873562

namespace A029086

/-- `∑[A025893(A166517(n+2))]` -/
def P7878223398242873562.Spec : Prop :=
  ∀ n, P7878223398242873562.a n = A029086 n

end A029086

/-! ## A029086.P17779172174498052196

`∑[A025893(A168200(n+1)+1)]`
-/

namespace A029086.P17779172174498052196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A168200 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029086.P17779172174498052196

namespace A029086

/-- `∑[A025893(A168200(n+1)+1)]` -/
def P17779172174498052196.Spec : Prop :=
  ∀ n, P17779172174498052196.a n = A029086 n

end A029086

/-!
# A029087: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^9)).

The programs for A029087, the canonical program `A029087.P3165810773826742856` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029087 has offset 0).

The definition of A029087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029087.P2613841118238261360

`∑[A025878(n)]`
-/

namespace A029087.P2613841118238261360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029087.P2613841118238261360

namespace A029087

/-- `∑[A025878(n)]` -/
def P2613841118238261360.Spec : Prop :=
  ∀ n, P2613841118238261360.a n = A029087 n

end A029087

/-! ## A029087.P3165810773826742856

`A029041(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029087

/-- `A029041(n)-a(n-3)` -/
def P3165810773826742856.Spec : Prop :=
  ∀ n, P3165810773826742856.a n = A029087 n

theorem P3165810773826742856.correct : P3165810773826742856.Spec := by
  intro n
  simp only [A029087]

end A029087

/-! ## A029087.P7622861564747822242

`A029195(abs(A023443(n)))+A029195(n)`
-/

namespace A029087.P7622861564747822242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029195 |A023443 n|.toNat + A029195 n

end

end A029087.P7622861564747822242

namespace A029087

/-- `A029195(abs(A023443(n)))+A029195(n)` -/
def P7622861564747822242.Spec : Prop :=
  ∀ n, P7622861564747822242.a n = A029087 n

end A029087

/-! ## A029087.P5898110867099996563

`A029242(2*n)`
-/

namespace A029087.P5898110867099996563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (2 * n)

end

end A029087.P5898110867099996563

namespace A029087

/-- `A029242(2*n)` -/
def P5898110867099996563.Spec : Prop :=
  ∀ n, P5898110867099996563.a n = A029087 n

end A029087

/-! ## A029087.P8850131024971052830

`∑[A025924(2*n)]`
-/

namespace A029087.P8850131024971052830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029087.P8850131024971052830

namespace A029087

/-- `∑[A025924(2*n)]` -/
def P8850131024971052830.Spec : Prop :=
  ∀ n, P8850131024971052830.a n = A029087 n

end A029087

/-! ## A029087.P131334078000798294

`A025924(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029087.P131334078000798294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025924 (n + n) + a (n - 1)

end

end A029087.P131334078000798294

namespace A029087

/-- `A025924(n+n)+a(n-1)` -/
def P131334078000798294.Spec : Prop :=
  ∀ n, P131334078000798294.a n = A029087 n

end A029087

/-! ## A029087.P3947823132251820744

`A029242(n+n)+val(A034856(n+1), 3)`
-/

namespace A029087.P3947823132251820744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (n + n) + (SequenceMachineLib.valuation (A034856 (n + 1)).toNat 3 : ℤ)

end

end A029087.P3947823132251820744

namespace A029087

/-- `A029242(n+n)+val(A034856(n+1), 3)` -/
def P3947823132251820744.Spec : Prop :=
  ∀ n, P3947823132251820744.a n = A029087 n

end A029087

/-! ## A029087.P12768636555742987797

`∑[A029443(2*n)-A029443(2*n+1)]`
-/

namespace A029087.P12768636555742987797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 (2 * n) - A029443 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029087.P12768636555742987797

namespace A029087

/-- `∑[A029443(2*n)-A029443(2*n+1)]` -/
def P12768636555742987797.Spec : Prop :=
  ∀ n, P12768636555742987797.a n = A029087 n

end A029087

/-! ## A029087.P8515420434695297913

`A029242(n+n)+val(n+1, A001105(n+1))`
-/

namespace A029087.P8515420434695297913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (n + n) + (SequenceMachineLib.valuation (n + 1) (A001105 (n + 1)).toNat : ℤ)

end

end A029087.P8515420434695297913

namespace A029087

/-- `A029242(n+n)+val(n+1, A001105(n+1))` -/
def P8515420434695297913.Spec : Prop :=
  ∀ n, P8515420434695297913.a n = A029087 n

end A029087

/-! ## A029087.P2403575139892623597

`gcd(A000038(n), A029242(A005843(n)))`
-/

namespace A029087.P2403575139892623597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A029242 (A005843 n).toNat)

end

end A029087.P2403575139892623597

namespace A029087

/-- `gcd(A000038(n), A029242(A005843(n)))` -/
def P2403575139892623597.Spec : Prop :=
  ∀ n, (P2403575139892623597.a n : ℤ) = A029087 n

end A029087

/-! ## A029087.P3979367075805094753

`or(A000007(n), A029242(A005843(n)))`
-/

namespace A029087.P3979367075805094753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A029242 (A005843 n).toNat)

end

end A029087.P3979367075805094753

namespace A029087

/-- `or(A000007(n), A029242(A005843(n)))` -/
def P3979367075805094753.Spec : Prop :=
  ∀ n, P3979367075805094753.a n = A029087 n

end A029087

/-! ## A029087.P6477844478933743735

`A029242(A005843(n))/A001263(A184389(n+1))`
-/

namespace A029087.P6477844478933743735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029242 (A005843 n).toNat : ℚ) / (A001263 (A184389 (n + 1)).toNat : ℚ)

end

end A029087.P6477844478933743735

namespace A029087

/-- `A029242(A005843(n))/A001263(A184389(n+1))` -/
def P6477844478933743735.Spec : Prop :=
  ∀ n, P6477844478933743735.a n = (A029087 n : ℚ)

end A029087

/-!
# A029088: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^10)).

The programs for A029088, the canonical program `A029088.P5865512987119133475` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029088 has offset 0).

The definition of A029088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029088.P7583782884505085591

`∑[A025879(n)]`
-/

namespace A029088.P7583782884505085591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029088.P7583782884505085591

namespace A029088

/-- `∑[A025879(n)]` -/
def P7583782884505085591.Spec : Prop :=
  ∀ n, P7583782884505085591.a n = A029088 n

end A029088

/-! ## A029088.P5865512987119133475

`A029042(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029088

/-- `A029042(n)-a(n-3)` -/
def P5865512987119133475.Spec : Prop :=
  ∀ n, P5865512987119133475.a n = A029088 n

theorem P5865512987119133475.correct : P5865512987119133475.Spec := by
  intro n
  simp only [A029088]

end A029088

/-! ## A029088.P9576894323945421097

`A029147(n)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029088.P9576894323945421097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029147 n + a (n - 1) - a (n - 2)

end

end A029088.P9576894323945421097

namespace A029088

/-- `A029147(n)+a(n-1)-a(n-2)` -/
def P9576894323945421097.Spec : Prop :=
  ∀ n, P9576894323945421097.a n = A029088 n

end A029088

/-! ## A029088.P8558173151468911377

`A025879(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029088.P8558173151468911377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025879 n + a (A023443 n).toNat

end

end A029088.P8558173151468911377

namespace A029088

/-- `A025879(n)+a(A023443(n))` -/
def P8558173151468911377.Spec : Prop :=
  ∀ n, P8558173151468911377.a n = A029088 n

end A029088

/-! ## A029088.P3925817585884623929

`A029196(abs(1-n))+A029196(n)`
-/

namespace A029088.P3925817585884623929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029196 |1 - (n : ℤ)|.toNat + A029196 n

end

end A029088.P3925817585884623929

namespace A029088

/-- `A029196(abs(1-n))+A029196(n)` -/
def P3925817585884623929.Spec : Prop :=
  ∀ n, P3925817585884623929.a n = A029088 n

end A029088

/-! ## A029088.P6181720867912273254

`a(n-1)+A025879(n)%A000096(n)` with `a(0)=1`
-/

namespace A029088.P6181720867912273254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025879 n) (A000096 n)

end

end A029088.P6181720867912273254

namespace A029088

/-- `a(n-1)+A025879(n)%A000096(n)` -/
def P6181720867912273254.Spec : Prop :=
  ∀ n, P6181720867912273254.a n = A029088 n

end A029088

/-! ## A029088.P12031503845246298162

`A001222(2^A025879(n))+a(n-1)` with `a(0)=1`
-/

namespace A029088.P12031503845246298162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025879 n : ℤ))).toNat + a (n - 1)

end

end A029088.P12031503845246298162

namespace A029088

/-- `A001222(2^A025879(n))+a(n-1)` -/
def P12031503845246298162.Spec : Prop :=
  ∀ n, P12031503845246298162.a n = A029088 n

end A029088

/-!
# A029089: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^11)).

The programs for A029089, the canonical program `A029089.P17493476904949368248` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029089 has offset 0).

The definition of A029089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029089.P13407899709924154050

`∑[A025880(n)]`
-/

namespace A029089.P13407899709924154050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029089.P13407899709924154050

namespace A029089

/-- `∑[A025880(n)]` -/
def P13407899709924154050.Spec : Prop :=
  ∀ n, P13407899709924154050.a n = A029089 n

end A029089

/-! ## A029089.P17493476904949368248

`A029043(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029089

/-- `A029043(n)-a(n-3)` -/
def P17493476904949368248.Spec : Prop :=
  ∀ n, P17493476904949368248.a n = A029089 n

theorem P17493476904949368248.correct : P17493476904949368248.Spec := by
  intro n
  simp only [A029089]

end A029089

/-! ## A029089.P14373175791896351222

`A029244(2*n)`
-/

namespace A029089.P14373175791896351222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (2 * n)

end

end A029089.P14373175791896351222

namespace A029089

/-- `A029244(2*n)` -/
def P14373175791896351222.Spec : Prop :=
  ∀ n, P14373175791896351222.a n = A029089 n

end A029089

/-! ## A029089.P10851878447828003552

`∑[A025926(2*n)]`
-/

namespace A029089.P10851878447828003552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029089.P10851878447828003552

namespace A029089

/-- `∑[A025926(2*n)]` -/
def P10851878447828003552.Spec : Prop :=
  ∀ n, P10851878447828003552.a n = A029089 n

end A029089

/-! ## A029089.P9046408774363052847

`A025926(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A029089.P9046408774363052847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025926 (n + n) + a (n - 1)

end

end A029089.P9046408774363052847

namespace A029089

/-- `A025926(n+n)+a(n-1)` -/
def P9046408774363052847.Spec : Prop :=
  ∀ n, P9046408774363052847.a n = A029089 n

end A029089

/-! ## A029089.P361283644884080274

`A029244(n+n)/gcd(n, n+1)`
-/

namespace A029089.P361283644884080274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029244 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A029089.P361283644884080274

namespace A029089

/-- `A029244(n+n)/gcd(n, n+1)` -/
def P361283644884080274.Spec : Prop :=
  ∀ n, P361283644884080274.a n = (A029089 n : ℚ)

end A029089

/-! ## A029089.P17528191295281991034

`A029244(n+n)+A025439(A220104(n+1))`
-/

namespace A029089.P17528191295281991034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (n + n) + A025439 (A220104 (n + 1)).toNat

end

end A029089.P17528191295281991034

namespace A029089

/-- `A029244(n+n)+A025439(A220104(n+1))` -/
def P17528191295281991034.Spec : Prop :=
  ∀ n, P17528191295281991034.a n = A029089 n

end A029089

/-! ## A029089.P4859722494061722415

`A025926(2*n)+A029240(2*n)-A029445(2*n)`
-/

namespace A029089.P4859722494061722415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n) + (A029240 (2 * n) - A029445 (2 * n))

end

end A029089.P4859722494061722415

namespace A029089

/-- `A025926(2*n)+A029240(2*n)-A029445(2*n)` -/
def P4859722494061722415.Spec : Prop :=
  ∀ n, P4859722494061722415.a n = A029089 n

end A029089

/-! ## A029089.P16913120316738959904

`or(A029244(n+n), A255308(∑[n]))`
-/

namespace A029089.P16913120316738959904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029244 (n + n)) (A255308 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A029089.P16913120316738959904

namespace A029089

/-- `or(A029244(n+n), A255308(∑[n]))` -/
def P16913120316738959904.Spec : Prop :=
  ∀ n, P16913120316738959904.a n = A029089 n

end A029089

/-! ## A029089.P13554875714253691539

`A304572(∑[n+1])+A029244(n+n)`
-/

namespace A029089.P13554875714253691539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304572 (∑ j ∈ Finset.range (n + 1), f1 j) + A029244 (n + n)

end

end A029089.P13554875714253691539

namespace A029089

/-- `A304572(∑[n+1])+A029244(n+n)` -/
def P13554875714253691539.Spec : Prop :=
  ∀ n, P13554875714253691539.a n = A029089 n

end A029089

/-! ## A029089.P8180271621110973455

`A029244(n+n)+A007949(A232089(n))`
-/

namespace A029089.P8180271621110973455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (n + n) + A007949 (A232089 n).toNat

end

end A029089.P8180271621110973455

namespace A029089

/-- `A029244(n+n)+A007949(A232089(n))` -/
def P8180271621110973455.Spec : Prop :=
  ∀ n, P8180271621110973455.a n = A029089 n

end A029089

/-!
# A029090: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^12)).

The programs for A029090, the canonical program `A029090.P9337067161748659206` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029090 has offset 0).

The definition of A029090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029090.P9337067161748659206

`∑[A025881(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029090

/-- `∑[A025881(n)]` -/
def P9337067161748659206.Spec : Prop :=
  ∀ n, P9337067161748659206.a n = A029090 n

theorem P9337067161748659206.correct : P9337067161748659206.Spec := by
  intro n
  simp only [A029090]

end A029090

/-! ## A029090.P12259731372278614272

`∑[A025857(abs(xor(1, 1-n)))]`
-/

namespace A029090.P12259731372278614272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 |Int.xor 1 (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029090.P12259731372278614272

namespace A029090

/-- `∑[A025857(abs(xor(1, 1-n)))]` -/
def P12259731372278614272.Spec : Prop :=
  ∀ n, P12259731372278614272.a n = A029090 n

end A029090

/-! ## A029090.P6063829045169594213

`A029044(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029090.P6063829045169594213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029044 n - a (n - 3)

end

end A029090.P6063829045169594213

namespace A029090

/-- `A029044(n)-a(n-3)` -/
def P6063829045169594213.Spec : Prop :=
  ∀ n, P6063829045169594213.a n = A029090 n

end A029090

/-! ## A029090.P1649947799675403501

`∑[A025840(n)]-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029090.P1649947799675403501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 3)

end

end A029090.P1649947799675403501

namespace A029090

/-- `∑[A025840(n)]-a(n-3)` -/
def P1649947799675403501.Spec : Prop :=
  ∀ n, P1649947799675403501.a n = A029090 n

end A029090

/-! ## A029090.P15145481848820262625

`A025881(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029090.P15145481848820262625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025881 n + a (A023443 n).toNat

end

end A029090.P15145481848820262625

namespace A029090

/-- `A025881(n)+a(A023443(n))` -/
def P15145481848820262625.Spec : Prop :=
  ∀ n, P15145481848820262625.a n = A029090 n

end A029090

/-! ## A029090.P11974297395736202428

`A029198(abs(A024000(n)))+A029198(n)`
-/

namespace A029090.P11974297395736202428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 |A024000 n|.toNat + A029198 n

end

end A029090.P11974297395736202428

namespace A029090

/-- `A029198(abs(A024000(n)))+A029198(n)` -/
def P11974297395736202428.Spec : Prop :=
  ∀ n, P11974297395736202428.a n = A029090 n

end A029090

/-! ## A029090.P15758092378732303013

`∑[A025886(n)]+A029382(n)-A025886(n)`
-/

namespace A029090.P15758092378732303013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029382 n - A025886 n)

end

end A029090.P15758092378732303013

namespace A029090

/-- `∑[A025886(n)]+A029382(n)-A025886(n)` -/
def P15758092378732303013.Spec : Prop :=
  ∀ n, P15758092378732303013.a n = A029090 n

end A029090

/-! ## A029090.P13813207860367180995

`A061579(A061579(a(n-1)))+A025881(n)` with `a(0)=1`
-/

namespace A029090.P13813207860367180995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061579 (A061579 (a (n - 1)).toNat).toNat + A025881 n

end

end A029090.P13813207860367180995

namespace A029090

/-- `A061579(A061579(a(n-1)))+A025881(n)` -/
def P13813207860367180995.Spec : Prop :=
  ∀ n, P13813207860367180995.a n = A029090 n

end A029090

/-!
# A029091: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^8)).

The programs for A029091, the canonical program `A029091.P4227717721528143562` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029091 has offset 0).

The definition of A029091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029091.P4227717721528143562

`∑[A025882(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029091

/-- `∑[A025882(n)]` -/
def P4227717721528143562.Spec : Prop :=
  ∀ n, P4227717721528143562.a n = A029091 n

theorem P4227717721528143562.correct : P4227717721528143562.Spec := by
  intro n
  simp only [A029091]

end A029091

/-! ## A029091.P2855383358889221239

`A025882(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029091.P2855383358889221239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025882 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029091.P2855383358889221239

namespace A029091

/-- `A025882(char[1]+n)+a(n-1)` -/
def P2855383358889221239.Spec : Prop :=
  ∀ n, P2855383358889221239.a n = A029091 n

end A029091

/-! ## A029091.P12551290881918002342

`A025882(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A029091.P12551290881918002342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025882 n - (A000007 n - a (n - 1))

end

end A029091.P12551290881918002342

namespace A029091

/-- `A025882(n)-(A000007(n)-a(n-1))` -/
def P12551290881918002342.Spec : Prop :=
  ∀ n, P12551290881918002342.a n = A029091 n

end A029091

/-! ## A029091.P630021951891665171

`a(n-1)-2*n+A025882(n)+A005843(n)` with `a(0)=1`
-/

namespace A029091.P630021951891665171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (2 * n : ℤ) + (A025882 n + A005843 n)

end

end A029091.P630021951891665171

namespace A029091

/-- `a(n-1)-2*n+A025882(n)+A005843(n)` -/
def P630021951891665171.Spec : Prop :=
  ∀ n, P630021951891665171.a n = A029091 n

end A029091

/-! ## A029091.P3519321340269136753

`A029199(abs(A023443(n)))+A029199(n)`
-/

namespace A029091.P3519321340269136753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029199 |A023443 n|.toNat + A029199 n

end

end A029091.P3519321340269136753

namespace A029091

/-- `A029199(abs(A023443(n)))+A029199(n)` -/
def P3519321340269136753.Spec : Prop :=
  ∀ n, P3519321340269136753.a n = A029091 n

end A029091

/-! ## A029091.P3251874849025014247

`A029199(abs(A024000(n)))+A029199(n)`
-/

namespace A029091.P3251874849025014247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029199 |A024000 n|.toNat + A029199 n

end

end A029091.P3251874849025014247

namespace A029091

/-- `A029199(abs(A024000(n)))+A029199(n)` -/
def P3251874849025014247.Spec : Prop :=
  ∀ n, P3251874849025014247.a n = A029091 n

end A029091

/-!
# A029092: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^9)).

The programs for A029092, the canonical program `A029092.P6860833474771201962` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029092 has offset 0).

The definition of A029092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029092.P6860833474771201962

`∑[A025883(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029092

/-- `∑[A025883(n)]` -/
def P6860833474771201962.Spec : Prop :=
  ∀ n, P6860833474771201962.a n = A029092 n

theorem P6860833474771201962.correct : P6860833474771201962.Spec := by
  intro n
  simp only [A029092]

end A029092

/-! ## A029092.P8792305859547405210

`A025883(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029092.P8792305859547405210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025883 n + a (A023443 n).toNat

end

end A029092.P8792305859547405210

namespace A029092

/-- `A025883(n)+a(A023443(n))` -/
def P8792305859547405210.Spec : Prop :=
  ∀ n, P8792305859547405210.a n = A029092 n

end A029092

/-! ## A029092.P7542565216017882120

`A029200(abs(1-n))+A029200(n)`
-/

namespace A029092.P7542565216017882120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029200 |1 - (n : ℤ)|.toNat + A029200 n

end

end A029092.P7542565216017882120

namespace A029092

/-- `A029200(abs(1-n))+A029200(n)` -/
def P7542565216017882120.Spec : Prop :=
  ∀ n, P7542565216017882120.a n = A029092 n

end A029092

/-! ## A029092.P9395316365496145693

`a(n-1)+A025883(n)%A000217(n)` with `a(0)=1`
-/

namespace A029092.P9395316365496145693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025883 n) (A000217 n)

end

end A029092.P9395316365496145693

namespace A029092

/-- `a(n-1)+A025883(n)%A000217(n)` -/
def P9395316365496145693.Spec : Prop :=
  ∀ n, P9395316365496145693.a n = A029092 n

end A029092

/-! ## A029092.P8073263248012514605

`A025883(gcd(n, A017270(n)))+a(n-1)` with `a(0)=1`
-/

namespace A029092.P8073263248012514605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025883 (Int.gcd (n : ℤ) (A017270 n)) + a (n - 1)

end

end A029092.P8073263248012514605

namespace A029092

/-- `A025883(gcd(n, A017270(n)))+a(n-1)` -/
def P8073263248012514605.Spec : Prop :=
  ∀ n, P8073263248012514605.a n = A029092 n

end A029092

/-! ## A029092.P646505504125791577

`A029204(abs(A023443(n)))+A029199(n)`
-/

namespace A029092.P646505504125791577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 |A023443 n|.toNat + A029199 n

end

end A029092.P646505504125791577

namespace A029092

/-- `A029204(abs(A023443(n)))+A029199(n)` -/
def P646505504125791577.Spec : Prop :=
  ∀ n, P646505504125791577.a n = A029092 n

end A029092

/-! ## A029092.P15566977949544093595

`A029215(abs(A023443(n)))+A029195(n)`
-/

namespace A029092.P15566977949544093595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029215 |A023443 n|.toNat + A029195 n

end

end A029092.P15566977949544093595

namespace A029092

/-- `A029215(abs(A023443(n)))+A029195(n)` -/
def P15566977949544093595.Spec : Prop :=
  ∀ n, P15566977949544093595.a n = A029092 n

end A029092

/-! ## A029092.P17930408793582243007

`A029074(n+1)-A029333(n+1)`
-/

namespace A029092.P17930408793582243007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 (n + 1) - A029333 (n + 1)

end

end A029092.P17930408793582243007

namespace A029092

/-- `A029074(n+1)-A029333(n+1)` -/
def P17930408793582243007.Spec : Prop :=
  ∀ n, P17930408793582243007.a n = A029092 n

end A029092

/-! ## A029092.P12416196510902243263

`A029091(n+1)-A029393(n+1)`
-/

namespace A029092.P12416196510902243263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029091 (n + 1) - A029393 (n + 1)

end

end A029092.P12416196510902243263

namespace A029092

/-- `A029091(n+1)-A029393(n+1)` -/
def P12416196510902243263.Spec : Prop :=
  ∀ n, P12416196510902243263.a n = A029092 n

end A029092

/-! ## A029092.P16085243944159102513

`A029363(2*n+7)`
-/

namespace A029092.P16085243944159102513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029363 (2 * n + 7)

end

end A029092.P16085243944159102513

namespace A029092

/-- `A029363(2*n+7)` -/
def P16085243944159102513.Spec : Prop :=
  ∀ n, P16085243944159102513.a n = A029092 n

end A029092

/-!
# A029093: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^10)).

The programs for A029093, the canonical program `A029093.P2140744132042808951` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029093 has offset 0).

The definition of A029093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029093.P17106725208181372153

`∑[A025884(n)]`
-/

namespace A029093.P17106725208181372153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029093.P17106725208181372153

namespace A029093

/-- `∑[A025884(n)]` -/
def P17106725208181372153.Spec : Prop :=
  ∀ n, P17106725208181372153.a n = A029093 n

end A029093

/-! ## A029093.P8809261891596049834

`A029201(abs(1-n))+A029201(n)`
-/

namespace A029093.P8809261891596049834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029201 |1 - (n : ℤ)|.toNat + A029201 n

end

end A029093.P8809261891596049834

namespace A029093

/-- `A029201(abs(1-n))+A029201(n)` -/
def P8809261891596049834.Spec : Prop :=
  ∀ n, P8809261891596049834.a n = A029093 n

end A029093

/-! ## A029093.P2140744132042808951

`A029053(n)+A029104(n)-A029061(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029093

/-- `A029053(n)+A029104(n)-A029061(n)` -/
def P2140744132042808951.Spec : Prop :=
  ∀ n, P2140744132042808951.a n = A029093 n

theorem P2140744132042808951.correct : P2140744132042808951.Spec := by
  intro n
  simp only [A029093]

end A029093

/-! ## A029093.P6701460716784427938

`A029092(n+1)-A029397(n+1)`
-/

namespace A029093.P6701460716784427938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029092 (n + 1) - A029397 (n + 1)

end

end A029093.P6701460716784427938

namespace A029093

/-- `A029092(n+1)-A029397(n+1)` -/
def P6701460716784427938.Spec : Prop :=
  ∀ n, P6701460716784427938.a n = A029093 n

end A029093

/-! ## A029093.P13106117143772661181

`∑[A025883(n+1)-Δ[A029397(n)]]`
-/

namespace A029093.P13106117143772661181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029397 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029093.P13106117143772661181

namespace A029093

/-- `∑[A025883(n+1)-Δ[A029397(n)]]` -/
def P13106117143772661181.Spec : Prop :=
  ∀ n, P13106117143772661181.a n = A029093 n

end A029093

/-! ## A029093.P6627575476536013654

`A028310(a(n-1))+A025884(n)` with `a(0)=1`
-/

namespace A029093.P6627575476536013654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025884 n

end

end A029093.P6627575476536013654

namespace A029093

/-- `A028310(a(n-1))+A025884(n)` -/
def P6627575476536013654.Spec : Prop :=
  ∀ n, P6627575476536013654.a n = A029093 n

end A029093

/-! ## A029093.P9082099573919916248

`A123108(2*a(n-1))+A025884(n)` with `a(0)=1`
-/

namespace A029093.P9082099573919916248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123108 (2 * a (n - 1)).toNat + A025884 n

end

end A029093.P9082099573919916248

namespace A029093

/-- `A123108(2*a(n-1))+A025884(n)` -/
def P9082099573919916248.Spec : Prop :=
  ∀ n, P9082099573919916248.a n = A029093 n

end A029093

/-!
# A029094: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^11)).

The programs for A029094, the canonical program `A029094.P13088550718798559260` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029094 has offset 0).

The definition of A029094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029094.P5899079514048437538

`∑[A025885(n)]`
-/

namespace A029094.P5899079514048437538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029094.P5899079514048437538

namespace A029094

/-- `∑[A025885(n)]` -/
def P5899079514048437538.Spec : Prop :=
  ∀ n, P5899079514048437538.a n = A029094 n

end A029094

/-! ## A029094.P13088550718798559260

`A029202(abs(1-n))+A029202(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029094

/-- `A029202(abs(1-n))+A029202(n)` -/
def P13088550718798559260.Spec : Prop :=
  ∀ n, P13088550718798559260.a n = A029094 n

theorem P13088550718798559260.correct : P13088550718798559260.Spec := by
  intro n
  simp only [A029094]

end A029094

/-! ## A029094.P11077980306028632975

`A029077(n)+A029105(n)-A029084(n)`
-/

namespace A029094.P11077980306028632975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029077 n + (A029105 n - A029084 n)

end

end A029094.P11077980306028632975

namespace A029094

/-- `A029077(n)+A029105(n)-A029084(n)` -/
def P11077980306028632975.Spec : Prop :=
  ∀ n, P11077980306028632975.a n = A029094 n

end A029094

/-! ## A029094.P14906972968918488207

`A029090(n)+A029126(n)-A029116(n)`
-/

namespace A029094.P14906972968918488207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029090 n + (A029126 n - A029116 n)

end

end A029094.P14906972968918488207

namespace A029094

/-- `A029090(n)+A029126(n)-A029116(n)` -/
def P14906972968918488207.Spec : Prop :=
  ∀ n, P14906972968918488207.a n = A029094 n

end A029094

/-! ## A029094.P11247698021909743371

`A029093(n+1)-A029400(n+1)`
-/

namespace A029094.P11247698021909743371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 (n + 1) - A029400 (n + 1)

end

end A029094.P11247698021909743371

namespace A029094

/-- `A029093(n+1)-A029400(n+1)` -/
def P11247698021909743371.Spec : Prop :=
  ∀ n, P11247698021909743371.a n = A029094 n

end A029094

/-! ## A029094.P3255378115925970888

`∑[A025870(n+1)-Δ[A029335(n)]]`
-/

namespace A029094.P3255378115925970888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029094.P3255378115925970888

namespace A029094

/-- `∑[A025870(n+1)-Δ[A029335(n)]]` -/
def P3255378115925970888.Spec : Prop :=
  ∀ n, P3255378115925970888.a n = A029094 n

end A029094

/-! ## A029094.P16967295688541526377

`A230980(A000040(a(n-1)))+A025885(n)` with `a(0)=1`
-/

namespace A029094.P16967295688541526377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230980 (A000040 (a (n - 1)).toNat).toNat + A025885 n

end

end A029094.P16967295688541526377

namespace A029094

/-- `A230980(A000040(a(n-1)))+A025885(n)` -/
def P16967295688541526377.Spec : Prop :=
  ∀ n, P16967295688541526377.a n = A029094 n

end A029094

/-!
# A029095: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^12)).

The programs for A029095, the canonical program `A029095.P4776285341174308375` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029095 has offset 0).

The definition of A029095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029095.P4776285341174308375

`∑[A025886(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029095

/-- `∑[A025886(n)]` -/
def P4776285341174308375.Spec : Prop :=
  ∀ n, P4776285341174308375.a n = A029095 n

theorem P4776285341174308375.correct : P4776285341174308375.Spec := by
  intro n
  simp only [A029095]

end A029095

/-! ## A029095.P9630189620383722857

`A025886(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029095.P9630189620383722857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025886 n + a (A023443 n).toNat

end

end A029095.P9630189620383722857

namespace A029095

/-- `A025886(n)+a(A023443(n))` -/
def P9630189620383722857.Spec : Prop :=
  ∀ n, P9630189620383722857.a n = A029095 n

end A029095

/-! ## A029095.P4464240078897643304

`A029203(abs(1-n))+A029203(n)`
-/

namespace A029095.P4464240078897643304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029203 |1 - (n : ℤ)|.toNat + A029203 n

end

end A029095.P4464240078897643304

namespace A029095

/-- `A029203(abs(1-n))+A029203(n)` -/
def P4464240078897643304.Spec : Prop :=
  ∀ n, P4464240078897643304.a n = A029095 n

end A029095

/-! ## A029095.P12798952592424649089

`a(n-1)+A025886(n)+A000007(n)` with `a(0)=1`
-/

namespace A029095.P12798952592424649089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025886 n + A000007 n)

end

end A029095.P12798952592424649089

namespace A029095

/-- `a(n-1)+A025886(n)+A000007(n)` -/
def P12798952592424649089.Spec : Prop :=
  ∀ n, P12798952592424649089.a n = A029095 n

end A029095

/-! ## A029095.P9489911901894002950

`A025886(gcd(n, A008592(n)))+a(n-1)` with `a(0)=1`
-/

namespace A029095.P9489911901894002950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025886 (Int.gcd (n : ℤ) (A008592 n)) + a (n - 1)

end

end A029095.P9489911901894002950

namespace A029095

/-- `A025886(gcd(n, A008592(n)))+a(n-1)` -/
def P9489911901894002950.Spec : Prop :=
  ∀ n, P9489911901894002950.a n = A029095 n

end A029095

/-! ## A029095.P15403212297353402682

`A025886(n)+A029108(n)-A025916(n)`
-/

namespace A029095.P15403212297353402682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 n + (A029108 n - A025916 n)

end

end A029095.P15403212297353402682

namespace A029095

/-- `A025886(n)+A029108(n)-A025916(n)` -/
def P15403212297353402682.Spec : Prop :=
  ∀ n, P15403212297353402682.a n = A029095 n

end A029095

/-! ## A029095.P738362848341439797

`Δ[∑[A029108(n)]-A029125(n)]`
-/

namespace A029095.P738362848341439797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029095.P738362848341439797

namespace A029095

/-- `Δ[∑[A029108(n)]-A029125(n)]` -/
def P738362848341439797.Spec : Prop :=
  ∀ n, P738362848341439797.a n = A029095 n

end A029095

/-! ## A029095.P15487694246397310972

`A029108(n+1)-Δ[A029125(n)]`
-/

namespace A029095.P15487694246397310972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029095.P15487694246397310972

namespace A029095

/-- `A029108(n+1)-Δ[A029125(n)]` -/
def P15487694246397310972.Spec : Prop :=
  ∀ n, P15487694246397310972.a n = A029095 n

end A029095

/-! ## A029095.P2987110636656296762

`A029108(n+1)-A025916(n+1)`
-/

namespace A029095.P2987110636656296762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 (n + 1) - A025916 (n + 1)

end

end A029095.P2987110636656296762

namespace A029095

/-- `A029108(n+1)-A025916(n+1)` -/
def P2987110636656296762.Spec : Prop :=
  ∀ n, P2987110636656296762.a n = A029095 n

end A029095

/-! ## A029095.P5729133044064796855

`A029090(n+1)-A029382(n+1)`
-/

namespace A029095.P5729133044064796855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029090 (n + 1) - A029382 (n + 1)

end

end A029095.P5729133044064796855

namespace A029095

/-- `A029090(n+1)-A029382(n+1)` -/
def P5729133044064796855.Spec : Prop :=
  ∀ n, P5729133044064796855.a n = A029095 n

end A029095

/-! ## A029095.P8670900339715481183

`A029094(n+1)-A029402(n+1)`
-/

namespace A029095.P8670900339715481183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029094 (n + 1) - A029402 (n + 1)

end

end A029095.P8670900339715481183

namespace A029095

/-- `A029094(n+1)-A029402(n+1)` -/
def P8670900339715481183.Spec : Prop :=
  ∀ n, P8670900339715481183.a n = A029095 n

end A029095

/-!
# A029096: Expansion of 1/((1-x)*(1-x^5)*(1-x^8)*(1-x^9)).

The programs for A029096, the canonical program `A029096.P1348079836237918705` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029096 has offset 0).

The definition of A029096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029096.P10518948406284388042

`∑[A025887(n)]`
-/

namespace A029096.P10518948406284388042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029096.P10518948406284388042

namespace A029096

/-- `∑[A025887(n)]` -/
def P10518948406284388042.Spec : Prop :=
  ∀ n, P10518948406284388042.a n = A029096 n

end A029096

/-! ## A029096.P17144362635926133223

`A025887(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029096.P17144362635926133223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025887 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029096.P17144362635926133223

namespace A029096

/-- `A025887(char[1]+n)+a(n-1)` -/
def P17144362635926133223.Spec : Prop :=
  ∀ n, P17144362635926133223.a n = A029096 n

end A029096

/-! ## A029096.P1348079836237918705

`A029204(abs(1-n))+A029204(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029096

/-- `A029204(abs(1-n))+A029204(n)` -/
def P1348079836237918705.Spec : Prop :=
  ∀ n, P1348079836237918705.a n = A029096 n

theorem P1348079836237918705.correct : P1348079836237918705.Spec := by
  intro n
  simp only [A029096]

end A029096

/-! ## A029096.P2703422533624179235

`∑[A025888(n)]+A029403(n)-A025888(n)`
-/

namespace A029096.P2703422533624179235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029403 n - A025888 n)

end

end A029096.P2703422533624179235

namespace A029096

/-- `∑[A025888(n)]+A029403(n)-A025888(n)` -/
def P2703422533624179235.Spec : Prop :=
  ∀ n, P2703422533624179235.a n = A029096 n

end A029096

/-! ## A029096.P12547085722905347285

`A029078(n+1)-A029337(n+1)`
-/

namespace A029096.P12547085722905347285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029078 (n + 1) - A029337 (n + 1)

end

end A029096.P12547085722905347285

namespace A029096

/-- `A029078(n+1)-A029337(n+1)` -/
def P12547085722905347285.Spec : Prop :=
  ∀ n, P12547085722905347285.a n = A029096 n

end A029096

/-! ## A029096.P15840725104786188893

`A029092(n+1)-A029393(n+1)`
-/

namespace A029096.P15840725104786188893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029092 (n + 1) - A029393 (n + 1)

end

end A029096.P15840725104786188893

namespace A029096

/-- `A029092(n+1)-A029393(n+1)` -/
def P15840725104786188893.Spec : Prop :=
  ∀ n, P15840725104786188893.a n = A029096 n

end A029096

/-! ## A029096.P7699399682620653647

`A002264(3*A025887(n))+a(n-1)` with `a(0)=1`
-/

namespace A029096.P7699399682620653647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002264 (3 * A025887 n).toNat + a (n - 1)

end

end A029096.P7699399682620653647

namespace A029096

/-- `A002264(3*A025887(n))+a(n-1)` -/
def P7699399682620653647.Spec : Prop :=
  ∀ n, P7699399682620653647.a n = A029096 n

end A029096

/-!
# A029097: Expansion of 1/((1-x)*(1-x^5)*(1-x^8)*(1-x^10)).

The programs for A029097, the canonical program `A029097.P9445669074314708339` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029097 has offset 0).

The definition of A029097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029097.P17203146284673449931

`∑[A025888(n)]`
-/

namespace A029097.P17203146284673449931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029097.P17203146284673449931

namespace A029097

/-- `∑[A025888(n)]` -/
def P17203146284673449931.Spec : Prop :=
  ∀ n, P17203146284673449931.a n = A029097 n

end A029097

/-! ## A029097.P9445669074314708339

`A029067(n)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029097

/-- `A029067(n)-a(n-4)` -/
def P9445669074314708339.Spec : Prop :=
  ∀ n, P9445669074314708339.a n = A029097 n

theorem P9445669074314708339.correct : P9445669074314708339.Spec := by
  intro n
  simp only [A029097]

end A029097

/-! ## A029097.P2538608539500126026

`A025888(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029097.P2538608539500126026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025888 n + a (A023443 n).toNat

end

end A029097.P2538608539500126026

namespace A029097

/-- `A025888(n)+a(A023443(n))` -/
def P2538608539500126026.Spec : Prop :=
  ∀ n, P2538608539500126026.a n = A029097 n

end A029097

/-! ## A029097.P13864009814623043863

`A029205(abs(A023443(n)))+A029205(n)`
-/

namespace A029097.P13864009814623043863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029205 |A023443 n|.toNat + A029205 n

end

end A029097.P13864009814623043863

namespace A029097

/-- `A029205(abs(A023443(n)))+A029205(n)` -/
def P13864009814623043863.Spec : Prop :=
  ∀ n, P13864009814623043863.a n = A029097 n

end A029097

/-! ## A029097.P1200200883050811090

`A029208(abs(A023443(n)))+A029204(n)`
-/

namespace A029097.P1200200883050811090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029208 |A023443 n|.toNat + A029204 n

end

end A029097.P1200200883050811090

namespace A029097

/-- `A029208(abs(A023443(n)))+A029204(n)` -/
def P1200200883050811090.Spec : Prop :=
  ∀ n, P1200200883050811090.a n = A029097 n

end A029097

/-! ## A029097.P3262857791808315947

`A060125(A060125(a(n-1)))+A025888(n)` with `a(0)=1`
-/

namespace A029097.P3262857791808315947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060125 (A060125 (a (n - 1)).toNat).toNat + A025888 n

end

end A029097.P3262857791808315947

namespace A029097

/-- `A060125(A060125(a(n-1)))+A025888(n)` -/
def P3262857791808315947.Spec : Prop :=
  ∀ n, P3262857791808315947.a n = A029097 n

end A029097

/-!
# A029098: Expansion of 1/((1-x)*(1-x^5)*(1-x^8)*(1-x^11)).

The programs for A029098, the canonical program `A029098.P13397963797314828136` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029098 has offset 0).

The definition of A029098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029098.P928062531259046067

`∑[A025889(n)]`
-/

namespace A029098.P928062531259046067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029098.P928062531259046067

namespace A029098

/-- `∑[A025889(n)]` -/
def P928062531259046067.Spec : Prop :=
  ∀ n, P928062531259046067.a n = A029098 n

end A029098

/-! ## A029098.P11095333786647475432

`A025889(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029098.P11095333786647475432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025889 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029098.P11095333786647475432

namespace A029098

/-- `A025889(char[1]+n)+a(n-1)` -/
def P11095333786647475432.Spec : Prop :=
  ∀ n, P11095333786647475432.a n = A029098 n

end A029098

/-! ## A029098.P13397963797314828136

`A029206(abs(1-n))+A029206(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029098

/-- `A029206(abs(1-n))+A029206(n)` -/
def P13397963797314828136.Spec : Prop :=
  ∀ n, P13397963797314828136.a n = A029098 n

theorem P13397963797314828136.correct : P13397963797314828136.Spec := by
  intro n
  simp only [A029098]

end A029098

/-! ## A029098.P14125487202199913969

`∑[A025921(abs(5-n))+A025921(n)]`
-/

namespace A029098.P14125487202199913969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 |5 - (n : ℤ)|.toNat + A025921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029098.P14125487202199913969

namespace A029098

/-- `∑[A025921(abs(5-n))+A025921(n)]` -/
def P14125487202199913969.Spec : Prop :=
  ∀ n, P14125487202199913969.a n = A029098 n

end A029098

/-! ## A029098.P9890727581386814124

`a(n-1)+A025889(n)+A000038(n)` with `a(0)=1`
-/

namespace A029098.P9890727581386814124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025889 n + A000038 n)

end

end A029098.P9890727581386814124

namespace A029098

/-- `a(n-1)+A025889(n)+A000038(n)` -/
def P9890727581386814124.Spec : Prop :=
  ∀ n, P9890727581386814124.a n = A029098 n

end A029098

/-! ## A029098.P17563517251225561845

`A029081(n)+A029404(n)-A029342(n)`
-/

namespace A029098.P17563517251225561845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 n + (A029404 n - A029342 n)

end

end A029098.P17563517251225561845

namespace A029098

/-- `A029081(n)+A029404(n)-A029342(n)` -/
def P17563517251225561845.Spec : Prop :=
  ∀ n, P17563517251225561845.a n = A029098 n

end A029098

/-!
# A029099: Expansion of 1/((1-x)*(1-x^5)*(1-x^8)*(1-x^12)).

The programs for A029099, the canonical program `A029099.P18376010635766918802` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029099 has offset 0).

The definition of A029099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029099.P18376010635766918802

`∑[A025890(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029099

/-- `∑[A025890(n)]` -/
def P18376010635766918802.Spec : Prop :=
  ∀ n, P18376010635766918802.a n = A029099 n

theorem P18376010635766918802.correct : P18376010635766918802.Spec := by
  intro n
  simp only [A029099]

end A029099

/-! ## A029099.P3152510706371135667

`A025890(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029099.P3152510706371135667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025890 n + a (A023443 n).toNat

end

end A029099.P3152510706371135667

namespace A029099

/-- `A025890(n)+a(A023443(n))` -/
def P3152510706371135667.Spec : Prop :=
  ∀ n, P3152510706371135667.a n = A029099 n

end A029099

/-! ## A029099.P959452669978389589

`A029207(abs(1-n))+A029207(n)`
-/

namespace A029099.P959452669978389589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 |1 - (n : ℤ)|.toNat + A029207 n

end

end A029099.P959452669978389589

namespace A029099

/-- `A029207(abs(1-n))+A029207(n)` -/
def P959452669978389589.Spec : Prop :=
  ∀ n, P959452669978389589.a n = A029099 n

end A029099

/-! ## A029099.P3904611568979005342

`A029057(n+1)-A029250(n+1)`
-/

namespace A029099.P3904611568979005342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (n + 1) - A029250 (n + 1)

end

end A029099.P3904611568979005342

namespace A029099

/-- `A029057(n+1)-A029250(n+1)` -/
def P3904611568979005342.Spec : Prop :=
  ∀ n, P3904611568979005342.a n = A029099 n

end A029099

/-! ## A029099.P6101960182421631865

`A025890(n)+a(n-1)%A000204(n+1)` with `a(0)=1`
-/

namespace A029099.P6101960182421631865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025890 n + Int.tmod (a (n - 1)) (A000204 (n + 1))

end

end A029099.P6101960182421631865

namespace A029099

/-- `A025890(n)+a(n-1)%A000204(n+1)` -/
def P6101960182421631865.Spec : Prop :=
  ∀ n, P6101960182421631865.a n = A029099 n

end A029099

