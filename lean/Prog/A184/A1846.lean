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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A184600: 1/4 the number of (n+1) X 6 binary arrays with equal numbers of 2 X 2 subblocks with sums 1 and 3.

The programs for A184600, there is no canonical definition to state claims against.
-/

/-! ## A184600.P3222576396115027595

`A184604(A374005(n+1))`
-/

namespace A184600.P3222576396115027595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A374005 (n + 1)).toNat

end

end A184600.P3222576396115027595

/-! ## A184600.P17789477050857390374

`A184604(A167499(n+3))`
-/

namespace A184600.P17789477050857390374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A167499 (n + 3)).toNat

end

end A184600.P17789477050857390374

/-! ## A184600.P12436105554302962077

`A184604(A155212(n)+13)`
-/

namespace A184600.P12436105554302962077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A155212 n + 13).toNat

end

end A184600.P12436105554302962077

/-! ## A184600.P6384985388718764043

`A184604(eq[2, A092921(n)])`
-/

namespace A184600.P6384985388718764043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184600.P6384985388718764043

/-! ## A184600.P219180996012833740

`A184604(eq[4, A193592(n)])`
-/

namespace A184600.P219180996012833740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184600.P219180996012833740

/-!
# A184601: 1/4 the number of (n+1) X 7 binary arrays with equal numbers of 2 X 2 subblocks with sums 1 and 3.

The programs for A184601, there is no canonical definition to state claims against.
-/

/-! ## A184601.P8562767480824811261

`A184604(A374007(n+1))`
-/

namespace A184601.P8562767480824811261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A374007 (n + 1)).toNat

end

end A184601.P8562767480824811261

/-! ## A184601.P13509653002413429236

`A184604(eq[7, A131818(n+1)])`
-/

namespace A184601.P13509653002413429236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184601.P13509653002413429236

/-! ## A184601.P11122101561782697792

`A184604(A000124(n+6)-(n+1))`
-/

namespace A184601.P11122101561782697792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A184601.P11122101561782697792

/-! ## A184601.P14285746370547717086

`A184604(eq[4, A002262(n)]+n+7)`
-/

namespace A184601.P14285746370547717086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 7))

end

end A184601.P14285746370547717086

/-! ## A184601.P6166666324487338071

`A184604(A052905(n+3))`
-/

namespace A184601.P6166666324487338071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A052905 (n + 3)).toNat

end

end A184601.P6166666324487338071

/-!
# A184602: 1/4 the number of (n+1) X 8 binary arrays with equal numbers of 2 X 2 subblocks with sums 1 and 3.

The programs for A184602, there is no canonical definition to state claims against.
-/

/-! ## A184602.P9685123284647437775

`A184604(A374008(n+1))`
-/

namespace A184602.P9685123284647437775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A374008 (n + 1)).toNat

end

end A184602.P9685123284647437775

/-! ## A184602.P18080749082799520326

`A184604(A000124(n+6)+6)`
-/

namespace A184602.P18080749082799520326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A000124 (n + 6) + 6).toNat

end

end A184602.P18080749082799520326

/-! ## A184602.P154481077689968378

`A184604(A046691(n+4)+11)`
-/

namespace A184602.P154481077689968378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A046691 (n + 4) + 11).toNat

end

end A184602.P154481077689968378

/-! ## A184602.P2447121161714123459

`A184604(eq[6, A144328(n+1)]+1)`
-/

namespace A184602.P2447121161714123459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A184602.P2447121161714123459

/-! ## A184602.P2006044687272201194

`A184604(eq[6, A193592(n)])`
-/

namespace A184602.P2006044687272201194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184602.P2006044687272201194

/-!
# A184603: 1/4 the number of (n+1) X 9 binary arrays with equal numbers of 2 X 2 subblocks with sums 1 and 3.

The programs for A184603, there is no canonical definition to state claims against.
-/

/-! ## A184603.P8881052082477740966

`A184604(A374009(n+1))`
-/

namespace A184603.P8881052082477740966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A374009 (n + 1)).toNat

end

end A184603.P8881052082477740966

/-! ## A184603.P3653567875892941504

`A184604(eq[7, A193592(n)])`
-/

namespace A184603.P3653567875892941504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184603.P3653567875892941504

/-!
# A184605: Half the number of (n+1)X(n+1) binary arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184605, there is no canonical definition to state claims against.
-/

/-! ## A184605.P9058372726142621903

`A184614(∑[4*n]+1)`
-/

namespace A184605.P9058372726142621903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184605.P9058372726142621903

/-! ## A184605.P5137895240265554378

`and(-1, A184614(A001844(n)))`
-/

namespace A184605.P5137895240265554378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A184614 (A001844 n).toNat)

end

end A184605.P5137895240265554378

/-! ## A184605.P942776741337978208

`record[A003982(n)*A184614(n+1)]`
-/

namespace A184605.P942776741337978208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A184614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184605.P942776741337978208

/-! ## A184605.P14420614141497121684

`record[root(A184614(n+1), A143182(n))]`
-/

namespace A184605.P14420614141497121684
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184614 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184605.P14420614141497121684

/-!
# A184606: Half the number of (n+1) X 2 binary arrays with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184606, the canonical program `A184606.P11209596230476488374` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184606 has offset 1).

The definition of A184606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184606.P11209596230476488374

`3*a(n-1)+6*a(n-3)+4*a(n-4)` with `a(0)=8, a(1)=28, a(2)=98, a(3)=350`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184606

/-- `3*a(n-1)+6*a(n-3)+4*a(n-4)` -/
def P11209596230476488374.Spec : Prop :=
  ∀ n, (P11209596230476488374.a n : ℤ) = A184606 (n + 1)

theorem P11209596230476488374.correct : P11209596230476488374.Spec := by
  intro n
  simp only [A184606, Nat.add_sub_cancel]

end A184606

/-! ## A184606.P15437905881534530899

`A007484(A004526(n))*A055099(A080513(n))`
-/

namespace A184606.P15437905881534530899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007484 (A004526 n).toNat * A055099 (A080513 n).toNat

end

end A184606.P15437905881534530899

namespace A184606

/-- `A007484(A004526(n))*A055099(A080513(n))` -/
def P15437905881534530899.Spec : Prop :=
  ∀ n, P15437905881534530899.a n = A184606 (n + 1)

end A184606

/-! ## A184606.P5204123183114072166

`A184614(∑[n]+1)`
-/

namespace A184606.P5204123183114072166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184606.P5204123183114072166

namespace A184606

/-- `A184614(∑[n]+1)` -/
def P5204123183114072166.Spec : Prop :=
  ∀ n, P5204123183114072166.a n = A184606 (n + 1)

end A184606

/-! ## A184606.P3912660720339990662

`record[A010054(n)*A184614(n+1)]`
-/

namespace A184606.P3912660720339990662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184606.P3912660720339990662

namespace A184606

/-- `record[A010054(n)*A184614(n+1)]` -/
def P3912660720339990662.Spec : Prop :=
  ∀ n, P3912660720339990662.a n = A184606 (n + 1)

end A184606

/-! ## A184606.P5834928782240292558

`A184614(A000217(n+1))+A005212(2*(n+2))`
-/

namespace A184606.P5834928782240292558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A000217 (n + 1)).toNat + A005212 (2 * (n + 2))

end

end A184606.P5834928782240292558

namespace A184606

/-- `A184614(A000217(n+1))+A005212(2*(n+2))` -/
def P5834928782240292558.Spec : Prop :=
  ∀ n, P5834928782240292558.a n = A184606 (n + 1)

end A184606

/-!
# A184607: Half the number of (n+1) X 3 binary arrays with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184607, there is no canonical definition to state claims against.
-/

/-! ## A184607.P7682715881858754412

`A184614(∑[n+1]+2)`
-/

namespace A184607.P7682715881858754412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184607.P7682715881858754412

/-! ## A184607.P6164747456285466446

`lcm(2, A184614(A133263(n+1)))`
-/

namespace A184607.P6164747456285466446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184614 (A133263 (n + 1)).toNat)

end

end A184607.P6164747456285466446

/-! ## A184607.P4291468537383550552

`record[A010054(n)*A184614(n+2)]`
-/

namespace A184607.P4291468537383550552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184607.P4291468537383550552

/-! ## A184607.P18203599311074215066

`A014963(6*(n+1))*A184614(A133263(n+1))`
-/

namespace A184607.P18203599311074215066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A184614 (A133263 (n + 1)).toNat

end

end A184607.P18203599311074215066

/-!
# A184608: Half the number of (n+1)X4 binary arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184608, there is no canonical definition to state claims against.
-/

/-! ## A184608.P18217220841895600851

`A184614(∑[n+2]+4)`
-/

namespace A184608.P18217220841895600851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184608.P18217220841895600851

/-! ## A184608.P10203284864111557566

`lcm((-1)^n, A184614(A167614(n+1)))`
-/

namespace A184608.P10203284864111557566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A184614 (A167614 (n + 1)).toNat)

end

end A184608.P10203284864111557566

/-! ## A184608.P3825149654366636532

`or(A000038(n), A184614(A167614(n+1)))`
-/

namespace A184608.P3825149654366636532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A184614 (A167614 (n + 1)).toNat)

end

end A184608.P3825149654366636532

/-! ## A184608.P11864552339730748188

`or(A107846(n), A184614(A167614(n+1)))`
-/

namespace A184608.P11864552339730748188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 n) (A184614 (A167614 (n + 1)).toNat)

end

end A184608.P11864552339730748188

/-! ## A184608.P7181654847057778877

`A184614(A167614(n+1))%A203375(n+1)`
-/

namespace A184608.P7181654847057778877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184614 (A167614 (n + 1)).toNat) (A203375 (n + 1))

end

end A184608.P7181654847057778877

/-!
# A184609: Half the number of (n+1)X5 binary arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184609, there is no canonical definition to state claims against.
-/

/-! ## A184609.P2138237140599419262

`A184614(A374004(n+1))`
-/

namespace A184609.P2138237140599419262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A374004 (n + 1)).toNat

end

end A184609.P2138237140599419262

/-! ## A184609.P13590075498179055477

`A184614(A141214(n)+7)`
-/

namespace A184609.P13590075498179055477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A141214 n + 7).toNat

end

end A184609.P13590075498179055477

/-! ## A184609.P2254863252446310859

`A184614(A052905(n)+9)`
-/

namespace A184609.P2254863252446310859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A052905 n + 9).toNat

end

end A184609.P2254863252446310859

/-! ## A184609.P7603865950980932380

`A184614(A167614(n+2)+1)`
-/

namespace A184609.P7603865950980932380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A167614 (n + 2) + 1).toNat

end

end A184609.P7603865950980932380

/-! ## A184609.P301084082411881095

`A184614(Δ[A264443(n)-n²])`
-/

namespace A184609.P301084082411881095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (f1 (n + 1) - f1 n).toNat

end

end A184609.P301084082411881095

/-!
# A184610: Half the number of (n+1)X6 binary arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184610, there is no canonical definition to state claims against.
-/

/-! ## A184610.P5699761251777862466

`A184614(A374005(n+1))`
-/

namespace A184610.P5699761251777862466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A374005 (n + 1)).toNat

end

end A184610.P5699761251777862466

/-! ## A184610.P2694040049811369882

`A184614(A155212(n)+13)`
-/

namespace A184610.P2694040049811369882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A155212 n + 13).toNat

end

end A184610.P2694040049811369882

/-! ## A184610.P4831912768976520413

`A184614(A056000(n)+15)`
-/

namespace A184610.P4831912768976520413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A056000 n + 15).toNat

end

end A184610.P4831912768976520413

/-! ## A184610.P15584694448047858678

`A184614(A000096(n+3)+6)`
-/

namespace A184610.P15584694448047858678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A000096 (n + 3) + 6).toNat

end

end A184610.P15584694448047858678

/-! ## A184610.P11024988277353304128

`A184614(eq[6, A131818(n+1)])`
-/

namespace A184610.P11024988277353304128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184610.P11024988277353304128

/-!
# A184611: Half the number of (n+1)X7 binary arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184611, there is no canonical definition to state claims against.
-/

/-! ## A184611.P10552188562039103588

`A184614(A374007(n+1))`
-/

namespace A184611.P10552188562039103588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A374007 (n + 1)).toNat

end

end A184611.P10552188562039103588

/-! ## A184611.P3271666779692446197

`A184614(eq[7, A131818(n+1)])`
-/

namespace A184611.P3271666779692446197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184611.P3271666779692446197

/-! ## A184611.P8588638246406177577

`A184614(eq[4, A193592(n)]+10)`
-/

namespace A184611.P8588638246406177577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A184611.P8588638246406177577

/-! ## A184611.P11204244434557098366

`A184614(A000124(n+6)-(n+1))`
-/

namespace A184611.P11204244434557098366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A184611.P11204244434557098366

/-! ## A184611.P5260198731413535609

`A184614(eq[4, A002262(n)]+n+7)`
-/

namespace A184611.P5260198731413535609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 7))

end

end A184611.P5260198731413535609

/-!
# A184612: Half the number of (n+1)X8 binary arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184612, there is no canonical definition to state claims against.
-/

/-! ## A184612.P13467549001987232167

`A184614(A374008(n+1))`
-/

namespace A184612.P13467549001987232167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A374008 (n + 1)).toNat

end

end A184612.P13467549001987232167

/-! ## A184612.P14693830946004782811

`A184614(A000124(n+6)+6)`
-/

namespace A184612.P14693830946004782811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A000124 (n + 6) + 6).toNat

end

end A184612.P14693830946004782811

/-! ## A184612.P3979469155224624865

`A184614(A046691(n+4)+11)`
-/

namespace A184612.P3979469155224624865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A046691 (n + 4) + 11).toNat

end

end A184612.P3979469155224624865

/-! ## A184612.P3815174482627960735

`A184614(eq[8, A131818(n+1)])`
-/

namespace A184612.P3815174482627960735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184612.P3815174482627960735

/-! ## A184612.P13800391031111307138

`A184614(eq[6, A144328(n+1)]+1)`
-/

namespace A184612.P13800391031111307138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A184612.P13800391031111307138

/-!
# A184613: Half the number of (n+1)X9 binary arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184613, there is no canonical definition to state claims against.
-/

/-! ## A184613.P3286249483233802536

`A184614(A374009(n+1))`
-/

namespace A184613.P3286249483233802536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (A374009 (n + 1)).toNat

end

end A184613.P3286249483233802536

/-! ## A184613.P15007881241334429543

`A184614(eq[9, A131818(n+1)])`
-/

namespace A184613.P15007881241334429543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184613.P15007881241334429543

/-!
# A184614: T(n,k)=Half the number of (n+1)X(k+1) binary arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184614, there is no canonical definition to state claims against.
-/

/-! ## A184614.P13689801337106083678

`∑{d}[A141214(A156435(n+1)), #]`
-/

namespace A184614.P13689801337106083678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 (A156435 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A184614.P13689801337106083678

/-!
# A184615: Positive parts of the nonadjacent forms for n.

The programs for A184615, the canonical program `A184615.P12937226738922486547` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184615 has offset 0).

The definition of A184615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184615.P8638099145985614668

`n+A184616(n)`
-/

namespace A184615.P8638099145985614668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A184616 n

end

end A184615.P8638099145985614668

namespace A184615

/-- `n+A184616(n)` -/
def P8638099145985614668.Spec : Prop :=
  ∀ n, P8638099145985614668.a n = A184615 n

theorem P8638099145985614668.correct : P8638099145985614668.Spec := by
  intro n
  simp only [A184615, Nat.add_sub_cancel, A184615.P8638099145985614668.a, A184615.P12937226738922486547.a, A032766, A032766.P1975864606945388751.a, A184616, A184616.P11536552118196738147.a, A184617, A184617.P6500714334577552436.a, A178729, A178729.P1381440878226345061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A184615

/-! ## A184615.P635468568142429288

`(or(n, 3*n)-n)/2`
-/

namespace A184615.P635468568142429288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (3 * n) : ℤ) - (n : ℤ) : ℚ) / 2

end

end A184615.P635468568142429288

namespace A184615

/-- `(or(n, 3*n)-n)/2` -/
def P635468568142429288.Spec : Prop :=
  ∀ n, P635468568142429288.a n = (A184615 n : ℚ)

end A184615

/-! ## A184615.P3479063435778432955

`and(3*n, -(n+1))/2`
-/

namespace A184615.P3479063435778432955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (3 * n : ℤ) (-(n + 1 : ℤ)) : ℚ) / 2

end

end A184615.P3479063435778432955

namespace A184615

/-- `and(3*n, -(n+1))/2` -/
def P3479063435778432955.Spec : Prop :=
  ∀ n, P3479063435778432955.a n = (A184615 n : ℚ)

end A184615

/-! ## A184615.P4445969665799778933

`(xor(n, 3*n)/2+n)/2`
-/

namespace A184615.P4445969665799778933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (3 * n) : ℚ) / 2 + (n : ℚ)) / 2

end

end A184615.P4445969665799778933

namespace A184615

/-- `(xor(n, 3*n)/2+n)/2` -/
def P4445969665799778933.Spec : Prop :=
  ∀ n, P4445969665799778933.a n = (A184615 n : ℚ)

end A184615

/-! ## A184615.P3939179308375889249

`(n-and(n, 3*n))/2+n`
-/

namespace A184615.P3939179308375889249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land n (3 * n) : ℤ) : ℚ) / 2 + (n : ℚ)

end

end A184615.P3939179308375889249

namespace A184615

/-- `(n-and(n, 3*n))/2+n` -/
def P3939179308375889249.Spec : Prop :=
  ∀ n, P3939179308375889249.a n = (A184615 n : ℚ)

end A184615

/-! ## A184615.P3943341944680085189

`and(2*n-and(n, 3*n), ∑[-char[2*n]])`
-/

namespace A184615.P3943341944680085189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n : ℤ) - (Nat.land n (3 * n) : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184615.P3943341944680085189

namespace A184615

/-- `and(2*n-and(n, 3*n), ∑[-char[2*n]])` -/
def P3943341944680085189.Spec : Prop :=
  ∀ n, P3943341944680085189.a n = A184615 n

end A184615

/-! ## A184615.P16653288152556539511

`(A184617(n)+n)/2`
-/

namespace A184615.P16653288152556539511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184617 n + (n : ℤ) : ℚ) / 2

end

end A184615.P16653288152556539511

namespace A184615

/-- `(A184617(n)+n)/2` -/
def P16653288152556539511.Spec : Prop :=
  ∀ n, P16653288152556539511.a n = (A184615 n : ℚ)

end A184615

/-! ## A184615.P13385277545911100918

`(A178890(n)-n)/2`
-/

namespace A184615.P13385277545911100918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178890 n - (n : ℤ) : ℚ) / 2

end

end A184615.P13385277545911100918

namespace A184615

/-- `(A178890(n)-n)/2` -/
def P13385277545911100918.Spec : Prop :=
  ∀ n, P13385277545911100918.a n = (A184615 n : ℚ)

end A184615

/-! ## A184615.P18355030006353409760

`A184616(n)-A001489(n)`
-/

namespace A184615.P18355030006353409760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 n - A001489 n

end

end A184615.P18355030006353409760

namespace A184615

/-- `A184616(n)-A001489(n)` -/
def P18355030006353409760.Spec : Prop :=
  ∀ n, P18355030006353409760.a n = A184615 n

theorem P18355030006353409760.correct : P18355030006353409760.Spec := by
  intro n
  simp only [A184615, Nat.add_sub_cancel, A184615.P18355030006353409760.a, A184615.P12937226738922486547.a, A001489, A001489.P15233530513763566776.a, A032766, A032766.P1975864606945388751.a, A184616, A184616.P11536552118196738147.a, A184617, A184617.P6500714334577552436.a, A178729, A178729.P1381440878226345061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A184615

/-! ## A184615.P12937226738922486547

`and(A032766(n), A184617(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A184615

/-- `and(A032766(n), A184617(n))` -/
def P12937226738922486547.Spec : Prop :=
  ∀ n, P12937226738922486547.a n = A184615 n

theorem P12937226738922486547.correct : P12937226738922486547.Spec := by
  intro n
  simp only [A184615]

end A184615

/-! ## A184615.P15226874973997569681

`and(A130482(n), A184617(n))`
-/

namespace A184615.P15226874973997569681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130482 n) (A184617 n)

end

end A184615.P15226874973997569681

namespace A184615

/-- `and(A130482(n), A184617(n))` -/
def P15226874973997569681.Spec : Prop :=
  ∀ n, P15226874973997569681.a n = A184615 n

end A184615

/-! ## A184615.P7078605496651534783

`and(A140205(n), A184617(n))`
-/

namespace A184615.P7078605496651534783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140205 n) (A184617 n)

end

end A184615.P7078605496651534783

namespace A184615

/-- `and(A140205(n), A184617(n))` -/
def P7078605496651534783.Spec : Prop :=
  ∀ n, P7078605496651534783.a n = A184615 n

end A184615

/-! ## A184615.P10514810896265166114

`and(A184617(n), A387312(n))`
-/

namespace A184615.P10514810896265166114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184617 n) (A387312 n)

end

end A184615.P10514810896265166114

namespace A184615

/-- `and(A184617(n), A387312(n))` -/
def P10514810896265166114.Spec : Prop :=
  ∀ n, P10514810896265166114.a n = A184615 n

end A184615

/-! ## A184615.P11178485798390848988

`xor(A184616(n), A184617(n))`
-/

namespace A184615.P11178485798390848988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A184616 n) (A184617 n)

end

end A184615.P11178485798390848988

namespace A184615

/-- `xor(A184616(n), A184617(n))` -/
def P11178485798390848988.Spec : Prop :=
  ∀ n, P11178485798390848988.a n = A184615 n

end A184615

/-! ## A184615.P5794106524791618963

`and(A047237(n+1), A184617(n))`
-/

namespace A184615.P5794106524791618963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047237 (n + 1)) (A184617 n)

end

end A184615.P5794106524791618963

namespace A184615

/-- `and(A047237(n+1), A184617(n))` -/
def P5794106524791618963.Spec : Prop :=
  ∀ n, P5794106524791618963.a n = A184615 n

end A184615

/-! ## A184615.P18395521420969084898

`A110654(A184617(n)-n)+n`
-/

namespace A184615.P18395521420969084898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A184617 n - (n : ℤ)).toNat + (n : ℤ)

end

end A184615.P18395521420969084898

namespace A184615

/-- `A110654(A184617(n)-n)+n` -/
def P18395521420969084898.Spec : Prop :=
  ∀ n, P18395521420969084898.a n = A184615 n

end A184615

/-! ## A184615.P5245407424392878583

`A229762(n-A213526(n))+n`
-/

namespace A184615.P5245407424392878583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229762 ((n : ℤ) - A213526 n).toNat + (n : ℤ)

end

end A184615.P5245407424392878583

namespace A184615

/-- `A229762(n-A213526(n))+n` -/
def P5245407424392878583.Spec : Prop :=
  ∀ n, P5245407424392878583.a n = A184615 n

end A184615

/-! ## A184615.P3417656834877838360

`and(A004524(n)+n, A184617(n))`
-/

namespace A184615.P3417656834877838360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004524 n + (n : ℤ)) (A184617 n)

end

end A184615.P3417656834877838360

namespace A184615

/-- `and(A004524(n)+n, A184617(n))` -/
def P3417656834877838360.Spec : Prop :=
  ∀ n, P3417656834877838360.a n = A184615 n

end A184615

/-! ## A184615.P7317952193869428387

`and(A048733(n)+n, A184617(n))`
-/

namespace A184615.P7317952193869428387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048733 n + (n : ℤ)) (A184617 n)

end

end A184615.P7317952193869428387

namespace A184615

/-- `and(A048733(n)+n, A184617(n))` -/
def P7317952193869428387.Spec : Prop :=
  ∀ n, P7317952193869428387.a n = A184615 n

end A184615

/-! ## A184615.P361388369910668728

`and(A123108(n)+n, A184617(n))`
-/

namespace A184615.P361388369910668728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123108 n + (n : ℤ)) (A184617 n)

end

end A184615.P361388369910668728

namespace A184615

/-- `and(A123108(n)+n, A184617(n))` -/
def P361388369910668728.Spec : Prop :=
  ∀ n, P361388369910668728.a n = A184615 n

end A184615

/-!
# A184616: Negated negative parts of the nonadjacent forms.

The programs for A184616, the canonical program `A184616.P11536552118196738147` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184616 has offset 0).

The definition of A184616 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A184616.P11536552118196738147

`A184615(n)-n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184616

/-- `A184615(n)-n` -/
def P11536552118196738147.Spec : Prop :=
  ∀ n, P11536552118196738147.a n = A184616 n

theorem P11536552118196738147.correct : P11536552118196738147.Spec := by
  intro n
  simp only [A184616]

end A184616

/-! ## A184616.P2678779867618149425

`(n-and(n, 3*n))/2`
-/

namespace A184616.P2678779867618149425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land n (3 * n) : ℤ) : ℚ) / 2

end

end A184616.P2678779867618149425

namespace A184616

/-- `(n-and(n, 3*n))/2` -/
def P2678779867618149425.Spec : Prop :=
  ∀ n, P2678779867618149425.a n = (A184616 n : ℚ)

end A184616

/-! ## A184616.P10951063054136747601

`and(n, -(3*n+1))/2`
-/

namespace A184616.P10951063054136747601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(3 * n + 1 : ℤ)) : ℚ) / 2

end

end A184616.P10951063054136747601

namespace A184616

/-- `and(n, -(3*n+1))/2` -/
def P10951063054136747601.Spec : Prop :=
  ∀ n, P10951063054136747601.a n = (A184616 n : ℚ)

end A184616

/-! ## A184616.P16210274115757946742

`and(-comp[3*n], floor(n/2))`
-/

namespace A184616.P16210274115757946742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ⌊(n : ℚ) / 2⌋

end

end A184616.P16210274115757946742

namespace A184616

/-- `and(-comp[3*n], floor(n/2))` -/
def P16210274115757946742.Spec : Prop :=
  ∀ n, P16210274115757946742.a n = A184616 n

end A184616

/-! ## A184616.P13887291637933121311

`(xor(n, 3*n)/2-n)/2`
-/

namespace A184616.P13887291637933121311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (3 * n) : ℚ) / 2 - (n : ℚ)) / 2

end

end A184616.P13887291637933121311

namespace A184616

/-- `(xor(n, 3*n)/2-n)/2` -/
def P13887291637933121311.Spec : Prop :=
  ∀ n, P13887291637933121311.a n = (A184616 n : ℚ)

end A184616

/-! ## A184616.P7939082352320566912

`(or(n, 3*n)-n)/2-n`
-/

namespace A184616.P7939082352320566912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (3 * n) : ℤ) - (n : ℤ) : ℚ) / 2 - (n : ℚ)

end

end A184616.P7939082352320566912

namespace A184616

/-- `(or(n, 3*n)-n)/2-n` -/
def P7939082352320566912.Spec : Prop :=
  ∀ n, P7939082352320566912.a n = (A184616 n : ℚ)

end A184616

/-! ## A184616.P2905930995907734412

`(A184617(n)-n)/2`
-/

namespace A184616.P2905930995907734412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184617 n - (n : ℤ) : ℚ) / 2

end

end A184616.P2905930995907734412

namespace A184616

/-- `(A184617(n)-n)/2` -/
def P2905930995907734412.Spec : Prop :=
  ∀ n, P2905930995907734412.a n = (A184616 n : ℚ)

end A184616

/-! ## A184616.P15137490631222544943

`(n-A213526(n))/2`
-/

namespace A184616.P15137490631222544943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A213526 n : ℚ) / 2

end

end A184616.P15137490631222544943

namespace A184616

/-- `(n-A213526(n))/2` -/
def P15137490631222544943.Spec : Prop :=
  ∀ n, P15137490631222544943.a n = (A184616 n : ℚ)

end A184616

/-! ## A184616.P8113005218182901070

`A028242(n+1-and(n, 3*n))`
-/

namespace A184616.P8113005218182901070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n + 1 - Nat.land n (3 * n))

end

end A184616.P8113005218182901070

namespace A184616

/-- `A028242(n+1-and(n, 3*n))` -/
def P8113005218182901070.Spec : Prop :=
  ∀ n, P8113005218182901070.a n = A184616 n

end A184616

/-! ## A184616.P3478982525492365555

`A028242(n-and(n, 3*n))-1`
-/

namespace A184616.P3478982525492365555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n - Nat.land n (3 * n)) - 1

end

end A184616.P3478982525492365555

namespace A184616

/-- `A028242(n-and(n, 3*n))-1` -/
def P3478982525492365555.Spec : Prop :=
  ∀ n, P3478982525492365555.a n = A184616 n

end A184616

/-! ## A184616.P4068699486581574560

`A004526(A184617(n)-n)`
-/

namespace A184616.P4068699486581574560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184617 n - (n : ℤ)).toNat

end

end A184616.P4068699486581574560

namespace A184616

/-- `A004526(A184617(n)-n)` -/
def P4068699486581574560.Spec : Prop :=
  ∀ n, P4068699486581574560.a n = A184616 n

end A184616

/-! ## A184616.P3803278699706418470

`A110654(A184617(n)-n)`
-/

namespace A184616.P3803278699706418470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A184617 n - (n : ℤ)).toNat

end

end A184616.P3803278699706418470

namespace A184616

/-- `A110654(A184617(n)-n)` -/
def P3803278699706418470.Spec : Prop :=
  ∀ n, P3803278699706418470.a n = A184616 n

end A184616

/-! ## A184616.P15472991012374322514

`A229762(n-A213526(n))`
-/

namespace A184616.P15472991012374322514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229762 ((n : ℤ) - A213526 n).toNat

end

end A184616.P15472991012374322514

namespace A184616

/-- `A229762(n-A213526(n))` -/
def P15472991012374322514.Spec : Prop :=
  ∀ n, P15472991012374322514.a n = A184616 n

end A184616

/-! ## A184616.P6066988037742506236

`A184615(n)%A028310(n)`
-/

namespace A184616.P6066988037742506236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184615 n) (A028310 n)

end

end A184616.P6066988037742506236

namespace A184616

/-- `A184615(n)%A028310(n)` -/
def P6066988037742506236.Spec : Prop :=
  ∀ n, P6066988037742506236.a n = A184616 n

end A184616

/-! ## A184616.P9501714588142967569

`xor(A184615(n), A184617(n))`
-/

namespace A184616.P9501714588142967569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A184615 n) (A184617 n)

end

end A184616.P9501714588142967569

namespace A184616

/-- `xor(A184615(n), A184617(n))` -/
def P9501714588142967569.Spec : Prop :=
  ∀ n, P9501714588142967569.a n = A184616 n

end A184616

/-!
# A184617: With nonadjacent forms: A184615(n) + A184616(n).

The programs for A184617, the canonical program `A184617.P6500714334577552436` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184617 has offset 0).

The definition of A184617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184617.P6500714334577552436

`A178729(n)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A184617

/-- `A178729(n)/2` -/
def P6500714334577552436.Spec : Prop :=
  ∀ n, P6500714334577552436.a n = (A184617 n : ℚ)

end A184617

/-! ## A184617.P5138727115258071856

`A184615(n)+A184616(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A184617.P5138727115258071856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 n + A184616 n

end

end A184617.P5138727115258071856

namespace A184617

/-- `A184615(n)+A184616(n)` -/
def P5138727115258071856.Spec : Prop :=
  ∀ n, P5138727115258071856.a n = A184617 n

end A184617

/-! ## A184617.P6031510500605092872

`xor(n, 3*n)/2`
-/

namespace A184617.P6031510500605092872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (3 * n) : ℚ) / 2

end

end A184617.P6031510500605092872

namespace A184617

/-- `xor(n, 3*n)/2` -/
def P6031510500605092872.Spec : Prop :=
  ∀ n, P6031510500605092872.a n = (A184617 n : ℚ)

end A184617

/-! ## A184617.P5269681060146822917

`2*n-and(n, 3*n)`
-/

namespace A184617.P5269681060146822917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land n (3 * n) : ℤ)

end

end A184617.P5269681060146822917

namespace A184617

/-- `2*n-and(n, 3*n)` -/
def P5269681060146822917.Spec : Prop :=
  ∀ n, P5269681060146822917.a n = A184617 n

end A184617

/-! ## A184617.P817295274857628449

`or(n, 3*n)-2*n`
-/

namespace A184617.P817295274857628449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (3 * n) : ℤ) - (2 * n : ℤ)

end

end A184617.P817295274857628449

namespace A184617

/-- `or(n, 3*n)-2*n` -/
def P817295274857628449.Spec : Prop :=
  ∀ n, P817295274857628449.a n = A184617 n

end A184617

/-! ## A184617.P6571286239716195062

`and(n, -(3*n+1))+n`
-/

namespace A184617.P6571286239716195062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(3 * n + 1 : ℤ)) + (n : ℤ)

end

end A184617.P6571286239716195062

namespace A184617

/-- `and(n, -(3*n+1))+n` -/
def P6571286239716195062.Spec : Prop :=
  ∀ n, P6571286239716195062.a n = A184617 n

end A184617

/-! ## A184617.P17253050280520385738

`xor(floor(n/2)+n, floor(n/2))`
-/

namespace A184617.P17253050280520385738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (⌊(n : ℚ) / 2⌋ + (n : ℤ)) ⌊(n : ℚ) / 2⌋

end

end A184617.P17253050280520385738

namespace A184617

/-- `xor(floor(n/2)+n, floor(n/2))` -/
def P17253050280520385738.Spec : Prop :=
  ∀ n, P17253050280520385738.a n = A184617 n

end A184617

/-! ## A184617.P16476177704815121078

`A178890(n)-2*n`
-/

namespace A184617.P16476177704815121078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178890 n - (2 * n : ℤ)

end

end A184617.P16476177704815121078

namespace A184617

/-- `A178890(n)-2*n` -/
def P16476177704815121078.Spec : Prop :=
  ∀ n, P16476177704815121078.a n = A184617 n

end A184617

/-! ## A184617.P5419638809477484599

`2*n-A213526(n)`
-/

namespace A184617.P5419638809477484599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A213526 n

end

end A184617.P5419638809477484599

namespace A184617

/-- `2*n-A213526(n)` -/
def P5419638809477484599.Spec : Prop :=
  ∀ n, P5419638809477484599.a n = A184617 n

end A184617

/-! ## A184617.P2955333669239608937

`A178890(n)%A004277(n)`
-/

namespace A184617.P2955333669239608937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178890 n) (A004277 n)

end

end A184617.P2955333669239608937

namespace A184617

/-- `A178890(n)%A004277(n)` -/
def P2955333669239608937.Spec : Prop :=
  ∀ n, P2955333669239608937.a n = A184617 n

end A184617

/-! ## A184617.P2979358257641994561

`A103391(xor(n, A008486(n)))-1`
-/

namespace A184617.P2979358257641994561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (Int.xor (n : ℤ) (A008486 n)).toNat - 1

end

end A184617.P2979358257641994561

namespace A184617

/-- `A103391(xor(n, A008486(n)))-1` -/
def P2979358257641994561.Spec : Prop :=
  ∀ n, P2979358257641994561.a n = A184617 n

end A184617

/-! ## A184617.P9180893335307062064

`A184615(A178729(A184615(n))-n)`
-/

namespace A184617.P9180893335307062064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 (A178729 (A184615 n).toNat - (n : ℤ)).toNat

end

end A184617.P9180893335307062064

namespace A184617

/-- `A184615(A178729(A184615(n))-n)` -/
def P9180893335307062064.Spec : Prop :=
  ∀ n, P9180893335307062064.a n = A184617 n

end A184617

/-! ## A184617.P1538824444800314733

`A184616(2*n)+n`
-/

namespace A184617.P1538824444800314733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 (2 * n) + (n : ℤ)

end

end A184617.P1538824444800314733

namespace A184617

/-- `A184616(2*n)+n` -/
def P1538824444800314733.Spec : Prop :=
  ∀ n, P1538824444800314733.a n = A184617 n

end A184617

/-! ## A184617.P9292519013772462062

`A184615(2*n)-n`
-/

namespace A184617.P9292519013772462062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 (2 * n) - (n : ℤ)

end

end A184617.P9292519013772462062

namespace A184617

/-- `A184615(2*n)-n` -/
def P9292519013772462062.Spec : Prop :=
  ∀ n, P9292519013772462062.a n = A184617 n

end A184617

/-! ## A184617.P5419449357534502346

`A001281(A178729(n))`
-/

namespace A184617.P5419449357534502346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A178729 n).toNat

end

end A184617.P5419449357534502346

namespace A184617

/-- `A001281(A178729(n))` -/
def P5419449357534502346.Spec : Prop :=
  ∀ n, P5419449357534502346.a n = A184617 n

end A184617

/-! ## A184617.P15082756986474719388

`A246159(A142149(A178729(A246159(A048724(n)))))`
-/

namespace A184617.P15082756986474719388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 (A142149 (A178729 (A246159 (A048724 n).toNat).toNat).toNat).toNat

end

end A184617.P15082756986474719388

namespace A184617

/-- `A246159(A142149(A178729(A246159(A048724(n)))))` -/
def P15082756986474719388.Spec : Prop :=
  ∀ n, P15082756986474719388.a n = A184617 n

end A184617

/-! ## A184617.P12488377115579134160

`A178746(n)-A004526(n)`
-/

namespace A184617.P12488377115579134160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178746 n - A004526 n

end

end A184617.P12488377115579134160

namespace A184617

/-- `A178746(n)-A004526(n)` -/
def P12488377115579134160.Spec : Prop :=
  ∀ n, P12488377115579134160.a n = A184617 n

end A184617

/-!
# A184618: a(n) = floor(n*r + h), where r=sqrt(2) and h=1/3; complement of A184619.

The programs for A184618, the canonical program `A184618.P12694712079854673854` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184618 has offset 1).

The definition of A184618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184618.P12694712079854673854

`floor((n+1)*sqrt(2)+1/3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184618

/-- `floor((n+1)*sqrt(2)+1/3)` -/
def P12694712079854673854.Spec : Prop :=
  ∀ n, P12694712079854673854.a n = A184618 (n + 1)

theorem P12694712079854673854.correct : P12694712079854673854.Spec := by
  intro n
  simp only [A184618, Nat.add_sub_cancel]

end A184618

/-! ## A184618.P17221190364405524097

`round(A001951(3*(n+1))/3)`
-/

namespace A184618.P17221190364405524097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001951 (3 * (n + 1)) : ℚ) / 3)

end

end A184618.P17221190364405524097

namespace A184618

/-- `round(A001951(3*(n+1))/3)` -/
def P17221190364405524097.Spec : Prop :=
  ∀ n, P17221190364405524097.a n = A184618 (n + 1)

end A184618

/-! ## A184618.P5735826182871300184

`round(floor(A022842(3*(n+1))/2)/3)`
-/

namespace A184618.P5735826182871300184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌊(A022842 (3 * (n + 1)) : ℚ) / 2⌋ : ℚ) / 3)

end

end A184618.P5735826182871300184

namespace A184618

/-- `round(floor(A022842(3*(n+1))/2)/3)` -/
def P5735826182871300184.Spec : Prop :=
  ∀ n, P5735826182871300184.a n = A184618 (n + 1)

end A184618

/-! ## A184618.P3995262741424889042

`A054071(A288999(n+1)-A006337(3*(n+1)))`
-/

namespace A184618.P3995262741424889042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A288999 (n + 1) - A006337 (3 * (n + 1))).toNat

end

end A184618.P3995262741424889042

namespace A184618

/-- `A054071(A288999(n+1)-A006337(3*(n+1)))` -/
def P3995262741424889042.Spec : Prop :=
  ∀ n, P3995262741424889042.a n = A184618 (n + 1)

end A184618

/-! ## A184618.P604818180764635120

`(A184619(A184625(n+1))+1)%A184625(n+1)`
-/

namespace A184618.P604818180764635120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184619 (A184625 (n + 1)).toNat + 1) (A184625 (n + 1))

end

end A184618.P604818180764635120

namespace A184618

/-- `(A184619(A184625(n+1))+1)%A184625(n+1)` -/
def P604818180764635120.Spec : Prop :=
  ∀ n, P604818180764635120.a n = A184618 (n + 1)

end A184618

/-! ## A184618.P3743645986005723478

`A157792(A001951(3*(n+1))-2)`
-/

namespace A184618.P3743645986005723478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157792 (A001951 (3 * (n + 1)) - 2).toNat

end

end A184618.P3743645986005723478

namespace A184618

/-- `A157792(A001951(3*(n+1))-2)` -/
def P3743645986005723478.Spec : Prop :=
  ∀ n, P3743645986005723478.a n = A184618 (n + 1)

end A184618

/-! ## A184618.P7155455069615320696

`A002264(ceil(A008458(n+1)/sqrt(2)))`
-/

namespace A184618.P7155455069615320696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌈(A008458 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌉.toNat

end

end A184618.P7155455069615320696

namespace A184618

/-- `A002264(ceil(A008458(n+1)/sqrt(2)))` -/
def P7155455069615320696.Spec : Prop :=
  ∀ n, P7155455069615320696.a n = A184618 (n + 1)

end A184618

/-! ## A184618.P12936343791587521721

`A002264(A049474(6*(n+1)))`
-/

namespace A184618.P12936343791587521721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A049474 (6 * (n + 1))).toNat

end

end A184618.P12936343791587521721

namespace A184618

/-- `A002264(A049474(6*(n+1)))` -/
def P12936343791587521721.Spec : Prop :=
  ∀ n, P12936343791587521721.a n = A184618 (n + 1)

end A184618

/-! ## A184618.P18071437881506634462

`A002024((n+1)²-A289133(n))`
-/

namespace A184618.P18071437881506634462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (((n + 1) ^ 2 : ℤ) - A289133 n).toNat

end

end A184618.P18071437881506634462

namespace A184618

/-- `A002024((n+1)²-A289133(n))` -/
def P18071437881506634462.Spec : Prop :=
  ∀ n, P18071437881506634462.a n = A184618 (n + 1)

end A184618

/-! ## A184618.P3296250060785260604

`A003056(floor(∑[2*n-tan(2)]))`
-/

namespace A184618.P3296250060785260604
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) - Real.tan (2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A184618.P3296250060785260604

namespace A184618

/-- `A003056(floor(∑[2*n-tan(2)]))` -/
def P3296250060785260604.Spec : Prop :=
  ∀ n, P3296250060785260604.a n = A184618 (n + 1)

end A184618

/-!
# A184619: a(n) = floor((n-h)*s+h), where s=2+sqrt(2) and h=1/3; complement of A184618.

The programs for A184619, the canonical program `A184619.P2410229444608434272` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184619 has offset 1).

The definition of A184619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184619.P2410229444608434272

`floor((n+1)*sqrt(2)/(sqrt(2)-1)-sqrt(2)/(3*sqrt(2)-3)+1/3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184619

/-- `floor((n+1)*sqrt(2)/(sqrt(2)-1)-sqrt(2)/(3*sqrt(2)-3)+1/3)` -/
def P2410229444608434272.Spec : Prop :=
  ∀ n, P2410229444608434272.a n = A184619 (n + 1)

theorem P2410229444608434272.correct : P2410229444608434272.Spec := by
  intro n
  simp only [A184619, Nat.add_sub_cancel]

end A184619

/-! ## A184619.P5567033810115817675

`round(A001952(3*n+2)/3)`
-/

namespace A184619.P5567033810115817675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001952 (3 * n + 2) : ℚ) / 3)

end

end A184619.P5567033810115817675

namespace A184619

/-- `round(A001952(3*n+2)/3)` -/
def P5567033810115817675.Spec : Prop :=
  ∀ n, P5567033810115817675.a n = A184619 (n + 1)

end A184619

/-! ## A184619.P6222614994852946897

`A195119(A195176(n)+A001951(3*n+2))`
-/

namespace A184619.P6222614994852946897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A195176 n + A001951 (3 * n + 2)).toNat

end

end A184619.P6222614994852946897

namespace A184619

/-- `A195119(A195176(n)+A001951(3*n+2))` -/
def P6222614994852946897.Spec : Prop :=
  ∀ n, P6222614994852946897.a n = A184619 (n + 1)

end A184619

/-! ## A184619.P16527845545219855278

`A065033(A184623(2*n+1))`
-/

namespace A184619.P16527845545219855278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A184623 (2 * n + 1)).toNat

end

end A184619.P16527845545219855278

namespace A184619

/-- `A065033(A184623(2*n+1))` -/
def P16527845545219855278.Spec : Prop :=
  ∀ n, P16527845545219855278.a n = A184619 (n + 1)

end A184619

/-! ## A184619.P7725814884979254734

`A110654(A184623(A005408(n)))`
-/

namespace A184619.P7725814884979254734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A184623 (A005408 n).toNat).toNat

end

end A184619.P7725814884979254734

namespace A184619

/-- `A110654(A184623(A005408(n)))` -/
def P7725814884979254734.Spec : Prop :=
  ∀ n, P7725814884979254734.a n = A184619 (n + 1)

end A184619

/-! ## A184619.P14399794333484048076

`A097508(A001952(3*n+2)-2*n)`
-/

namespace A184619.P14399794333484048076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A001952 (3 * n + 2) - (2 * n : ℤ)).toNat

end

end A184619.P14399794333484048076

namespace A184619

/-- `A097508(A001952(3*n+2)-2*n)` -/
def P14399794333484048076.Spec : Prop :=
  ∀ n, P14399794333484048076.a n = A184619 (n + 1)

end A184619

/-! ## A184619.P5443429370126289560

`A002264(A080755(6*n+4))`
-/

namespace A184619.P5443429370126289560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A080755 (6 * n + 4)).toNat

end

end A184619.P5443429370126289560

namespace A184619

/-- `A002264(A080755(6*n+4))` -/
def P5443429370126289560.Spec : Prop :=
  ∀ n, P5443429370126289560.a n = A184619 (n + 1)

end A184619

/-! ## A184619.P6935219113361690494

`A002264(A001952(A016789(n))+1)`
-/

namespace A184619.P6935219113361690494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001952 (A016789 n).toNat + 1).toNat

end

end A184619.P6935219113361690494

namespace A184619

/-- `A002264(A001952(A016789(n))+1)` -/
def P6935219113361690494.Spec : Prop :=
  ∀ n, P6935219113361690494.a n = A184619 (n + 1)

end A184619

/-!
# A184620: a(n) = floor(nr+h), where r=sqrt(2), h=1/4; complement of A184621.

The programs for A184620, the canonical program `A184620.P14638634874192636400` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184620 has offset 1).

The definition of A184620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184620.P14638634874192636400

`floor((n+1)*sqrt(2)+1/4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184620

/-- `floor((n+1)*sqrt(2)+1/4)` -/
def P14638634874192636400.Spec : Prop :=
  ∀ n, P14638634874192636400.a n = A184620 (n + 1)

theorem P14638634874192636400.correct : P14638634874192636400.Spec := by
  intro n
  simp only [A184620, Nat.add_sub_cancel]

end A184620

/-! ## A184620.P3954462095833952262

`A008619(A184736(n+1)-n)+n`
-/

namespace A184620.P3954462095833952262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184736 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A184620.P3954462095833952262

namespace A184620

/-- `A008619(A184736(n+1)-n)+n` -/
def P3954462095833952262.Spec : Prop :=
  ∀ n, P3954462095833952262.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P11011838535185050485

`A186317(2*(n+1))-2*(n+1)`
-/

namespace A184620.P11011838535185050485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186317 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A184620.P11011838535185050485

namespace A184620

/-- `A186317(2*(n+1))-2*(n+1)` -/
def P11011838535185050485.Spec : Prop :=
  ∀ n, P11011838535185050485.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P17176000028795404963

`A181440(A186315(2*(n+1))-A181440(2*(n+1)))`
-/

namespace A184620.P17176000028795404963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A186315 (2 * (n + 1)) - A181440 (2 * (n + 1))).toNat

end

end A184620.P17176000028795404963

namespace A184620

/-- `A181440(A186315(2*(n+1))-A181440(2*(n+1)))` -/
def P17176000028795404963.Spec : Prop :=
  ∀ n, P17176000028795404963.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P11851855043975765724

`A186317(A014681(2*n+1))%A014681(2*n+1)`
-/

namespace A184620.P11851855043975765724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186317 (A014681 (2 * n + 1)).toNat) (A014681 (2 * n + 1))

end

end A184620.P11851855043975765724

namespace A184620

/-- `A186317(A014681(2*n+1))%A014681(2*n+1)` -/
def P11851855043975765724.Spec : Prop :=
  ∀ n, P11851855043975765724.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P12516223612339785460

`∑[gcd(2, Δ[A076816(2*n)])]`
-/

namespace A184620.P12516223612339785460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076816 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184620.P12516223612339785460

namespace A184620

/-- `∑[gcd(2, Δ[A076816(2*n)])]` -/
def P12516223612339785460.Spec : Prop :=
  ∀ n, (P12516223612339785460.a n : ℤ) = A184620 (n + 1)

end A184620

/-! ## A184620.P4847160424587779584

`A008619(A022851(n+1)-2)`
-/

namespace A184620.P4847160424587779584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022851 (n + 1) - 2).toNat

end

end A184620.P4847160424587779584

namespace A184620

/-- `A008619(A022851(n+1)-2)` -/
def P4847160424587779584.Spec : Prop :=
  ∀ n, P4847160424587779584.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P14211388676021615780

`A008619(A184736(n+1)+n)`
-/

namespace A184620.P14211388676021615780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184736 (n + 1) + (n : ℤ)).toNat

end

end A184620.P14211388676021615780

namespace A184620

/-- `A008619(A184736(n+1)+n)` -/
def P14211388676021615780.Spec : Prop :=
  ∀ n, P14211388676021615780.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P311261976060130190

`A004526(A184736(n+1)+n)+1`
-/

namespace A184620.P311261976060130190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184736 (n + 1) + (n : ℤ)).toNat + 1

end

end A184620.P311261976060130190

namespace A184620

/-- `A004526(A184736(n+1)+n)+1` -/
def P311261976060130190.Spec : Prop :=
  ∀ n, P311261976060130190.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P18411314869769059621

`A123108(round(2*(n+1)*sqrt(2)))`
-/

namespace A184620.P18411314869769059621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℝ) * Real.sqrt (2 : ℝ)))).toNat

end

end A184620.P18411314869769059621

namespace A184620

/-- `A123108(round(2*(n+1)*sqrt(2)))` -/
def P18411314869769059621.Spec : Prop :=
  ∀ n, P18411314869769059621.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P1785500591932275266

`A004526(A022851(n+1))`
-/

namespace A184620.P1785500591932275266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022851 (n + 1)).toNat

end

end A184620.P1785500591932275266

namespace A184620

/-- `A004526(A022851(n+1))` -/
def P1785500591932275266.Spec : Prop :=
  ∀ n, P1785500591932275266.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P8234037079864654123

`A004526(∑[A214848(2*n+1)+A214848(2*n)])`
-/

namespace A184620.P8234037079864654123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 (2 * n + 1) + A214848 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184620.P8234037079864654123

namespace A184620

/-- `A004526(∑[A214848(2*n+1)+A214848(2*n)])` -/
def P8234037079864654123.Spec : Prop :=
  ∀ n, P8234037079864654123.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P7446529880489076666

`A002264(A184624(3*(n+1))+1)`
-/

namespace A184620.P7446529880489076666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A184624 (3 * (n + 1)) + 1).toNat

end

end A184620.P7446529880489076666

namespace A184620

/-- `A002264(A184624(3*(n+1))+1)` -/
def P7446529880489076666.Spec : Prop :=
  ∀ n, P7446529880489076666.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P11918816152492433779

`A186220(2*(n+1))-A061288(A186220(2*(n+1)))`
-/

namespace A184620.P11918816152492433779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186220 (2 * (n + 1)) - A061288 (A186220 (2 * (n + 1))).toNat

end

end A184620.P11918816152492433779

namespace A184620

/-- `A186220(2*(n+1))-A061288(A186220(2*(n+1)))` -/
def P11918816152492433779.Spec : Prop :=
  ∀ n, P11918816152492433779.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P2471419841301105039

`A186222(2*(n+1))-A061288(A186222(2*(n+1)))`
-/

namespace A184620.P2471419841301105039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (2 * (n + 1)) - A061288 (A186222 (2 * (n + 1))).toNat

end

end A184620.P2471419841301105039

namespace A184620

/-- `A186222(2*(n+1))-A061288(A186222(2*(n+1)))` -/
def P2471419841301105039.Spec : Prop :=
  ∀ n, P2471419841301105039.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P6714251153226322908

`A110655(A022851(n+1)+A022851(n))`
-/

namespace A184620.P6714251153226322908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A022851 (n + 1) + A022851 n).toNat

end

end A184620.P6714251153226322908

namespace A184620

/-- `A110655(A022851(n+1)+A022851(n))` -/
def P6714251153226322908.Spec : Prop :=
  ∀ n, P6714251153226322908.a n = A184620 (n + 1)

end A184620

/-! ## A184620.P10349372482617303249

`A002265(A022842(2*(n+1))+1)`
-/

namespace A184620.P10349372482617303249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022842 (2 * (n + 1)) + 1).toNat

end

end A184620.P10349372482617303249

namespace A184620

/-- `A002265(A022842(2*(n+1))+1)` -/
def P10349372482617303249.Spec : Prop :=
  ∀ n, P10349372482617303249.a n = A184620 (n + 1)

end A184620

/-!
# A184621: a(n) = floor((n-h)*s+h), where s=2+sqrt(2) and h=1/4; complement of A184620.

The programs for A184621, the canonical program `A184621.P2016425832786642377` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184621 has offset 1).

The definition of A184621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184621.P2016425832786642377

`floor((n+1-1/4)*(2+sqrt(2))+1/4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184621

/-- `floor((n+1-1/4)*(2+sqrt(2))+1/4)` -/
def P2016425832786642377.Spec : Prop :=
  ∀ n, P2016425832786642377.a n = A184621 (n + 1)

theorem P2016425832786642377.correct : P2016425832786642377.Spec := by
  intro n
  simp only [A184621, Nat.add_sub_cancel]

end A184621

/-! ## A184621.P6247793515764193234

`A184737(Δ[n²])-n`
-/

namespace A184621.P6247793515764193234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A184621.P6247793515764193234

namespace A184621

/-- `A184737(Δ[n²])-n` -/
def P6247793515764193234.Spec : Prop :=
  ∀ n, P6247793515764193234.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P14480543504640144456

`A001952(n+1)-A197879(A022804(n+1))`
-/

namespace A184621.P14480543504640144456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - A197879 (A022804 (n + 1)).toNat

end

end A184621.P14480543504640144456

namespace A184621

/-- `A001952(n+1)-A197879(A022804(n+1))` -/
def P14480543504640144456.Spec : Prop :=
  ∀ n, P14480543504640144456.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P17663096595826373486

`A001952(n+1)-A197879(2*A003151(n+1))`
-/

namespace A184621.P17663096595826373486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - A197879 (2 * A003151 (n + 1)).toNat

end

end A184621.P17663096595826373486

namespace A184621

/-- `A001952(n+1)-A197879(2*A003151(n+1))` -/
def P17663096595826373486.Spec : Prop :=
  ∀ n, P17663096595826373486.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P5676756844130892376

`A074840(A063957(2*(n+1))-n)`
-/

namespace A184621.P5676756844130892376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A063957 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A184621.P5676756844130892376

namespace A184621

/-- `A074840(A063957(2*(n+1))-n)` -/
def P5676756844130892376.Spec : Prop :=
  ∀ n, P5676756844130892376.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P1955927695270484475

`A008619(A063957(2*(n+1))-2)`
-/

namespace A184621.P1955927695270484475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A063957 (2 * (n + 1)) - 2).toNat

end

end A184621.P1955927695270484475

namespace A184621

/-- `A008619(A063957(2*(n+1))-2)` -/
def P1955927695270484475.Spec : Prop :=
  ∀ n, P1955927695270484475.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P2562657218782721105

`A004526(A063957(2*(n+1)))`
-/

namespace A184621.P2562657218782721105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063957 (2 * (n + 1))).toNat

end

end A184621.P2562657218782721105

namespace A184621

/-- `A004526(A063957(2*(n+1)))` -/
def P2562657218782721105.Spec : Prop :=
  ∀ n, P2562657218782721105.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P15773933585398153060

`A065033(A063957(2*(n+1))-1)`
-/

namespace A184621.P15773933585398153060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A063957 (2 * (n + 1)) - 1).toNat

end

end A184621.P15773933585398153060

namespace A184621

/-- `A065033(A063957(2*(n+1))-1)` -/
def P15773933585398153060.Spec : Prop :=
  ∀ n, P15773933585398153060.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P11754275912393553865

`A110654(A063957(2*(n+1))-1)`
-/

namespace A184621.P11754275912393553865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A063957 (2 * (n + 1)) - 1).toNat

end

end A184621.P11754275912393553865

namespace A184621

/-- `A110654(A063957(2*(n+1))-1)` -/
def P11754275912393553865.Spec : Prop :=
  ∀ n, P11754275912393553865.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P9524281243873642091

`A004526(A081477(A004767(n)))`
-/

namespace A184621.P9524281243873642091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081477 (A004767 n).toNat).toNat

end

end A184621.P9524281243873642091

namespace A184621

/-- `A004526(A081477(A004767(n)))` -/
def P9524281243873642091.Spec : Prop :=
  ∀ n, P9524281243873642091.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P10214266684813889079

`A088462(A215247(2*(n+1))-A001953(n+1))`
-/

namespace A184621.P10214266684813889079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A215247 (2 * (n + 1)) - A001953 (n + 1)).toNat

end

end A184621.P10214266684813889079

namespace A184621

/-- `A088462(A215247(2*(n+1))-A001953(n+1))` -/
def P10214266684813889079.Spec : Prop :=
  ∀ n, P10214266684813889079.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P2215376697655401808

`A002265(A215247(2*(n+1)))+n+1`
-/

namespace A184621.P2215376697655401808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A215247 (2 * (n + 1))).toNat + (n + 1 : ℤ)

end

end A184621.P2215376697655401808

namespace A184621

/-- `A002265(A215247(2*(n+1)))+n+1` -/
def P2215376697655401808.Spec : Prop :=
  ∀ n, P2215376697655401808.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P15833676522500998527

`A131508(2*A063957(2*(n+1)))`
-/

namespace A184621.P15833676522500998527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (2 * A063957 (2 * (n + 1))).toNat

end

end A184621.P15833676522500998527

namespace A184621

/-- `A131508(2*A063957(2*(n+1)))` -/
def P15833676522500998527.Spec : Prop :=
  ∀ n, P15833676522500998527.a n = A184621 (n + 1)

end A184621

/-! ## A184621.P6455956988424915804

`A008615(3*A063957(2*(n+1)))`
-/

namespace A184621.P6455956988424915804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A063957 (2 * (n + 1))).toNat

end

end A184621.P6455956988424915804

namespace A184621

/-- `A008615(3*A063957(2*(n+1)))` -/
def P6455956988424915804.Spec : Prop :=
  ∀ n, P6455956988424915804.a n = A184621 (n + 1)

end A184621

/-!
# A184622: a(n) = floor(n*r+h), where r=sqrt(2), h=-1/3; complement of A184623.

The programs for A184622, the canonical program `A184622.P12801887038762317789` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184622 has offset 1).

The definition of A184622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184622.P12801887038762317789

`floor((n+1)*sqrt(2)-1/3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184622

/-- `floor((n+1)*sqrt(2)-1/3)` -/
def P12801887038762317789.Spec : Prop :=
  ∀ n, P12801887038762317789.a n = A184622 (n + 1)

theorem P12801887038762317789.correct : P12801887038762317789.Spec := by
  intro n
  simp only [A184622, Nat.add_sub_cancel]

end A184622

/-! ## A184622.P15959451989185012025

`A004526(A184618(2*(n+1))-1)`
-/

namespace A184622.P15959451989185012025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184618 (2 * (n + 1)) - 1).toNat

end

end A184622.P15959451989185012025

namespace A184622

/-- `A004526(A184618(2*(n+1))-1)` -/
def P15959451989185012025.Spec : Prop :=
  ∀ n, P15959451989185012025.a n = A184622 (n + 1)

end A184622

/-! ## A184622.P9456208682380443984

`ceil(A288998(3*n+1)/3)`
-/

namespace A184622.P9456208682380443984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288998 (3 * n + 1) : ℚ) / 3⌉

end

end A184622.P9456208682380443984

namespace A184622

/-- `ceil(A288998(3*n+1)/3)` -/
def P9456208682380443984.Spec : Prop :=
  ∀ n, P9456208682380443984.a n = A184622 (n + 1)

end A184622

/-! ## A184622.P298010000320697907

`A002264(A049472(6*(n+1))-1)`
-/

namespace A184622.P298010000320697907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A049472 (6 * (n + 1)) - 1).toNat

end

end A184622.P298010000320697907

namespace A184622

/-- `A002264(A049472(6*(n+1))-1)` -/
def P298010000320697907.Spec : Prop :=
  ∀ n, P298010000320697907.a n = A184622 (n + 1)

end A184622

/-! ## A184622.P1213665826232436231

`A188301(A001952(3*(n+1)))%A001952(3*(n+1))`
-/

namespace A184622.P1213665826232436231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188301 (A001952 (3 * (n + 1))).toNat) (A001952 (3 * (n + 1)))

end

end A184622.P1213665826232436231

namespace A184622

/-- `A188301(A001952(3*(n+1)))%A001952(3*(n+1))` -/
def P1213665826232436231.Spec : Prop :=
  ∀ n, P1213665826232436231.a n = A184622 (n + 1)

end A184622

/-! ## A184622.P3584207771416552677

`A001951(n+1)-A286925(3*A286927(n+1))`
-/

namespace A184622.P3584207771416552677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) - A286925 (3 * A286927 (n + 1)).toNat

end

end A184622.P3584207771416552677

namespace A184622

/-- `A001951(n+1)-A286925(3*A286927(n+1))` -/
def P3584207771416552677.Spec : Prop :=
  ∀ n, P3584207771416552677.a n = A184622 (n + 1)

end A184622

/-! ## A184622.P5360004610063290912

`A003056(floor((3/26+n+1)²))`
-/

namespace A184622.P5360004610063290912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊((3 : ℚ) / 26 + (n + 1 : ℚ)) ^ 2⌋.toNat

end

end A184622.P5360004610063290912

namespace A184622

/-- `A003056(floor((3/26+n+1)²))` -/
def P5360004610063290912.Spec : Prop :=
  ∀ n, P5360004610063290912.a n = A184622 (n + 1)

end A184622

/-!
# A184623: a(n) = floor((n-h)*s+h), where s=2+sqrt(2) and h=-1/3; complement of A184622.

The programs for A184623, the canonical program `A184623.P9413717635558718050` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184623 has offset 1).

The definition of A184623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184623.P9413717635558718050

`floor((n+1+1/3)*(2+sqrt(2))-1/3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184623

/-- `floor((n+1+1/3)*(2+sqrt(2))-1/3)` -/
def P9413717635558718050.Spec : Prop :=
  ∀ n, P9413717635558718050.a n = A184623 (n + 1)

theorem P9413717635558718050.correct : P9413717635558718050.Spec := by
  intro n
  simp only [A184623, Nat.add_sub_cancel]

end A184623

/-! ## A184623.P9716467455765744133

`ceil(A288999(3*(n+1))/3)`
-/

namespace A184623.P9716467455765744133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288999 (3 * (n + 1)) : ℚ) / 3⌉

end

end A184623.P9716467455765744133

namespace A184623

/-- `ceil(A288999(3*(n+1))/3)` -/
def P9716467455765744133.Spec : Prop :=
  ∀ n, P9716467455765744133.a n = A184623 (n + 1)

end A184623

/-! ## A184623.P14620829615032769488

`A008620(A003151(3*n+4))+n`
-/

namespace A184623.P14620829615032769488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A003151 (3 * n + 4)).toNat + (n : ℤ)

end

end A184623.P14620829615032769488

namespace A184623

/-- `A008620(A003151(3*n+4))+n` -/
def P14620829615032769488.Spec : Prop :=
  ∀ n, P14620829615032769488.a n = A184623 (n + 1)

end A184623

/-! ## A184623.P3845238443055745501

`A097508(A003151(3*n+4)+n+1)`
-/

namespace A184623.P3845238443055745501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A003151 (3 * n + 4) + (n + 1 : ℤ)).toNat

end

end A184623.P3845238443055745501

namespace A184623

/-- `A097508(A003151(3*n+4)+n+1)` -/
def P3845238443055745501.Spec : Prop :=
  ∀ n, P3845238443055745501.a n = A184623 (n + 1)

end A184623

/-! ## A184623.P3725562948288601727

`A008620(A288999(3*(n+1))-1)`
-/

namespace A184623.P3725562948288601727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A288999 (3 * (n + 1)) - 1).toNat

end

end A184623.P3725562948288601727

namespace A184623

/-- `A008620(A288999(3*(n+1))-1)` -/
def P3725562948288601727.Spec : Prop :=
  ∀ n, P3725562948288601727.a n = A184623 (n + 1)

end A184623

/-! ## A184623.P7330009801983626954

`A002264(A001952(3*n+4)-1)`
-/

namespace A184623.P7330009801983626954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001952 (3 * n + 4) - 1).toNat

end

end A184623.P7330009801983626954

namespace A184623

/-- `A002264(A001952(3*n+4)-1)` -/
def P7330009801983626954.Spec : Prop :=
  ∀ n, P7330009801983626954.a n = A184623 (n + 1)

end A184623

/-! ## A184623.P15931285843360417362

`A002264(A285075(3*n+5)+A016777(n))`
-/

namespace A184623.P15931285843360417362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A285075 (3 * n + 5) + A016777 n).toNat

end

end A184623.P15931285843360417362

namespace A184623

/-- `A002264(A285075(3*n+5)+A016777(n))` -/
def P15931285843360417362.Spec : Prop :=
  ∀ n, P15931285843360417362.a n = A184623 (n + 1)

end A184623

/-!
# A184624: a(n) = floor(n*r +h), where r=sqrt(2), h=-1/4; complement of A184619.

The programs for A184624, the canonical program `A184624.P17749930894808883606` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184624 has offset 1).

The definition of A184624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184624.P17749930894808883606

`floor((n+1)*sqrt(2)-1/4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184624

/-- `floor((n+1)*sqrt(2)-1/4)` -/
def P17749930894808883606.Spec : Prop :=
  ∀ n, P17749930894808883606.a n = A184624 (n + 1)

theorem P17749930894808883606.correct : P17749930894808883606.Spec := by
  intro n
  simp only [A184624, Nat.add_sub_cancel]

end A184624

/-! ## A184624.P214837837456276283

`A008619(A184736(n+1)-1+n)`
-/

namespace A184624.P214837837456276283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184736 (n + 1) - 1 + (n : ℤ)).toNat

end

end A184624.P214837837456276283

namespace A184624

/-- `A008619(A184736(n+1)-1+n)` -/
def P214837837456276283.Spec : Prop :=
  ∀ n, P214837837456276283.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P3906516877371914657

`A004526(A022851(n+1)-1)`
-/

namespace A184624.P3906516877371914657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022851 (n + 1) - 1).toNat

end

end A184624.P3906516877371914657

namespace A184624

/-- `A004526(A022851(n+1)-1)` -/
def P3906516877371914657.Spec : Prop :=
  ∀ n, P3906516877371914657.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P15326465401482685711

`A004526(A184736(n+1)+1+n)`
-/

namespace A184624.P15326465401482685711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184736 (n + 1) + 1 + (n : ℤ)).toNat

end

end A184624.P15326465401482685711

namespace A184624

/-- `A004526(A184736(n+1)+1+n)` -/
def P15326465401482685711.Spec : Prop :=
  ∀ n, P15326465401482685711.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P17965852708681895361

`A004526(A258703(4*(n+1)))`
-/

namespace A184624.P17965852708681895361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A258703 (4 * (n + 1))).toNat

end

end A184624.P17965852708681895361

namespace A184624

/-- `A004526(A258703(4*(n+1)))` -/
def P17965852708681895361.Spec : Prop :=
  ∀ n, P17965852708681895361.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P7441909181868205316

`A186222(2*(n+1))-A049474(A186222(2*(n+1)))`
-/

namespace A184624.P7441909181868205316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (2 * (n + 1)) - A049474 (A186222 (2 * (n + 1))).toNat

end

end A184624.P7441909181868205316

namespace A184624

/-- `A186222(2*(n+1))-A049474(A186222(2*(n+1)))` -/
def P7441909181868205316.Spec : Prop :=
  ∀ n, P7441909181868205316.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P809719821125151908

`A002265(A022842(2*(n+1))-1)`
-/

namespace A184624.P809719821125151908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022842 (2 * (n + 1)) - 1).toNat

end

end A184624.P809719821125151908

namespace A184624

/-- `A002265(A022842(2*(n+1))-1)` -/
def P809719821125151908.Spec : Prop :=
  ∀ n, P809719821125151908.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P4773661369398102247

`A001951(n+1)-A004641(2*A188383(n+1)+1)`
-/

namespace A184624.P4773661369398102247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) - A004641 (2 * A188383 (n + 1) + 1).toNat

end

end A184624.P4773661369398102247

namespace A184624

/-- `A001951(n+1)-A004641(2*A188383(n+1)+1)` -/
def P4773661369398102247.Spec : Prop :=
  ∀ n, P4773661369398102247.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P4914066685356379005

`A000267(∑[n]-A121930(n+1)+n)`
-/

namespace A184624.P4914066685356379005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A121930 (n + 1) + (n : ℤ)).toNat

end

end A184624.P4914066685356379005

namespace A184624

/-- `A000267(∑[n]-A121930(n+1)+n)` -/
def P4914066685356379005.Spec : Prop :=
  ∀ n, P4914066685356379005.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P14385956971143171053

`round(sqrt(2*(abs(A011371((n+1)²)-n)+1)))`
-/

namespace A184624.P14385956971143171053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (|A011371 ((n + 1) ^ 2) - (n : ℤ)| + 1) : ℝ))

end

end A184624.P14385956971143171053

namespace A184624

/-- `round(sqrt(2*(abs(A011371((n+1)²)-n)+1)))` -/
def P14385956971143171053.Spec : Prop :=
  ∀ n, P14385956971143171053.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P1053217937704263459

`A003056(A091711(n+1)-n)+1`
-/

namespace A184624.P1053217937704263459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A091711 (n + 1) - (n : ℤ)).toNat + 1

end

end A184624.P1053217937704263459

namespace A184624

/-- `A003056(A091711(n+1)-n)+1` -/
def P1053217937704263459.Spec : Prop :=
  ∀ n, P1053217937704263459.a n = A184624 (n + 1)

end A184624

/-! ## A184624.P11637380152763638420

`A003056(A011371((n+1)²)-n)+1`
-/

namespace A184624.P11637380152763638420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A011371 ((n + 1) ^ 2) - (n : ℤ)).toNat + 1

end

end A184624.P11637380152763638420

namespace A184624

/-- `A003056(A011371((n+1)²)-n)+1` -/
def P11637380152763638420.Spec : Prop :=
  ∀ n, P11637380152763638420.a n = A184624 (n + 1)

end A184624

/-!
# A184625: a(n) = floor((n-h)*s +h), where s=2+sqrt(2) and h=-1/4; complement of A184624.

The programs for A184625, the canonical program `A184625.P17814988558111772141` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184625 has offset 1).

The definition of A184625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184625.P17814988558111772141

`floor((n+1)*sqrt(2)/(sqrt(2)-1)+sqrt(2)/(4*sqrt(2)-4)-1/4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184625

/-- `floor((n+1)*sqrt(2)/(sqrt(2)-1)+sqrt(2)/(4*sqrt(2)-4)-1/4)` -/
def P17814988558111772141.Spec : Prop :=
  ∀ n, P17814988558111772141.a n = A184625 (n + 1)

theorem P17814988558111772141.correct : P17814988558111772141.Spec := by
  intro n
  simp only [A184625, Nat.add_sub_cancel]

end A184625

/-! ## A184625.P6856768384184417763

`A184737(2*(n+1))-(n+1)`
-/

namespace A184625.P6856768384184417763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184737 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A184625.P6856768384184417763

namespace A184625

/-- `A184737(2*(n+1))-(n+1)` -/
def P6856768384184417763.Spec : Prop :=
  ∀ n, P6856768384184417763.a n = A184625 (n + 1)

end A184625

/-! ## A184625.P871510621093809255

`A258834(A080754(n+1))-A258834(A087057(n+1))`
-/

namespace A184625.P871510621093809255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258834 (A080754 (n + 1)).toNat - A258834 (A087057 (n + 1)).toNat

end

end A184625.P871510621093809255

namespace A184625

/-- `A258834(A080754(n+1))-A258834(A087057(n+1))` -/
def P871510621093809255.Spec : Prop :=
  ∀ n, P871510621093809255.a n = A184625 (n + 1)

end A184625

/-! ## A184625.P4543586086087636241

`ceil(A258833(A184581(n+1))/2+n)`
-/

namespace A184625.P4543586086087636241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A258833 (A184581 (n + 1)).toNat : ℚ) / 2 + (n : ℚ)⌉

end

end A184625.P4543586086087636241

namespace A184625

/-- `ceil(A258833(A184581(n+1))/2+n)` -/
def P4543586086087636241.Spec : Prop :=
  ∀ n, P4543586086087636241.a n = A184625 (n + 1)

end A184625

/-! ## A184625.P7995560880706227329

`round(A288999(4*(n+1))/4)`
-/

namespace A184625.P7995560880706227329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A288999 (4 * (n + 1)) : ℚ) / 4)

end

end A184625.P7995560880706227329

namespace A184625

/-- `round(A288999(4*(n+1))/4)` -/
def P7995560880706227329.Spec : Prop :=
  ∀ n, P7995560880706227329.a n = A184625 (n + 1)

end A184625

/-! ## A184625.P11288707893961845096

`A008619(A081477(4*n+5)-3)`
-/

namespace A184625.P11288707893961845096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A081477 (4 * n + 5) - 3).toNat

end

end A184625.P11288707893961845096

namespace A184625

/-- `A008619(A081477(4*n+5)-3)` -/
def P11288707893961845096.Spec : Prop :=
  ∀ n, P11288707893961845096.a n = A184625 (n + 1)

end A184625

/-! ## A184625.P6989113453454035182

`round(∑[ratio[A020727(n)]])`
-/

namespace A184625.P6989113453454035182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184625.P6989113453454035182

namespace A184625

/-- `round(∑[ratio[A020727(n)]])` -/
def P6989113453454035182.Spec : Prop :=
  ∀ n, P6989113453454035182.a n = A184625 (n + 1)

end A184625

/-! ## A184625.P18248644695692281251

`A257639(A167573(n+1)-A257639(n+1))`
-/

namespace A184625.P18248644695692281251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A167573 (n + 1) - A257639 (n + 1)).toNat

end

end A184625.P18248644695692281251

namespace A184625

/-- `A257639(A167573(n+1)-A257639(n+1))` -/
def P18248644695692281251.Spec : Prop :=
  ∀ n, P18248644695692281251.a n = A184625 (n + 1)

end A184625

/-!
# A184626: floor(nr+h), where r=sqrt(3), h=1/4; complement of A184627.

The programs for A184626, the canonical program `A184626.P17588970043243414211` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184626 has offset 1).

The definition of A184626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2886 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184626.P17588970043243414211

`A004526(A198268(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A184626

/-- `A004526(A198268(n+1))` -/
def P17588970043243414211.Spec : Prop :=
  ∀ n, P17588970043243414211.a n = A184626 (n + 1)

theorem P17588970043243414211.correct : P17588970043243414211.Spec := by
  intro n
  simp only [A184626, Nat.add_sub_cancel]

end A184626

/-! ## A184626.P16478703352022997070

`A004526(A022847(2*(n+1)))`
-/

namespace A184626.P16478703352022997070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022847 (2 * (n + 1))).toNat

end

end A184626.P16478703352022997070

namespace A184626

/-- `A004526(A022847(2*(n+1)))` -/
def P16478703352022997070.Spec : Prop :=
  ∀ n, P16478703352022997070.a n = A184626 (n + 1)

end A184626

/-! ## A184626.P4149276826983170374

`record[A004526(A022847(A005131(n)))]`
-/

namespace A184626.P4149276826983170374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022847 (A005131 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184626.P4149276826983170374

namespace A184626

/-- `record[A004526(A022847(A005131(n)))]` -/
def P4149276826983170374.Spec : Prop :=
  ∀ n, P4149276826983170374.a n = A184626 (n + 1)

end A184626

/-! ## A184626.P2065411538431584282

`record[A123108(A022847(A014681(n)))]`
-/

namespace A184626.P2065411538431584282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A022847 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184626.P2065411538431584282

namespace A184626

/-- `record[A123108(A022847(A014681(n)))]` -/
def P2065411538431584282.Spec : Prop :=
  ∀ n, P2065411538431584282.a n = A184626 (n + 1)

end A184626

/-! ## A184626.P9055312345966538847

`A002264(A022847(2*(n+1))+A022847(n+1))`
-/

namespace A184626.P9055312345966538847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022847 (2 * (n + 1)) + A022847 (n + 1)).toNat

end

end A184626.P9055312345966538847

namespace A184626

/-- `A002264(A022847(2*(n+1))+A022847(n+1))` -/
def P9055312345966538847.Spec : Prop :=
  ∀ n, P9055312345966538847.a n = A184626 (n + 1)

end A184626

/-! ## A184626.P18324533068780957874

`A002265(A194028(2*(n+1))+1)`
-/

namespace A184626.P18324533068780957874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A194028 (2 * (n + 1)) + 1).toNat

end

end A184626.P18324533068780957874

namespace A184626

/-- `A002265(A194028(2*(n+1))+1)` -/
def P18324533068780957874.Spec : Prop :=
  ∀ n, P18324533068780957874.a n = A184626 (n + 1)

end A184626

/-! ## A184626.P9225340672408580353

`A002265(A198081(Δ[A001844(n)]))`
-/

namespace A184626.P9225340672408580353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A198081 (f1 (n + 1) - f1 n).toNat).toNat

end

end A184626.P9225340672408580353

namespace A184626

/-- `A002265(A198081(Δ[A001844(n)]))` -/
def P9225340672408580353.Spec : Prop :=
  ∀ n, P9225340672408580353.a n = A184626 (n + 1)

end A184626

/-! ## A184626.P9603859068728650961

`A002024(A168186(n+1)+A005449(n)+n)`
-/

namespace A184626.P9603859068728650961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A168186 (n + 1) + (A005449 n + (n : ℤ))).toNat

end

end A184626.P9603859068728650961

namespace A184626

/-- `A002024(A168186(n+1)+A005449(n)+n)` -/
def P9603859068728650961.Spec : Prop :=
  ∀ n, P9603859068728650961.a n = A184626 (n + 1)

end A184626

/-!
# A184627: floor((n-h)*s+h), where s=(3+sqrt(3))/2 and h=1/4; complement of A184626.

The programs for A184627, the canonical program `A184627.P12574511466743953538` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184627 has offset 1).

The definition of A184627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184627.P12574511466743953538

`ceil(A184653(2*n+1)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A184627

/-- `ceil(A184653(2*n+1)/2)` -/
def P12574511466743953538.Spec : Prop :=
  ∀ n, P12574511466743953538.a n = A184627 (n + 1)

theorem P12574511466743953538.correct : P12574511466743953538.Spec := by
  intro n
  simp only [A184627, Nat.add_sub_cancel]

end A184627

/-! ## A184627.P11017760710037375228

`round(A184653(A005408(n))/2)`
-/

namespace A184627.P11017760710037375228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184653 (A005408 n).toNat : ℚ) / 2)

end

end A184627.P11017760710037375228

namespace A184627

/-- `round(A184653(A005408(n))/2)` -/
def P11017760710037375228.Spec : Prop :=
  ∀ n, P11017760710037375228.a n = A184627 (n + 1)

end A184627

/-! ## A184627.P14460986113482511072

`A008619(A184653(2*n+1)-1)`
-/

namespace A184627.P14460986113482511072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184653 (2 * n + 1) - 1).toNat

end

end A184627.P14460986113482511072

namespace A184627

/-- `A008619(A184653(2*n+1)-1)` -/
def P14460986113482511072.Spec : Prop :=
  ∀ n, P14460986113482511072.a n = A184627 (n + 1)

end A184627

/-! ## A184627.P1261664387559962942

`A080513(A184653(2*n+1)-2)`
-/

namespace A184627.P1261664387559962942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A184653 (2 * n + 1) - 2).toNat

end

end A184627.P1261664387559962942

namespace A184627

/-- `A080513(A184653(2*n+1)-2)` -/
def P1261664387559962942.Spec : Prop :=
  ∀ n, P1261664387559962942.a n = A184627 (n + 1)

end A184627

/-! ## A184627.P15036796245293441437

`A110654(A184653(2*n+1))`
-/

namespace A184627.P15036796245293441437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A184653 (2 * n + 1)).toNat

end

end A184627.P15036796245293441437

namespace A184627

/-- `A110654(A184653(2*n+1))` -/
def P15036796245293441437.Spec : Prop :=
  ∀ n, P15036796245293441437.a n = A184627 (n + 1)

end A184627

/-! ## A184627.P7229848944121485988

`A004526(A184653(2*n+1)+1)`
-/

namespace A184627.P7229848944121485988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184653 (2 * n + 1) + 1).toNat

end

end A184627.P7229848944121485988

namespace A184627

/-- `A004526(A184653(2*n+1)+1)` -/
def P7229848944121485988.Spec : Prop :=
  ∀ n, P7229848944121485988.a n = A184627 (n + 1)

end A184627

/-! ## A184627.P15946354875370643314

`record[A028242(A184638(n^(n%2)+1))]`
-/

namespace A184627.P15946354875370643314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A184638 (n ^ (n % 2) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184627.P15946354875370643314

namespace A184627

/-- `record[A028242(A184638(n^(n%2)+1))]` -/
def P15946354875370643314.Spec : Prop :=
  ∀ n, P15946354875370643314.a n = A184627 (n + 1)

end A184627

/-! ## A184627.P13479067294481107802

`A065033(A016789(n)+A202304((n+3)*(n+4))-5)`
-/

namespace A184627.P13479067294481107802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A016789 n + (A202304 ((n + 3) * (n + 4)) - 5)).toNat

end

end A184627.P13479067294481107802

namespace A184627

/-- `A065033(A016789(n)+A202304((n+3)*(n+4))-5)` -/
def P13479067294481107802.Spec : Prop :=
  ∀ n, P13479067294481107802.a n = A184627 (n + 1)

end A184627

/-!
# A184628: Floor(1/frac((4+n^4)^(1/4))), where frac(x) is the fractional part of x.

The programs for A184628, the canonical program `A184628.P8592062665291865831` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184628 has offset 1).

The definition of A184628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184628.P8592062665291865831

`floor(sqrt((n+1)^6+3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184628

/-- `floor(sqrt((n+1)^6+3))` -/
def P8592062665291865831.Spec : Prop :=
  ∀ n, (P8592062665291865831.a n : ℤ) = A184628 (n + 1)

theorem P8592062665291865831.correct : P8592062665291865831.Spec := by
  intro n
  simp only [A184628, Nat.add_sub_cancel]

end A184628

/-! ## A184628.P7534128954482921432

`record[abs(1-n^3)]+1`
-/

namespace A184628.P7534128954482921432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A184628.P7534128954482921432

namespace A184628

/-- `record[abs(1-n^3)]+1` -/
def P7534128954482921432.Spec : Prop :=
  ∀ n, P7534128954482921432.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P1752556679388046503

`floor(acot(n))+(n+1)^3`
-/

namespace A184628.P1752556679388046503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((n + 1) ^ 3 : ℤ)

end

end A184628.P1752556679388046503

namespace A184628

/-- `floor(acot(n))+(n+1)^3` -/
def P1752556679388046503.Spec : Prop :=
  ∀ n, P1752556679388046503.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P4645803855587436106

`(n+1)^3*ceil(acot(n))`
-/

namespace A184628.P4645803855587436106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A184628.P4645803855587436106

namespace A184628

/-- `(n+1)^3*ceil(acot(n))` -/
def P4645803855587436106.Spec : Prop :=
  ∀ n, P4645803855587436106.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P9113290388132263845

`record[abs(n*n²-1)+1]`
-/

namespace A184628.P9113290388132263845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - 1| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184628.P9113290388132263845

namespace A184628

/-- `record[abs(n*n²-1)+1]` -/
def P9113290388132263845.Spec : Prop :=
  ∀ n, P9113290388132263845.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P13684697916344641741

`floor(cos(n)²)+(n+1)^3`
-/

namespace A184628.P13684697916344641741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n : ℝ) ^ 2⌋ + ((n + 1) ^ 3 : ℤ)

end

end A184628.P13684697916344641741

namespace A184628

/-- `floor(cos(n)²)+(n+1)^3` -/
def P13684697916344641741.Spec : Prop :=
  ∀ n, P13684697916344641741.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P9547292499314297835

`(n+1)²*ceil(acot(n)+n)`
-/

namespace A184628.P9547292499314297835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉

end

end A184628.P9547292499314297835

namespace A184628

/-- `(n+1)²*ceil(acot(n)+n)` -/
def P9547292499314297835.Spec : Prop :=
  ∀ n, P9547292499314297835.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P2521613359410763878

`C(2, n+2)+(n+1)^3`
-/

namespace A184628.P2521613359410763878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + (n + 1) ^ 3

end

end A184628.P2521613359410763878

namespace A184628

/-- `C(2, n+2)+(n+1)^3` -/
def P2521613359410763878.Spec : Prop :=
  ∀ n, (P2521613359410763878.a n : ℤ) = A184628 (n + 1)

end A184628

/-! ## A184628.P13232172156008751211

`(n%a(n-1)+1)^3` with `a(0)=2`
-/

namespace A184628.P13232172156008751211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n % a (n - 1) + 1) ^ 3

end

end A184628.P13232172156008751211

namespace A184628

/-- `(n%a(n-1)+1)^3` -/
def P13232172156008751211.Spec : Prop :=
  ∀ n, (P13232172156008751211.a n : ℤ) = A184628 (n + 1)

end A184628

/-! ## A184628.P13765938555510526086

`(gcd(n, a(n-1))+1)^3` with `a(0)=2`
-/

namespace A184628.P13765938555510526086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (Nat.gcd n (a (n - 1)) + 1) ^ 3

end

end A184628.P13765938555510526086

namespace A184628

/-- `(gcd(n, a(n-1))+1)^3` -/
def P13765938555510526086.Spec : Prop :=
  ∀ n, (P13765938555510526086.a n : ℤ) = A184628 (n + 1)

end A184628

/-! ## A184628.P14969099588001033935

`Δ[a(n-1)+n^3]` with `a(0)=0, a(1)=2`
-/

namespace A184628.P14969099588001033935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A184628.P14969099588001033935

namespace A184628

/-- `Δ[a(n-1)+n^3]` -/
def P14969099588001033935.Spec : Prop :=
  ∀ n, P14969099588001033935.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P18394529033060812657

`round(acot(n+1)+(n+1)^3)`
-/

namespace A184628.P18394529033060812657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + ((n + 1) ^ 3 : ℝ))

end

end A184628.P18394529033060812657

namespace A184628

/-- `round(acot(n+1)+(n+1)^3)` -/
def P18394529033060812657.Spec : Prop :=
  ∀ n, P18394529033060812657.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P12341606454235547412

`(n+1)*ceil((n+2)/acot(n))`
-/

namespace A184628.P12341606454235547412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

end

end A184628.P12341606454235547412

namespace A184628

/-- `(n+1)*ceil((n+2)/acot(n))` -/
def P12341606454235547412.Spec : Prop :=
  ∀ n, P12341606454235547412.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P5570873165987498072

`lcm((n+1)^3, ceil(2/(n+1)))`
-/

namespace A184628.P5570873165987498072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 3 : ℤ) ⌈2 / (n + 1 : ℚ)⌉

end

end A184628.P5570873165987498072

namespace A184628

/-- `lcm((n+1)^3, ceil(2/(n+1)))` -/
def P5570873165987498072.Spec : Prop :=
  ∀ n, (P5570873165987498072.a n : ℤ) = A184628 (n + 1)

end A184628

/-! ## A184628.P10796590760568324769

`(n+1)^val(a(n-1), n)` with `a(0)=2, a(1)=8`
-/

namespace A184628.P10796590760568324769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  (n + 1) ^ SequenceMachineLib.valuation (a (n - 1)) n

end

end A184628.P10796590760568324769

namespace A184628

/-- `(n+1)^val(a(n-1), n)` -/
def P10796590760568324769.Spec : Prop :=
  ∀ n, (P10796590760568324769.a n : ℤ) = A184628 (n + 1)

end A184628

/-! ## A184628.P11050351729364699112

`(n+1)*floor(acot(n)+(n+1)²)`
-/

namespace A184628.P11050351729364699112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊SequenceMachineLib.acot (n : ℝ) + ((n + 1) ^ 2 : ℝ)⌋

end

end A184628.P11050351729364699112

namespace A184628

/-- `(n+1)*floor(acot(n)+(n+1)²)` -/
def P11050351729364699112.Spec : Prop :=
  ∀ n, P11050351729364699112.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P17664342925336344279

`∪[(n+2)^3, a(n-1)^3]` with `a(0)=2`
-/

namespace A184628.P17664342925336344279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A184628.P17664342925336344279

namespace A184628

/-- `∪[(n+2)^3, a(n-1)^3]` -/
def P17664342925336344279.Spec : Prop :=
  ∀ n, (P17664342925336344279.a n : ℤ) = A184628 (n + 1)

end A184628

/-! ## A184628.P17384180740525043258

`Δ[C(n+1, 2)²]+C(2, n+2)`
-/

namespace A184628.P17384180740525043258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose 2 (n + 2) : ℤ)

end

end A184628.P17384180740525043258

namespace A184628

/-- `Δ[C(n+1, 2)²]+C(2, n+2)` -/
def P17384180740525043258.Spec : Prop :=
  ∀ n, P17384180740525043258.a n = A184628 (n + 1)

end A184628

/-! ## A184628.P16472994429088431068

`char[a(n-1)²]+(n+1)^3` with `a(0)=0`
-/

namespace A184628.P16472994429088431068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (n + 1) ^ 3

end

end A184628.P16472994429088431068

namespace A184628

/-- `char[a(n-1)²]+(n+1)^3` -/
def P16472994429088431068.Spec : Prop :=
  ∀ n, (P16472994429088431068.a n : ℤ) = A184628 (n + 1)

end A184628

/-! ## A184628.P11617529019068570747

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=8, a(2)=27, a(3)=64, a(4)=125`
-/

namespace A184628.P11617529019068570747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 27, 64, 125] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A184628.P11617529019068570747

namespace A184628

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11617529019068570747.Spec : Prop :=
  ∀ n, P11617529019068570747.a n = A184628 (n + 1)

end A184628

/-!
# A184629: Floor(1/{(5+n^4)^(1/4)}), where {}=fractional part.

The programs for A184629, there is no canonical definition to state claims against.
-/

/-! ## A184629.P4262090277106569979

`A002266(A100214(n+1)-A237526(n))`
-/

namespace A184629.P4262090277106569979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A100214 (n + 1) - A237526 n).toNat

end

end A184629.P4262090277106569979

/-! ## A184629.P6756488070170171423

`A002266(A100214(n+1)-A002266(2*n+1))`
-/

namespace A184629.P6756488070170171423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A100214 (n + 1) - A002266 (2 * n + 1)).toNat

end

end A184629.P6756488070170171423

/-! ## A184629.P15793525546440694933

`∑[∑[A314943(A087051(n))]]`
-/

namespace A184629.P15793525546440694933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 (A087051 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184629.P15793525546440694933

/-!
# A184630: Floor(1/{(6+n^4)^(1/4)}), where {}=fractional part.

The programs for A184630, there is no canonical definition to state claims against.
-/

/-! ## A184630.P16372328741958949352

`A110654(A025786(n)+∑[A016754(n)])`
-/

namespace A184630.P16372328741958949352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A025786 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184630.P16372328741958949352

/-! ## A184630.P18046465122980547568

`A008619(A166911(n))-A024417(n+1)`
-/

namespace A184630.P18046465122980547568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A166911 n).toNat - A024417 (n + 1)

end

end A184630.P18046465122980547568

/-! ## A184630.P12208413112042765999

`A008619(∑[A069894(n)])-A024417(n+1)`
-/

namespace A184630.P12208413112042765999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A024417 (n + 1)

end

end A184630.P12208413112042765999

/-! ## A184630.P18183863961066816139

`A131732(∑[A069894(n)])-A024417(n+1)`
-/

namespace A184630.P18183863961066816139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A024417 (n + 1)

end

end A184630.P18183863961066816139

/-!
# A184631: Floor(1/{(7+n^4)^(1/4)}), where {}=fractional part.

The programs for A184631, there is no canonical definition to state claims against.
-/

/-! ## A184631.P8290066601378743550

`A057358((n+1)^3)+char[n^6]`
-/

namespace A184631.P8290066601378743550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 ((n + 1) ^ 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184631.P8290066601378743550

/-! ## A184631.P17478145974527683085

`or(A057358((n+1)^3), A130779(n))`
-/

namespace A184631.P17478145974527683085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057358 ((n + 1) ^ 3)) (A130779 n)

end

end A184631.P17478145974527683085

/-! ## A184631.P15122967226083010249

`A005842(A132411(n+1))`
-/

namespace A184631.P15122967226083010249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (A132411 (n + 1)).toNat

end

end A184631.P15122967226083010249

/-!
# A184632: Floor(1/{(8+n^4)^(1/4)}), where {}=fractional part.

The programs for A184632, the canonical program `A184632.P17251345785556756638` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184632 has offset 1).

The definition of A184632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184632.P5520011522309612375

`floor(cosh(3*log(n+1)))`
-/

namespace A184632.P5520011522309612375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (3 * Real.log (n + 1 : ℝ))⌋

end

end A184632.P5520011522309612375

namespace A184632

/-- `floor(cosh(3*log(n+1)))` -/
def P5520011522309612375.Spec : Prop :=
  ∀ n, P5520011522309612375.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P17251345785556756638

`floor(sqrt(ceil((n+1)^6/4)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184632

/-- `floor(sqrt(ceil((n+1)^6/4)))` -/
def P17251345785556756638.Spec : Prop :=
  ∀ n, P17251345785556756638.a n = A184632 (n + 1)

theorem P17251345785556756638.correct : P17251345785556756638.Spec := by
  intro n
  simp only [A184632, Nat.add_sub_cancel]

end A184632

/-! ## A184632.P14998229341625885280

`ceil(record[abs(1-n^3)]/2)`
-/

namespace A184632.P14998229341625885280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A184632.P14998229341625885280

namespace A184632

/-- `ceil(record[abs(1-n^3)]/2)` -/
def P14998229341625885280.Spec : Prop :=
  ∀ n, P14998229341625885280.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P5334188844552990326

`Δ[a(n-1)+floor(n^3/2)]` with `a(0)=0, a(1)=1`
-/

namespace A184632.P5334188844552990326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + ⌊(n ^ 3 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184632.P5334188844552990326

namespace A184632

/-- `Δ[a(n-1)+floor(n^3/2)]` -/
def P5334188844552990326.Spec : Prop :=
  ∀ n, P5334188844552990326.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P2638263980400052896

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=32, a(4)=62, a(5)=108`
-/

namespace A184632.P2638263980400052896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13, 32, 62, 108] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A184632.P2638263980400052896

namespace A184632

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P2638263980400052896.Spec : Prop :=
  ∀ n, P2638263980400052896.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P9339067529143661200

`ceil(A135300(n+1)/2)`
-/

namespace A184632.P9339067529143661200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135300 (n + 1) : ℚ) / 2⌉

end

end A184632.P9339067529143661200

namespace A184632

/-- `ceil(A135300(n+1)/2)` -/
def P9339067529143661200.Spec : Prop :=
  ∀ n, P9339067529143661200.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P8695913063452248972

`A056107(n)+a(n-2)` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A184632.P8695913063452248972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  A056107 n + a (n - 2)

end

end A184632.P8695913063452248972

namespace A184632

/-- `A056107(n)+a(n-2)` -/
def P8695913063452248972.Spec : Prop :=
  ∀ n, P8695913063452248972.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P1631351333017256191

`A036487(n+1)+C(2, n+2)`
-/

namespace A184632.P1631351333017256191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A184632.P1631351333017256191

namespace A184632

/-- `A036487(n+1)+C(2, n+2)` -/
def P1631351333017256191.Spec : Prop :=
  ∀ n, P1631351333017256191.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P7827457899813259792

`floor(cosh(log(A184628(n+1)+2)))-1`
-/

namespace A184632.P7827457899813259792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (A184628 (n + 1) + 2 : ℝ))⌋ - 1

end

end A184632.P7827457899813259792

namespace A184632

/-- `floor(cosh(log(A184628(n+1)+2)))-1` -/
def P7827457899813259792.Spec : Prop :=
  ∀ n, P7827457899813259792.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P16213528178772442598

`A065033(n)+A027480(n)`
-/

namespace A184632.P16213528178772442598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A027480 n

end

end A184632.P16213528178772442598

namespace A184632

/-- `A065033(n)+A027480(n)` -/
def P16213528178772442598.Spec : Prop :=
  ∀ n, P16213528178772442598.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P2938059847104917773

`A134479(n)+A036486(n)`
-/

namespace A184632.P2938059847104917773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134479 n + A036486 n

end

end A184632.P2938059847104917773

namespace A184632

/-- `A134479(n)+A036486(n)` -/
def P2938059847104917773.Spec : Prop :=
  ∀ n, P2938059847104917773.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P14172481241770088097

`A080476(n+1)+A006002(n)`
-/

namespace A184632.P14172481241770088097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) + A006002 n

end

end A184632.P14172481241770088097

namespace A184632

/-- `A080476(n+1)+A006002(n)` -/
def P14172481241770088097.Spec : Prop :=
  ∀ n, P14172481241770088097.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P13669429103287485697

`A227017(n+1)+A006003(n)`
-/

namespace A184632.P13669429103287485697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227017 (n + 1) + A006003 n

end

end A184632.P13669429103287485697

namespace A184632

/-- `A227017(n+1)+A006003(n)` -/
def P13669429103287485697.Spec : Prop :=
  ∀ n, P13669429103287485697.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P12594525986692144425

`A393145(n+1)+A084990(n)`
-/

namespace A184632.P12594525986692144425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393145 (n + 1) + A084990 n

end

end A184632.P12594525986692144425

namespace A184632

/-- `A393145(n+1)+A084990(n)` -/
def P12594525986692144425.Spec : Prop :=
  ∀ n, P12594525986692144425.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P15699930433465175697

`A265284(n)+A212343(n+2)`
-/

namespace A184632.P15699930433465175697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265284 n + A212343 (n + 2)

end

end A184632.P15699930433465175697

namespace A184632

/-- `A265284(n)+A212343(n+2)` -/
def P15699930433465175697.Spec : Prop :=
  ∀ n, P15699930433465175697.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P6280652133302864625

`A182260(n+1)+A076921(n+1)`
-/

namespace A184632.P6280652133302864625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) + A076921 (n + 1)

end

end A184632.P6280652133302864625

namespace A184632

/-- `A182260(n+1)+A076921(n+1)` -/
def P6280652133302864625.Spec : Prop :=
  ∀ n, P6280652133302864625.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P17875281591598884467

`A158842(n+1)+A140106(n+1)`
-/

namespace A184632.P17875281591598884467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 (n + 1) + A140106 (n + 1)

end

end A184632.P17875281591598884467

namespace A184632

/-- `A158842(n+1)+A140106(n+1)` -/
def P17875281591598884467.Spec : Prop :=
  ∀ n, P17875281591598884467.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P169120253612661153

`record[A274324(n)-n]+n`
-/

namespace A184632.P169120253612661153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A184632.P169120253612661153

namespace A184632

/-- `record[A274324(n)-n]+n` -/
def P169120253612661153.Spec : Prop :=
  ∀ n, P169120253612661153.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P11095036725671437139

`A036487(n+1)+A080476(n+1)-A007590(n+1)`
-/

namespace A184632.P11095036725671437139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (n + 1) + (A080476 (n + 1) - A007590 (n + 1))

end

end A184632.P11095036725671437139

namespace A184632

/-- `A036487(n+1)+A080476(n+1)-A007590(n+1)` -/
def P11095036725671437139.Spec : Prop :=
  ∀ n, P11095036725671437139.a n = A184632 (n + 1)

end A184632

/-! ## A184632.P8666922194510254356

`A036487(n+1)+A184536(n+1)-A033430(n+1)`
-/

namespace A184632.P8666922194510254356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (n + 1) + (A184536 (n + 1) - A033430 (n + 1))

end

end A184632.P8666922194510254356

namespace A184632

/-- `A036487(n+1)+A184536(n+1)-A033430(n+1)` -/
def P8666922194510254356.Spec : Prop :=
  ∀ n, P8666922194510254356.a n = A184632 (n + 1)

end A184632

/-!
# A184633: Floor(1/{(9+n^4)^(1/4)}), where {} = fractional part.

The programs for A184633, the canonical program `A184633.P16818360736168703371` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184633 has offset 1).

The definition of A184633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184633.P16818360736168703371

`floor(ceil((2/3*(n+1)²)²)/(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184633

/-- `floor(ceil((2/3*(n+1)²)²)/(n+1))` -/
def P16818360736168703371.Spec : Prop :=
  ∀ n, P16818360736168703371.a n = A184633 (n + 1)

theorem P16818360736168703371.correct : P16818360736168703371.Spec := by
  intro n
  simp only [A184633, Nat.add_sub_cancel]

end A184633

/-! ## A184633.P3600007946064864782

`round(sqrt((((n+1)*(n+1-xor(n, -1))²-1)/9)²+1))`
-/

namespace A184633.P3600007946064864782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((((n + 1 : ℤ) * ((n + 1 : ℤ) - Int.xor (n : ℤ) (-1)) ^ 2 - 1 : ℚ) / 9) ^ 2 + 1 : ℝ))

end

end A184633.P3600007946064864782

namespace A184633

/-- `round(sqrt((((n+1)*(n+1-xor(n, -1))²-1)/9)²+1))` -/
def P3600007946064864782.Spec : Prop :=
  ∀ n, P3600007946064864782.a n = A184633 (n + 1)

end A184633

/-! ## A184633.P17712960791949681714

`round(A184538(n+1)/3)`
-/

namespace A184633.P17712960791949681714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184538 (n + 1) : ℚ) / 3)

end

end A184633.P17712960791949681714

namespace A184633

/-- `round(A184538(n+1)/3)` -/
def P17712960791949681714.Spec : Prop :=
  ∀ n, P17712960791949681714.a n = A184633 (n + 1)

end A184633

/-! ## A184633.P15432740533115502188

`floor(Δ[(2/3*∑[n])²])+C(n, n²)`
-/

namespace A184633.P15432740533115502188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ + (Nat.choose n (n ^ 2) : ℤ)

end

end A184633.P15432740533115502188

namespace A184633

/-- `floor(Δ[(2/3*∑[n])²])+C(n, n²)` -/
def P15432740533115502188.Spec : Prop :=
  ∀ n, P15432740533115502188.a n = A184633 (n + 1)

end A184633

/-! ## A184633.P16408492597946516082

`round((A008620(abs(2-n))+A000447(n+1))/3)`
-/

namespace A184633.P16408492597946516082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008620 |2 - (n : ℤ)|.toNat + A000447 (n + 1) : ℚ) / 3)

end

end A184633.P16408492597946516082

namespace A184633

/-- `round((A008620(abs(2-n))+A000447(n+1))/3)` -/
def P16408492597946516082.Spec : Prop :=
  ∀ n, P16408492597946516082.a n = A184633 (n + 1)

end A184633

/-!
# A184634: a(n) = floor(1/{(10+n^4)^(1/4)}), where {}=fractional part.

The programs for A184634, there is no canonical definition to state claims against.
-/

/-! ## A184634.P14318072449405746080

`floor(cosh(log(A184629(n+1))))`
-/

namespace A184634.P14318072449405746080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (A184629 (n + 1) : ℝ))⌋

end

end A184634.P14318072449405746080

/-! ## A184634.P17163696249609839295

`floor(A184629(n+1)/A020639(A103517(n)))`
-/

namespace A184634.P17163696249609839295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184629 (n + 1) : ℚ) / (A020639 (A103517 n).toNat : ℚ)⌋

end

end A184634.P17163696249609839295

/-! ## A184634.P5541106465193827670

`A184629(2*(n+1))%A184628(n+1)`
-/

namespace A184634.P5541106465193827670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184629 (2 * (n + 1))) (A184628 (n + 1))

end

end A184634.P5541106465193827670

/-! ## A184634.P10369464997812511669

`floor(A184629(n+1)/A020639(A005893(n)))`
-/

namespace A184634.P10369464997812511669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184629 (n + 1) : ℚ) / (A020639 (A005893 n).toNat : ℚ)⌋

end

end A184634.P10369464997812511669

/-! ## A184634.P17042626830854586559

`floor(A184629(n+1)/A020639(A005899(n)))`
-/

namespace A184634.P17042626830854586559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184629 (n + 1) : ℚ) / (A020639 (A005899 n).toNat : ℚ)⌋

end

end A184634.P17042626830854586559

/-!
# A184635: a(n) = floor(1/{(n+n^4)^(1/4)}), where {} = fractional part.

The programs for A184635, the canonical program `A184635.P11694298858324057591` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184635 has offset 1).

The definition of A184635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184635.P16763837538203345603

`floor(4/acot((n+1)²))`
-/

namespace A184635.P16763837538203345603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ)⌋

end

end A184635.P16763837538203345603

namespace A184635

/-- `floor(4/acot((n+1)²))` -/
def P16763837538203345603.Spec : Prop :=
  ∀ n, P16763837538203345603.a n = A184635 (n + 1)

end A184635

/-! ## A184635.P4577038895697556172

`round(4/acot((n+1)²))`
-/

namespace A184635.P4577038895697556172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ))

end

end A184635.P4577038895697556172

namespace A184635

/-- `round(4/acot((n+1)²))` -/
def P4577038895697556172.Spec : Prop :=
  ∀ n, P4577038895697556172.a n = A184635 (n + 1)

end A184635

/-! ## A184635.P11694298858324057591

`∑[a(n-1)+8]` with `a(0)=5, a(1)=11, a(2)=20`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184635

/-- `∑[a(n-1)+8]` -/
def P11694298858324057591.Spec : Prop :=
  ∀ n, (P11694298858324057591.a n : ℤ) = A184635 (n + 1)

theorem P11694298858324057591.correct : P11694298858324057591.Spec := by
  intro n
  simp only [A184635, Nat.add_sub_cancel]

end A184635

/-! ## A184635.P441471834082357644

`record[lcm(n+2, n+4)+1]`
-/

namespace A184635.P441471834082357644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (n + 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184635.P441471834082357644

namespace A184635

/-- `record[lcm(n+2, n+4)+1]` -/
def P441471834082357644.Spec : Prop :=
  ∀ n, (P441471834082357644.a n : ℤ) = A184635 (n + 1)

end A184635

/-! ## A184635.P3715739226297260261

`record[(5-n)^gcd(2, n+1)]`
-/

namespace A184635.P3715739226297260261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (n : ℤ)) ^ Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184635.P3715739226297260261

namespace A184635

/-- `record[(5-n)^gcd(2, n+1)]` -/
def P3715739226297260261.Spec : Prop :=
  ∀ n, P3715739226297260261.a n = A184635 (n + 1)

end A184635

/-! ## A184635.P15478074738242294490

`floor(acot(n)+(2*(n+1))²)`
-/

namespace A184635.P15478074738242294490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + ((2 * (n + 1)) ^ 2 : ℝ)⌋

end

end A184635.P15478074738242294490

namespace A184635

/-- `floor(acot(n)+(2*(n+1))²)` -/
def P15478074738242294490.Spec : Prop :=
  ∀ n, P15478074738242294490.a n = A184635 (n + 1)

end A184635

/-! ## A184635.P17352566672765821163

`(ceil(acot(n))+3)*(n+1)²`
-/

namespace A184635.P17352566672765821163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ + 3) * ((n + 1) ^ 2 : ℤ)

end

end A184635.P17352566672765821163

namespace A184635

/-- `(ceil(acot(n))+3)*(n+1)²` -/
def P17352566672765821163.Spec : Prop :=
  ∀ n, P17352566672765821163.a n = A184635 (n + 1)

end A184635

/-! ## A184635.P8867020704488590563

`∑[ogf((5+x+3x^2-x^3)/(1-2x+x^2))]`
-/

namespace A184635.P8867020704488590563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1, 3, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184635.P8867020704488590563

namespace A184635

/-- `∑[ogf((5+x+3x^2-x^3)/(1-2x+x^2))]` -/
def P8867020704488590563.Spec : Prop :=
  ∀ n, P8867020704488590563.a n = A184635 (n + 1)

end A184635

/-! ## A184635.P5769369378068410109

`ogf((5+x+3x^2-x^3)/(1-3x+3x^2-x^3))`
-/

namespace A184635.P5769369378068410109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1, 3, -1] [1, -3, 3, -1] n

end

end A184635.P5769369378068410109

namespace A184635

/-- `ogf((5+x+3x^2-x^3)/(1-3x+3x^2-x^3))` -/
def P5769369378068410109.Spec : Prop :=
  ∀ n, P5769369378068410109.a n = A184635 (n + 1)

end A184635

/-! ## A184635.P14062223310464566951

`(n+1)*floor(4/acot(n+1))`
-/

namespace A184635.P14062223310464566951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊4 / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A184635.P14062223310464566951

namespace A184635

/-- `(n+1)*floor(4/acot(n+1))` -/
def P14062223310464566951.Spec : Prop :=
  ∀ n, P14062223310464566951.a n = A184635 (n + 1)

end A184635

/-! ## A184635.P9745431609132465144

`C(2, n+2)+(2*(n+1))²`
-/

namespace A184635.P9745431609132465144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + (2 * (n + 1)) ^ 2

end

end A184635.P9745431609132465144

namespace A184635

/-- `C(2, n+2)+(2*(n+1))²` -/
def P9745431609132465144.Spec : Prop :=
  ∀ n, (P9745431609132465144.a n : ℤ) = A184635 (n + 1)

end A184635

/-! ## A184635.P14515381148449619640

`(2*(n+1)%a(n-1))²` with `a(0)=5`
-/

namespace A184635.P14515381148449619640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  (2 * ((n + 1) % a (n - 1))) ^ 2

end

end A184635.P14515381148449619640

namespace A184635

/-- `(2*(n+1)%a(n-1))²` -/
def P14515381148449619640.Spec : Prop :=
  ∀ n, (P14515381148449619640.a n : ℤ) = A184635 (n + 1)

end A184635

/-! ## A184635.P16346052675930844388

`Δ[a(n-1)+(2*n)²]` with `a(0)=0, a(1)=5`
-/

namespace A184635.P16346052675930844388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A184635.P16346052675930844388

namespace A184635

/-- `Δ[a(n-1)+(2*n)²]` -/
def P16346052675930844388.Spec : Prop :=
  ∀ n, P16346052675930844388.a n = A184635 (n + 1)

end A184635

/-! ## A184635.P10617022550597504191

`record[(2*n)^(2%a(n-1))]` with `a(0)=5`
-/

namespace A184635.P10617022550597504191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  (2 * n) ^ (2 % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184635.P10617022550597504191

namespace A184635

/-- `record[(2*n)^(2%a(n-1))]` -/
def P10617022550597504191.Spec : Prop :=
  ∀ n, (P10617022550597504191.a n : ℤ) = A184635 (n + 1)

end A184635

/-! ## A184635.P16979635722904437206

`record[(a(n-2)%(2*n))²]` with `a(0)=5, a(1)=4`
-/

namespace A184635.P16979635722904437206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  (f1 (n - 2) % (2 * n)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184635.P16979635722904437206

namespace A184635

/-- `record[(a(n-2)%(2*n))²]` -/
def P16979635722904437206.Spec : Prop :=
  ∀ n, (P16979635722904437206.a n : ℤ) = A184635 (n + 1)

end A184635

/-! ## A184635.P2420103309280844734

`or((n+2+n)², C(2, n+2))`
-/

namespace A184635.P2420103309280844734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((n + 2 + n) ^ 2) (Nat.choose 2 (n + 2))

end

end A184635.P2420103309280844734

namespace A184635

/-- `or((n+2+n)², C(2, n+2))` -/
def P2420103309280844734.Spec : Prop :=
  ∀ n, (P2420103309280844734.a n : ℤ) = A184635 (n + 1)

end A184635

/-! ## A184635.P13372801795840894585

`xor((n+2+n)², C(2, n+2))`
-/

namespace A184635.P13372801795840894585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((n + 2 + n) ^ 2) (Nat.choose 2 (n + 2))

end

end A184635.P13372801795840894585

namespace A184635

/-- `xor((n+2+n)², C(2, n+2))` -/
def P13372801795840894585.Spec : Prop :=
  ∀ n, (P13372801795840894585.a n : ℤ) = A184635 (n + 1)

end A184635

/-! ## A184635.P5559111960323977564

`((n+2)%a(n-1)+n)²` with `a(0)=5`
-/

namespace A184635.P5559111960323977564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  ((n + 2) % a (n - 1) + n) ^ 2

end

end A184635.P5559111960323977564

namespace A184635

/-- `((n+2)%a(n-1)+n)²` -/
def P5559111960323977564.Spec : Prop :=
  ∀ n, (P5559111960323977564.a n : ℤ) = A184635 (n + 1)

end A184635

/-! ## A184635.P13066972111941010347

`(gcd(n, a(n-1))+n+2)²` with `a(0)=5`
-/

namespace A184635.P13066972111941010347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  (Nat.gcd n (a (n - 1)) + (n + 2)) ^ 2

end

end A184635.P13066972111941010347

namespace A184635

/-- `(gcd(n, a(n-1))+n+2)²` -/
def P13066972111941010347.Spec : Prop :=
  ∀ n, (P13066972111941010347.a n : ℤ) = A184635 (n + 1)

end A184635

/-! ## A184635.P9205781023924881494

`(floor(ratio[n+1])+3)*(n+1)²`
-/

namespace A184635.P9205781023924881494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ + 3) * ((n + 1) ^ 2 : ℤ)

end

end A184635.P9205781023924881494

namespace A184635

/-- `(floor(ratio[n+1])+3)*(n+1)²` -/
def P9205781023924881494.Spec : Prop :=
  ∀ n, P9205781023924881494.a n = A184635 (n + 1)

end A184635

/-!
# A184636: a(n) = floor(1/{(n^4+2*n)^(1/4)}), where {}=fractional part.

The programs for A184636, the canonical program `A184636.P11329117154284784989` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184636 has offset 1).

The definition of A184636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184636.P6707698208809746502

`round(2/acot((n+1)²))`
-/

namespace A184636.P6707698208809746502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ))

end

end A184636.P6707698208809746502

namespace A184636

/-- `round(2/acot((n+1)²))` -/
def P6707698208809746502.Spec : Prop :=
  ∀ n, P6707698208809746502.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P11329117154284784989

`∑[a(n-1)+4]` with `a(0)=3, a(1)=5, a(2)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184636

/-- `∑[a(n-1)+4]` -/
def P11329117154284784989.Spec : Prop :=
  ∀ n, (P11329117154284784989.a n : ℤ) = A184636 (n + 1)

theorem P11329117154284784989.correct : P11329117154284784989.Spec := by
  intro n
  simp only [A184636, Nat.add_sub_cancel]

end A184636

/-! ## A184636.P16496958095398796772

`round(2/atan((1/(n+1))²))`
-/

namespace A184636.P16496958095398796772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / Real.arctan ((1 / (n + 1 : ℚ)) ^ 2 : ℝ))

end

end A184636.P16496958095398796772

namespace A184636

/-- `round(2/atan((1/(n+1))²))` -/
def P16496958095398796772.Spec : Prop :=
  ∀ n, P16496958095398796772.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P4366784470619161132

`floor(4/atan(2/(n+1)²))`
-/

namespace A184636.P4366784470619161132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / Real.arctan (2 / ((n + 1) ^ 2 : ℚ) : ℝ)⌋

end

end A184636.P4366784470619161132

namespace A184636

/-- `floor(4/atan(2/(n+1)²))` -/
def P4366784470619161132.Spec : Prop :=
  ∀ n, P4366784470619161132.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P5640435292474236732

`round(2/tanh((1/(n+1))²))`
-/

namespace A184636.P5640435292474236732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / Real.tanh ((1 / (n + 1 : ℚ)) ^ 2 : ℝ))

end

end A184636.P5640435292474236732

namespace A184636

/-- `round(2/tanh((1/(n+1))²))` -/
def P5640435292474236732.Spec : Prop :=
  ∀ n, P5640435292474236732.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P5290131738347535224

`floor(acot(n)+2*(n+1)²)`
-/

namespace A184636.P5290131738347535224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (2 * (n + 1) ^ 2 : ℝ)⌋

end

end A184636.P5290131738347535224

namespace A184636

/-- `floor(acot(n)+2*(n+1)²)` -/
def P5290131738347535224.Spec : Prop :=
  ∀ n, P5290131738347535224.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P8354051987688257549

`(ceil(acot(n))+1)*(n+1)²`
-/

namespace A184636.P8354051987688257549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ + 1) * ((n + 1) ^ 2 : ℤ)

end

end A184636.P8354051987688257549

namespace A184636

/-- `(ceil(acot(n))+1)*(n+1)²` -/
def P8354051987688257549.Spec : Prop :=
  ∀ n, P8354051987688257549.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P7485368813081142068

`∑[ogf((3-x+3x^2-x^3)/(1-2x+x^2))]`
-/

namespace A184636.P7485368813081142068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 3, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184636.P7485368813081142068

namespace A184636

/-- `∑[ogf((3-x+3x^2-x^3)/(1-2x+x^2))]` -/
def P7485368813081142068.Spec : Prop :=
  ∀ n, P7485368813081142068.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P15074169879334623219

`ogf((3-x+3x^2-x^3)/(1-3x+3x^2-x^3))`
-/

namespace A184636.P15074169879334623219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 3, -1] [1, -3, 3, -1] n

end

end A184636.P15074169879334623219

namespace A184636

/-- `ogf((3-x+3x^2-x^3)/(1-3x+3x^2-x^3))` -/
def P15074169879334623219.Spec : Prop :=
  ∀ n, P15074169879334623219.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P7094700526658829089

`(n+1)²*ceil(root(3, n+1))`
-/

namespace A184636.P7094700526658829089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ⌈(3 : ℝ) ^ (1 / (n + 1 : ℝ))⌉

end

end A184636.P7094700526658829089

namespace A184636

/-- `(n+1)²*ceil(root(3, n+1))` -/
def P7094700526658829089.Spec : Prop :=
  ∀ n, P7094700526658829089.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P1928735664257803792

`floor((n+2)/acot(2*n))+2`
-/

namespace A184636.P1928735664257803792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ)⌋ + 2

end

end A184636.P1928735664257803792

namespace A184636

/-- `floor((n+2)/acot(2*n))+2` -/
def P1928735664257803792.Spec : Prop :=
  ∀ n, P1928735664257803792.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P18249526933562300552

`ceil((n+2)/acot(2*n))+1`
-/

namespace A184636.P18249526933562300552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ)⌉ + 1

end

end A184636.P18249526933562300552

namespace A184636

/-- `ceil((n+2)/acot(2*n))+1` -/
def P18249526933562300552.Spec : Prop :=
  ∀ n, P18249526933562300552.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P1436441359265809350

`4*n+a(n-1)+2` with `a(0)=3, a(1)=8`
-/

namespace A184636.P1436441359265809350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  4 * n + (a (n - 1) + 2)

end

end A184636.P1436441359265809350

namespace A184636

/-- `4*n+a(n-1)+2` -/
def P1436441359265809350.Spec : Prop :=
  ∀ n, (P1436441359265809350.a n : ℤ) = A184636 (n + 1)

end A184636

/-! ## A184636.P4726048439277591592

`C(2, n+2)+2*(n+1)²`
-/

namespace A184636.P4726048439277591592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 2 * (n + 1) ^ 2

end

end A184636.P4726048439277591592

namespace A184636

/-- `C(2, n+2)+2*(n+1)²` -/
def P4726048439277591592.Spec : Prop :=
  ∀ n, (P4726048439277591592.a n : ℤ) = A184636 (n + 1)

end A184636

/-! ## A184636.P17756897151100181937

`∑[4*n]²/a(n-1)` with `a(0)=3, a(1)=8`
-/

namespace A184636.P17756897151100181937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 8] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / a (n - 1)

end

end A184636.P17756897151100181937

namespace A184636

/-- `∑[4*n]²/a(n-1)` -/
def P17756897151100181937.Spec : Prop :=
  ∀ n, P17756897151100181937.a n = (A184636 (n + 1) : ℚ)

end A184636

/-! ## A184636.P10027240000727736474

`round(acot(n+1)+2*(n+1)²)`
-/

namespace A184636.P10027240000727736474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (2 * (n + 1) ^ 2 : ℝ))

end

end A184636.P10027240000727736474

namespace A184636

/-- `round(acot(n+1)+2*(n+1)²)` -/
def P10027240000727736474.Spec : Prop :=
  ∀ n, P10027240000727736474.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P9879467417703737040

`floor(2/acot((n+1)/acot(n+1)))`
-/

namespace A184636.P9879467417703737040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((n + 1 : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))⌋

end

end A184636.P9879467417703737040

namespace A184636

/-- `floor(2/acot((n+1)/acot(n+1)))` -/
def P9879467417703737040.Spec : Prop :=
  ∀ n, P9879467417703737040.a n = A184636 (n + 1)

end A184636

/-! ## A184636.P900108977894223579

`a(n-1)/(n/(n+1))²` with `a(0)=3, a(1)=8`
-/

namespace A184636.P900108977894223579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) / ((n : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A184636.P900108977894223579

namespace A184636

/-- `a(n-1)/(n/(n+1))²` -/
def P900108977894223579.Spec : Prop :=
  ∀ n, P900108977894223579.a n = (A184636 (n + 1) : ℚ)

end A184636

/-! ## A184636.P11833659722178956623

`∑[2*(2*n+1)]+C(2, n+2)`
-/

namespace A184636.P11833659722178956623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 2)

end

end A184636.P11833659722178956623

namespace A184636

/-- `∑[2*(2*n+1)]+C(2, n+2)` -/
def P11833659722178956623.Spec : Prop :=
  ∀ n, (P11833659722178956623.a n : ℤ) = A184636 (n + 1)

end A184636

/-! ## A184636.P10783439496816588408

`record[(1-n)²*ceil((n+3)/(n+1))]`
-/

namespace A184636.P10783439496816588408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * ⌈(n + 3 : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184636.P10783439496816588408

namespace A184636

/-- `record[(1-n)²*ceil((n+3)/(n+1))]` -/
def P10783439496816588408.Spec : Prop :=
  ∀ n, P10783439496816588408.a n = A184636 (n + 1)

end A184636

/-!
# A184637: a(n) = floor(1/{(n^4+3*n)^(1/4)}), where {}=fractional part.

The programs for A184637, the canonical program `A184637.P600952712671125829` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184637 has offset 1).

The definition of A184637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184637.P600952712671125829

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=2, a(1)=6, a(2)=12, a(3)=21, a(4)=33, a(5)=48, a(6)=65`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184637

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P600952712671125829.Spec : Prop :=
  ∀ n, P600952712671125829.a n = A184637 (n + 1)

theorem P600952712671125829.correct : P600952712671125829.Spec := by
  intro n
  simp only [A184637, Nat.add_sub_cancel]

end A184637

/-! ## A184637.P9048995521714704330

`round((∑[(2*n+1)²]+1)/(n+1))`
-/

namespace A184637.P9048995521714704330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / (n + 1 : ℚ))

end

end A184637.P9048995521714704330

namespace A184637

/-- `round((∑[(2*n+1)²]+1)/(n+1))` -/
def P9048995521714704330.Spec : Prop :=
  ∀ n, P9048995521714704330.a n = A184637 (n + 1)

end A184637

/-! ## A184637.P9392326393446248200

`round(A166911(n)/(n+1))-1`
-/

namespace A184637.P9392326393446248200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166911 n : ℚ) / (n + 1 : ℚ)) - 1

end

end A184637.P9392326393446248200

namespace A184637

/-- `round(A166911(n)/(n+1))-1` -/
def P9392326393446248200.Spec : Prop :=
  ∀ n, P9392326393446248200.a n = A184637 (n + 1)

end A184637

/-! ## A184637.P16238872228058864092

`∑[A047537(n+1)]+and(1, A000010(n+1))`
-/

namespace A184637.P16238872228058864092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.land 1 (A000010 (n + 1))

end

end A184637.P16238872228058864092

namespace A184637

/-- `∑[A047537(n+1)]+and(1, A000010(n+1))` -/
def P16238872228058864092.Spec : Prop :=
  ∀ n, P16238872228058864092.a n = A184637 (n + 1)

end A184637

/-! ## A184637.P8208355695895053209

`A131737(n)+A096777(2*(n+1))`
-/

namespace A184637.P8208355695895053209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 n + A096777 (2 * (n + 1))

end

end A184637.P8208355695895053209

namespace A184637

/-- `A131737(n)+A096777(2*(n+1))` -/
def P8208355695895053209.Spec : Prop :=
  ∀ n, P8208355695895053209.a n = A184637 (n + 1)

end A184637

/-! ## A184637.P14491346924077808232

`A107750(n+1)+∑[A107750(2*n+1)]`
-/

namespace A184637.P14491346924077808232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184637.P14491346924077808232

namespace A184637

/-- `A107750(n+1)+∑[A107750(2*n+1)]` -/
def P14491346924077808232.Spec : Prop :=
  ∀ n, P14491346924077808232.a n = A184637 (n + 1)

end A184637

/-! ## A184637.P17143200958909312718

`A087483(A004275(n))+A004275(2*n+1)`
-/

namespace A184637.P17143200958909312718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (A004275 n).toNat + A004275 (2 * n + 1)

end

end A184637.P17143200958909312718

namespace A184637

/-- `A087483(A004275(n))+A004275(2*n+1)` -/
def P17143200958909312718.Spec : Prop :=
  ∀ n, P17143200958909312718.a n = A184637 (n + 1)

end A184637

/-! ## A184637.P4274358268777478906

`A256320(n+1)+C(A256320(n+1), A256320(2*n))`
-/

namespace A184637.P4274358268777478906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 (n + 1) + (Nat.choose (A256320 (n + 1)).toNat (A256320 (2 * n)).toNat : ℤ)

end

end A184637.P4274358268777478906

namespace A184637

/-- `A256320(n+1)+C(A256320(n+1), A256320(2*n))` -/
def P4274358268777478906.Spec : Prop :=
  ∀ n, P4274358268777478906.a n = A184637 (n + 1)

end A184637

/-! ## A184637.P2019158838751021405

`A193768(A256320(n+1))`
-/

namespace A184637.P2019158838751021405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193768 (A256320 (n + 1)).toNat

end

end A184637.P2019158838751021405

namespace A184637

/-- `A193768(A256320(n+1))` -/
def P2019158838751021405.Spec : Prop :=
  ∀ n, P2019158838751021405.a n = A184637 (n + 1)

end A184637

/-!
# A184638: floor(nr+h), where r=sqrt(3), h=-1/2; complement of A184653.

The programs for A184638, the canonical program `A184638.P10162494678616007917` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184638 has offset 1).

The definition of A184638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184638.P3258156127673061964

`round((n+1)*sqrt(3))-1`
-/

namespace A184638.P3258156127673061964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sqrt (3 : ℝ)) - 1

end

end A184638.P3258156127673061964

namespace A184638

/-- `round((n+1)*sqrt(3))-1` -/
def P3258156127673061964.Spec : Prop :=
  ∀ n, P3258156127673061964.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P10162494678616007917

`abs(1-A022847(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A184638

/-- `abs(1-A022847(n+1))` -/
def P10162494678616007917.Spec : Prop :=
  ∀ n, P10162494678616007917.a n = A184638 (n + 1)

theorem P10162494678616007917.correct : P10162494678616007917.Spec := by
  intro n
  simp only [A184638, Nat.add_sub_cancel]

end A184638

/-! ## A184638.P13559746559168994096

`abs(1-∑[A214860(n+1)])`
-/

namespace A184638.P13559746559168994096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A184638.P13559746559168994096

namespace A184638

/-- `abs(1-∑[A214860(n+1)])` -/
def P13559746559168994096.Spec : Prop :=
  ∀ n, P13559746559168994096.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P7502881153838443547

`floor((A194028(n+1)-1)/2)`
-/

namespace A184638.P7502881153838443547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194028 (n + 1) - 1 : ℚ) / 2⌋

end

end A184638.P7502881153838443547

namespace A184638

/-- `floor((A194028(n+1)-1)/2)` -/
def P7502881153838443547.Spec : Prop :=
  ∀ n, P7502881153838443547.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P10376517777294426788

`(∑[A214860(n+1)]-1)%A016897(n)`
-/

namespace A184638.P10376517777294426788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) (A016897 n)

end

end A184638.P10376517777294426788

namespace A184638

/-- `(∑[A214860(n+1)]-1)%A016897(n)` -/
def P10376517777294426788.Spec : Prop :=
  ∀ n, P10376517777294426788.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P5764066874369432843

`(∑[A214860(n+1)]-1)*A178226(A004277(n+1))`
-/

namespace A184638.P5764066874369432843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A178226 (A004277 (n + 1)).toNat

end

end A184638.P5764066874369432843

namespace A184638

/-- `(∑[A214860(n+1)]-1)*A178226(A004277(n+1))` -/
def P5764066874369432843.Spec : Prop :=
  ∀ n, P5764066874369432843.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P14545075203773196496

`Δ[∑[A022847(n)]-n]`
-/

namespace A184638.P14545075203773196496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184638.P14545075203773196496

namespace A184638

/-- `Δ[∑[A022847(n)]-n]` -/
def P14545075203773196496.Spec : Prop :=
  ∀ n, P14545075203773196496.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P13147000961131216703

`comp[floor((n+1)*sqrt(3))-A190669(n+1)]`
-/

namespace A184638.P13147000961131216703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ - A190669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184638.P13147000961131216703

namespace A184638

/-- `comp[floor((n+1)*sqrt(3))-A190669(n+1)]` -/
def P13147000961131216703.Spec : Prop :=
  ∀ n, (P13147000961131216703.a n : ℤ) = A184638 (n + 1)

end A184638

/-! ## A184638.P279252161082412180

`∑[A214860(n*a(A127802(2*n))+1)]` with `a(0)=1`
-/

namespace A184638.P279252161082412180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A214860 ((n : ℤ) * f1 (A127802 (2 * n)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184638.P279252161082412180

namespace A184638

/-- `∑[A214860(n*a(A127802(2*n))+1)]` -/
def P279252161082412180.Spec : Prop :=
  ∀ n, P279252161082412180.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P14856736027386425807

`A023443(A022847(n+1))`
-/

namespace A184638.P14856736027386425807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A022847 (n + 1)).toNat

end

end A184638.P14856736027386425807

namespace A184638

/-- `A023443(A022847(n+1))` -/
def P14856736027386425807.Spec : Prop :=
  ∀ n, P14856736027386425807.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P16199233482378285514

`record[A022847(A123108(n))-1]`
-/

namespace A184638.P16199233482378285514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (A123108 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184638.P16199233482378285514

namespace A184638

/-- `record[A022847(A123108(n))-1]` -/
def P16199233482378285514.Spec : Prop :=
  ∀ n, P16199233482378285514.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P16673908209000717494

`A008619(floor((n+1)*sqrt(12))-3)`
-/

namespace A184638.P16673908209000717494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (⌊(n + 1 : ℝ) * Real.sqrt (12 : ℝ)⌋ - 3).toNat

end

end A184638.P16673908209000717494

namespace A184638

/-- `A008619(floor((n+1)*sqrt(12))-3)` -/
def P16673908209000717494.Spec : Prop :=
  ∀ n, P16673908209000717494.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P10668811288744449489

`A004526(A194028(n+1)-1)`
-/

namespace A184638.P10668811288744449489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A194028 (n + 1) - 1).toNat

end

end A184638.P10668811288744449489

namespace A184638

/-- `A004526(A194028(n+1)-1)` -/
def P10668811288744449489.Spec : Prop :=
  ∀ n, P10668811288744449489.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P15660100895746181143

`A004526(A022838(2*(n+1))-1)`
-/

namespace A184638.P15660100895746181143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022838 (2 * (n + 1)) - 1).toNat

end

end A184638.P15660100895746181143

namespace A184638

/-- `A004526(A022838(2*(n+1))-1)` -/
def P15660100895746181143.Spec : Prop :=
  ∀ n, P15660100895746181143.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P1086201271484117768

`A123108(A022838(2*(n+1))-1)`
-/

namespace A184638.P1086201271484117768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A022838 (2 * (n + 1)) - 1).toNat

end

end A184638.P1086201271484117768

namespace A184638

/-- `A123108(A022838(2*(n+1))-1)` -/
def P1086201271484117768.Spec : Prop :=
  ∀ n, P1086201271484117768.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P10595325092864238949

`A110654(A022838(2*(n+1))-2)`
-/

namespace A184638.P10595325092864238949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A022838 (2 * (n + 1)) - 2).toNat

end

end A184638.P10595325092864238949

namespace A184638

/-- `A110654(A022838(2*(n+1))-2)` -/
def P10595325092864238949.Spec : Prop :=
  ∀ n, P10595325092864238949.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P9458208808882311177

`A004526(A022847(n+1)+A022847(n))`
-/

namespace A184638.P9458208808882311177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022847 (n + 1) + A022847 n).toNat

end

end A184638.P9458208808882311177

namespace A184638

/-- `A004526(A022847(n+1)+A022847(n))` -/
def P9458208808882311177.Spec : Prop :=
  ∀ n, P9458208808882311177.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P4096988413480530091

`A140106(A198269(n+1))`
-/

namespace A184638.P4096988413480530091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A198269 (n + 1)).toNat

end

end A184638.P4096988413480530091

namespace A184638

/-- `A140106(A198269(n+1))` -/
def P4096988413480530091.Spec : Prop :=
  ∀ n, P4096988413480530091.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P14980262681786411284

`A002264(A022847(2*n+1)+A022847(n+1))`
-/

namespace A184638.P14980262681786411284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022847 (2 * n + 1) + A022847 (n + 1)).toNat

end

end A184638.P14980262681786411284

namespace A184638

/-- `A002264(A022847(2*n+1)+A022847(n+1))` -/
def P14980262681786411284.Spec : Prop :=
  ∀ n, P14980262681786411284.a n = A184638 (n + 1)

end A184638

/-! ## A184638.P17746646167940303603

`A002265(2*(A194028(n+1)-1))`
-/

namespace A184638.P17746646167940303603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A194028 (n + 1) - 1)).toNat

end

end A184638.P17746646167940303603

namespace A184638

/-- `A002265(2*(A194028(n+1)-1))` -/
def P17746646167940303603.Spec : Prop :=
  ∀ n, P17746646167940303603.a n = A184638 (n + 1)

end A184638

/-!
# A184639: Number of partitions of n having no parts with multiplicity 4.

The programs for A184639, there is no canonical definition to state claims against.
-/

/-! ## A184639.P2297550716454421332

`A088725(A286141(n))`
-/

namespace A184639.P2297550716454421332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (A286141 n).toNat

end

end A184639.P2297550716454421332

/-! ## A184639.P12407090565357983530

`A137735(xor(A095121(n), A166296(n)))`
-/

namespace A184639.P12407090565357983530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.xor (A095121 n) (A166296 n)).toNat

end

end A184639.P12407090565357983530

/-! ## A184639.P10072963608865908574

`A351846(A090984(n)-A006999(n))`
-/

namespace A184639.P10072963608865908574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A090984 n - A006999 n).toNat

end

end A184639.P10072963608865908574

/-! ## A184639.P4212617704258305831

`A339183(A048250(n+1)+A046682(3*n))`
-/

namespace A184639.P4212617704258305831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A048250 (n + 1) + A046682 (3 * n)).toNat

end

end A184639.P4212617704258305831

/-! ## A184639.P12871349593231716217

`A112318(A059618(n+1))`
-/

namespace A184639.P12871349593231716217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A059618 (n + 1)).toNat

end

end A184639.P12871349593231716217

/-!
# A184640: Number of partitions of n having no parts with multiplicity 5.

The programs for A184640, there is no canonical definition to state claims against.
-/

/-! ## A184640.P9877510323799018493

`A331995(A035959(n))+A002265(A308283(n))`
-/

namespace A184640.P9877510323799018493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A035959 n).toNat + A002265 (A308283 n).toNat

end

end A184640.P9877510323799018493

/-! ## A184640.P17737568298750315641

`A343779(A008631(n)+1)`
-/

namespace A184640.P17737568298750315641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A008631 n + 1).toNat

end

end A184640.P17737568298750315641

/-! ## A184640.P5283118925749807930

`A343779(A008637(n)+1)`
-/

namespace A184640.P5283118925749807930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A008637 n + 1).toNat

end

end A184640.P5283118925749807930

/-! ## A184640.P8825817620429392623

`A343779(A238866(n)+1)`
-/

namespace A184640.P8825817620429392623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A238866 n + 1).toNat

end

end A184640.P8825817620429392623

/-! ## A184640.P3506233883607387838

`A343779(A340719(n)+1)`
-/

namespace A184640.P3506233883607387838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A340719 (n + 36) + 1).toNat

end

end A184640.P3506233883607387838

/-!
# A184641: Number of partitions of n having no parts with multiplicity 6.

The programs for A184641, there is no canonical definition to state claims against.
-/

/-! ## A184641.P15702879582206478565

`A051056(A055645(n))+A046682(n+1)`
-/

namespace A184641.P15702879582206478565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051056 (A055645 n).toNat + A046682 (n + 1)

end

end A184641.P15702879582206478565

/-! ## A184641.P11997598133792141983

`A003056(Δ[A216264(n)])`
-/

namespace A184641.P11997598133792141983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (n + 1) - f1 n).toNat

end

end A184641.P11997598133792141983

/-! ## A184641.P17906772897065113974

`A051056(n)+A046682(A187829(n+1))`
-/

namespace A184641.P17906772897065113974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051056 n + A046682 (A187829 (n + 1)).toNat

end

end A184641.P17906772897065113974

/-! ## A184641.P6278466938680771959

`A003056(A216264(n+1)-A216264(n))`
-/

namespace A184641.P6278466938680771959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A216264 (n + 1) - A216264 n).toNat

end

end A184641.P6278466938680771959

/-! ## A184641.P15712504326017979675

`A048142(3*n+1)+A046682(A187829(n+1))`
-/

namespace A184641.P15712504326017979675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048142 (3 * n + 1) + A046682 (A187829 (n + 1)).toNat

end

end A184641.P15712504326017979675

/-!
# A184642: Number of partitions of n having no parts with multiplicity 7.

The programs for A184642, there is no canonical definition to state claims against.
-/

/-! ## A184642.P18264912598418356412

`A261776(n)-A010060(A302387(n))`
-/

namespace A184642.P18264912598418356412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261776 n - A010060 (A302387 n).toNat

end

end A184642.P18264912598418356412

/-! ## A184642.P16929819844344086889

`A035985(n)+A024793(A187829(n+1))`
-/

namespace A184642.P16929819844344086889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035985 n + A024793 (A187829 (n + 1)).toNat

end

end A184642.P16929819844344086889

/-! ## A184642.P18212493593870388793

`A027341(n)+A026815(A077168(n))`
-/

namespace A184642.P18212493593870388793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 n + A026815 (A077168 n).toNat

end

end A184642.P18212493593870388793

/-! ## A184642.P7675330158012652142

`A118759(A027341(n)+A026814(n))`
-/

namespace A184642.P7675330158012652142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A027341 n + A026814 n).toNat

end

end A184642.P7675330158012652142

/-! ## A184642.P10121693616515245083

`A118759(A035985(n)+A026814(n))`
-/

namespace A184642.P10121693616515245083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035985 n + A026814 n).toNat

end

end A184642.P10121693616515245083

/-!
# A184643: Number of partitions of n having no parts with multiplicity 8.

The programs for A184643, there is no canonical definition to state claims against.
-/

/-! ## A184643.P1615071610477138064

`A326590(A242474(n+1))+A261775(n)`
-/

namespace A184643.P1615071610477138064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326590 (A242474 (n + 1)).toNat + A261775 n

end

end A184643.P1615071610477138064

/-! ## A184643.P9314286574304105086

`A262689(A001255(n))-A034397(n+1)`
-/

namespace A184643.P9314286574304105086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A001255 n).toNat - A034397 (n + 1)

end

end A184643.P9314286574304105086

/-! ## A184643.P2797386318042275923

`A353866(A027336(n))+A000701(n)`
-/

namespace A184643.P2797386318042275923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (A027336 n).toNat + A000701 n

end

end A184643.P2797386318042275923

/-! ## A184643.P2522509041848853868

`A027342(n)+A024794(A187829(n+1))`
-/

namespace A184643.P2522509041848853868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 n + A024794 (A187829 (n + 1)).toNat

end

end A184643.P2522509041848853868

/-! ## A184643.P3082020727572338547

`A261775(n)+A024794(A187829(n+1))`
-/

namespace A184643.P3082020727572338547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261775 n + A024794 (A187829 (n + 1)).toNat

end

end A184643.P3082020727572338547

/-!
# A184644: Number of partitions of n having no parts with multiplicity 9.

The programs for A184644, there is no canonical definition to state claims against.
-/

/-! ## A184644.P16004121945571641443

`A194439(n+2)-A206560(n+1)`
-/

namespace A184644.P16004121945571641443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (n + 2) - A206560 (n + 1)

end

end A184644.P16004121945571641443

/-! ## A184644.P12069353861120738797

`A326590(n)+A027343(A156537(3*(n+2))+n)`
-/

namespace A184644.P12069353861120738797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326590 n + A027343 (A156537 (3 * (n + 2)) + (n : ℤ)).toNat

end

end A184644.P12069353861120738797

/-! ## A184644.P4906302060226562689

`A326590(n)+A027343(n)^A000383(A373843(n+1))`
-/

namespace A184644.P4906302060226562689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326590 n : ℚ) + (A027343 n : ℚ) ^ (A000383 (A373843 (n + 1)).toNat : ℤ)

end

end A184644.P4906302060226562689

/-! ## A184644.P13873221949325863238

`A262689(A001255(n))-A206560(n+1)`
-/

namespace A184644.P13873221949325863238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A001255 n).toNat - A206560 (n + 1)

end

end A184644.P13873221949325863238

/-! ## A184644.P5955160858165804894

`A317141(A000079(n))-A206560(n+1)`
-/

namespace A184644.P5955160858165804894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A000079 n).toNat - A206560 (n + 1)

end

end A184644.P5955160858165804894

/-!
# A184645: Number of partitions of n having no parts with multiplicity 10.

The programs for A184645, there is no canonical definition to state claims against.
-/

/-! ## A184645.P13954759137907464754

`A104501(n)+A016389(A135880(n))`
-/

namespace A184645.P13954759137907464754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104501 n + A016389 (A135880 n).toNat

end

end A184645.P13954759137907464754

/-! ## A184645.P2683538844499737487

`A000041(n)-A102679(A092886(n))`
-/

namespace A184645.P2683538844499737487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A102679 (A092886 n).toNat

end

end A184645.P2683538844499737487

/-! ## A184645.P4672999182190406200

`A092885(n)-A102679(A092886(n))`
-/

namespace A184645.P4672999182190406200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092885 n - A102679 (A092886 n).toNat

end

end A184645.P4672999182190406200

/-! ## A184645.P11907361517514270117

`A000041(n)-A214411(A096812(n))`
-/

namespace A184645.P11907361517514270117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A214411 (A096812 n).toNat

end

end A184645.P11907361517514270117

/-! ## A184645.P6504216261606118877

`A325856(n)-A046051(A089170(2*(n+2)))`
-/

namespace A184645.P6504216261606118877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325856 n - A046051 (A089170 (2 * (n + 2))).toNat

end

end A184645.P6504216261606118877

/-!
# A184646: Number of (n+2)X3 0..3 arrays with each 3X3 subblock having a positive determinant.

The programs for A184646, there is no canonical definition to state claims against.
-/

/-! ## A184646.P2142971068077844595

`A184649(∑[n]+1)`
-/

namespace A184646.P2142971068077844595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184649 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184646.P2142971068077844595

/-! ## A184646.P3590367149968931222

`lcm(3, A184649(A000124(n)))`
-/

namespace A184646.P3590367149968931222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A184649 (A000124 n).toNat)

end

end A184646.P3590367149968931222

/-! ## A184646.P3080205919136836332

`record[A184649(A286245(n+1))]`
-/

namespace A184646.P3080205919136836332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184649 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184646.P3080205919136836332

/-!
# A184647: Number of (n+2)X4 0..3 arrays with each 3X3 subblock having a positive determinant.

The programs for A184647, there is no canonical definition to state claims against.
-/

/-! ## A184647.P2472666806523671973

`A184649(A000124(n+1)+1)`
-/

namespace A184647.P2472666806523671973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184649 (A000124 (n + 1) + 1).toNat

end

end A184647.P2472666806523671973

/-! ## A184647.P15412757663849261233

`A184649(A184656(n+1)+A184639(n+2))`
-/

namespace A184647.P15412757663849261233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184649 (A184656 (n + 1) + A184639 (n + 2)).toNat

end

end A184647.P15412757663849261233

/-!
# A184648: 

The programs for A184648, there is no canonical definition to state claims against.
-/

/-! ## A184648.P9287569305988507455

`A184649(A184676(n+1)+A184657(n+1))`
-/

namespace A184648.P9287569305988507455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184649 (A184676 (n + 1) + A184657 (n + 1)).toNat

end

end A184648.P9287569305988507455

/-!
# A184650: Number of (n+2)X3 0..3 arrays with each 3X3 subblock nonsingular.

The programs for A184650, there is no canonical definition to state claims against.
-/

/-! ## A184650.P2253638704770696309

`A184652(∑[n]+1)`
-/

namespace A184650.P2253638704770696309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184650.P2253638704770696309

/-! ## A184650.P9319182262935590066

`lcm(2, A184652(A000124(n)))`
-/

namespace A184650.P9319182262935590066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184652 (A000124 n).toNat)

end

end A184650.P9319182262935590066

/-! ## A184650.P4086854705224009454

`or(2, A184652(A133523(n)))`
-/

namespace A184650.P4086854705224009454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A184652 (A133523 n).toNat)

end

end A184650.P4086854705224009454

/-!
# A184651: 

The programs for A184651, there is no canonical definition to state claims against.
-/

/-! ## A184651.P14997674336434341528

`A184652(A184656(n+1)+A184639(n+2))`
-/

namespace A184651.P14997674336434341528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184652 (A184656 (n + 1) + A184639 (n + 2)).toNat

end

end A184651.P14997674336434341528

/-!
# A184653: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-1/2; complement of A184638.

The programs for A184653, the canonical program `A184653.P5190902005474955621` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184653 has offset 1).

The definition of A184653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184653.P876751405931605291

`ceil((3/2+n)/(sqrt(3)-1)+n)`
-/

namespace A184653.P876751405931605291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) / 2 + (n : ℚ) : ℝ) / (Real.sqrt (3 : ℝ) - 1) + (n : ℝ)⌉

end

end A184653.P876751405931605291

namespace A184653

/-- `ceil((3/2+n)/(sqrt(3)-1)+n)` -/
def P876751405931605291.Spec : Prop :=
  ∀ n, P876751405931605291.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P5190902005474955621

`ceil(A180124(n+1)/2)+n+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A184653

/-- `ceil(A180124(n+1)/2)+n+1` -/
def P5190902005474955621.Spec : Prop :=
  ∀ n, P5190902005474955621.a n = A184653 (n + 1)

theorem P5190902005474955621.correct : P5190902005474955621.Spec := by
  intro n
  simp only [A184653, Nat.add_sub_cancel]

end A184653

/-! ## A184653.P2441460020226529189

`A008619(A180124(n+1)-A005408(n))+A005408(n)`
-/

namespace A184653.P2441460020226529189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A180124 (n + 1) - A005408 n).toNat + A005408 n

end

end A184653.P2441460020226529189

namespace A184653

/-- `A008619(A180124(n+1)-A005408(n))+A005408(n)` -/
def P2441460020226529189.Spec : Prop :=
  ∀ n, P2441460020226529189.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P14350625912968393268

`A022847(ceil(A180124(n+1)/2))`
-/

namespace A184653.P14350625912968393268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 ⌈(A180124 (n + 1) : ℚ) / 2⌉.toNat

end

end A184653.P14350625912968393268

namespace A184653

/-- `A022847(ceil(A180124(n+1)/2))` -/
def P14350625912968393268.Spec : Prop :=
  ∀ n, P14350625912968393268.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P6540720140090624606

`A022847(lt[n, n*Δ[A022847(n)]])`
-/

namespace A184653.P6540720140090624606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A184653.P6540720140090624606

namespace A184653

/-- `A022847(lt[n, n*Δ[A022847(n)]])` -/
def P6540720140090624606.Spec : Prop :=
  ∀ n, P6540720140090624606.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P974977287262450045

`A022847(lt[1, Δ[A022847(n+1)]]+1)`
-/

namespace A184653.P974977287262450045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A184653.P974977287262450045

namespace A184653

/-- `A022847(lt[1, Δ[A022847(n+1)]]+1)` -/
def P974977287262450045.Spec : Prop :=
  ∀ n, P974977287262450045.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P14003273067853689133

`A022847(eq[2, Δ[A022847(n+1)]]+1)`
-/

namespace A184653.P14003273067853689133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A184653.P14003273067853689133

namespace A184653

/-- `A022847(eq[2, Δ[A022847(n+1)]]+1)` -/
def P14003273067853689133.Spec : Prop :=
  ∀ n, P14003273067853689133.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P16549906941628234169

`A171970(A054087(n+2))`
-/

namespace A184653.P16549906941628234169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A054087 (n + 2)).toNat

end

end A184653.P16549906941628234169

namespace A184653

/-- `A171970(A054087(n+2))` -/
def P16549906941628234169.Spec : Prop :=
  ∀ n, P16549906941628234169.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P7618165949438548910

`A080513(A180124(n+1))+n`
-/

namespace A184653.P7618165949438548910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A180124 (n + 1)).toNat + (n : ℤ)

end

end A184653.P7618165949438548910

namespace A184653

/-- `A080513(A180124(n+1))+n` -/
def P7618165949438548910.Spec : Prop :=
  ∀ n, P7618165949438548910.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P5122369121521725341

`A008619(A180124(n+1)+1)+n`
-/

namespace A184653.P5122369121521725341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A180124 (n + 1) + 1).toNat + (n : ℤ)

end

end A184653.P5122369121521725341

namespace A184653

/-- `A008619(A180124(n+1)+1)+n` -/
def P5122369121521725341.Spec : Prop :=
  ∀ n, P5122369121521725341.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P12721702377753542257

`A172475(A180124(n+1)+1)`
-/

namespace A184653.P12721702377753542257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A180124 (n + 1) + 1).toNat

end

end A184653.P12721702377753542257

namespace A184653

/-- `A172475(A180124(n+1)+1)` -/
def P12721702377753542257.Spec : Prop :=
  ∀ n, P12721702377753542257.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P1869816834832613890

`A172475(A003511(2*n+3))`
-/

namespace A184653.P1869816834832613890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A003511 (2 * n + 3)).toNat

end

end A184653.P1869816834832613890

namespace A184653

/-- `A172475(A003511(2*n+3))` -/
def P1869816834832613890.Spec : Prop :=
  ∀ n, P1869816834832613890.a n = A184653 (n + 1)

end A184653

/-! ## A184653.P8549722646097023295

`A008619(A180124(n+1)+A005408(n))`
-/

namespace A184653.P8549722646097023295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A180124 (n + 1) + A005408 n).toNat

end

end A184653.P8549722646097023295

namespace A184653

/-- `A008619(A180124(n+1)+A005408(n))` -/
def P8549722646097023295.Spec : Prop :=
  ∀ n, P8549722646097023295.a n = A184653 (n + 1)

end A184653

/-!
# A184654: floor(n*sqrt(3)-2/3); complement of A184655.

The programs for A184654, the canonical program `A184654.P17606551835858673220` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184654 has offset 1).

The definition of A184654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*sqrt(3)-2/3)` (program `A184654.P17606551835858673220`, by `A184654.P17606551835858673220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184654.P17606551835858673220

`floor((n+1)*sqrt(3)-2/3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184654

/-- `floor((n+1)*sqrt(3)-2/3)` -/
def P17606551835858673220.Spec : Prop :=
  ∀ n, P17606551835858673220.a n = A184654 (n + 1)

theorem P17606551835858673220.correct : P17606551835858673220.Spec := by
  intro n
  simp only [A184654, Nat.add_sub_cancel]

end A184654

/-! ## A184654.P8611073862653009571

`comp[A184655(n+1)-1]+1`
-/

namespace A184654.P8611073862653009571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184655 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184654.P8611073862653009571

namespace A184654

/-- `comp[A184655(n+1)-1]+1` -/
def P8611073862653009571.Spec : Prop :=
  ∀ n, (P8611073862653009571.a n : ℤ) = A184654 (n + 1)

end A184654

/-! ## A184654.P4640453764205798802

`A002264(6*n+4-A195120(3*(n+1)))`
-/

namespace A184654.P4640453764205798802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((6 * n + 4 : ℤ) - A195120 (3 * (n + 1))).toNat

end

end A184654.P4640453764205798802

namespace A184654

/-- `A002264(6*n+4-A195120(3*(n+1)))` -/
def P4640453764205798802.Spec : Prop :=
  ∀ n, P4640453764205798802.a n = A184654 (n + 1)

end A184654

/-! ## A184654.P16864202907906645711

`A008620(A022838(Δ[n²]+n+2)+1)-2`
-/

namespace A184654.P16864202907906645711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A022838 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 2 : ℤ)).toNat + 1).toNat - 2

end

end A184654.P16864202907906645711

namespace A184654

/-- `A008620(A022838(Δ[n²]+n+2)+1)-2` -/
def P16864202907906645711.Spec : Prop :=
  ∀ n, P16864202907906645711.a n = A184654 (n + 1)

end A184654

/-! ## A184654.P17171724622483592283

`A059169(A206906(n+1)-n)-1`
-/

namespace A184654.P17171724622483592283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A206906 (n + 1) - (n : ℤ)).toNat - 1

end

end A184654.P17171724622483592283

namespace A184654

/-- `A059169(A206906(n+1)-n)-1` -/
def P17171724622483592283.Spec : Prop :=
  ∀ n, P17171724622483592283.a n = A184654 (n + 1)

end A184654

/-! ## A184654.P1867350572646587672

`round(sqrt((A134478(C(n, 2))+2*n)*(n+1)))`
-/

namespace A184654.P1867350572646587672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A134478 (Nat.choose n 2) + (2 * n : ℤ)) * (n + 1 : ℤ) : ℝ))

end

end A184654.P1867350572646587672

namespace A184654

/-- `round(sqrt((A134478(C(n, 2))+2*n)*(n+1)))` -/
def P1867350572646587672.Spec : Prop :=
  ∀ n, P1867350572646587672.a n = A184654 (n + 1)

end A184654

/-! ## A184654.P10229058079081003989

`round(sqrt(A008458(∑[n])-n))`
-/

namespace A184654.P10229058079081003989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008458 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ) : ℝ))

end

end A184654.P10229058079081003989

namespace A184654

/-- `round(sqrt(A008458(∑[n])-n))` -/
def P10229058079081003989.Spec : Prop :=
  ∀ n, P10229058079081003989.a n = A184654 (n + 1)

end A184654

/-! ## A184654.P16464321615726831778

`A005041(A161680(n)+A022844(n))`
-/

namespace A184654.P16464321615726831778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A161680 n + A022844 n).toNat

end

end A184654.P16464321615726831778

namespace A184654

/-- `A005041(A161680(n)+A022844(n))` -/
def P16464321615726831778.Spec : Prop :=
  ∀ n, P16464321615726831778.a n = A184654 (n + 1)

end A184654

/-! ## A184654.P17661351919146610030

`A005041(A047595(n+1)+A000096(n))`
-/

namespace A184654.P17661351919146610030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A047595 (n + 1) + A000096 n).toNat

end

end A184654.P17661351919146610030

namespace A184654

/-- `A005041(A047595(n+1)+A000096(n))` -/
def P17661351919146610030.Spec : Prop :=
  ∀ n, P17661351919146610030.a n = A184654 (n + 1)

end A184654

/-! ## A184654.P11751370772204439178

`A005041(A278950(n+2)+A046691(n))`
-/

namespace A184654.P11751370772204439178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A278950 (n + 2) + A046691 n).toNat

end

end A184654.P11751370772204439178

namespace A184654

/-- `A005041(A278950(n+2)+A046691(n))` -/
def P11751370772204439178.Spec : Prop :=
  ∀ n, P11751370772204439178.a n = A184654 (n + 1)

end A184654

/-! ## A184654.P7192086384843838170

`round(sqrt(A008486(floor((1/3+n)²))))`
-/

namespace A184654.P7192086384843838170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008486 ⌊((1 : ℚ) / 3 + (n : ℚ)) ^ 2⌋.toNat : ℝ))

end

end A184654.P7192086384843838170

namespace A184654

/-- `round(sqrt(A008486(floor((1/3+n)²))))` -/
def P7192086384843838170.Spec : Prop :=
  ∀ n, P7192086384843838170.a n = A184654 (n + 1)

end A184654

/-! ## A184654.P7158312147635958148

`A278814(A206245(n)-(1-n²))`
-/

namespace A184654.P7158312147635958148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A206245 n - (1 - (n ^ 2 : ℤ))).toNat

end

end A184654.P7158312147635958148

namespace A184654

/-- `A278814(A206245(n)-(1-n²))` -/
def P7158312147635958148.Spec : Prop :=
  ∀ n, P7158312147635958148.a n = A184654 (n + 1)

end A184654

/-!
# A184655: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-2/3; complement of A184654.

The programs for A184655, the canonical program `A184655.P3941700814691838186` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184655 has offset 1).

The definition of A184655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184655.P3941700814691838186

`ceil((A188070(3*n+5)+A008585(n))/3)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A184655

/-- `ceil((A188070(3*n+5)+A008585(n))/3)` -/
def P3941700814691838186.Spec : Prop :=
  ∀ n, P3941700814691838186.a n = A184655 (n + 1)

theorem P3941700814691838186.correct : P3941700814691838186.Spec := by
  intro n
  simp only [A184655, Nat.add_sub_cancel]

end A184655

/-! ## A184655.P2025254878331965715

`A194979(A188070(3*n+5))-2`
-/

namespace A184655.P2025254878331965715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A188070 (3 * n + 5)).toNat - 2

end

end A184655.P2025254878331965715

namespace A184655

/-- `A194979(A188070(3*n+5))-2` -/
def P2025254878331965715.Spec : Prop :=
  ∀ n, P2025254878331965715.a n = A184655 (n + 1)

end A184655

/-! ## A184655.P5786320039084900208

`A008620(A003511(3*n+5))+n`
-/

namespace A184655.P5786320039084900208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A003511 (3 * n + 5)).toNat + (n : ℤ)

end

end A184655.P5786320039084900208

namespace A184655

/-- `A008620(A003511(3*n+5))+n` -/
def P5786320039084900208.Spec : Prop :=
  ∀ n, P5786320039084900208.a n = A184655 (n + 1)

end A184655

/-! ## A184655.P14832318556866380576

`A002264(A054406(3*n+5)-2)`
-/

namespace A184655.P14832318556866380576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A054406 (3 * n + 5) - 2).toNat

end

end A184655.P14832318556866380576

namespace A184655

/-- `A002264(A054406(3*n+5)-2)` -/
def P14832318556866380576.Spec : Prop :=
  ∀ n, P14832318556866380576.a n = A184655 (n + 1)

end A184655

/-! ## A184655.P17217148001134340892

`round(sqrt(A188069(∑[n+3]+n²)+1))`
-/

namespace A184655.P17217148001134340892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A188069 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2) + 1 : ℝ))

end

end A184655.P17217148001134340892

namespace A184655

/-- `round(sqrt(A188069(∑[n+3]+n²)+1))` -/
def P17217148001134340892.Spec : Prop :=
  ∀ n, P17217148001134340892.a n = A184655 (n + 1)

end A184655

/-! ## A184655.P6070909895642922428

`A003056(∑[A315742(n)+6])`
-/

namespace A184655.P6070909895642922428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184655.P6070909895642922428

namespace A184655

/-- `A003056(∑[A315742(n)+6])` -/
def P6070909895642922428.Spec : Prop :=
  ∀ n, P6070909895642922428.a n = A184655 (n + 1)

end A184655

/-!
# A184656: floor(nr+h), where r=(1+sqrt(5))/2, h=-1/2; complement of A184657.

The programs for A184656, the canonical program `A184656.P5168837873934125938` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184656 has offset 1).

The definition of A184656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184656.P6288501417013847005

`round(ϕ*(n+1))-1`
-/

namespace A184656.P6288501417013847005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ)) - 1

end

end A184656.P6288501417013847005

namespace A184656

/-- `round(ϕ*(n+1))-1` -/
def P6288501417013847005.Spec : Prop :=
  ∀ n, P6288501417013847005.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P5154656005831043440

`round(record[abs(1-ϕ*n)])`
-/

namespace A184656.P5154656005831043440
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |1 - Real.goldenRatio * (n : ℝ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A184656.P5154656005831043440

namespace A184656

/-- `round(record[abs(1-ϕ*n)])` -/
def P5154656005831043440.Spec : Prop :=
  ∀ n, P5154656005831043440.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P12540182488858303453

`round(n-xor(n, -1)/ϕ)`
-/

namespace A184656.P12540182488858303453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - (Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio)

end

end A184656.P12540182488858303453

namespace A184656

/-- `round(n-xor(n, -1)/ϕ)` -/
def P12540182488858303453.Spec : Prop :=
  ∀ n, P12540182488858303453.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P15524999418750062794

`abs(round(ϕ*xor(n, -1))+1)`
-/

namespace A184656.P15524999418750062794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)) + 1|

end

end A184656.P15524999418750062794

namespace A184656

/-- `abs(round(ϕ*xor(n, -1))+1)` -/
def P15524999418750062794.Spec : Prop :=
  ∀ n, P15524999418750062794.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P6068636262365491117

`xor(-1, round(-(ϕ*(n+1))))`
-/

namespace A184656.P6068636262365491117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (SequenceMachineLib.roundAway (-(Real.goldenRatio * (n + 1 : ℝ))))

end

end A184656.P6068636262365491117

namespace A184656

/-- `xor(-1, round(-(ϕ*(n+1))))` -/
def P6068636262365491117.Spec : Prop :=
  ∀ n, P6068636262365491117.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P8530460079619256441

`round(C(n+1, n)/ϕ+n)`
-/

namespace A184656.P8530460079619256441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) n : ℝ) / Real.goldenRatio + (n : ℝ))

end

end A184656.P8530460079619256441

namespace A184656

/-- `round(C(n+1, n)/ϕ+n)` -/
def P8530460079619256441.Spec : Prop :=
  ∀ n, P8530460079619256441.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P17298027352037884959

`round(gcd(n, 2*n)+(n+1)/ϕ)`
-/

namespace A184656.P17298027352037884959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd n (2 * n) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio)

end

end A184656.P17298027352037884959

namespace A184656

/-- `round(gcd(n, 2*n)+(n+1)/ϕ)` -/
def P17298027352037884959.Spec : Prop :=
  ∀ n, P17298027352037884959.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P10059588546560974021

`comp[A007064(n+1)-1]`
-/

namespace A184656.P10059588546560974021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184656.P10059588546560974021

namespace A184656

/-- `comp[A007064(n+1)-1]` -/
def P10059588546560974021.Spec : Prop :=
  ∀ n, (P10059588546560974021.a n : ℤ) = A184656 (n + 1)

end A184656

/-! ## A184656.P17435998145994709762

`comp[A214990(n+1)-1]`
-/

namespace A184656.P17435998145994709762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184656.P17435998145994709762

namespace A184656

/-- `comp[A214990(n+1)-1]` -/
def P17435998145994709762.Spec : Prop :=
  ∀ n, (P17435998145994709762.a n : ℤ) = A184656 (n + 1)

end A184656

/-! ## A184656.P1197565042504804305

`abs(n+1-A189379(n+1))`
-/

namespace A184656.P1197565042504804305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A189379 (n + 1)|

end

end A184656.P1197565042504804305

namespace A184656

/-- `abs(n+1-A189379(n+1))` -/
def P1197565042504804305.Spec : Prop :=
  ∀ n, P1197565042504804305.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P5168837873934125938

`floor((A022839(n+1)+n)/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A184656

/-- `floor((A022839(n+1)+n)/2)` -/
def P5168837873934125938.Spec : Prop :=
  ∀ n, P5168837873934125938.a n = A184656 (n + 1)

theorem P5168837873934125938.correct : P5168837873934125938.Spec := by
  intro n
  simp only [A184656, Nat.add_sub_cancel]

end A184656

/-! ## A184656.P4874327303816249707

`ceil(A001961(n+1)/2+n)`
-/

namespace A184656.P4874327303816249707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001961 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A184656.P4874327303816249707

namespace A184656

/-- `ceil(A001961(n+1)/2+n)` -/
def P4874327303816249707.Spec : Prop :=
  ∀ n, P4874327303816249707.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P9567675869632097252

`ceil((A190511(n+1)+n)/2)`
-/

namespace A184656.P9567675869632097252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190511 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A184656.P9567675869632097252

namespace A184656

/-- `ceil((A190511(n+1)+n)/2)` -/
def P9567675869632097252.Spec : Prop :=
  ∀ n, P9567675869632097252.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P1409675823650124069

`comp[comp[A188222(2*n+1)]+n]`
-/

namespace A184656.P1409675823650124069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A184656.P1409675823650124069

namespace A184656

/-- `comp[comp[A188222(2*n+1)]+n]` -/
def P1409675823650124069.Spec : Prop :=
  ∀ n, (P1409675823650124069.a n : ℤ) = A184656 (n + 1)

end A184656

/-! ## A184656.P18089137259052145387

`A003623(n+1)%A214991(n+1)`
-/

namespace A184656.P18089137259052145387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003623 (n + 1)) (A214991 (n + 1))

end

end A184656.P18089137259052145387

namespace A184656

/-- `A003623(n+1)%A214991(n+1)` -/
def P18089137259052145387.Spec : Prop :=
  ∀ n, P18089137259052145387.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P14117371439992208059

`A368649(n+1)%A144396(n+1)`
-/

namespace A184656.P14117371439992208059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368649 (n + 1)) (A144396 (n + 1))

end

end A184656.P14117371439992208059

namespace A184656

/-- `A368649(n+1)%A144396(n+1)` -/
def P14117371439992208059.Spec : Prop :=
  ∀ n, P14117371439992208059.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P7055233141604346569

`comp[comp[A007067(n)]-1]`
-/

namespace A184656.P7055233141604346569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184656.P7055233141604346569

namespace A184656

/-- `comp[comp[A007067(n)]-1]` -/
def P7055233141604346569.Spec : Prop :=
  ∀ n, (P7055233141604346569.a n : ℤ) = A184656 (n + 1)

end A184656

/-! ## A184656.P17575492275586603344

`A187485(A001961(n+1))`
-/

namespace A184656.P17575492275586603344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (A001961 (n + 1)).toNat

end

end A184656.P17575492275586603344

namespace A184656

/-- `A187485(A001961(n+1))` -/
def P17575492275586603344.Spec : Prop :=
  ∀ n, P17575492275586603344.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P15801572202924419044

`A005206(A101803(n+1)+2*n)`
-/

namespace A184656.P15801572202924419044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A101803 (n + 1) + (2 * n : ℤ)).toNat

end

end A184656.P15801572202924419044

namespace A184656

/-- `A005206(A101803(n+1)+2*n)` -/
def P15801572202924419044.Spec : Prop :=
  ∀ n, P15801572202924419044.a n = A184656 (n + 1)

end A184656

/-! ## A184656.P2577672941316689128

`A242094(A247419(A005206(2*n+1)))`
-/

namespace A184656.P2577672941316689128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (A247419 (A005206 (2 * n + 1)).toNat).toNat

end

end A184656.P2577672941316689128

namespace A184656

/-- `A242094(A247419(A005206(2*n+1)))` -/
def P2577672941316689128.Spec : Prop :=
  ∀ n, P2577672941316689128.a n = A184656 (n + 1)

end A184656

/-!
# A184657: floor(n*s+h-h*s), where s=(3+sqrt(5))/2, h=-1/2; complement of A184656.

The programs for A184657, the canonical program `A184657.P14330324748934301885` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184657 has offset 1).

The definition of A184657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184657.P14330324748934301885

`ceil(ϕ*(3/2+n)+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184657

/-- `ceil(ϕ*(3/2+n)+n)` -/
def P14330324748934301885.Spec : Prop :=
  ∀ n, P14330324748934301885.a n = A184657 (n + 1)

theorem P14330324748934301885.correct : P14330324748934301885.Spec := by
  intro n
  simp only [A184657, Nat.add_sub_cancel]

end A184657

/-! ## A184657.P4854897543791663198

`floor(A000027(n+1)+ϕ*(3/2+n))`
-/

namespace A184657.P4854897543791663198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℝ) + Real.goldenRatio * ((3 : ℚ) / 2 + (n : ℚ) : ℝ)⌋

end

end A184657.P4854897543791663198

namespace A184657

/-- `floor(A000027(n+1)+ϕ*(3/2+n))` -/
def P4854897543791663198.Spec : Prop :=
  ∀ n, P4854897543791663198.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P14455357387854249173

`floor(ϕ*(3/2+n)+A005408(n)-n)`
-/

namespace A184657.P14455357387854249173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((3 : ℚ) / 2 + (n : ℚ) : ℝ) + (A005408 n - (n : ℤ) : ℝ)⌋

end

end A184657.P14455357387854249173

namespace A184657

/-- `floor(ϕ*(3/2+n)+A005408(n)-n)` -/
def P14455357387854249173.Spec : Prop :=
  ∀ n, P14455357387854249173.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P1820246053503778547

`∪[A003234(n+1), A189378(n+1)]`
-/

namespace A184657.P1820246053503778547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184657.P1820246053503778547

namespace A184657

/-- `∪[A003234(n+1), A189378(n+1)]` -/
def P1820246053503778547.Spec : Prop :=
  ∀ n, (P1820246053503778547.a n : ℤ) = A184657 (n + 1)

end A184657

/-! ## A184657.P3170026904056381407

`∪[A003623(n+1), A189378(n+1)]`
-/

namespace A184657.P3170026904056381407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184657.P3170026904056381407

namespace A184657

/-- `∪[A003623(n+1), A189378(n+1)]` -/
def P3170026904056381407.Spec : Prop :=
  ∀ n, (P3170026904056381407.a n : ℤ) = A184657 (n + 1)

end A184657

/-! ## A184657.P15782707945855661634

`∪[A188018(n+1), A189378(n+1)]`
-/

namespace A184657.P15782707945855661634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184657.P15782707945855661634

namespace A184657

/-- `∪[A188018(n+1), A189378(n+1)]` -/
def P15782707945855661634.Spec : Prop :=
  ∀ n, (P15782707945855661634.a n : ℤ) = A184657 (n + 1)

end A184657

/-! ## A184657.P12936763707250286268

`∪[A188473(n+1), A189378(n+1)]`
-/

namespace A184657.P12936763707250286268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184657.P12936763707250286268

namespace A184657

/-- `∪[A188473(n+1), A189378(n+1)]` -/
def P12936763707250286268.Spec : Prop :=
  ∀ n, (P12936763707250286268.a n : ℤ) = A184657 (n + 1)

end A184657

/-! ## A184657.P11923244985113946613

`∪[A189378(n+1), A190251(n+1)]`
-/

namespace A184657.P11923244985113946613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184657.P11923244985113946613

namespace A184657

/-- `∪[A189378(n+1), A190251(n+1)]` -/
def P11923244985113946613.Spec : Prop :=
  ∀ n, (P11923244985113946613.a n : ℤ) = A184657 (n + 1)

end A184657

/-! ## A184657.P5374957195200370037

`∪[A189378(n+1), A190430(n+1)]`
-/

namespace A184657.P5374957195200370037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184657.P5374957195200370037

namespace A184657

/-- `∪[A189378(n+1), A190430(n+1)]` -/
def P5374957195200370037.Spec : Prop :=
  ∀ n, (P5374957195200370037.a n : ℤ) = A184657 (n + 1)

end A184657

/-! ## A184657.P15322617837818106407

`A007064(n+2)-1`
-/

namespace A184657.P15322617837818106407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 2) - 1

end

end A184657.P15322617837818106407

namespace A184657

/-- `A007064(n+2)-1` -/
def P15322617837818106407.Spec : Prop :=
  ∀ n, P15322617837818106407.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P79893014331106047

`∑[abs(Δ[A007064(n+1)])]`
-/

namespace A184657.P79893014331106047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184657.P79893014331106047

namespace A184657

/-- `∑[abs(Δ[A007064(n+1)])]` -/
def P79893014331106047.Spec : Prop :=
  ∀ n, P79893014331106047.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P11058076412313818335

`∑[A000027(Δ[A007064(n+1)])]`
-/

namespace A184657.P11058076412313818335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184657.P11058076412313818335

namespace A184657

/-- `∑[A000027(Δ[A007064(n+1)])]` -/
def P11058076412313818335.Spec : Prop :=
  ∀ n, P11058076412313818335.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P14018411595649749045

`∑[A001068(Δ[A007064(n+1)])]`
-/

namespace A184657.P14018411595649749045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184657.P14018411595649749045

namespace A184657

/-- `∑[A001068(Δ[A007064(n+1)])]` -/
def P14018411595649749045.Spec : Prop :=
  ∀ n, P14018411595649749045.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P17088172009893533403

`∑[A005117(Δ[A007064(n+1)])]`
-/

namespace A184657.P17088172009893533403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184657.P17088172009893533403

namespace A184657

/-- `∑[A005117(Δ[A007064(n+1)])]` -/
def P17088172009893533403.Spec : Prop :=
  ∀ n, P17088172009893533403.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P2924140123992302010

`∑[A006530(Δ[A007064(n+1)])]`
-/

namespace A184657.P2924140123992302010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184657.P2924140123992302010

namespace A184657

/-- `∑[A006530(Δ[A007064(n+1)])]` -/
def P2924140123992302010.Spec : Prop :=
  ∀ n, P2924140123992302010.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P11460302530740027352

`∑[A014963(Δ[A007064(n+1)])]`
-/

namespace A184657.P11460302530740027352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184657.P11460302530740027352

namespace A184657

/-- `∑[A014963(Δ[A007064(n+1)])]` -/
def P11460302530740027352.Spec : Prop :=
  ∀ n, P11460302530740027352.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P12078697991602879854

`∑[A024653(Δ[A007064(n+1)])]`
-/

namespace A184657.P12078697991602879854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024653 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184657.P12078697991602879854

namespace A184657

/-- `∑[A024653(Δ[A007064(n+1)])]` -/
def P12078697991602879854.Spec : Prop :=
  ∀ n, P12078697991602879854.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P7104835693488213800

`A035488(n+1)-(A035487(n+2)+1)`
-/

namespace A184657.P7104835693488213800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035488 (n + 1) - (A035487 (n + 2) + 1)

end

end A184657.P7104835693488213800

namespace A184657

/-- `A035488(n+1)-(A035487(n+2)+1)` -/
def P7104835693488213800.Spec : Prop :=
  ∀ n, P7104835693488213800.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P13707530688872468645

`A214990(A026351(n+1))-1`
-/

namespace A184657.P13707530688872468645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A026351 (n + 1)).toNat - 1

end

end A184657.P13707530688872468645

namespace A184657

/-- `A214990(A026351(n+1))-1` -/
def P13707530688872468645.Spec : Prop :=
  ∀ n, P13707530688872468645.a n = A184657 (n + 1)

end A184657

/-! ## A184657.P14331935519077827360

`A214990(A026273(n+2))-1`
-/

namespace A184657.P14331935519077827360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A026273 (n + 2)).toNat - 1

end

end A184657.P14331935519077827360

namespace A184657

/-- `A214990(A026273(n+2))-1` -/
def P14331935519077827360.Spec : Prop :=
  ∀ n, P14331935519077827360.a n = A184657 (n + 1)

end A184657

/-!
# A184658: floor(nr+h), where r=(1+sqrt(5))/2, h=-1/3; complement of A184659.

The programs for A184658, the canonical program `A184658.P12444542043360374571` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184658 has offset 1).

The definition of A184658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7639 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184658.P12444542043360374571

`A005206(A003622(n+1)+A140397(n+1)-1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A184658

/-- `A005206(A003622(n+1)+A140397(n+1)-1)` -/
def P12444542043360374571.Spec : Prop :=
  ∀ n, P12444542043360374571.a n = A184658 (n + 1)

theorem P12444542043360374571.correct : P12444542043360374571.Spec := by
  intro n
  simp only [A184658, Nat.add_sub_cancel]

end A184658

/-! ## A184658.P18348244996240804436

`A022342(n+1)+A011655(A060143(3*(n+1)))`
-/

namespace A184658.P18348244996240804436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) + A011655 (A060143 (3 * (n + 1))).toNat

end

end A184658.P18348244996240804436

namespace A184658

/-- `A022342(n+1)+A011655(A060143(3*(n+1)))` -/
def P18348244996240804436.Spec : Prop :=
  ∀ n, P18348244996240804436.a n = A184658 (n + 1)

end A184658

/-! ## A184658.P9670508899752524839

`A008620(A271114(n)-A292638(n+1))`
-/

namespace A184658.P9670508899752524839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A271114 n - A292638 (n + 1)).toNat

end

end A184658.P9670508899752524839

namespace A184658

/-- `A008620(A271114(n)-A292638(n+1))` -/
def P9670508899752524839.Spec : Prop :=
  ∀ n, P9670508899752524839.a n = A184658 (n + 1)

end A184658

/-! ## A184658.P17350034518097169808

`A002264(A022342(3*(n+1)))`
-/

namespace A184658.P17350034518097169808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022342 (3 * (n + 1))).toNat

end

end A184658.P17350034518097169808

namespace A184658

/-- `A002264(A022342(3*(n+1)))` -/
def P17350034518097169808.Spec : Prop :=
  ∀ n, P17350034518097169808.a n = A184658 (n + 1)

end A184658

/-! ## A184658.P12909614204811163682

`A002264(A026351(3*(n+1))-2)`
-/

namespace A184658.P12909614204811163682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A026351 (3 * (n + 1)) - 2).toNat

end

end A184658.P12909614204811163682

namespace A184658

/-- `A002264(A026351(3*(n+1))-2)` -/
def P12909614204811163682.Spec : Prop :=
  ∀ n, P12909614204811163682.a n = A184658 (n + 1)

end A184658

/-! ## A184658.P7239762878977426727

`A000201(n+1)-A079978(A000201(3*(n+1)))`
-/

namespace A184658.P7239762878977426727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A079978 (A000201 (3 * (n + 1))).toNat

end

end A184658.P7239762878977426727

namespace A184658

/-- `A000201(n+1)-A079978(A000201(3*(n+1)))` -/
def P7239762878977426727.Spec : Prop :=
  ∀ n, P7239762878977426727.a n = A184658 (n + 1)

end A184658

/-! ## A184658.P16301533120525915280

`A001950(A004919(n+1)-(n+1))%A004919(n+1)`
-/

namespace A184658.P16301533120525915280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (A004919 (n + 1) - (n + 1 : ℤ)).toNat) (A004919 (n + 1))

end

end A184658.P16301533120525915280

namespace A184658

/-- `A001950(A004919(n+1)-(n+1))%A004919(n+1)` -/
def P16301533120525915280.Spec : Prop :=
  ∀ n, P16301533120525915280.a n = A184658 (n + 1)

end A184658

/-! ## A184658.P7111315037080474987

`A000201(n+1)-A003849(A004919(n+1)+1)`
-/

namespace A184658.P7111315037080474987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A003849 (A004919 (n + 1) + 1).toNat

end

end A184658.P7111315037080474987

namespace A184658

/-- `A000201(n+1)-A003849(A004919(n+1)+1)` -/
def P7111315037080474987.Spec : Prop :=
  ∀ n, P7111315037080474987.a n = A184658 (n + 1)

end A184658

/-! ## A184658.P10296863553353472726

`A189663(A004919(n+1)-2)-(n+1)`
-/

namespace A184658.P10296863553353472726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A004919 (n + 1) - 2).toNat - (n + 1 : ℤ)

end

end A184658.P10296863553353472726

namespace A184658

/-- `A189663(A004919(n+1)-2)-(n+1)` -/
def P10296863553353472726.Spec : Prop :=
  ∀ n, P10296863553353472726.a n = A184658 (n + 1)

end A184658

/-! ## A184658.P15675398519257295599

`floor(∑[ϕ-ϕ/A000032(n+2)²])`
-/

namespace A184658.P15675398519257295599
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - Real.goldenRatio / (A000032 (n + 2) ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A184658.P15675398519257295599

namespace A184658

/-- `floor(∑[ϕ-ϕ/A000032(n+2)²])` -/
def P15675398519257295599.Spec : Prop :=
  ∀ n, P15675398519257295599.a n = A184658 (n + 1)

end A184658

/-!
# A184659: floor(n*s+h-h*s), where s=(3+sqrt(5))/2, h=-1/3; complement of A184658.

The programs for A184659, the canonical program `A184659.P18094353049432743810` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184659 has offset 1).

The definition of A184659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184659.P18094353049432743810

`ceil(ϕ*(4/3+n)+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184659

/-- `ceil(ϕ*(4/3+n)+n)` -/
def P18094353049432743810.Spec : Prop :=
  ∀ n, P18094353049432743810.a n = A184659 (n + 1)

theorem P18094353049432743810.correct : P18094353049432743810.Spec := by
  intro n
  simp only [A184659, Nat.add_sub_cancel]

end A184659

/-! ## A184659.P1838042201844333323

`floor(A000027(n+1)+ϕ*(4/3+n))`
-/

namespace A184659.P1838042201844333323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℝ) + Real.goldenRatio * ((4 : ℚ) / 3 + (n : ℚ) : ℝ)⌋

end

end A184659.P1838042201844333323

namespace A184659

/-- `floor(A000027(n+1)+ϕ*(4/3+n))` -/
def P1838042201844333323.Spec : Prop :=
  ∀ n, P1838042201844333323.a n = A184659 (n + 1)

end A184659

/-! ## A184659.P14164774941145934342

`record[A190431(n+3)+n]`
-/

namespace A184659.P14164774941145934342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190431 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184659.P14164774941145934342

namespace A184659

/-- `record[A190431(n+3)+n]` -/
def P14164774941145934342.Spec : Prop :=
  ∀ n, P14164774941145934342.a n = A184659 (n + 1)

end A184659

/-! ## A184659.P17561909995477198089

`floor(A008620(3*n)+ϕ*(4/3+n))`
-/

namespace A184659.P17561909995477198089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008620 (3 * n) : ℝ) + Real.goldenRatio * ((4 : ℚ) / 3 + (n : ℚ) : ℝ)⌋

end

end A184659.P17561909995477198089

namespace A184659

/-- `floor(A008620(3*n)+ϕ*(4/3+n))` -/
def P17561909995477198089.Spec : Prop :=
  ∀ n, P17561909995477198089.a n = A184659 (n + 1)

end A184659

/-! ## A184659.P11307561510791736520

`A189663(A190431(n+1)+A101864(n+1))`
-/

namespace A184659.P11307561510791736520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A190431 (n + 1) + A101864 (n + 1)).toNat

end

end A184659.P11307561510791736520

namespace A184659

/-- `A189663(A190431(n+1)+A101864(n+1))` -/
def P11307561510791736520.Spec : Prop :=
  ∀ n, P11307561510791736520.a n = A184659 (n + 1)

end A184659

/-! ## A184659.P9228512644197263654

`A002265(A001950(3*n+4)+A001950(n+1))`
-/

namespace A184659.P9228512644197263654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A001950 (3 * n + 4) + A001950 (n + 1)).toNat

end

end A184659.P9228512644197263654

namespace A184659

/-- `A002265(A001950(3*n+4)+A001950(n+1))` -/
def P9228512644197263654.Spec : Prop :=
  ∀ n, P9228512644197263654.a n = A184659 (n + 1)

end A184659

/-!
# A184660: Number of (n+2)X3 0..3 arrays with each 3X3 subblock singular.

The programs for A184660, there is no canonical definition to state claims against.
-/

/-! ## A184660.P618004457331166507

`A184663(∑[n]+1)`
-/

namespace A184660.P618004457331166507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184663 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184660.P618004457331166507

/-! ## A184660.P6990556217511277113

`lcm(2, A184663(A000124(n)))`
-/

namespace A184660.P6990556217511277113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184663 (A000124 n).toNat)

end

end A184660.P6990556217511277113

/-! ## A184660.P8886189733236102426

`record[root(A184663(n+1), A007318(n))]`
-/

namespace A184660.P8886189733236102426
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184663 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184660.P8886189733236102426

/-!
# A184661: Number of (n+2)X4 0..3 arrays with each 3X3 subblock singular.

The programs for A184661, there is no canonical definition to state claims against.
-/

/-! ## A184661.P7695052545555616963

`A184663(∑[n+1]+2)`
-/

namespace A184661.P7695052545555616963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184663 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184661.P7695052545555616963

/-!
# A184662: 

The programs for A184662, there is no canonical definition to state claims against.
-/

/-! ## A184662.P9281677113835530865

`A184663(A184676(n+1)+A184657(n+1))`
-/

namespace A184662.P9281677113835530865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184663 (A184676 (n + 1) + A184657 (n + 1)).toNat

end

end A184662.P9281677113835530865

/-!
# A184664: 

The programs for A184664, there is no canonical definition to state claims against.
-/

/-! ## A184664.P1557462049836439591

`A184673((n+1)²+n²)`
-/

namespace A184664.P1557462049836439591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 ((n + 1) ^ 2 + n ^ 2)

end

end A184664.P1557462049836439591

/-! ## A184664.P16915652499088766237

`A184673(A001844(n))+A159083(n)`
-/

namespace A184664.P16915652499088766237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (A001844 n).toNat + A159083 n

end

end A184664.P16915652499088766237

/-!
# A184665: Number of (n+1) X 2 0..3 arrays with no 2 X 2 subblock summing to less than 6.

The programs for A184665, there is no canonical definition to state claims against.
-/

/-! ## A184665.P6094345860810540888

`A184673(∑[n]+1)`
-/

namespace A184665.P6094345860810540888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184665.P6094345860810540888

/-! ## A184665.P16483626090464675419

`A184673(A000124(n))+A025443(n)`
-/

namespace A184665.P16483626090464675419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (A000124 n).toNat + A025443 n

end

end A184665.P16483626090464675419

/-! ## A184665.P5162903540104822062

`lcm(A033999(n), A184673(A000124(n)))`
-/

namespace A184665.P5162903540104822062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A184673 (A000124 n).toNat)

end

end A184665.P5162903540104822062

/-! ## A184665.P3357305743300167228

`A184673(A000124(n))%A184668(n+1)`
-/

namespace A184665.P3357305743300167228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184673 (A000124 n).toNat) (A184668 (n + 1))

end

end A184665.P3357305743300167228

/-! ## A184665.P18213822817511867474

`A251801(∑[n+1])`
-/

namespace A184665.P18213822817511867474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184665.P18213822817511867474

/-!
# A184666: Number of (n+1)X3 0..3 arrays with no 2X2 subblock summing to less than 6.

The programs for A184666, there is no canonical definition to state claims against.
-/

/-! ## A184666.P2052637986769992359

`A184673(∑[n+1]+2)`
-/

namespace A184666.P2052637986769992359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184666.P2052637986769992359

/-! ## A184666.P7939038940383774891

`record[A184673(Δ[A003453(n+5)])]`
-/

namespace A184666.P7939038940383774891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184666.P7939038940383774891

/-! ## A184666.P12049090601277658451

`record[gcd(A174699(n), A184673(n+2))]`
-/

namespace A184666.P12049090601277658451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174699 n) (A184673 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184666.P12049090601277658451

/-!
# A184667: Number of (n+1)X4 0..3 arrays with no 2X2 subblock summing to less than 6.

The programs for A184667, there is no canonical definition to state claims against.
-/

/-! ## A184667.P3788245232289969158

`A184673(A167614(n+1))`
-/

namespace A184667.P3788245232289969158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (A167614 (n + 1)).toNat

end

end A184667.P3788245232289969158

/-! ## A184667.P6613636914890487380

`A184673(∑[n+3]+1)`
-/

namespace A184667.P6613636914890487380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184667.P6613636914890487380

/-!
# A184668: Number of (n+1)X5 0..3 arrays with no 2X2 subblock summing to less than 6.

The programs for A184668, there is no canonical definition to state claims against.
-/

/-! ## A184668.P18420263185595385711

`A184673(A167614(n+2)+1)`
-/

namespace A184668.P18420263185595385711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (A167614 (n + 2) + 1).toNat

end

end A184668.P18420263185595385711

/-! ## A184668.P12504096034061372920

`A184673(Δ[A034857(n+1)])`
-/

namespace A184668.P12504096034061372920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (f1 (n + 1) - f1 n).toNat

end

end A184668.P12504096034061372920

/-!
# A184671: 

The programs for A184671, there is no canonical definition to state claims against.
-/

/-! ## A184671.P3623360675379861606

`A184673(A000096(n+6)-5)`
-/

namespace A184671.P3623360675379861606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184673 (A000096 (n + 6) - 5).toNat

end

end A184671.P3623360675379861606

/-!
# A184674: a(n) = n+floor((n/2-1/(2*n))^2); complement of A184675.

The programs for A184674, the canonical program `A184674.P5610724602373749063` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184674 has offset 1).

The definition of A184674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(((n+1)/2-1/(2*(n+1)))²)` (program `A184674.P5610724602373749063`, by `A184674.P5610724602373749063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184674.P5610724602373749063

`n+1+floor(((n+1)/2-1/(2*(n+1)))²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184674

/-- `n+1+floor(((n+1)/2-1/(2*(n+1)))²)` -/
def P5610724602373749063.Spec : Prop :=
  ∀ n, P5610724602373749063.a n = A184674 (n + 1)

theorem P5610724602373749063.correct : P5610724602373749063.Spec := by
  intro n
  simp only [A184674, Nat.add_sub_cancel]

end A184674

/-! ## A184674.P12766387211130883808

`ceil(cot(2/(n+1))²+n)`
-/

namespace A184674.P12766387211130883808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ) ^ 2 + (n : ℝ)⌉

end

end A184674.P12766387211130883808

namespace A184674

/-- `ceil(cot(2/(n+1))²+n)` -/
def P12766387211130883808.Spec : Prop :=
  ∀ n, P12766387211130883808.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P10661018949646567422

`round(cot((2/(n+1))²)+n)`
-/

namespace A184674.P10661018949646567422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((2 / (n + 1 : ℚ)) ^ 2 : ℝ) + (n : ℝ))

end

end A184674.P10661018949646567422

namespace A184674

/-- `round(cot((2/(n+1))²)+n)` -/
def P10661018949646567422.Spec : Prop :=
  ∀ n, P10661018949646567422.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P4562166053207318826

`record[a(n-2)+n]` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A184674.P4562166053207318826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n f1 =>
  f1 (n - 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184674.P4562166053207318826

namespace A184674

/-- `record[a(n-2)+n]` -/
def P4562166053207318826.Spec : Prop :=
  ∀ n, P4562166053207318826.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P7271219429835242479

`∑[floor((n+3-C(2, n))/2)]`
-/

namespace A184674.P7271219429835242479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3 : ℤ) - (Nat.choose 2 n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184674.P7271219429835242479

namespace A184674

/-- `∑[floor((n+3-C(2, n))/2)]` -/
def P7271219429835242479.Spec : Prop :=
  ∀ n, P7271219429835242479.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P11304427097385093271

`∑[∑[1-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A184674.P11304427097385093271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184674.P11304427097385093271

namespace A184674

/-- `∑[∑[1-a(n-1)]]` -/
def P11304427097385093271.Spec : Prop :=
  ∀ n, P11304427097385093271.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P5767127527768564463

`floor(cot(2/(n+1))²+n+1)`
-/

namespace A184674.P5767127527768564463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 / (n + 1 : ℚ) : ℝ) ^ 2 + (n + 1 : ℝ)⌋

end

end A184674.P5767127527768564463

namespace A184674

/-- `floor(cot(2/(n+1))²+n+1)` -/
def P5767127527768564463.Spec : Prop :=
  ∀ n, P5767127527768564463.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P18000437337461959083

`∑[floor((n+3)/(C(n, n²)+2))]`
-/

namespace A184674.P18000437337461959083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (Nat.choose n (n ^ 2) + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184674.P18000437337461959083

namespace A184674

/-- `∑[floor((n+3)/(C(n, n²)+2))]` -/
def P18000437337461959083.Spec : Prop :=
  ∀ n, P18000437337461959083.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P17324832084536448293

`∑[floor((C(n+3, 2)+n)/(n+3))]`
-/

namespace A184674.P17324832084536448293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 + n : ℚ) / (n + 3 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184674.P17324832084536448293

namespace A184674

/-- `∑[floor((C(n+3, 2)+n)/(n+3))]` -/
def P17324832084536448293.Spec : Prop :=
  ∀ n, P17324832084536448293.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P2870552966336548470

`∑[∑[A266719(n)]]`
-/

namespace A184674.P2870552966336548470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184674.P2870552966336548470

namespace A184674

/-- `∑[∑[A266719(n)]]` -/
def P2870552966336548470.Spec : Prop :=
  ∀ n, P2870552966336548470.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P9737610037450129361

`∑[2-A168050(n)]`
-/

namespace A184674.P9737610037450129361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A168050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184674.P9737610037450129361

namespace A184674

/-- `∑[2-A168050(n)]` -/
def P9737610037450129361.Spec : Prop :=
  ∀ n, P9737610037450129361.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P18175296422569554945

`(A179207(n+1)+n+1)/2`
-/

namespace A184674.P18175296422569554945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179207 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A184674.P18175296422569554945

namespace A184674

/-- `(A179207(n+1)+n+1)/2` -/
def P18175296422569554945.Spec : Prop :=
  ∀ n, P18175296422569554945.a n = (A184674 (n + 1) : ℚ)

end A184674

/-! ## A184674.P915556388039680412

`∑[∑[A266246(n+2)]]`
-/

namespace A184674.P915556388039680412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184674.P915556388039680412

namespace A184674

/-- `∑[∑[A266246(n+2)]]` -/
def P915556388039680412.Spec : Prop :=
  ∀ n, P915556388039680412.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P17002085415339653107

`A028392(a(n-1)+1)` with `a(0)=1, a(1)=2`
-/

namespace A184674.P17002085415339653107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A028392 (a (n - 1) + 1).toNat

end

end A184674.P17002085415339653107

namespace A184674

/-- `A028392(a(n-1)+1)` -/
def P17002085415339653107.Spec : Prop :=
  ∀ n, P17002085415339653107.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P9487400126338850487

`A078358(a(n-1)+1)` with `a(0)=1, a(1)=2`
-/

namespace A184674.P9487400126338850487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A078358 (a (n - 1) + 1).toNat

end

end A184674.P9487400126338850487

namespace A184674

/-- `A078358(a(n-1)+1)` -/
def P9487400126338850487.Spec : Prop :=
  ∀ n, P9487400126338850487.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P14064179472418800987

`A183299(A035106(n+1))`
-/

namespace A184674.P14064179472418800987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183299 (A035106 (n + 1)).toNat

end

end A184674.P14064179472418800987

namespace A184674

/-- `A183299(A035106(n+1))` -/
def P14064179472418800987.Spec : Prop :=
  ∀ n, P14064179472418800987.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P5796173054254810184

`A140869(A101881(n))`
-/

namespace A184674.P5796173054254810184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140869 (A101881 n).toNat

end

end A184674.P5796173054254810184

namespace A184674

/-- `A140869(A101881(n))` -/
def P5796173054254810184.Spec : Prop :=
  ∀ n, P5796173054254810184.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P14455039719972492702

`A055456(A024206(n+2))`
-/

namespace A184674.P14455039719972492702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A024206 (n + 2)).toNat

end

end A184674.P14455039719972492702

namespace A184674

/-- `A055456(A024206(n+2))` -/
def P14455039719972492702.Spec : Prop :=
  ∀ n, P14455039719972492702.a n = A184674 (n + 1)

end A184674

/-! ## A184674.P17222967478147267626

`eq[A034869(n), A055086(n)]`
-/

namespace A184674.P17222967478147267626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184674.P17222967478147267626

namespace A184674

/-- `eq[A034869(n), A055086(n)]` -/
def P17222967478147267626.Spec : Prop :=
  ∀ n, (P17222967478147267626.a n : ℤ) = A184674 (n + 1)

end A184674

/-!
# A184675: a(n) = n + floor(sqrt(n) + sqrt(n+1)); complement of A184674.

The programs for A184675, the canonical program `A184675.P3482324802558325044` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184675 has offset 1).

The definition of A184675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184675.P3482324802558325044

`n+1+floor(sqrt(4*(n+1)+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184675

/-- `n+1+floor(sqrt(4*(n+1)+1))` -/
def P3482324802558325044.Spec : Prop :=
  ∀ n, (P3482324802558325044.a n : ℤ) = A184675 (n + 1)

theorem P3482324802558325044.correct : P3482324802558325044.Spec := by
  intro n
  simp only [A184675, Nat.add_sub_cancel]

end A184675

/-! ## A184675.P11757542303787242004

`n+1+floor(sqrt(n+1)+sqrt(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A184675.P11757542303787242004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊Real.sqrt (n + 1 : ℝ) + Real.sqrt (n + 2 : ℝ)⌋

end

end A184675.P11757542303787242004

namespace A184675

/-- `n+1+floor(sqrt(n+1)+sqrt(n+2))` -/
def P11757542303787242004.Spec : Prop :=
  ∀ n, P11757542303787242004.a n = A184675 (n + 1)

end A184675

/-! ## A184675.P1284134647839323986

`comp[a(n-2)+n]` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A184675.P1284134647839323986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n f1 =>
  f1 (n - 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184675.P1284134647839323986

namespace A184675

/-- `comp[a(n-2)+n]` -/
def P1284134647839323986.Spec : Prop :=
  ∀ n, (P1284134647839323986.a n : ℤ) = A184675 (n + 1)

end A184675

/-! ## A184675.P8519276645110559453

`floor(cot(Δ[sqrt(n+1)])+n+1)`
-/

namespace A184675.P8519276645110559453
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (f1 (n + 1) - f1 n) + (n + 1 : ℝ)⌋

end

end A184675.P8519276645110559453

namespace A184675

/-- `floor(cot(Δ[sqrt(n+1)])+n+1)` -/
def P8519276645110559453.Spec : Prop :=
  ∀ n, P8519276645110559453.a n = A184675 (n + 1)

end A184675

/-! ## A184675.P5136235071271140013

`floor(sqrt(4*n+5)-xor(n, -1))`
-/

namespace A184675.P5136235071271140013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (4 * n + 5 : ℝ) - (Int.xor (n : ℤ) (-1) : ℝ)⌋

end

end A184675.P5136235071271140013

namespace A184675

/-- `floor(sqrt(4*n+5)-xor(n, -1))` -/
def P5136235071271140013.Spec : Prop :=
  ∀ n, P5136235071271140013.a n = A184675 (n + 1)

end A184675

/-! ## A184675.P7417592456820030930

`floor(2/acot(sqrt(n+1))+n+1)`
-/

namespace A184675.P7417592456820030930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (Real.sqrt (n + 1 : ℝ)) + (n + 1 : ℝ)⌋

end

end A184675.P7417592456820030930

namespace A184675

/-- `floor(2/acot(sqrt(n+1))+n+1)` -/
def P7417592456820030930.Spec : Prop :=
  ∀ n, P7417592456820030930.a n = A184675 (n + 1)

end A184675

/-! ## A184675.P16382375517836772088

`lt[1, (n+2)%round(sqrt(n+1))+1]`
-/

namespace A184675.P16382375517836772088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184675.P16382375517836772088

namespace A184675

/-- `lt[1, (n+2)%round(sqrt(n+1))+1]` -/
def P16382375517836772088.Spec : Prop :=
  ∀ n, (P16382375517836772088.a n : ℤ) = A184675 (n + 1)

end A184675

/-! ## A184675.P9457481657142159792

`comp[abs(2-A002620(n))]`
-/

namespace A184675.P9457481657142159792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A002620 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184675.P9457481657142159792

namespace A184675

/-- `comp[abs(2-A002620(n))]` -/
def P9457481657142159792.Spec : Prop :=
  ∀ n, (P9457481657142159792.a n : ℤ) = A184675 (n + 1)

end A184675

/-! ## A184675.P731419224701822615

`comp[abs(2-∑[A004526(n)])]`
-/

namespace A184675.P731419224701822615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f2 j|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184675.P731419224701822615

namespace A184675

/-- `comp[abs(2-∑[A004526(n)])]` -/
def P731419224701822615.Spec : Prop :=
  ∀ n, (P731419224701822615.a n : ℤ) = A184675 (n + 1)

end A184675

/-! ## A184675.P3007761905498303928

`comp[abs(∑[A002265(2*n)+1]-2)]`
-/

namespace A184675.P3007761905498303928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j - 2|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184675.P3007761905498303928

namespace A184675

/-- `comp[abs(∑[A002265(2*n)+1]-2)]` -/
def P3007761905498303928.Spec : Prop :=
  ∀ n, (P3007761905498303928.a n : ℤ) = A184675 (n + 1)

end A184675

/-! ## A184675.P15244730977031865945

`comp[abs(∑[n+1]-(A263807(n)-2))]`
-/

namespace A184675.P15244730977031865945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (A263807 n - 2)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184675.P15244730977031865945

namespace A184675

/-- `comp[abs(∑[n+1]-(A263807(n)-2))]` -/
def P15244730977031865945.Spec : Prop :=
  ∀ n, (P15244730977031865945.a n : ℤ) = A184675 (n + 1)

end A184675

/-! ## A184675.P3527066494516739121

`comp[∑[A002265(comp[2*(n+1)+2])-1]+2]`
-/

namespace A184675.P3527066494516739121
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184675.P3527066494516739121

namespace A184675

/-- `comp[∑[A002265(comp[2*(n+1)+2])-1]+2]` -/
def P3527066494516739121.Spec : Prop :=
  ∀ n, (P3527066494516739121.a n : ℤ) = A184675 (n + 1)

end A184675

/-! ## A184675.P9234227666969038203

`lt[1, A116482(n+1)]`
-/

namespace A184675.P9234227666969038203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184675.P9234227666969038203

namespace A184675

/-- `lt[1, A116482(n+1)]` -/
def P9234227666969038203.Spec : Prop :=
  ∀ n, (P9234227666969038203.a n : ℤ) = A184675 (n + 1)

end A184675

/-! ## A184675.P16905554366818871160

`A183570(A028392(n+1))`
-/

namespace A184675.P16905554366818871160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183570 (A028392 (n + 1)).toNat

end

end A184675.P16905554366818871160

namespace A184675

/-- `A183570(A028392(n+1))` -/
def P16905554366818871160.Spec : Prop :=
  ∀ n, P16905554366818871160.a n = A184675 (n + 1)

end A184675

/-! ## A184675.P10068303863489463350

`A183570(A183570(n)+1)`
-/

namespace A184675.P10068303863489463350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183570 (A183570 n + 1).toNat

end

end A184675.P10068303863489463350

namespace A184675

/-- `A183570(A183570(n)+1)` -/
def P10068303863489463350.Spec : Prop :=
  ∀ n, P10068303863489463350.a n = A184675 (n + 1)

end A184675

/-! ## A184675.P17268123681350356103

`A020725(A183869(n))`
-/

namespace A184675.P17268123681350356103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A183869 n).toNat

end

end A184675.P17268123681350356103

namespace A184675

/-- `A020725(A183869(n))` -/
def P17268123681350356103.Spec : Prop :=
  ∀ n, P17268123681350356103.a n = A184675 (n + 1)

end A184675

/-! ## A184675.P11315126186798181203

`A023444(A049068(n+2))`
-/

namespace A184675.P11315126186798181203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A049068 (n + 2)).toNat

end

end A184675.P11315126186798181203

namespace A184675

/-- `A023444(A049068(n+2))` -/
def P11315126186798181203.Spec : Prop :=
  ∀ n, P11315126186798181203.a n = A184675 (n + 1)

end A184675

/-! ## A184675.P1108766598401980875

`A023443(A183569(n+2))`
-/

namespace A184675.P1108766598401980875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183569 (n + 2)).toNat

end

end A184675.P1108766598401980875

namespace A184675

/-- `A023443(A183569(n+2))` -/
def P1108766598401980875.Spec : Prop :=
  ∀ n, P1108766598401980875.a n = A184675 (n + 1)

end A184675

/-!
# A184676: a(n) = n + floor((n/2-1/(4*n))^2); complement of A183867.

The programs for A184676, the canonical program `A184676.P7336189025091944476` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184676 has offset 1).

The definition of A184676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(((n+1)/2-1/(4*(n+1)))²)` (program `A184676.P7336189025091944476`, by `A184676.P7336189025091944476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184676.P7336189025091944476

`n+1+floor(((n+1)/2-1/(4*(n+1)))²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184676

/-- `n+1+floor(((n+1)/2-1/(4*(n+1)))²)` -/
def P7336189025091944476.Spec : Prop :=
  ∀ n, P7336189025091944476.a n = A184676 (n + 1)

theorem P7336189025091944476.correct : P7336189025091944476.Spec := by
  intro n
  simp only [A184676, Nat.add_sub_cancel]

end A184676

/-! ## A184676.P3402810485301433022

`∑[a(n-2)+1]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A184676.P3402810485301433022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184676.P3402810485301433022

namespace A184676

/-- `∑[a(n-2)+1]` -/
def P3402810485301433022.Spec : Prop :=
  ∀ n, (P3402810485301433022.a n : ℤ) = A184676 (n + 1)

end A184676

/-! ## A184676.P5098136831422902982

`record[ceil(((n-1)/2)²-n)]`
-/

namespace A184676.P5098136831422902982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1 : ℚ) / 2) ^ 2 - (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184676.P5098136831422902982

namespace A184676

/-- `record[ceil(((n-1)/2)²-n)]` -/
def P5098136831422902982.Spec : Prop :=
  ∀ n, P5098136831422902982.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P8360695783592280439

`ceil(cot((2/(n+1))²)+n)`
-/

namespace A184676.P8360695783592280439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot ((2 / (n + 1 : ℚ)) ^ 2 : ℝ) + (n : ℝ)⌉

end

end A184676.P8360695783592280439

namespace A184676

/-- `ceil(cot((2/(n+1))²)+n)` -/
def P8360695783592280439.Spec : Prop :=
  ∀ n, P8360695783592280439.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P7898237252492722274

`∑[∑[1-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A184676.P7898237252492722274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184676.P7898237252492722274

namespace A184676

/-- `∑[∑[1-a(n-1)]]` -/
def P7898237252492722274.Spec : Prop :=
  ∀ n, P7898237252492722274.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P11647639844124588912

`abs(a(n-2)+2+n)` with `a(0)=1, a(1)=2`
-/

namespace A184676.P11647639844124588912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 + n

end

end A184676.P11647639844124588912

namespace A184676

/-- `abs(a(n-2)+2+n)` -/
def P11647639844124588912.Spec : Prop :=
  ∀ n, (P11647639844124588912.a n : ℤ) = A184676 (n + 1)

end A184676

/-! ## A184676.P8437771622156831124

`floor(a(n-2)+2+n)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A184676.P8437771622156831124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 + n

end

end A184676.P8437771622156831124

namespace A184676

/-- `floor(a(n-2)+2+n)` -/
def P8437771622156831124.Spec : Prop :=
  ∀ n, (P8437771622156831124.a n : ℤ) = A184676 (n + 1)

end A184676

/-! ## A184676.P13035793124368797931

`ceil(a(n-2)+2+n)` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A184676.P13035793124368797931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 + n

end

end A184676.P13035793124368797931

namespace A184676

/-- `ceil(a(n-2)+2+n)` -/
def P13035793124368797931.Spec : Prop :=
  ∀ n, (P13035793124368797931.a n : ℤ) = A184676 (n + 1)

end A184676

/-! ## A184676.P627749638449856429

`round(a(n-2)+2+n)` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A184676.P627749638449856429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 + n

end

end A184676.P627749638449856429

namespace A184676

/-- `round(a(n-2)+2+n)` -/
def P627749638449856429.Spec : Prop :=
  ∀ n, (P627749638449856429.a n : ℤ) = A184676 (n + 1)

end A184676

/-! ## A184676.P14484728265958970735

`floor(C(n+2, 2)-(n/2)²)`
-/

namespace A184676.P14484728265958970735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) - ((n : ℚ) / 2) ^ 2⌋

end

end A184676.P14484728265958970735

namespace A184676

/-- `floor(C(n+2, 2)-(n/2)²)` -/
def P14484728265958970735.Spec : Prop :=
  ∀ n, P14484728265958970735.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P15756291617811585617

`ogf((1+x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A184676.P15756291617811585617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -1] [1, -2, 0, 2, -1] n

end

end A184676.P15756291617811585617

namespace A184676

/-- `ogf((1+x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P15756291617811585617.Spec : Prop :=
  ∀ n, P15756291617811585617.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P14493676031661682296

`floor(cot((2/(n+1))²)+n+1)`
-/

namespace A184676.P14493676031661682296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((2 / (n + 1 : ℚ)) ^ 2 : ℝ) + (n + 1 : ℝ)⌋

end

end A184676.P14493676031661682296

namespace A184676

/-- `floor(cot((2/(n+1))²)+n+1)` -/
def P14493676031661682296.Spec : Prop :=
  ∀ n, P14493676031661682296.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P18161936313047052270

`round(cot(2/(n+1))²+n+1)`
-/

namespace A184676.P18161936313047052270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / (n + 1 : ℚ) : ℝ) ^ 2 + (n + 1 : ℝ))

end

end A184676.P18161936313047052270

namespace A184676

/-- `round(cot(2/(n+1))²+n+1)` -/
def P18161936313047052270.Spec : Prop :=
  ∀ n, P18161936313047052270.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P17149890359286563406

`floor(((n+3)/2)²-gcd(2, n+1))`
-/

namespace A184676.P17149890359286563406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3 : ℚ) / 2) ^ 2 - (Nat.gcd 2 (n + 1) : ℚ)⌋

end

end A184676.P17149890359286563406

namespace A184676

/-- `floor(((n+3)/2)²-gcd(2, n+1))` -/
def P17149890359286563406.Spec : Prop :=
  ∀ n, P17149890359286563406.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P11064315686557778593

`lcm(n, a(n-2)+n+2)/n` with `a(0)=1, a(1)=2`
-/

namespace A184676.P11064315686557778593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 2) + (n + 2 : ℚ))) : ℚ) / (n : ℚ)

end

end A184676.P11064315686557778593

namespace A184676

/-- `lcm(n, a(n-2)+n+2)/n` -/
def P11064315686557778593.Spec : Prop :=
  ∀ n, P11064315686557778593.a n = (A184676 (n + 1) : ℚ)

end A184676

/-! ## A184676.P3376728143458550024

`floor((∑[C(n+2, n+1)]/(n+2))²)`
-/

namespace A184676.P3376728143458550024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)) ^ 2⌋

end

end A184676.P3376728143458550024

namespace A184676

/-- `floor((∑[C(n+2, n+1)]/(n+2))²)` -/
def P3376728143458550024.Spec : Prop :=
  ∀ n, P3376728143458550024.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P2827203087386522594

`floor(((C(n+2, 2)+n+1)/(n+2))²)`
-/

namespace A184676.P2827203087386522594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (n + 2) 2 + (n + 1) : ℚ) / (n + 2 : ℚ)) ^ 2⌋

end

end A184676.P2827203087386522594

namespace A184676

/-- `floor(((C(n+2, 2)+n+1)/(n+2))²)` -/
def P2827203087386522594.Spec : Prop :=
  ∀ n, P2827203087386522594.a n = A184676 (n + 1)

end A184676

/-! ## A184676.P7827333525584697764

`(n+2)*(a(n-2)/(n+2)+1)` with `a(0)=1, a(1)=2`
-/

namespace A184676.P7827333525584697764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 2 : ℚ) * (a (n - 2) / (n + 2 : ℚ) + 1)

end

end A184676.P7827333525584697764

namespace A184676

/-- `(n+2)*(a(n-2)/(n+2)+1)` -/
def P7827333525584697764.Spec : Prop :=
  ∀ n, P7827333525584697764.a n = (A184676 (n + 1) : ℚ)

end A184676

/-! ## A184676.P3559697417964334059

`gcd(a(n-2)+n+2, C(2, n+1))` with `a(0)=1, a(1)=2`
-/

namespace A184676.P3559697417964334059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd (a (n - 2) + (n + 2)) (Nat.choose 2 (n + 1))

end

end A184676.P3559697417964334059

namespace A184676

/-- `gcd(a(n-2)+n+2, C(2, n+1))` -/
def P3559697417964334059.Spec : Prop :=
  ∀ n, (P3559697417964334059.a n : ℤ) = A184676 (n + 1)

end A184676

/-! ## A184676.P2050589019515999407

`(a(n-2)+n+2)*and(1, 2*n+1)` with `a(0)=1, a(1)=2`
-/

namespace A184676.P2050589019515999407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 2) + (n + 2)) * Nat.land 1 (2 * n + 1)

end

end A184676.P2050589019515999407

namespace A184676

/-- `(a(n-2)+n+2)*and(1, 2*n+1)` -/
def P2050589019515999407.Spec : Prop :=
  ∀ n, (P2050589019515999407.a n : ℤ) = A184676 (n + 1)

end A184676

/-!
# A184677: Number of numbers <= p^2 with largest prime factor <= p, where p is the n-th prime; a(0) = 1.

The programs for A184677, there is no canonical definition to state claims against.
-/

/-! ## A184677.P12262523098644234038

`record[A066048(n+1)-A165995(n+1)]`
-/

namespace A184677.P12262523098644234038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1) - A165995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184677.P12262523098644234038

/-! ## A184677.P5016190255471740511

`record[A133790(n+1)-A165995(n+1)]`
-/

namespace A184677.P5016190255471740511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133790 (n + 1) - A165995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184677.P5016190255471740511

/-! ## A184677.P16593486033762292451

`record[A253560(n+1)-A165995(n+1)]`
-/

namespace A184677.P16593486033762292451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (n + 1) - A165995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184677.P16593486033762292451

/-! ## A184677.P14638525713718446834

`record[A014963(n+1)²-A165995(n+1)]`
-/

namespace A184677.P14638525713718446834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 2 - A165995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184677.P14638525713718446834

/-! ## A184677.P12987327730942978534

`A333535(A008578(n+1)²)+∑[A008578(n+1)]`
-/

namespace A184677.P12987327730942978534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333535 (A008578 (n + 1) ^ 2).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184677.P12987327730942978534

/-!
# A184678: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock singular.

The programs for A184678, there is no canonical definition to state claims against.
-/

/-! ## A184678.P13901731707411276456

`A184686((n+1)²+n²)`
-/

namespace A184678.P13901731707411276456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 ((n + 1) ^ 2 + n ^ 2)

end

end A184678.P13901731707411276456

/-! ## A184678.P3232900418155953432

`record[gcd(A008482(n), A184686(n+1))]`
-/

namespace A184678.P3232900418155953432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A184686 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184678.P3232900418155953432

/-! ## A184678.P8207664110802950116

`or(A000038(n), A184686(A001844(n)))`
-/

namespace A184678.P8207664110802950116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A184686 (A001844 n).toNat)

end

end A184678.P8207664110802950116

/-! ## A184678.P10791005943785619799

`A025441(n)!*A184686(A001844(n))`
-/

namespace A184678.P10791005943785619799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025441 n).toNat : ℤ) * A184686 (A001844 n).toNat

end

end A184678.P10791005943785619799

/-! ## A184678.P9635745057032258871

`A014963(gcd(n, n+1))*A184686(A001844(n))`
-/

namespace A184678.P9635745057032258871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A184686 (A001844 n).toNat

end

end A184678.P9635745057032258871

/-!
# A184679: Number of (n+1) X 3 binary arrays with every 2 X 2 subblock singular.

The programs for A184679, the canonical program `A184679.P13198910122222421997` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184679 has offset 1).

The definition of A184679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184679.P13198910122222421997

`5*a(n-1)-12*a(n-3)` with `a(0)=28, a(1)=128, a(2)=544`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184679

/-- `5*a(n-1)-12*a(n-3)` -/
def P13198910122222421997.Spec : Prop :=
  ∀ n, P13198910122222421997.a n = A184679 (n + 1)

theorem P13198910122222421997.correct : P13198910122222421997.Spec := by
  intro n
  simp only [A184679, Nat.add_sub_cancel]

end A184679

/-! ## A184679.P16418686395377405655

`A184686(∑[n+1]+2)`
-/

namespace A184679.P16418686395377405655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184679.P16418686395377405655

namespace A184679

/-- `A184686(∑[n+1]+2)` -/
def P16418686395377405655.Spec : Prop :=
  ∀ n, P16418686395377405655.a n = A184679 (n + 1)

end A184679

/-! ## A184679.P6293832900583904032

`record[gcd(A002262(n), A184686(n+2))]`
-/

namespace A184679.P6293832900583904032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184686 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184679.P6293832900583904032

namespace A184679

/-- `record[gcd(A002262(n), A184686(n+2))]` -/
def P6293832900583904032.Spec : Prop :=
  ∀ n, (P6293832900583904032.a n : ℤ) = A184679 (n + 1)

end A184679

/-! ## A184679.P7288267731624764502

`record[A184686(abs(A201163(n)))]`
-/

namespace A184679.P7288267731624764502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184679.P7288267731624764502

namespace A184679

/-- `record[A184686(abs(A201163(n)))]` -/
def P7288267731624764502.Spec : Prop :=
  ∀ n, P7288267731624764502.a n = A184679 (n + 1)

end A184679

/-! ## A184679.P3786335498484274473

`record[A184686(A000096(val(n+1, 2)+1))]`
-/

namespace A184679.P3786335498484274473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184679.P3786335498484274473

namespace A184679

/-- `record[A184686(A000096(val(n+1, 2)+1))]` -/
def P3786335498484274473.Spec : Prop :=
  ∀ n, P3786335498484274473.a n = A184679 (n + 1)

end A184679

/-!
# A184680: Number of (n+1) X 4 binary arrays with every 2 X 2 subblock singular.

The programs for A184680, there is no canonical definition to state claims against.
-/

/-! ## A184680.P13573159060854456966

`A184686(∑[n+2]+4)`
-/

namespace A184680.P13573159060854456966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184680.P13573159060854456966

/-! ## A184680.P14803478620700568232

`lcm(2, A184686(A167614(n+1)))`
-/

namespace A184680.P14803478620700568232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184686 (A167614 (n + 1)).toNat)

end

end A184680.P14803478620700568232

/-! ## A184680.P17447184681250811940

`A184686(A167614(n+1))+A034548(n+1)`
-/

namespace A184680.P17447184681250811940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A167614 (n + 1)).toNat + A034548 (n + 1)

end

end A184680.P17447184681250811940

/-! ## A184680.P9850683008604594089

`A326291(n+1)+A184686(A167614(n+1))`
-/

namespace A184680.P9850683008604594089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A184686 (A167614 (n + 1)).toNat

end

end A184680.P9850683008604594089

/-! ## A184680.P12033853928738225134

`A184686(A167614(n+1))%A184668(n+1)`
-/

namespace A184680.P12033853928738225134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184686 (A167614 (n + 1)).toNat) (A184668 (n + 1))

end

end A184680.P12033853928738225134

/-!
# A184681: Number of (n+1) X 5 binary arrays with every 2 X 2 subblock singular.

The programs for A184681, there is no canonical definition to state claims against.
-/

/-! ## A184681.P7566259733625835674

`A184686(A374004(n+1))`
-/

namespace A184681.P7566259733625835674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A374004 (n + 1)).toNat

end

end A184681.P7566259733625835674

/-! ## A184681.P3370947533071996107

`A184686(A167614(n+2)+1)`
-/

namespace A184681.P3370947533071996107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A167614 (n + 2) + 1).toNat

end

end A184681.P3370947533071996107

/-! ## A184681.P1237973736607254532

`A184686(A112355(n+1)+4)`
-/

namespace A184681.P1237973736607254532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A112355 (n + 1) + 4).toNat

end

end A184681.P1237973736607254532

/-! ## A184681.P8763908515063691888

`A184686(Δ[A023545(n+1)-n²])`
-/

namespace A184681.P8763908515063691888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (f1 (n + 1) - f1 n).toNat

end

end A184681.P8763908515063691888

/-! ## A184681.P4435853968149916917

`A184686(A080036(A167614(n+1)))`
-/

namespace A184681.P4435853968149916917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A184681.P4435853968149916917

/-!
# A184682: Number of (n+1)X6 binary arrays with every 2X2 subblock singular.

The programs for A184682, there is no canonical definition to state claims against.
-/

/-! ## A184682.P5633181190831660357

`A184686(A374005(n+1))`
-/

namespace A184682.P5633181190831660357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A374005 (n + 1)).toNat

end

end A184682.P5633181190831660357

/-! ## A184682.P13270501216891223260

`A184686(A056000(n)+15)`
-/

namespace A184682.P13270501216891223260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A056000 n + 15).toNat

end

end A184682.P13270501216891223260

/-! ## A184682.P13126643773853997518

`A184686(eq[6, A131818(n+1)])`
-/

namespace A184682.P13126643773853997518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184682.P13126643773853997518

/-! ## A184682.P11753621430615318524

`A184686(A046691(n+3))`
-/

namespace A184682.P11753621430615318524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A046691 (n + 3)).toNat

end

end A184682.P11753621430615318524

/-! ## A184682.P1792534202558542080

`A184686(eq[8, A140996(n)])`
-/

namespace A184682.P1792534202558542080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184682.P1792534202558542080

/-!
# A184683: Number of (n+1)X7 binary arrays with every 2X2 subblock singular.

The programs for A184683, there is no canonical definition to state claims against.
-/

/-! ## A184683.P17502982116901364364

`A184686(A374007(n+1))`
-/

namespace A184683.P17502982116901364364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A374007 (n + 1)).toNat

end

end A184683.P17502982116901364364

/-! ## A184683.P7847893285081835684

`A184686(A056115(n)+21)`
-/

namespace A184683.P7847893285081835684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A056115 n + 21).toNat

end

end A184683.P7847893285081835684

/-! ## A184683.P11063740950624004720

`A184686(eq[7, A131818(n+1)])`
-/

namespace A184683.P11063740950624004720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184683.P11063740950624004720

/-! ## A184683.P18372491413598618805

`A184686(A167499(n+5)-(n+5))`
-/

namespace A184683.P18372491413598618805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A167499 (n + 5) - (n + 5 : ℤ)).toNat

end

end A184683.P18372491413598618805

/-! ## A184683.P17053828157350243870

`A184686(eq[3, A219347(n)])`
-/

namespace A184683.P17053828157350243870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184683.P17053828157350243870

/-!
# A184684: Number of (n+1)X8 binary arrays with every 2X2 subblock singular.

The programs for A184684, there is no canonical definition to state claims against.
-/

/-! ## A184684.P3100428580157273223

`A184686(A374008(n+1))`
-/

namespace A184684.P3100428580157273223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A374008 (n + 1)).toNat

end

end A184684.P3100428580157273223

/-! ## A184684.P8205133847612482633

`A184686(A167499(n+5)+2)`
-/

namespace A184684.P8205133847612482633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A167499 (n + 5) + 2).toNat

end

end A184684.P8205133847612482633

/-! ## A184684.P17783708717914781588

`A184686(eq[8, A131818(n+1)])`
-/

namespace A184684.P17783708717914781588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184684.P17783708717914781588

/-! ## A184684.P11621020300286070746

`A184686(eq[4, A219347(n)])`
-/

namespace A184684.P11621020300286070746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184684.P11621020300286070746

/-! ## A184684.P18034531404875567069

`A184686(eq[6, A193592(n)])`
-/

namespace A184684.P18034531404875567069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184684.P18034531404875567069

/-!
# A184685: Number of (n+1)X9 binary arrays with every 2X2 subblock singular.

The programs for A184685, there is no canonical definition to state claims against.
-/

/-! ## A184685.P6702163793638908808

`A184686(A374009(n+1))`
-/

namespace A184685.P6702163793638908808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (A374009 (n + 1)).toNat

end

end A184685.P6702163793638908808

/-! ## A184685.P3041517866713664953

`A184686(eq[9, A131818(n+1)])`
-/

namespace A184685.P3041517866713664953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184685.P3041517866713664953

/-! ## A184685.P17063716088555068189

`A184686(eq[5, A219347(n)])`
-/

namespace A184685.P17063716088555068189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184685.P17063716088555068189

/-! ## A184685.P15743705005711106022

`A184686(eq[7, A193592(n)])`
-/

namespace A184685.P15743705005711106022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184685.P15743705005711106022

/-! ## A184685.P16505555406369362675

`A184686(eq[12, A185782(n+1)])`
-/

namespace A184685.P16505555406369362675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184685.P16505555406369362675

/-!
# A184686: T(n,k)=Number of (n+1)X(k+1) binary arrays with every 2X2 subblock singular.

The programs for A184686, there is no canonical definition to state claims against.
-/

/-! ## A184686.P9749862793372026979

`A319715(∏[n+2-1/a(n-1)])` with `a(0)=74, a(1)=7, a(2)=1, a(3)=3`
-/

namespace A184686.P9749862793372026979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [74, 7, 1, 3] fun n f1 =>
  (n + 2 : ℚ) - 1 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319715 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A184686.P9749862793372026979

/-!
# A184687: 1/3 the number of n X n 0..2 arrays with no element equal both to the element above and to the element to its left.

The programs for A184687, there is no canonical definition to state claims against.
-/

/-! ## A184687.P8450442790222504057

`A184694((n+1)²+n²)`
-/

namespace A184687.P8450442790222504057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 ((n + 1) ^ 2 + n ^ 2)

end

end A184687.P8450442790222504057

/-! ## A184687.P3931402393320268537

`A185284(n)+A184694(A001844(n))`
-/

namespace A184687.P3931402393320268537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A184694 (A001844 n).toNat

end

end A184687.P3931402393320268537

/-! ## A184687.P5767793784162107117

`A184694(A001844(n))+A000007(n+1)`
-/

namespace A184687.P5767793784162107117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A001844 n).toNat + A000007 (n + 1)

end

end A184687.P5767793784162107117

/-! ## A184687.P10777057830190202143

`A020639(A094388(n))*A208252(n+1)`
-/

namespace A184687.P10777057830190202143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A094388 n).toNat * A208252 (n + 1)

end

end A184687.P10777057830190202143

/-!
# A184688: 1/3 the number of n X 3 0..2 arrays with no element equal both to the element above and to the element to its left.

The programs for A184688, there is no canonical definition to state claims against.
-/

/-! ## A184688.P10495347678495576971

`ogf((9-6x)/(1-22x+16x^2))`
-/

namespace A184688.P10495347678495576971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -6] [1, -22, 16] n

end

end A184688.P10495347678495576971

/-! ## A184688.P14812608017548561068

`22*a(n-1)-16*a(n-2)` with `a(0)=9, a(1)=192`
-/

namespace A184688.P14812608017548561068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 192] fun n a =>
  22 * a (n - 1) - 16 * a (n - 2)

end

end A184688.P14812608017548561068

/-! ## A184688.P6549172290912474055

`((105-13*sqrt(105))*(11-sqrt(105))^(n+1)+(11+sqrt(105))^(n+1)*(105+13*sqrt(105)))/560`
-/

namespace A184688.P6549172290912474055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((105 - 13 * Real.sqrt (105 : ℝ)) * (11 - Real.sqrt (105 : ℝ)) ^ (n + 1) + (11 + Real.sqrt (105 : ℝ)) ^ (n + 1) * (105 + 13 * Real.sqrt (105 : ℝ))) / 560

end

end A184688.P6549172290912474055

/-! ## A184688.P14460273502756647210

`2*A208258(A167614(n+1))-A088157(n)`
-/

namespace A184688.P14460273502756647210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208258 (A167614 (n + 1)).toNat - A088157 n

end

end A184688.P14460273502756647210

/-! ## A184688.P15319567317963901867

`A184694(∑[n+2]+4)`
-/

namespace A184688.P15319567317963901867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184688.P15319567317963901867

/-!
# A184689: 1/3 the number of n X 4 0..2 arrays with no element equal both to the element above and to the element to its left.

The programs for A184689, there is no canonical definition to state claims against.
-/

/-! ## A184689.P12991510429923954800

`A184694(A052905(n)+9)`
-/

namespace A184689.P12991510429923954800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A052905 n + 9).toNat

end

end A184689.P12991510429923954800

/-! ## A184689.P16208788689213537381

`A184694(A055999(n)+10)`
-/

namespace A184689.P16208788689213537381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A055999 n + 10).toNat

end

end A184689.P16208788689213537381

/-! ## A184689.P2836721646253170491

`A184694(A167614(n+2)+1)`
-/

namespace A184689.P2836721646253170491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A167614 (n + 2) + 1).toNat

end

end A184689.P2836721646253170491

/-! ## A184689.P16517683904731919750

`A184694(A166136(n+2)-2)`
-/

namespace A184689.P16517683904731919750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A166136 (n + 2) - 2).toNat

end

end A184689.P16517683904731919750

/-! ## A184689.P7708472463756514049

`A184694(A141214(n+1))`
-/

namespace A184689.P7708472463756514049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A141214 (n + 1)).toNat

end

end A184689.P7708472463756514049

/-!
# A184690: 1/3 the number of nX5 0..2 arrays with no element equal both to the element above and to the element to its left.

The programs for A184690, there is no canonical definition to state claims against.
-/

/-! ## A184690.P16539931427596229066

`A184694(A167499(n+3))`
-/

namespace A184690.P16539931427596229066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A167499 (n + 3)).toNat

end

end A184690.P16539931427596229066

/-! ## A184690.P2180669386301946890

`A184694(A155212(n)+13)`
-/

namespace A184690.P2180669386301946890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A155212 n + 13).toNat

end

end A184690.P2180669386301946890

/-! ## A184690.P2719212516072386114

`A184694(A000217(n+4)+5)`
-/

namespace A184690.P2719212516072386114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A000217 (n + 4) + 5).toNat

end

end A184690.P2719212516072386114

/-! ## A184690.P129728407548310340

`A184694(A374005(n+1))`
-/

namespace A184690.P129728407548310340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A374005 (n + 1)).toNat

end

end A184690.P129728407548310340

/-! ## A184690.P16284786061759311570

`A184694(eq[8, A140996(n)])`
-/

namespace A184690.P16284786061759311570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184690.P16284786061759311570

/-!
# A184691: 1/3 the number of nX6 0..2 arrays with no element equal both to the element above and to the element to its left.

The programs for A184691, there is no canonical definition to state claims against.
-/

/-! ## A184691.P11724691451117610770

`A184694(A374007(n+1))`
-/

namespace A184691.P11724691451117610770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A374007 (n + 1)).toNat

end

end A184691.P11724691451117610770

/-! ## A184691.P17849332005952127476

`A184694(A000217(n+5)+n+1)`
-/

namespace A184691.P17849332005952127476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A184691.P17849332005952127476

/-!
# A184692: 1/3 the number of nX7 0..2 arrays with no element equal both to the element above and to the element to its left.

The programs for A184692, there is no canonical definition to state claims against.
-/

/-! ## A184692.P9301630744850076451

`A184694(A166136(n+5)+1)`
-/

namespace A184692.P9301630744850076451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A166136 (n + 5) + 1).toNat

end

end A184692.P9301630744850076451

/-! ## A184692.P4434818917093382047

`A184694(A374008(n+1))`
-/

namespace A184692.P4434818917093382047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A374008 (n + 1)).toNat

end

end A184692.P4434818917093382047

/-! ## A184692.P6955319391840994487

`A184694(A055999(n+4))`
-/

namespace A184692.P6955319391840994487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (A055999 (n + 4)).toNat

end

end A184692.P6955319391840994487

/-! ## A184692.P7378984928009084091

`A184694(eq[4, A219347(n)])`
-/

namespace A184692.P7378984928009084091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184692.P7378984928009084091

/-! ## A184692.P15931578733972170808

`A184694(eq[6, A193592(n)])`
-/

namespace A184692.P15931578733972170808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184692.P15931578733972170808

/-!
# A184694: T(n,k)=1/3 the number of nXk 0..2 arrays with no element equal both to the element above and to the element to its left.

The programs for A184694, there is no canonical definition to state claims against.
-/

/-! ## A184694.P6316192335453382909

`2*A208258(n+1)-A103451(n)`
-/

namespace A184694.P6316192335453382909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208258 (n + 1) - A103451 n

end

end A184694.P6316192335453382909

/-! ## A184694.P3242603499302753498

`A047267(A208258(n+1))+1`
-/

namespace A184694.P3242603499302753498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (A208258 (n + 1)).toNat + 1

end

end A184694.P3242603499302753498

/-! ## A184694.P5265497938990364342

`A047401(A208258(n+1)+1)`
-/

namespace A184694.P5265497938990364342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047401 (A208258 (n + 1) + 1).toNat

end

end A184694.P5265497938990364342

/-! ## A184694.P2374300628399554833

`A003485(A208258(n+1))-A007318(∑[n])`
-/

namespace A184694.P2374300628399554833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A208258 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184694.P2374300628399554833

/-! ## A184694.P6932064785170145638

`A003485(A208258(n+1))-A035263(2*n+3)`
-/

namespace A184694.P6932064785170145638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A208258 (n + 1)).toNat - A035263 (2 * n + 3)

end

end A184694.P6932064785170145638

/-!
# A184695: Number of strings of numbers x(i=1..n) in 0..n with sum i*x(i) equal to n^2.

The programs for A184695, there is no canonical definition to state claims against.
-/

/-! ## A184695.P1957729685585366320

`A184703(∑[4*n]+1)`
-/

namespace A184695.P1957729685585366320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184695.P1957729685585366320

/-! ## A184695.P2368358044087362347

`record[gcd(A008482(n), A184703(n+1))]`
-/

namespace A184695.P2368358044087362347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A184703 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184695.P2368358044087362347

/-! ## A184695.P482325386258486955

`record[A184703(A000982((n+1)/2^val(n+1, 2)))]`
-/

namespace A184695.P482325386258486955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000982 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184695.P482325386258486955

/-! ## A184695.P14959030530196178808

`A184703(A001844(n))-A164292(2*(n+2))`
-/

namespace A184695.P14959030530196178808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A001844 n).toNat - A164292 (2 * (n + 2))

end

end A184695.P14959030530196178808

/-! ## A184695.P15970649263491113503

`A184703(A001844(n))*A327832(2*n+1)`
-/

namespace A184695.P15970649263491113503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A001844 n).toNat * A327832 (2 * n + 1)

end

end A184695.P15970649263491113503

/-! ## A184695.P6072728091196517928

`A184703(xor(1, ∑[4*n]))%(7*A323567(n))`
-/

namespace A184695.P6072728091196517928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184703 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))) (7 * A323567 n)

end

end A184695.P6072728091196517928

/-!
# A184696: Number of strings of numbers x(i=1..n) in 0..2 with sum i*x(i) equal to n*2.

The programs for A184696, there is no canonical definition to state claims against.
-/

/-! ## A184696.P4442520636825099623

`A000726(2*(n+1))-A304630(n)`
-/

namespace A184696.P4442520636825099623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (2 * (n + 1)) - A304630 n

end

end A184696.P4442520636825099623

/-! ## A184696.P7229656337615258428

`A000726(2*(n+1))-∑[A000726(n)]`
-/

namespace A184696.P7229656337615258428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184696.P7229656337615258428

/-! ## A184696.P8983473833068414166

`A035385(A008586(n+1))-A304630(n)`
-/

namespace A184696.P8983473833068414166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (A008586 (n + 1)).toNat - A304630 n

end

end A184696.P8983473833068414166

/-! ## A184696.P6892140370501833092

`A184703(∑[n+2])`
-/

namespace A184696.P6892140370501833092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184696.P6892140370501833092

/-! ## A184696.P8340792882421419026

`record[A184703(record[A316669(n+1)])]`
-/

namespace A184696.P8340792882421419026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184696.P8340792882421419026

/-! ## A184696.P18341072768646738496

`record[A184703(A278504(2*n+1))]`
-/

namespace A184696.P18341072768646738496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A278504 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184696.P18341072768646738496

/-!
# A184697: Number of strings of numbers x(i=1..n) in 0..3 with sum i*x(i) equal to n*3.

The programs for A184697, there is no canonical definition to state claims against.
-/

/-! ## A184697.P6941929546785306874

`A184703(∑[n+3]+1)`
-/

namespace A184697.P6941929546785306874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184697.P6941929546785306874

/-! ## A184697.P8280478193470366612

`A184703(Δ[A008778(n)])%A177844(n)`
-/

namespace A184697.P8280478193470366612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184703 (f1 (n + 1) - f1 n).toNat) (A177844 n)

end

end A184697.P8280478193470366612

/-! ## A184697.P17718293877390215674

`A184703(A034856(n+2))%A107464(n)`
-/

namespace A184697.P17718293877390215674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184703 (A034856 (n + 2)).toNat) (A107464 n)

end

end A184697.P17718293877390215674

/-! ## A184697.P15603123109554330180

`A184703(A052905(n)+3)%A041192(n)`
-/

namespace A184697.P15603123109554330180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184703 (A052905 n + 3).toNat) (A041192 n)

end

end A184697.P15603123109554330180

/-! ## A184697.P714803513888194836

`or(A000007(n), A184703(A034856(n+2)))`
-/

namespace A184697.P714803513888194836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A184703 (A034856 (n + 2)).toNat)

end

end A184697.P714803513888194836

/-! ## A184697.P6272539510800881044

`A184703(A052905(n)+3)+A000007(n+1)`
-/

namespace A184697.P6272539510800881044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A052905 n + 3).toNat + A000007 (n + 1)

end

end A184697.P6272539510800881044

/-! ## A184697.P17995687656844136405

`A184703(A052905(n)+3)+A000035(2*n)`
-/

namespace A184697.P17995687656844136405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A052905 n + 3).toNat + A000035 (2 * n)

end

end A184697.P17995687656844136405

/-!
# A184698: Number of strings of numbers x(i=1..n) in 0..4 with sum i*x(i) equal to n*4.

The programs for A184698, there is no canonical definition to state claims against.
-/

/-! ## A184698.P1027506366309556585

`A184703(∑[n+4]+3)`
-/

namespace A184698.P1027506366309556585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184698.P1027506366309556585

/-! ## A184698.P15195006283801673618

`A184703(A056000(n)+7)+A173728(n)%2`
-/

namespace A184698.P15195006283801673618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A056000 n + 7).toNat + Int.tmod (A173728 (n + 12)) 2

end

end A184698.P15195006283801673618

/-! ## A184698.P873241017065725770

`A184703(A056000(n)+7)+val(A007051(n), 3)`
-/

namespace A184698.P873241017065725770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A056000 n + 7).toNat + (SequenceMachineLib.valuation (A007051 n).toNat 3 : ℤ)

end

end A184698.P873241017065725770

/-! ## A184698.P17660666319152078315

`A000265(n+1)%2*A184703(A056000(n)+7)`
-/

namespace A184698.P17660666319152078315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) 2 * A184703 (A056000 n + 7).toNat

end

end A184698.P17660666319152078315

/-! ## A184698.P3216800768068407117

`A184703(A056000(n)+7)^(A047934(n+1)%2)`
-/

namespace A184698.P3216800768068407117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184703 (A056000 n + 7).toNat : ℚ) ^ (Int.tmod (A047934 (n + 1)) 2 : ℤ)

end

end A184698.P3216800768068407117

/-! ## A184698.P7020889003898357985

`A184703(A056000(n)+7)+(2*A158485(n+1))%2`
-/

namespace A184698.P7020889003898357985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A056000 n + 7).toNat + Int.tmod (2 * A158485 (n + 1)) 2

end

end A184698.P7020889003898357985

/-! ## A184698.P12477881469623575613

`A001222(A002476(n+1))*A184703(A056000(n)+7)`
-/

namespace A184698.P12477881469623575613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * A184703 (A056000 n + 7).toNat

end

end A184698.P12477881469623575613

/-! ## A184698.P189513762701886115

`A184703(A056000(n)+7)%A097329(n)`
-/

namespace A184698.P189513762701886115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184703 (A056000 n + 7).toNat) (A097329 n)

end

end A184698.P189513762701886115

/-!
# A184699: Number of strings of numbers x(i=1..n) in 0..5 with sum i*x(i) equal to n*5.

The programs for A184699, there is no canonical definition to state claims against.
-/

/-! ## A184699.P17422775393884304911

`A184703(Δ[A264443(n)])`
-/

namespace A184699.P17422775393884304911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (f1 (n + 1) - f1 n).toNat

end

end A184699.P17422775393884304911

/-! ## A184699.P13430861860127553618

`A184703(A046691(n+3))`
-/

namespace A184699.P13430861860127553618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A046691 (n + 3)).toNat

end

end A184699.P13430861860127553618

/-! ## A184699.P1065695764107650490

`A184703(Δ[A023545(n+1)])`
-/

namespace A184699.P1065695764107650490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (f1 (n + 1) - f1 n).toNat

end

end A184699.P1065695764107650490

/-! ## A184699.P4264409029757918271

`A184703(A055998(n+3)-1)`
-/

namespace A184699.P4264409029757918271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A055998 (n + 3) - 1).toNat

end

end A184699.P4264409029757918271

/-! ## A184699.P18267660976853943456

`record[A184703(A038722(A167499(n)))]`
-/

namespace A184699.P18267660976853943456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184699.P18267660976853943456

/-! ## A184699.P13392861848639994440

`A184703(A264443(n+1)-A264443(n))`
-/

namespace A184699.P13392861848639994440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A264443 (n + 1) - A264443 n).toNat

end

end A184699.P13392861848639994440

/-! ## A184699.P16074259078565310394

`A184703(A034856(n+2)+A020719(2*n))`
-/

namespace A184699.P16074259078565310394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A034856 (n + 2) + A020719 (2 * n)).toNat

end

end A184699.P16074259078565310394

