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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C025

/-!
# A155500: Numbers of form x^2+40y^2 with positive x,y.

The programs for A155500, there is no canonical definition to state claims against.
-/

/-! ## A155500.P3912703393473955046

`eq[and(2, n)+2, A043562(A317641(n)²)]`
-/

namespace A155500.P3912703393473955046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A317641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155500.P3912703393473955046

/-! ## A155500.P4948120275736735337

`eq[xor(n, n+2)+2, A000005(A317641(n)+2)]`
-/

namespace A155500.P4948120275736735337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A317641 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155500.P4948120275736735337

/-! ## A155500.P3983768220506703647

`eq[A133872(n), A225152(A317641(n))]`
-/

namespace A155500.P3983768220506703647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225152 (A317641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155500.P3983768220506703647

/-! ## A155500.P8432268298143846406

`lt[A141310(A008619(n)), A317641(n)]`
-/

namespace A155500.P8432268298143846406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A008619 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155500.P8432268298143846406

/-! ## A155500.P182011036900064585

`eq[A053390(n+1), A326852(A317641(n)+2)]`
-/

namespace A155500.P182011036900064585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326852 (A317641 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155500.P182011036900064585

/-! ## A155500.P17049738448531332742

`eq[A043562(A317641(n)²)+n+1, A256008(n+1)]`
-/

namespace A155500.P17049738448531332742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A317641 n ^ 2).toNat + (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155500.P17049738448531332742

/-! ## A155500.P12548200498697183505

`filter[A155505(n+1), A014577(#)]`
-/

namespace A155500.P12548200498697183505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A155500.P12548200498697183505

/-! ## A155500.P4202799399607072201

`filter[A155505(n+1), A133872(#)]`
-/

namespace A155500.P4202799399607072201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A155500.P4202799399607072201

/-! ## A155500.P9135293731559065297

`filter[A155505(n+1), A152822(#)]`
-/

namespace A155500.P9135293731559065297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A155500.P9135293731559065297

/-! ## A155500.P8095242251324301791

`filter[A155505(n+1), A164056(#)]`
-/

namespace A155500.P8095242251324301791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164056 (f1 j).toNat = 1) n)

end

end A155500.P8095242251324301791

/-!
# A155501: Numbers n such that n^2 is of form x^2+40y^2 with positive x,y.

The programs for A155501, there is no canonical definition to state claims against.
-/

/-! ## A155501.P12682924435070535875

`lt[2, A317641(n²)]`
-/

namespace A155501.P12682924435070535875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155501.P12682924435070535875

/-! ## A155501.P16996602916449440375

`lt[0, A216579((A000007(n)+1+n)²)]+1`
-/

namespace A155501.P16996602916449440375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216579 ((A000007 n + 1 + (n : ℤ)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A155501.P16996602916449440375

/-! ## A155501.P6173975495157383143

`eq[A014963(A317641(n²)), A054977(n)]`
-/

namespace A155501.P6173975495157383143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A317641 (n ^ 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155501.P6173975495157383143

/-! ## A155501.P13225233694787195562

`eq[A014963(A317641(n²)), A057427(n)]`
-/

namespace A155501.P13225233694787195562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A317641 (n ^ 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155501.P13225233694787195562

/-! ## A155501.P16519846594105294038

`eq[A014963(5*(n+1)), A014963(A317641(n²))]`
-/

namespace A155501.P16519846594105294038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A317641 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155501.P16519846594105294038

/-!
# A155504: Numbers of the form (3h+1)*3^(k+1) listed in increasing order.

The programs for A155504, the canonical program `A155504.P17301175292286522036` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155504 has offset 1).

The definition of A155504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155504.P17301175292286522036

`3*A026225(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155504

/-- `3*A026225(n+1)` -/
def P17301175292286522036.Spec : Prop :=
  ∀ n, P17301175292286522036.a n = A155504 (n + 1)

theorem P17301175292286522036.correct : P17301175292286522036.Spec := by
  intro n
  simp only [A155504, Nat.add_sub_cancel]

end A155504

/-! ## A155504.P11355992695650809462

`∑[3*A026141(n+2)]`
-/

namespace A155504.P11355992695650809462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155504.P11355992695650809462

namespace A155504

/-- `∑[3*A026141(n+2)]` -/
def P11355992695650809462.Spec : Prop :=
  ∀ n, P11355992695650809462.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P10109080669636322941

`3*(A026141(n+2)+A026140(n+1))`
-/

namespace A155504.P10109080669636322941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A026141 (n + 2) + A026140 (n + 1))

end

end A155504.P10109080669636322941

namespace A155504

/-- `3*(A026141(n+2)+A026140(n+1))` -/
def P10109080669636322941.Spec : Prop :=
  ∀ n, P10109080669636322941.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P16438408864466992641

`3*(A026139(n+1)+A026141(n+2)-A026138(n+1))`
-/

namespace A155504.P16438408864466992641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A026139 (n + 1) + (A026141 (n + 2) - A026138 (n + 1)))

end

end A155504.P16438408864466992641

namespace A155504

/-- `3*(A026139(n+1)+A026141(n+2)-A026138(n+1))` -/
def P16438408864466992641.Spec : Prop :=
  ∀ n, P16438408864466992641.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P5979607671039613231

`A026224(n+2)-1`
-/

namespace A155504.P5979607671039613231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026224 (n + 2) - 1

end

end A155504.P5979607671039613231

namespace A155504

/-- `A026224(n+2)-1` -/
def P5979607671039613231.Spec : Prop :=
  ∀ n, P5979607671039613231.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P11761923978269859429

`A026228(n+2)-2`
-/

namespace A155504.P11761923978269859429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 2) - 2

end

end A155504.P11761923978269859429

namespace A155504

/-- `A026228(n+2)-2` -/
def P11761923978269859429.Spec : Prop :=
  ∀ n, P11761923978269859429.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P6977707044829555158

`3*A026140(n+2)`
-/

namespace A155504.P6977707044829555158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026140 (n + 2)

end

end A155504.P6977707044829555158

namespace A155504

/-- `3*A026140(n+2)` -/
def P6977707044829555158.Spec : Prop :=
  ∀ n, P6977707044829555158.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P11747293948227638771

`3*(A026138(n+2)-1)`
-/

namespace A155504.P11747293948227638771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A026138 (n + 2) - 1)

end

end A155504.P11747293948227638771

namespace A155504

/-- `3*(A026138(n+2)-1)` -/
def P11747293948227638771.Spec : Prop :=
  ∀ n, P11747293948227638771.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P11115323093937892365

`∑[3*Δ[A026138(n+1)]]`
-/

namespace A155504.P11115323093937892365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155504.P11115323093937892365

namespace A155504

/-- `∑[3*Δ[A026138(n+1)]]` -/
def P11115323093937892365.Spec : Prop :=
  ∀ n, P11115323093937892365.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P13806516210157981807

`A057428(n+1)+A026224(n+2)`
-/

namespace A155504.P13806516210157981807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A026224 (n + 2)

end

end A155504.P13806516210157981807

namespace A155504

/-- `A057428(n+1)+A026224(n+2)` -/
def P13806516210157981807.Spec : Prop :=
  ∀ n, P13806516210157981807.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P15078578881550458177

`A026139(n+2)+A026140(n+2)-1`
-/

namespace A155504.P15078578881550458177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026139 (n + 2) + (A026140 (n + 2) - 1)

end

end A155504.P15078578881550458177

namespace A155504

/-- `A026139(n+2)+A026140(n+2)-1` -/
def P15078578881550458177.Spec : Prop :=
  ∀ n, P15078578881550458177.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P16171399145117801089

`A026138(n+2)+A026139(n+2)-2`
-/

namespace A155504.P16171399145117801089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 2) + (A026139 (n + 2) - 2)

end

end A155504.P16171399145117801089

namespace A155504

/-- `A026138(n+2)+A026139(n+2)-2` -/
def P16171399145117801089.Spec : Prop :=
  ∀ n, P16171399145117801089.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P1446258228038787001

`3*(A026168(n+3)-2)`
-/

namespace A155504.P1446258228038787001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A026168 (n + 3) - 2)

end

end A155504.P1446258228038787001

namespace A155504

/-- `3*(A026168(n+3)-2)` -/
def P1446258228038787001.Spec : Prop :=
  ∀ n, P1446258228038787001.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P18252784213480752942

`3*record[A026182(n+2)-1]`
-/

namespace A155504.P18252784213480752942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026182 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155504.P18252784213480752942

namespace A155504

/-- `3*record[A026182(n+2)-1]` -/
def P18252784213480752942.Spec : Prop :=
  ∀ n, P18252784213480752942.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P17960511917815156287

`record[A026215(n+1)+1+n]`
-/

namespace A155504.P17960511917815156287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155504.P17960511917815156287

namespace A155504

/-- `record[A026215(n+1)+1+n]` -/
def P17960511917815156287.Spec : Prop :=
  ∀ n, P17960511917815156287.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P12100665815789099133

`A008486(A026225(n+1))`
-/

namespace A155504.P12100665815789099133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A026225 (n + 1)).toNat

end

end A155504.P12100665815789099133

namespace A155504

/-- `A008486(A026225(n+1))` -/
def P12100665815789099133.Spec : Prop :=
  ∀ n, P12100665815789099133.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P12837351389169094509

`A008486(A026140(n+2))`
-/

namespace A155504.P12837351389169094509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A026140 (n + 2)).toNat

end

end A155504.P12837351389169094509

namespace A155504

/-- `A008486(A026140(n+2))` -/
def P12837351389169094509.Spec : Prop :=
  ∀ n, P12837351389169094509.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P17302652475192084941

`record[A026136(n+2)+n]`
-/

namespace A155504.P17302652475192084941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155504.P17302652475192084941

namespace A155504

/-- `record[A026136(n+2)+n]` -/
def P17302652475192084941.Spec : Prop :=
  ∀ n, P17302652475192084941.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P7064863333967564892

`A008486(eq[1, A189673(n+1)])`
-/

namespace A155504.P7064863333967564892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155504.P7064863333967564892

namespace A155504

/-- `A008486(eq[1, A189673(n+1)])` -/
def P7064863333967564892.Spec : Prop :=
  ∀ n, P7064863333967564892.a n = A155504 (n + 1)

end A155504

/-! ## A155504.P11756423822214337564

`A016777(eq[1, A189673(n+1)])-1`
-/

namespace A155504.P11756423822214337564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A155504.P11756423822214337564

namespace A155504

/-- `A016777(eq[1, A189673(n+1)])-1` -/
def P11756423822214337564.Spec : Prop :=
  ∀ n, P11756423822214337564.a n = A155504 (n + 1)

end A155504

/-!
# A155505: Numbers n such that n^3 is of form x^2+40y^2 with positive x,y.

The programs for A155505, there is no canonical definition to state claims against.
-/

/-! ## A155505.P17077226523248597095

`lt[A080040(A160467(n+1)), A317641(n)]`
-/

namespace A155505.P17077226523248597095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (A160467 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155505.P17077226523248597095

/-! ## A155505.P7649292213935718770

`lt[A141310(A079097(n)), A317641(n)]`
-/

namespace A155505.P7649292213935718770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A079097 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155505.P7649292213935718770

/-! ## A155505.P9345394922606837711

`∩[A216580(n+1), A267137(n+1)]`
-/

namespace A155505.P9345394922606837711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155505.P9345394922606837711

/-! ## A155505.P5344665124646977862

`∩[A216580(n+1), A047412(n+3)]`
-/

namespace A155505.P5344665124646977862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047412 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155505.P5344665124646977862

/-! ## A155505.P17747627118698605332

`filter[A216580(n+1), A211706(#)]`
-/

namespace A155505.P17747627118698605332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211706 (f1 j).toNat = 1) n)

end

end A155505.P17747627118698605332

/-!
# A155506: An eigensequence of the (L)-sieve transform (LST); LST(A)=A/2.

The programs for A155506, there is no canonical definition to state claims against.
-/

/-! ## A155506.P5725973338099148675

`2*(A199085(A187829(n+1))+n)`
-/

namespace A155506.P5725973338099148675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199085 (A187829 (n + 1)).toNat + (n : ℤ))

end

end A155506.P5725973338099148675

/-! ## A155506.P3228985565213576667

`∑[A279891(A245636((n+1)*Δ[n^3]))]`
-/

namespace A155506.P3228985565213576667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (A245636 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155506.P3228985565213576667

/-! ## A155506.P13329588390373308951

`A004275(A199085(n+1)+A187829(n+1))`
-/

namespace A155506.P13329588390373308951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A199085 (n + 1) + A187829 (n + 1)).toNat

end

end A155506.P13329588390373308951

/-! ## A155506.P16267273480502643501

`∑[∑[and(2, A134032(3*n+5))]]`
-/

namespace A155506.P16267273480502643501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A134032 (3 * n + 5))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155506.P16267273480502643501

/-! ## A155506.P641882011958390217

`2*(A199085(A077168(n))+n)`
-/

namespace A155506.P641882011958390217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199085 (A077168 n).toNat + (n : ℤ))

end

end A155506.P641882011958390217

/-!
# A155508: Lesser of emirps (pairs) with digits 1 and 9 only.

The programs for A155508, there is no canonical definition to state claims against.
-/

/-! ## A155508.P621159290924952048

`p?[A057021(n+1)+A155507(n+1)-1]`
-/

namespace A155508.P621159290924952048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1) + (A155507 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155508.P621159290924952048

/-!
# A155509: Larger of emirps (pairs) with digits 1 and 9 only.

The programs for A155509, there is no canonical definition to state claims against.
-/

/-! ## A155509.P2387674553645633676

`p?[A155507(n+1)+18]-18`
-/

namespace A155509.P2387674553645633676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155507 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 18

end

end A155509.P2387674553645633676

/-!
# A155510: Possible cardinalities of the set of all k-th powers of the order n permutations, where k and n are some positive integers.

The programs for A155510, there is no canonical definition to state claims against.
-/

/-! ## A155510.P9409594026601811028

`record[and(A033172(n+4), A167973(n+1))]`
-/

namespace A155510.P9409594026601811028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033172 (n + 4)) (A167973 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155510.P9409594026601811028

/-! ## A155510.P16947646926533653673

`record[A002260(n+1)*A194965(A050446(n))]`
-/

namespace A155510.P16947646926533653673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A194965 (A050446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155510.P16947646926533653673

/-!
# A155515: Number of partitions of n into as many primes as nonprimes.

The programs for A155515, there is no canonical definition to state claims against.
-/

/-! ## A155515.P7173993977386417035

`A000041(n)-A355306(n)`
-/

namespace A155515.P7173993977386417035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A355306 n

end

end A155515.P7173993977386417035

/-! ## A155515.P6530209132598912571

`∑[A002865(n)]-A355306(n)`
-/

namespace A155515.P6530209132598912571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355306 n

end

end A155515.P6530209132598912571

/-! ## A155515.P9604117726868846503

`∑[A085811(n+3)]-A355306(n)`
-/

namespace A155515.P9604117726868846503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355306 n

end

end A155515.P9604117726868846503

/-! ## A155515.P3417129694790707683

`A238343(A000217(n))-A355306(n)`
-/

namespace A155515.P3417129694790707683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat - A355306 n

end

end A155515.P3417129694790707683

/-! ## A155515.P8522775551755257690

`A000837(n)+A018783(n)-A355306(n)`
-/

namespace A155515.P8522775551755257690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A355306 n)

end

end A155515.P8522775551755257690

/-! ## A155515.P8862897924654507959

`A003106(n)+A039900(n)-A355306(n)`
-/

namespace A155515.P8862897924654507959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A039900 n - A355306 n)

end

end A155515.P8862897924654507959

/-! ## A155515.P17906119377011384397

`A052810(n)+A057428(n)-A355306(n)`
-/

namespace A155515.P17906119377011384397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n + (A057428 n - A355306 n)

end

end A155515.P17906119377011384397

/-! ## A155515.P2002924976653919922

`A052810(n)-(A355306(n)+A057427(n))`
-/

namespace A155515.P2002924976653919922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A355306 n + A057427 n)

end

end A155515.P2002924976653919922

/-! ## A155515.P14205111643762518276

`A000041(n)-(A355225(n)+A355158(n))`
-/

namespace A155515.P14205111643762518276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A355225 n + A355158 n)

end

end A155515.P14205111643762518276

/-!
# A155516: Triangle T(n, k) = binomial(2*n, 2*k)*binomial(2*n+1, 2*k+1)/(2*n-2*k+1), read by rows.

The programs for A155516, the canonical program `A155516.P17990118231390158911` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155516 has offset 0).

The definition of A155516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155516.P17990118231390158911

`A001263(A185868(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A155516

/-- `A001263(A185868(n+1))` -/
def P17990118231390158911.Spec : Prop :=
  ∀ n, P17990118231390158911.a n = A155516 n

theorem P17990118231390158911.correct : P17990118231390158911.Spec := by
  intro n
  simp only [A155516]

end A155516

/-! ## A155516.P14108215570892625848

`A001263(A003056(n)²+2*n+1)`
-/

namespace A155516.P14108215570892625848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A003056 n ^ 2 + (2 * n : ℤ) + 1).toNat

end

end A155516.P14108215570892625848

namespace A155516

/-- `A001263(A003056(n)²+2*n+1)` -/
def P14108215570892625848.Spec : Prop :=
  ∀ n, P14108215570892625848.a n = A155516 n

end A155516

/-! ## A155516.P5356160804860304888

`A001263(n+1+A003056(n)²+n)`
-/

namespace A155516.P5356160804860304888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 ((n + 1 : ℤ) + (A003056 n ^ 2 + (n : ℤ))).toNat

end

end A155516.P5356160804860304888

namespace A155516

/-- `A001263(n+1+A003056(n)²+n)` -/
def P5356160804860304888.Spec : Prop :=
  ∀ n, P5356160804860304888.a n = A155516 n

end A155516

/-! ## A155516.P3203330045441754142

`A001263(n+1+A003056(n)^2+n)`
-/

namespace A155516.P3203330045441754142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 ((n + 1 : ℤ) + (A003056 n ^ 2 + (n : ℤ))).toNat

end

end A155516.P3203330045441754142

namespace A155516

/-- `A001263(n+1+A003056(n)^2+n)` -/
def P3203330045441754142.Spec : Prop :=
  ∀ n, P3203330045441754142.a n = A155516 n

end A155516

/-! ## A155516.P9464767777577713531

`A090181(A185869(n+1))`
-/

namespace A155516.P9464767777577713531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A185869 (n + 1)).toNat

end

end A155516.P9464767777577713531

namespace A155516

/-- `A090181(A185869(n+1))` -/
def P9464767777577713531.Spec : Prop :=
  ∀ n, P9464767777577713531.a n = A155516 n

end A155516

/-! ## A155516.P14422198765783177287

`A089732(A214661(n+1))`
-/

namespace A155516.P14422198765783177287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089732 (A214661 (n + 1)).toNat

end

end A155516.P14422198765783177287

namespace A155516

/-- `A089732(A214661(n+1))` -/
def P14422198765783177287.Spec : Prop :=
  ∀ n, P14422198765783177287.a n = A155516 n

end A155516

/-!
# A155518: Number of permutations p of {1,2,...,n} such that p(j) + p(n+1-j) != n+1 for all j.

The programs for A155518, there is no canonical definition to state claims against.
-/

/-! ## A155518.P8945961024312212092

`A037223(n)*A053871(ceil(n/2))`
-/

namespace A155518.P8945961024312212092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 n * A053871 ⌈(n : ℚ) / 2⌉.toNat

end

end A155518.P8945961024312212092

/-! ## A155518.P16687529851525138494

`A006882(n-and(1, n))*A053871(A110654(n))`
-/

namespace A155518.P16687529851525138494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n - Nat.land 1 n) * A053871 (A110654 n).toNat

end

end A155518.P16687529851525138494

/-! ## A155518.P8510926001180878097

`A155517(or(A024206(n+1), A144393(3*n)))`
-/

namespace A155518.P8510926001180878097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155517 (Int.lor (A024206 (n + 1)) (A144393 (3 * n))).toNat

end

end A155518.P8510926001180878097

/-! ## A155518.P15354725872507131048

`and(A020051(n), A245579(A001700(n)))`
-/

namespace A155518.P15354725872507131048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020051 n) (A245579 (A001700 n).toNat)

end

end A155518.P15354725872507131048

/-!
# A155519: a(n) = Sum (J(p): p is a permutation of {1,2,...,n}), where J(p) is the number of j <= ceiling(n/2) such that p(j) + p(n+1-j) = n+1.

The programs for A155519, there is no canonical definition to state claims against.
-/

/-! ## A155519.P1670248100647958672

`abs(1-n)!*floor(cosh(log((n+1)²)))`
-/

namespace A155519.P1670248100647958672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) * ⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋

end

end A155519.P1670248100647958672

/-! ## A155519.P12792015161802720500

`(n+1)!+(1-n)*a(n-1)` with `a(0)=1`
-/

namespace A155519.P12792015161802720500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial (n + 1) : ℤ) + (1 - (n : ℤ)) * a (n - 1)

end

end A155519.P12792015161802720500

/-! ## A155519.P12718544448287553069

`∏[n+1]-(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A155519.P12718544448287553069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1) * a (n - 1)

end

end A155519.P12718544448287553069

/-! ## A155519.P18147559078845187477

`A122748(2*n)`
-/

namespace A155519.P18147559078845187477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122748 (2 * n)

end

end A155519.P18147559078845187477

/-! ## A155519.P10205221601460156304

`record[A098361(n)]-(n*a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A155519.P10205221601460156304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) * a (n - 1) - a (n - 1))

end

end A155519.P10205221601460156304

/-!
# A155521: Smallest fixed point summed over all non-derangement permutations of {1,2,...,n}.

The programs for A155521, the canonical program `A155521.P8658041350617391030` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155521 has offset 0).

The definition of A155521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155521.P8658041350617391030

`(n+1)*a(n-1)+n*(-1)^(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155521

/-- `(n+1)*a(n-1)+n*(-1)^(n+1)` -/
def P8658041350617391030.Spec : Prop :=
  ∀ n, P8658041350617391030.a n = A155521 n

theorem P8658041350617391030.correct : P8658041350617391030.Spec := by
  intro n
  simp only [A155521]

end A155521

/-! ## A155521.P5844403141251586809

`a(n-1)-n*((-1)^n-a(n-1))` with `a(0)=0`
-/

namespace A155521.P5844403141251586809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℤ) * ((-1) ^ n - a (n - 1))

end

end A155521.P5844403141251586809

namespace A155521

/-- `a(n-1)-n*((-1)^n-a(n-1))` -/
def P5844403141251586809.Spec : Prop :=
  ∀ n, P5844403141251586809.a n = A155521 n

end A155521

/-! ## A155521.P1590490184735597410

`A055596(n+1)-(-1)^n`
-/

namespace A155521.P1590490184735597410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055596 (n + 1) - (-1) ^ n

end

end A155521.P1590490184735597410

namespace A155521

/-- `A055596(n+1)-(-1)^n` -/
def P1590490184735597410.Spec : Prop :=
  ∀ n, P1590490184735597410.a n = A155521 n

end A155521

/-! ## A155521.P4821428801185590556

`a(n-1)+n*A055596(n)` with `a(0)=0`
-/

namespace A155521.P4821428801185590556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A055596 n

end

end A155521.P4821428801185590556

namespace A155521

/-- `a(n-1)+n*A055596(n)` -/
def P4821428801185590556.Spec : Prop :=
  ∀ n, P4821428801185590556.a n = A155521 n

end A155521

/-! ## A155521.P17489496219009446639

`A096654(n-1)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A155521.P17489496219009446639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A096654 (n - 1) - a (n - 1)

end

end A155521.P17489496219009446639

namespace A155521

/-- `A096654(n-1)-a(n-1)` -/
def P17489496219009446639.Spec : Prop :=
  ∀ n, P17489496219009446639.a n = A155521 n

end A155521

/-! ## A155521.P5273588871585381821

`A000166(n+1)-A161130(n)`
-/

namespace A155521.P5273588871585381821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) - A161130 n

end

end A155521.P5273588871585381821

namespace A155521

/-- `A000166(n+1)-A161130(n)` -/
def P5273588871585381821.Spec : Prop :=
  ∀ n, P5273588871585381821.a n = A155521 n

end A155521

/-! ## A155521.P6464478903045685705

`A002467(n+1)-A000240(n+1)`
-/

namespace A155521.P6464478903045685705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (n + 1) - A000240 (n + 1)

end

end A155521.P6464478903045685705

namespace A155521

/-- `A002467(n+1)-A000240(n+1)` -/
def P6464478903045685705.Spec : Prop :=
  ∀ n, P6464478903045685705.a n = A155521 n

end A155521

/-! ## A155521.P8905103576724975463

`A368765(n+1)-A000166(n+1)`
-/

namespace A155521.P8905103576724975463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368765 (n + 1) - A000166 (n + 1)

end

end A155521.P8905103576724975463

namespace A155521

/-- `A368765(n+1)-A000166(n+1)` -/
def P8905103576724975463.Spec : Prop :=
  ∀ n, P8905103576724975463.a n = A155521 n

end A155521

/-! ## A155521.P8598613115262474043

`A180191(n+1)-n*A000166(n)`
-/

namespace A155521.P8598613115262474043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180191 (n + 1) - (n : ℤ) * A000166 n

end

end A155521.P8598613115262474043

namespace A155521

/-- `A180191(n+1)-n*A000166(n)` -/
def P8598613115262474043.Spec : Prop :=
  ∀ n, P8598613115262474043.a n = A155521 n

end A155521

/-! ## A155521.P15775279197157094892

`A208956(A133263(n))-A000007(n)`
-/

namespace A155521.P15775279197157094892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208956 (A133263 n).toNat - A000007 n

end

end A155521.P15775279197157094892

namespace A155521

/-- `A208956(A133263(n))-A000007(n)` -/
def P15775279197157094892.Spec : Prop :=
  ∀ n, P15775279197157094892.a n = A155521 n

end A155521

/-!
# A155522: Decimal expansion of log_10 (20).

The programs for A155522, there is no canonical definition to state claims against.
-/

/-! ## A155522.P18046952833700045286

`A007524(lcm(n-1, ceil(acot(n))))`
-/

namespace A155522.P18046952833700045286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007524 (Int.lcm ((n : ℤ) - 1) ⌈SequenceMachineLib.acot (n : ℝ)⌉)

end

end A155522.P18046952833700045286

/-! ## A155522.P16134797795048195854

`A007524(n+2-A060445(2*n))`
-/

namespace A155522.P16134797795048195854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007524 ((n + 2 : ℤ) - A060445 (2 * n)).toNat

end

end A155522.P16134797795048195854

/-!
# A155537: Triangle T(n,k,p,q) = (p^n + q^n)*A001263(n, k) with p=2 and q=1, read by rows.

The programs for A155537, the canonical program `A155537.P495067462620103375` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155537 has offset 1).

The definition of A155537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155537.P495067462620103375

`(A140513(n)+1)*A001263(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A155537

/-- `(A140513(n)+1)*A001263(n+1)` -/
def P495067462620103375.Spec : Prop :=
  ∀ n, P495067462620103375.a n = A155537 (n + 1)

theorem P495067462620103375.correct : P495067462620103375.Spec := by
  intro n
  simp only [A155537, Nat.add_sub_cancel]

end A155537

/-! ## A155537.P1082530941285655798

`A001263(n+1)*A048578(A003056(n))`
-/

namespace A155537.P1082530941285655798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A048578 (A003056 n).toNat

end

end A155537.P1082530941285655798

namespace A155537

/-- `A001263(n+1)*A048578(A003056(n))` -/
def P1082530941285655798.Spec : Prop :=
  ∀ n, P1082530941285655798.a n = A155537 (n + 1)

end A155537

/-! ## A155537.P9971026028114236971

`A000051(A002024(n+1))*A001263(n+1)`
-/

namespace A155537.P9971026028114236971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002024 (n + 1)).toNat * A001263 (n + 1)

end

end A155537.P9971026028114236971

namespace A155537

/-- `A000051(A002024(n+1))*A001263(n+1)` -/
def P9971026028114236971.Spec : Prop :=
  ∀ n, P9971026028114236971.a n = A155537 (n + 1)

end A155537

/-! ## A155537.P9448410510144892042

`A000051(A123578(n+1))*A001263(n+1)`
-/

namespace A155537.P9448410510144892042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A123578 (n + 1)).toNat * A001263 (n + 1)

end

end A155537.P9448410510144892042

namespace A155537

/-- `A000051(A123578(n+1))*A001263(n+1)` -/
def P9448410510144892042.Spec : Prop :=
  ∀ n, P9448410510144892042.a n = A155537 (n + 1)

end A155537

/-! ## A155537.P7520665695574138654

`A000051(A000194(2*(n+1)))*A001263(n+1)`
-/

namespace A155537.P7520665695574138654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A000194 (2 * (n + 1))).toNat * A001263 (n + 1)

end

end A155537.P7520665695574138654

namespace A155537

/-- `A000051(A000194(2*(n+1)))*A001263(n+1)` -/
def P7520665695574138654.Spec : Prop :=
  ∀ n, P7520665695574138654.a n = A155537 (n + 1)

end A155537

/-! ## A155537.P3310837850038245517

`A001263(n+1)*A233775(A140513(n))`
-/

namespace A155537.P3310837850038245517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A233775 (A140513 n).toNat

end

end A155537.P3310837850038245517

namespace A155537

/-- `A001263(n+1)*A233775(A140513(n))` -/
def P3310837850038245517.Spec : Prop :=
  ∀ n, P3310837850038245517.a n = A155537 (n + 1)

end A155537

/-!
# A155538: 

The programs for A155538, there is no canonical definition to state claims against.
-/

/-! ## A155538.P17186823723123949652

`floor(2^2^(8-n))`
-/

namespace A155538.P17186823723123949652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((2 : ℚ) ^ (8 - (n : ℤ) : ℤ) : ℝ)⌋

end

end A155538.P17186823723123949652

/-!
# A155539: a(n) = n^(n+3) + (n+3)^n.

The programs for A155539, the canonical program `A155539.P9973177122441008102` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155539 has offset 0).

The definition of A155539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+3)+(n+3)^n` (program `A155539.P9973177122441008102`, by `A155539.P9973177122441008102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155539.P9973177122441008102

`n^(n+3)+(n+3)^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155539

/-- `n^(n+3)+(n+3)^n` -/
def P9973177122441008102.Spec : Prop :=
  ∀ n, (P9973177122441008102.a n : ℤ) = A155539 n

theorem P9973177122441008102.correct : P9973177122441008102.Spec := by
  intro n
  simp only [A155539]

end A155539

/-! ## A155539.P12714862038620999829

`or(1, A008789(n)+A007830(n))`
-/

namespace A155539.P12714862038620999829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008789 n + A007830 n)

end

end A155539.P12714862038620999829

namespace A155539

/-- `or(1, A008789(n)+A007830(n))` -/
def P12714862038620999829.Spec : Prop :=
  ∀ n, P12714862038620999829.a n = A155539 n

end A155539

/-! ## A155539.P10284486578600138206

`A055652(2*(n+1)*(n+3))`
-/

namespace A155539.P10284486578600138206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (2 * ((n + 1) * (n + 3)))

end

end A155539.P10284486578600138206

namespace A155539

/-- `A055652(2*(n+1)*(n+3))` -/
def P10284486578600138206.Spec : Prop :=
  ∀ n, P10284486578600138206.a n = A155539 n

end A155539

/-! ## A155539.P12869450854531872133

`A156354(2*(n+1)*(n+3))`
-/

namespace A155539.P12869450854531872133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (2 * ((n + 1) * (n + 3)))

end

end A155539.P12869450854531872133

namespace A155539

/-- `A156354(2*(n+1)*(n+3))` -/
def P12869450854531872133.Spec : Prop :=
  ∀ n, P12869450854531872133.a n = A155539 n

end A155539

/-! ## A155539.P14460346597091781809

`record[A055652(A031940(n+1))]`
-/

namespace A155539.P14460346597091781809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A031940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155539.P14460346597091781809

namespace A155539

/-- `record[A055652(A031940(n+1))]` -/
def P14460346597091781809.Spec : Prop :=
  ∀ n, P14460346597091781809.a n = A155539 n

end A155539

/-!
# A155542: Expansion of 2*(1 + x)/(1 - 8*x - 25*x^2).

The programs for A155542, the canonical program `A155542.P14015058756942689637` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155542 has offset 0).

The definition of A155542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+2x)/(1-8x-25x^2))` (program `A155542.P14015058756942689637`, by `A155542.P14015058756942689637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155542.P14015058756942689637

`ogf((2+2x)/(1-8x-25x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155542

/-- `ogf((2+2x)/(1-8x-25x^2))` -/
def P14015058756942689637.Spec : Prop :=
  ∀ n, P14015058756942689637.a n = A155542 n

theorem P14015058756942689637.correct : P14015058756942689637.Spec := by
  intro n
  simp only [A155542]

end A155542

/-! ## A155542.P7952402487058465312

`8*a(n-1)+25*a(n-2)` with `a(0)=2, a(1)=18`
-/

namespace A155542.P7952402487058465312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 18] fun n a =>
  8 * a (n - 1) + 25 * a (n - 2)

end

end A155542.P7952402487058465312

namespace A155542

/-- `8*a(n-1)+25*a(n-2)` -/
def P7952402487058465312.Spec : Prop :=
  ∀ n, (P7952402487058465312.a n : ℤ) = A155542 n

end A155542

/-!
# A155543: a(n) = 2*A081294(n).

The programs for A155543, the canonical program `A155543.P14544471182699445358` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155543 has offset 0).

The definition of A155543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A081294(n)` (program `A155543.P14544471182699445358`, by `A155543.P14544471182699445358.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155543.P14544471182699445358

`2*A081294(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A155543

/-- `2*A081294(n)` -/
def P14544471182699445358.Spec : Prop :=
  ∀ n, P14544471182699445358.a n = A155543 n

theorem P14544471182699445358.correct : P14544471182699445358.Spec := by
  intro n
  simp only [A155543]

end A155543

/-! ## A155543.P9316496689296941556

`lcm(2, 4^n)`
-/

namespace A155543.P9316496689296941556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (4 ^ n)

end

end A155543.P9316496689296941556

namespace A155543

/-- `lcm(2, 4^n)` -/
def P9316496689296941556.Spec : Prop :=
  ∀ n, (P9316496689296941556.a n : ℤ) = A155543 n

end A155543

/-! ## A155543.P4875115955854070083

`ogf((2-4x)/(1-4x))`
-/

namespace A155543.P4875115955854070083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -4] n

end

end A155543.P4875115955854070083

namespace A155543

/-- `ogf((2-4x)/(1-4x))` -/
def P4875115955854070083.Spec : Prop :=
  ∀ n, P4875115955854070083.a n = A155543 n

end A155543

/-! ## A155543.P4292543054781293594

`2^floor(2/acot(n))`
-/

namespace A155543.P4292543054781293594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)

end

end A155543.P4292543054781293594

namespace A155543

/-- `2^floor(2/acot(n))` -/
def P4292543054781293594.Spec : Prop :=
  ∀ n, P4292543054781293594.a n = (A155543 n : ℚ)

end A155543

/-! ## A155543.P1555154657931060062

`floor(acot(n)+4^n)`
-/

namespace A155543.P1555154657931060062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (4 ^ n : ℝ)⌋

end

end A155543.P1555154657931060062

namespace A155543

/-- `floor(acot(n)+4^n)` -/
def P1555154657931060062.Spec : Prop :=
  ∀ n, P1555154657931060062.a n = A155543 n

end A155543

/-! ## A155543.P13729440219367949444

`4^n*ceil(acot(n))`
-/

namespace A155543.P13729440219367949444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A155543.P13729440219367949444

namespace A155543

/-- `4^n*ceil(acot(n))` -/
def P13729440219367949444.Spec : Prop :=
  ∀ n, P13729440219367949444.a n = A155543 n

end A155543

/-! ## A155543.P765894132129433343

`4*a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A155543.P765894132129433343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  4 * a (n - 1)

end

end A155543.P765894132129433343

namespace A155543

/-- `4*a(n-1)` -/
def P765894132129433343.Spec : Prop :=
  ∀ n, (P765894132129433343.a n : ℤ) = A155543 n

end A155543

/-! ## A155543.P1912694129352401296

`and(4^n+1, -2)`
-/

namespace A155543.P1912694129352401296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 ^ n + 1 : ℤ) (-2)

end

end A155543.P1912694129352401296

namespace A155543

/-- `and(4^n+1, -2)` -/
def P1912694129352401296.Spec : Prop :=
  ∀ n, P1912694129352401296.a n = A155543 n

end A155543

/-! ## A155543.P12659062322793702174

`1-or(1, -4^n)`
-/

namespace A155543.P12659062322793702174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (-(4 ^ n : ℤ))

end

end A155543.P12659062322793702174

namespace A155543

/-- `1-or(1, -4^n)` -/
def P12659062322793702174.Spec : Prop :=
  ∀ n, P12659062322793702174.a n = A155543 n

end A155543

/-! ## A155543.P9184588229900491323

`2*ceil(4^n/2)`
-/

namespace A155543.P9184588229900491323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(4 ^ n : ℚ) / 2⌉

end

end A155543.P9184588229900491323

namespace A155543

/-- `2*ceil(4^n/2)` -/
def P9184588229900491323.Spec : Prop :=
  ∀ n, P9184588229900491323.a n = A155543 n

end A155543

/-! ## A155543.P3787360394214143276

`abs(record[(-2)^(n+1)])`
-/

namespace A155543.P3787360394214143276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A155543.P3787360394214143276

namespace A155543

/-- `abs(record[(-2)^(n+1)])` -/
def P3787360394214143276.Spec : Prop :=
  ∀ n, P3787360394214143276.a n = A155543 n

end A155543

/-! ## A155543.P14644233442509029808

`C(2, n+2)+4^n`
-/

namespace A155543.P14644233442509029808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 4 ^ n

end

end A155543.P14644233442509029808

namespace A155543

/-- `C(2, n+2)+4^n` -/
def P14644233442509029808.Spec : Prop :=
  ∀ n, (P14644233442509029808.a n : ℤ) = A155543 n

end A155543

/-! ## A155543.P13951504210138602943

`4^(n%a(n-1))` with `a(0)=2`
-/

namespace A155543.P13951504210138602943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 ^ (n % a (n - 1))

end

end A155543.P13951504210138602943

namespace A155543

/-- `4^(n%a(n-1))` -/
def P13951504210138602943.Spec : Prop :=
  ∀ n, (P13951504210138602943.a n : ℤ) = A155543 n

end A155543

/-! ## A155543.P12010534809544437122

`2^round(1/acot(2*n))`
-/

namespace A155543.P12010534809544437122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (2 * n : ℝ)) : ℤ)

end

end A155543.P12010534809544437122

namespace A155543

/-- `2^round(1/acot(2*n))` -/
def P12010534809544437122.Spec : Prop :=
  ∀ n, P12010534809544437122.a n = (A155543 n : ℚ)

end A155543

/-! ## A155543.P9706209430337105922

`round(acot(n+1)+4^n)`
-/

namespace A155543.P9706209430337105922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (4 ^ n : ℝ))

end

end A155543.P9706209430337105922

namespace A155543

/-- `round(acot(n+1)+4^n)` -/
def P9706209430337105922.Spec : Prop :=
  ∀ n, P9706209430337105922.a n = A155543 n

end A155543

/-! ## A155543.P3895940290292825797

`a(((-1)^n)²)^n` with `a(0)=2, a(1)=4`
-/

namespace A155543.P3895940290292825797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (((-1) ^ n) ^ 2).toNat ^ n

end

end A155543.P3895940290292825797

namespace A155543

/-- `a(((-1)^n)²)^n` -/
def P3895940290292825797.Spec : Prop :=
  ∀ n, (P3895940290292825797.a n : ℤ) = A155543 n

end A155543

/-! ## A155543.P7151507267320925523

`gcd(4, a(n-1))^n` with `a(0)=2, a(1)=4`
-/

namespace A155543.P7151507267320925523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  Nat.gcd 4 (a (n - 1)) ^ n

end

end A155543.P7151507267320925523

namespace A155543

/-- `gcd(4, a(n-1))^n` -/
def P7151507267320925523.Spec : Prop :=
  ∀ n, (P7151507267320925523.a n : ℤ) = A155543 n

end A155543

/-! ## A155543.P18413447640623905476

`2^xor(1, record[xor(1, n+1)])`
-/

namespace A155543.P18413447640623905476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A155543.P18413447640623905476

namespace A155543

/-- `2^xor(1, record[xor(1, n+1)])` -/
def P18413447640623905476.Spec : Prop :=
  ∀ n, (P18413447640623905476.a n : ℤ) = A155543 n

end A155543

/-! ## A155543.P6296741814241013266

`2^gcd(2*n, C(2, n²))`
-/

namespace A155543.P6296741814241013266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.gcd (2 * n) (Nat.choose 2 (n ^ 2))

end

end A155543.P6296741814241013266

namespace A155543

/-- `2^gcd(2*n, C(2, n²))` -/
def P6296741814241013266.Spec : Prop :=
  ∀ n, (P6296741814241013266.a n : ℤ) = A155543 n

end A155543

/-!
# A155544: Indices of primes having three or more identical digits.

The programs for A155544, there is no canonical definition to state claims against.
-/

/-! ## A155544.P9043452764355609455

`A000720(p?[A291346(n+1)])`
-/

namespace A155544.P9043452764355609455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155544.P9043452764355609455

/-! ## A155544.P523029136193315381

`A003963(p?[A291346(n+1)])`
-/

namespace A155544.P523029136193315381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155544.P523029136193315381

/-! ## A155544.P12185075305644925661

`A026233(p?[A291346(n+1)])`
-/

namespace A155544.P12185075305644925661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155544.P12185075305644925661

/-! ## A155544.P15902342143986823406

`A026238(p?[A291346(n+1)])`
-/

namespace A155544.P15902342143986823406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155544.P15902342143986823406

/-! ## A155544.P16217464370525626634

`lt[1, A107846(A000040(n+1))]+1`
-/

namespace A155544.P16217464370525626634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A155544.P16217464370525626634

/-!
# A155546: Triangle read by rows where T(m,n)=2mn + m + n - 5, 1<=n<=m.

The programs for A155546, the canonical program `A155546.P2386952917106834247` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155546 has offset 1).

The definition of A155546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155546.P9232554498747392290

`A155550(n+1)+1`
-/

namespace A155546.P9232554498747392290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 1

end

end A155546.P9232554498747392290

namespace A155546

/-- `A155550(n+1)+1` -/
def P9232554498747392290.Spec : Prop :=
  ∀ n, P9232554498747392290.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P14726334957939532228

`A144670(n+1)+2`
-/

namespace A155546.P14726334957939532228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) + 2

end

end A155546.P14726334957939532228

namespace A155546

/-- `A144670(n+1)+2` -/
def P14726334957939532228.Spec : Prop :=
  ∀ n, P14726334957939532228.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P16068860028838406624

`A155724(n+1)-1`
-/

namespace A155546.P16068860028838406624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) - 1

end

end A155546.P16068860028838406624

namespace A155546

/-- `A155724(n+1)-1` -/
def P16068860028838406624.Spec : Prop :=
  ∀ n, P16068860028838406624.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P2386952917106834247

`A154684(n+1)-2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A155546

/-- `A154684(n+1)-2` -/
def P2386952917106834247.Spec : Prop :=
  ∀ n, P2386952917106834247.a n = A155546 (n + 1)

theorem P2386952917106834247.correct : P2386952917106834247.Spec := by
  intro n
  simp only [A155546, Nat.add_sub_cancel]

end A155546

/-! ## A155546.P7338389005997905496

`A324937(n+1)+3`
-/

namespace A155546.P7338389005997905496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) + 3

end

end A155546.P7338389005997905496

namespace A155546

/-- `A324937(n+1)+3` -/
def P7338389005997905496.Spec : Prop :=
  ∀ n, P7338389005997905496.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P1395155124183332552

`A154680(n+1)-3`
-/

namespace A155546.P1395155124183332552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) - 3

end

end A155546.P1395155124183332552

namespace A155546

/-- `A154680(n+1)-3` -/
def P1395155124183332552.Spec : Prop :=
  ∀ n, P1395155124183332552.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P4323718925908595554

`A155551(n+1)+4`
-/

namespace A155546.P4323718925908595554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 4

end

end A155546.P4323718925908595554

namespace A155546

/-- `A155551(n+1)+4` -/
def P4323718925908595554.Spec : Prop :=
  ∀ n, P4323718925908595554.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P13616554826155637628

`A144562(n+1)-4`
-/

namespace A155546.P13616554826155637628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) - 4

end

end A155546.P13616554826155637628

namespace A155546

/-- `A144562(n+1)-4` -/
def P13616554826155637628.Spec : Prop :=
  ∀ n, P13616554826155637628.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P4179718699823687820

`A083487(n+1)-5`
-/

namespace A155546.P4179718699823687820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - 5

end

end A155546.P4179718699823687820

namespace A155546

/-- `A083487(n+1)-5` -/
def P4179718699823687820.Spec : Prop :=
  ∀ n, P4179718699823687820.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P372730965462784649

`A144650(n+1)-6`
-/

namespace A155546.P372730965462784649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - 6

end

end A155546.P372730965462784649

namespace A155546

/-- `A144650(n+1)-6` -/
def P372730965462784649.Spec : Prop :=
  ∀ n, P372730965462784649.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P2608714700422972615

`A155705(n+1)-7`
-/

namespace A155546.P2608714700422972615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 7

end

end A155546.P2608714700422972615

namespace A155546

/-- `A155705(n+1)-7` -/
def P2608714700422972615.Spec : Prop :=
  ∀ n, P2608714700422972615.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P13522903087966857831

`A154681(n+1)-8`
-/

namespace A155546.P13522903087966857831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 8

end

end A155546.P13522903087966857831

namespace A155546

/-- `A154681(n+1)-8` -/
def P13522903087966857831.Spec : Prop :=
  ∀ n, P13522903087966857831.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P16308229390404434197

`A154685(n+1)-9`
-/

namespace A155546.P16308229390404434197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 9

end

end A155546.P16308229390404434197

namespace A155546

/-- `A154685(n+1)-9` -/
def P16308229390404434197.Spec : Prop :=
  ∀ n, P16308229390404434197.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P7642627982111796297

`A155156(n+1)/2-5`
-/

namespace A155546.P7642627982111796297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155156 (n + 1) : ℚ) / 2 - 5

end

end A155546.P7642627982111796297

namespace A155546

/-- `A155156(n+1)/2-5` -/
def P7642627982111796297.Spec : Prop :=
  ∀ n, P7642627982111796297.a n = (A155546 (n + 1) : ℚ)

end A155546

/-! ## A155546.P500459204620782836

`A155156(n+1)-A154631(n+1)`
-/

namespace A155546.P500459204620782836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - A154631 (n + 1)

end

end A155546.P500459204620782836

namespace A155546

/-- `A155156(n+1)-A154631(n+1)` -/
def P500459204620782836.Spec : Prop :=
  ∀ n, P500459204620782836.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P12117908718812297015

`A155151(n+1)-A163672(n+1)`
-/

namespace A155546.P12117908718812297015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - A163672 (n + 1)

end

end A155546.P12117908718812297015

namespace A155546

/-- `A155151(n+1)-A163672(n+1)` -/
def P12117908718812297015.Spec : Prop :=
  ∀ n, P12117908718812297015.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P823197522009022044

`A172292(n+1)-A163652(n+1)`
-/

namespace A155546.P823197522009022044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - A163652 (n + 1)

end

end A155546.P823197522009022044

namespace A155546

/-- `A172292(n+1)-A163652(n+1)` -/
def P823197522009022044.Spec : Prop :=
  ∀ n, P823197522009022044.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P1369787666523655126

`A131421(n+1)+A151890(n)-2`
-/

namespace A155546.P1369787666523655126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131421 (n + 1) + (A151890 n - 2)

end

end A155546.P1369787666523655126

namespace A155546

/-- `A131421(n+1)+A151890(n)-2` -/
def P1369787666523655126.Spec : Prop :=
  ∀ n, P1369787666523655126.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P2270435585001855925

`A163676(n+1)+1-A154631(n+1)`
-/

namespace A155546.P2270435585001855925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + (1 - A154631 (n + 1))

end

end A155546.P2270435585001855925

namespace A155546

/-- `A163676(n+1)+1-A154631(n+1)` -/
def P2270435585001855925.Spec : Prop :=
  ∀ n, P2270435585001855925.a n = A155546 (n + 1)

end A155546

/-! ## A155546.P16048578320380915026

`A155151(n+1)+1-A163657(n+1)`
-/

namespace A155546.P16048578320380915026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) + (1 - A163657 (n + 1))

end

end A155546.P16048578320380915026

namespace A155546

/-- `A155151(n+1)+1-A163657(n+1)` -/
def P16048578320380915026.Spec : Prop :=
  ∀ n, P16048578320380915026.a n = A155546 (n + 1)

end A155546

/-!
# A155547: a(n) = prime(n) without prime digits in n.

The programs for A155547, the canonical program `A155547.P5787763052989880343` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155547 has offset 1).

The definition of A155547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155547.P7936084219064762715

`A000040(A084984(n+2))`
-/

namespace A155547.P7936084219064762715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084984 (n + 2)).toNat

end

end A155547.P7936084219064762715

namespace A155547

/-- `A000040(A084984(n+2))` -/
def P7936084219064762715.Spec : Prop :=
  ∀ n, P7936084219064762715.a n = A155547 (n + 1)

end A155547

/-! ## A155547.P18359991928270524171

`A000040(record[A019516(n+1)])`
-/

namespace A155547.P18359991928270524171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155547.P18359991928270524171

namespace A155547

/-- `A000040(record[A019516(n+1)])` -/
def P18359991928270524171.Spec : Prop :=
  ∀ n, P18359991928270524171.a n = A155547 (n + 1)

end A155547

/-! ## A155547.P1774178120012490441

`A008578(A084984(n+2)+1)`
-/

namespace A155547.P1774178120012490441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A084984 (n + 2) + 1).toNat

end

end A155547.P1774178120012490441

namespace A155547

/-- `A008578(A084984(n+2)+1)` -/
def P1774178120012490441.Spec : Prop :=
  ∀ n, P1774178120012490441.a n = A155547 (n + 1)

end A155547

/-! ## A155547.P2912597087706239761

`A182986(A084984(n+2)+1)`
-/

namespace A155547.P2912597087706239761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A084984 (n + 2) + 1).toNat

end

end A155547.P2912597087706239761

namespace A155547

/-- `A182986(A084984(n+2)+1)` -/
def P2912597087706239761.Spec : Prop :=
  ∀ n, P2912597087706239761.a n = A155547 (n + 1)

end A155547

/-! ## A155547.P5306086621885784286

`A000040(lt[n*A193238(n), n])`
-/

namespace A155547.P5306086621885784286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A193238 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A155547.P5306086621885784286

namespace A155547

/-- `A000040(lt[n*A193238(n), n])` -/
def P5306086621885784286.Spec : Prop :=
  ∀ n, P5306086621885784286.a n = A155547 (n + 1)

end A155547

/-! ## A155547.P14343279797293478893

`A000040(eq[floor(acot(n)), A193238(n)])`
-/

namespace A155547.P14343279797293478893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A155547.P14343279797293478893

namespace A155547

/-- `A000040(eq[floor(acot(n)), A193238(n)])` -/
def P14343279797293478893.Spec : Prop :=
  ∀ n, P14343279797293478893.a n = A155547 (n + 1)

end A155547

/-! ## A155547.P5787763052989880343

`A000040(eq[0, A085563(n+1)]+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A155547

/-- `A000040(eq[0, A085563(n+1)]+1)` -/
def P5787763052989880343.Spec : Prop :=
  ∀ n, P5787763052989880343.a n = A155547 (n + 1)

theorem P5787763052989880343.correct : P5787763052989880343.Spec := by
  intro n
  simp only [A155547, Nat.add_sub_cancel]

end A155547

/-! ## A155547.P4098084057209949765

`A000040(eq[1, a(A193238(n))+1])` with `a(0)=0`
-/

namespace A155547.P4098084057209949765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (A193238 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A155547.P4098084057209949765

namespace A155547

/-- `A000040(eq[1, a(A193238(n))+1])` -/
def P4098084057209949765.Spec : Prop :=
  ∀ n, P4098084057209949765.a n = A155547 (n + 1)

end A155547

/-! ## A155547.P17802513490110272693

`A000040(eq[C(2, n+2), A193238(n)])`
-/

namespace A155547.P17802513490110272693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155547.P17802513490110272693

namespace A155547

/-- `A000040(eq[C(2, n+2), A193238(n)])` -/
def P17802513490110272693.Spec : Prop :=
  ∀ n, P17802513490110272693.a n = A155547 (n + 1)

end A155547

/-! ## A155547.P17206514244062921198

`record[gcd(A000040(n+1), A085563(n+1))]`
-/

namespace A155547.P17206514244062921198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A085563 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155547.P17206514244062921198

namespace A155547

/-- `record[gcd(A000040(n+1), A085563(n+1))]` -/
def P17206514244062921198.Spec : Prop :=
  ∀ n, (P17206514244062921198.a n : ℤ) = A155547 (n + 1)

end A155547

/-!
# A155548: Primes p such that p and the p-th prime have the same number of prime digits.

The programs for A155548, there is no canonical definition to state claims against.
-/

/-! ## A155548.P10807393687545894671

`record[p?[A051162(A033742(n))]]`
-/

namespace A155548.P10807393687545894671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A033742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155548.P10807393687545894671

/-! ## A155548.P12222546509641134592

`A155141(A087268(n+1)%A162694(n+4))`
-/

namespace A155548.P12222546509641134592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155141 (Int.tmod (A087268 (n + 1)) (A162694 (n + 4))).toNat

end

end A155548.P12222546509641134592

/-!
# A155549: EKG exceptional numbers: A064413(n) =/= p and A064413(n) <= n - 1.

The programs for A155549, there is no canonical definition to state claims against.
-/

/-! ## A155549.P16537502553700521943

`filter[A382705(n+1), A005171(#)]`
-/

namespace A155549.P16537502553700521943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A155549.P16537502553700521943

/-! ## A155549.P9707075722134430532

`filter[A382705(n+1), A065043(#)]`
-/

namespace A155549.P9707075722134430532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A155549.P9707075722134430532

/-! ## A155549.P9418164409125100464

`filter[A382705(n+1), A066247(#)]`
-/

namespace A155549.P9418164409125100464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A155549.P9418164409125100464

/-! ## A155549.P877432343888423314

`filter[A382705(n+1), A174898(#)]`
-/

namespace A155549.P877432343888423314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A155549.P877432343888423314

/-! ## A155549.P14605191303770948409

`filter[A382705(n+1), A292438(#)]`
-/

namespace A155549.P14605191303770948409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A155549.P14605191303770948409

/-!
# A155550: Triangle read by rows where T(m,n)=2*m*n + m + n - 6.

The programs for A155550, the canonical program `A155550.P1170858249237067651` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155550 has offset 1).

The definition of A155550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155550.P5120173817226950199

`A144670(n+1)+1`
-/

namespace A155550.P5120173817226950199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) + 1

end

end A155550.P5120173817226950199

namespace A155550

/-- `A144670(n+1)+1` -/
def P5120173817226950199.Spec : Prop :=
  ∀ n, P5120173817226950199.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P1170858249237067651

`A155546(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A155550

/-- `A155546(n+1)-1` -/
def P1170858249237067651.Spec : Prop :=
  ∀ n, P1170858249237067651.a n = A155550 (n + 1)

theorem P1170858249237067651.correct : P1170858249237067651.Spec := by
  intro n
  simp only [A155550, Nat.add_sub_cancel]

end A155550

/-! ## A155550.P4874952523201746894

`A324937(n+1)+2`
-/

namespace A155550.P4874952523201746894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) + 2

end

end A155550.P4874952523201746894

namespace A155550

/-- `A324937(n+1)+2` -/
def P4874952523201746894.Spec : Prop :=
  ∀ n, P4874952523201746894.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P13141088953243826072

`A155551(n+1)+3`
-/

namespace A155550.P13141088953243826072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 3

end

end A155550.P13141088953243826072

namespace A155550

/-- `A155551(n+1)+3` -/
def P13141088953243826072.Spec : Prop :=
  ∀ n, P13141088953243826072.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P13067269729689224682

`A155724(n+1)-2`
-/

namespace A155550.P13067269729689224682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) - 2

end

end A155550.P13067269729689224682

namespace A155550

/-- `A155724(n+1)-2` -/
def P13067269729689224682.Spec : Prop :=
  ∀ n, P13067269729689224682.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P542294033274413288

`A154684(n+1)-3`
-/

namespace A155550.P542294033274413288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) - 3

end

end A155550.P542294033274413288

namespace A155550

/-- `A154684(n+1)-3` -/
def P542294033274413288.Spec : Prop :=
  ∀ n, P542294033274413288.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P8043960457688449307

`A154680(n+1)-4`
-/

namespace A155550.P8043960457688449307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) - 4

end

end A155550.P8043960457688449307

namespace A155550

/-- `A154680(n+1)-4` -/
def P8043960457688449307.Spec : Prop :=
  ∀ n, P8043960457688449307.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P14831581302708949069

`A144562(n+1)-5`
-/

namespace A155550.P14831581302708949069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) - 5

end

end A155550.P14831581302708949069

namespace A155550

/-- `A144562(n+1)-5` -/
def P14831581302708949069.Spec : Prop :=
  ∀ n, P14831581302708949069.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P6721894133556767257

`A083487(n+1)-6`
-/

namespace A155550.P6721894133556767257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - 6

end

end A155550.P6721894133556767257

namespace A155550

/-- `A083487(n+1)-6` -/
def P6721894133556767257.Spec : Prop :=
  ∀ n, P6721894133556767257.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P15354122558289547846

`A144650(n+1)-7`
-/

namespace A155550.P15354122558289547846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - 7

end

end A155550.P15354122558289547846

namespace A155550

/-- `A144650(n+1)-7` -/
def P15354122558289547846.Spec : Prop :=
  ∀ n, P15354122558289547846.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P2017673207500684408

`A155705(n+1)-8`
-/

namespace A155550.P2017673207500684408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 8

end

end A155550.P2017673207500684408

namespace A155550

/-- `A155705(n+1)-8` -/
def P2017673207500684408.Spec : Prop :=
  ∀ n, P2017673207500684408.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P16771337004462990142

`A154681(n+1)-9`
-/

namespace A155550.P16771337004462990142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 9

end

end A155550.P16771337004462990142

namespace A155550

/-- `A154681(n+1)-9` -/
def P16771337004462990142.Spec : Prop :=
  ∀ n, P16771337004462990142.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P2636487597856189844

`A163676(n+1)-A154631(n+1)`
-/

namespace A155550.P2636487597856189844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - A154631 (n + 1)

end

end A155550.P2636487597856189844

namespace A155550

/-- `A163676(n+1)-A154631(n+1)` -/
def P2636487597856189844.Spec : Prop :=
  ∀ n, P2636487597856189844.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P12629156559422493617

`A155151(n+1)-A163657(n+1)`
-/

namespace A155550.P12629156559422493617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - A163657 (n + 1)

end

end A155550.P12629156559422493617

namespace A155550

/-- `A155151(n+1)-A163657(n+1)` -/
def P12629156559422493617.Spec : Prop :=
  ∀ n, P12629156559422493617.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P5699456658690334889

`A155156(n+1)-A163652(n+1)`
-/

namespace A155550.P5699456658690334889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - A163652 (n + 1)

end

end A155550.P5699456658690334889

namespace A155550

/-- `A155156(n+1)-A163652(n+1)` -/
def P5699456658690334889.Spec : Prop :=
  ∀ n, P5699456658690334889.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P1652419022767071071

`A172292(n+1)-A163672(n+1)`
-/

namespace A155550.P1652419022767071071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - A163672 (n + 1)

end

end A155550.P1652419022767071071

namespace A155550

/-- `A172292(n+1)-A163672(n+1)` -/
def P1652419022767071071.Spec : Prop :=
  ∀ n, P1652419022767071071.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P16566785248018385208

`A155156(n+1)-(A154631(n+1)+1)`
-/

namespace A155550.P16566785248018385208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - (A154631 (n + 1) + 1)

end

end A155550.P16566785248018385208

namespace A155550

/-- `A155156(n+1)-(A154631(n+1)+1)` -/
def P16566785248018385208.Spec : Prop :=
  ∀ n, P16566785248018385208.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P3856471869242284797

`A155151(n+1)+1-A163674(n+1)`
-/

namespace A155550.P3856471869242284797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) + (1 - A163674 (n + 1))

end

end A155550.P3856471869242284797

namespace A155550

/-- `A155151(n+1)+1-A163674(n+1)` -/
def P3856471869242284797.Spec : Prop :=
  ∀ n, P3856471869242284797.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P5721965534637879136

`A155151(n+1)-(A163672(n+1)+1)`
-/

namespace A155550.P5721965534637879136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - (A163672 (n + 1) + 1)

end

end A155550.P5721965534637879136

namespace A155550

/-- `A155151(n+1)-(A163672(n+1)+1)` -/
def P5721965534637879136.Spec : Prop :=
  ∀ n, P5721965534637879136.a n = A155550 (n + 1)

end A155550

/-! ## A155550.P4887383339285509329

`A155156(n+1)+1-A163672(n+1)`
-/

namespace A155550.P4887383339285509329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + (1 - A163672 (n + 1))

end

end A155550.P4887383339285509329

namespace A155550

/-- `A155156(n+1)+1-A163672(n+1)` -/
def P4887383339285509329.Spec : Prop :=
  ∀ n, P4887383339285509329.a n = A155550 (n + 1)

end A155550

/-!
# A155551: Triangle read by rows where T(m,n)=2*m*n + m + n - 9.

The programs for A155551, the canonical program `A155551.P164788176589614961` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155551 has offset 1).

The definition of A155551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155551.P16787598820945288319

`A324937(n+1)-1`
-/

namespace A155551.P16787598820945288319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) - 1

end

end A155551.P16787598820945288319

namespace A155551

/-- `A324937(n+1)-1` -/
def P16787598820945288319.Spec : Prop :=
  ∀ n, P16787598820945288319.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P12243012942851815024

`A144670(n+1)-2`
-/

namespace A155551.P12243012942851815024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) - 2

end

end A155551.P12243012942851815024

namespace A155551

/-- `A144670(n+1)-2` -/
def P12243012942851815024.Spec : Prop :=
  ∀ n, P12243012942851815024.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P164788176589614961

`A155550(n+1)-3`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A155551

/-- `A155550(n+1)-3` -/
def P164788176589614961.Spec : Prop :=
  ∀ n, P164788176589614961.a n = A155551 (n + 1)

theorem P164788176589614961.correct : P164788176589614961.Spec := by
  intro n
  simp only [A155551, Nat.add_sub_cancel]

end A155551

/-! ## A155551.P14708246266366660018

`A155546(n+1)-4`
-/

namespace A155551.P14708246266366660018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) - 4

end

end A155551.P14708246266366660018

namespace A155551

/-- `A155546(n+1)-4` -/
def P14708246266366660018.Spec : Prop :=
  ∀ n, P14708246266366660018.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P19927656723302564

`A155724(n+1)-5`
-/

namespace A155551.P19927656723302564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) - 5

end

end A155551.P19927656723302564

namespace A155551

/-- `A155724(n+1)-5` -/
def P19927656723302564.Spec : Prop :=
  ∀ n, P19927656723302564.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P11607860235496878510

`A154684(n+1)-6`
-/

namespace A155551.P11607860235496878510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) - 6

end

end A155551.P11607860235496878510

namespace A155551

/-- `A154684(n+1)-6` -/
def P11607860235496878510.Spec : Prop :=
  ∀ n, P11607860235496878510.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P15089235899400638102

`A154680(n+1)-7`
-/

namespace A155551.P15089235899400638102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) - 7

end

end A155551.P15089235899400638102

namespace A155551

/-- `A154680(n+1)-7` -/
def P15089235899400638102.Spec : Prop :=
  ∀ n, P15089235899400638102.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P552891232457714182

`A144562(n+1)-8`
-/

namespace A155551.P552891232457714182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) - 8

end

end A155551.P552891232457714182

namespace A155551

/-- `A144562(n+1)-8` -/
def P552891232457714182.Spec : Prop :=
  ∀ n, P552891232457714182.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P7067760774829078177

`A083487(n+1)-9`
-/

namespace A155551.P7067760774829078177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - 9

end

end A155551.P7067760774829078177

namespace A155551

/-- `A083487(n+1)-9` -/
def P7067760774829078177.Spec : Prop :=
  ∀ n, P7067760774829078177.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P9764504351074932938

`A155705(n+1)-11`
-/

namespace A155551.P9764504351074932938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 11

end

end A155551.P9764504351074932938

namespace A155551

/-- `A155705(n+1)-11` -/
def P9764504351074932938.Spec : Prop :=
  ∀ n, P9764504351074932938.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P801118086993975715

`A163672(n+1)-(8/2)²`
-/

namespace A155551.P801118086993975715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163672 (n + 1) : ℚ) - ((8 : ℚ) / 2) ^ 2

end

end A155551.P801118086993975715

namespace A155551

/-- `A163672(n+1)-(8/2)²` -/
def P801118086993975715.Spec : Prop :=
  ∀ n, P801118086993975715.a n = (A155551 (n + 1) : ℚ)

end A155551

/-! ## A155551.P13088264709411331217

`A155156(n+1)-A163674(n+1)`
-/

namespace A155551.P13088264709411331217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - A163674 (n + 1)

end

end A155551.P13088264709411331217

namespace A155551

/-- `A155156(n+1)-A163674(n+1)` -/
def P13088264709411331217.Spec : Prop :=
  ∀ n, P13088264709411331217.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P17240765070530604497

`A163676(n+1)-A163657(n+1)`
-/

namespace A155551.P17240765070530604497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - A163657 (n + 1)

end

end A155551.P17240765070530604497

namespace A155551

/-- `A163676(n+1)-A163657(n+1)` -/
def P17240765070530604497.Spec : Prop :=
  ∀ n, P17240765070530604497.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P9698223119273882854

`A172292(n+1)-A155704(n+1)`
-/

namespace A155551.P9698223119273882854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - A155704 (n + 1)

end

end A155551.P9698223119273882854

namespace A155551

/-- `A172292(n+1)-A155704(n+1)` -/
def P9698223119273882854.Spec : Prop :=
  ∀ n, P9698223119273882854.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P5901356436209545229

`A155151(n+1)-(A155704(n+1)+1)`
-/

namespace A155551.P5901356436209545229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - (A155704 (n + 1) + 1)

end

end A155551.P5901356436209545229

namespace A155551

/-- `A155151(n+1)-(A155704(n+1)+1)` -/
def P5901356436209545229.Spec : Prop :=
  ∀ n, P5901356436209545229.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P6077675405222516362

`A155156(n+1)-(A163657(n+1)+1)`
-/

namespace A155551.P6077675405222516362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - (A163657 (n + 1) + 1)

end

end A155551.P6077675405222516362

namespace A155551

/-- `A155156(n+1)-(A163657(n+1)+1)` -/
def P6077675405222516362.Spec : Prop :=
  ∀ n, P6077675405222516362.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P14462515160145207025

`A163676(n+1)+1-A163674(n+1)`
-/

namespace A155551.P14462515160145207025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + (1 - A163674 (n + 1))

end

end A155551.P14462515160145207025

namespace A155551

/-- `A163676(n+1)+1-A163674(n+1)` -/
def P14462515160145207025.Spec : Prop :=
  ∀ n, P14462515160145207025.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P5530998802386777209

`A163676(n+1)-(A163672(n+1)+1)`
-/

namespace A155551.P5530998802386777209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - (A163672 (n + 1) + 1)

end

end A155551.P5530998802386777209

namespace A155551

/-- `A163676(n+1)-(A163672(n+1)+1)` -/
def P5530998802386777209.Spec : Prop :=
  ∀ n, P5530998802386777209.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P16913004169857219006

`A172292(n+1)-(A163674(n+1)+1)`
-/

namespace A155551.P16913004169857219006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - (A163674 (n + 1) + 1)

end

end A155551.P16913004169857219006

namespace A155551

/-- `A172292(n+1)-(A163674(n+1)+1)` -/
def P16913004169857219006.Spec : Prop :=
  ∀ n, P16913004169857219006.a n = A155551 (n + 1)

end A155551

/-! ## A155551.P17613743190056189393

`A155151(n+1)-(A163674(n+1)+2)`
-/

namespace A155551.P17613743190056189393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - (A163674 (n + 1) + 2)

end

end A155551.P17613743190056189393

namespace A155551

/-- `A155151(n+1)-(A163674(n+1)+2)` -/
def P17613743190056189393.Spec : Prop :=
  ∀ n, P17613743190056189393.a n = A155551 (n + 1)

end A155551

/-!
# A155552: Primes p such that (number of prime digits of p) > (number of prime digits of prime(p)).

The programs for A155552, there is no canonical definition to state claims against.
-/

/-! ## A155552.P12626905675157766991

`∪[A020612(2*(n+1)), A020637(A020596(n+1))]`
-/

namespace A155552.P12626905675157766991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020612 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020637 (A020596 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A155552.P12626905675157766991

/-! ## A155552.P12703699454029635827

`∪[A020612(2*(n+1)), A020637(A020598(n+1))]`
-/

namespace A155552.P12703699454029635827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020612 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020637 (A020598 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A155552.P12703699454029635827

/-! ## A155552.P14971795195112614363

`∪[A020612(2*(n+1)), A020637(A020600(n+1))]`
-/

namespace A155552.P14971795195112614363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020612 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020637 (A020600 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A155552.P14971795195112614363

/-!
# A155555: Primes p such that (number of prime digits of p) < (number of prime digits of prime(p)).

The programs for A155555, there is no canonical definition to state claims against.
-/

/-! ## A155555.P17443204138013933181

`A015917(lt[A231382(2*n+1), A324925(3*n+2)])`
-/

namespace A155555.P17443204138013933181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324925 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155555.P17443204138013933181

/-!
# A155556: Multi-bifurcating recursion of a factorial type based on the Eulerian numbers A008292 as a triangle sequence: t(n,k) = Sum_{j=0..k+1} (-1)^j * binomial(n + 1, j)*(k + 1 - j)^n; f(n, m) = If[m <= floor(n/2), f(m, 1)*f(n - m, 1)*t(n + 1, m)].

The programs for A155556, there is no canonical definition to state claims against.
-/

/-! ## A155556.P11122270307378395847

`∏[A137317(n!²)]`
-/

namespace A155556.P11122270307378395847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137317 (Nat.factorial n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155556.P11122270307378395847

/-!
# A155558: Multi-bifurcating recursion of a factorial type based on the MacMahon numbers A060187 as a triangle sequence: t(n,k) = A060187(n,m) from polynomials; f(n, m) = If[m <= Floor[n/2], f(m, 1)*f(n - m, 1)*t(n + 1, m)].

The programs for A155558, there is no canonical definition to state claims against.
-/

/-! ## A155558.P13402702516202972457

`∏[A350873(n)%84]`
-/

namespace A155558.P13402702516202972457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350873 n) 84

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155558.P13402702516202972457

/-!
# A155559: a(n) = 2*A131577(n).

The programs for A155559, the canonical program `A155559.P218960338783892964` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155559 has offset 0).

The definition of A155559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155559.P218960338783892964

`2*A131577(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A155559

/-- `2*A131577(n)` -/
def P218960338783892964.Spec : Prop :=
  ∀ n, P218960338783892964.a n = A155559 n

theorem P218960338783892964.correct : P218960338783892964.Spec := by
  intro n
  simp only [A155559]

end A155559

/-! ## A155559.P5260956852853322912

`(-1)^(n+1)*A084633(n+1)`
-/

namespace A155559.P5260956852853322912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A084633 (n + 1)

end

end A155559.P5260956852853322912

namespace A155559

/-- `(-1)^(n+1)*A084633(n+1)` -/
def P5260956852853322912.Spec : Prop :=
  ∀ n, P5260956852853322912.a n = A155559 n

end A155559

/-! ## A155559.P17578408359278189428

`and(-2, 2^n)`
-/

namespace A155559.P17578408359278189428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ)

end

end A155559.P17578408359278189428

namespace A155559

/-- `and(-2, 2^n)` -/
def P17578408359278189428.Spec : Prop :=
  ∀ n, P17578408359278189428.a n = A155559 n

end A155559

/-! ## A155559.P11822606545293128767

`ogf(2x/(1-2x))`
-/

namespace A155559.P11822606545293128767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2] n

end

end A155559.P11822606545293128767

namespace A155559

/-- `ogf(2x/(1-2x))` -/
def P11822606545293128767.Spec : Prop :=
  ∀ n, P11822606545293128767.a n = A155559 n

end A155559

/-! ## A155559.P14651547839901635922

`or(1, 2^n)-1`
-/

namespace A155559.P14651547839901635922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) : ℤ) - 1

end

end A155559.P14651547839901635922

namespace A155559

/-- `or(1, 2^n)-1` -/
def P14651547839901635922.Spec : Prop :=
  ∀ n, P14651547839901635922.a n = A155559 n

end A155559

/-! ## A155559.P4172159462727912380

`xor(1, or(1, 2^n))`
-/

namespace A155559.P4172159462727912380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (2 ^ n))

end

end A155559.P4172159462727912380

namespace A155559

/-- `xor(1, or(1, 2^n))` -/
def P4172159462727912380.Spec : Prop :=
  ∀ n, (P4172159462727912380.a n : ℤ) = A155559 n

end A155559

/-! ## A155559.P3406995658167637444

`2^n-floor(acot(n))`
-/

namespace A155559.P3406995658167637444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A155559.P3406995658167637444

namespace A155559

/-- `2^n-floor(acot(n))` -/
def P3406995658167637444.Spec : Prop :=
  ∀ n, P3406995658167637444.a n = A155559 n

end A155559

/-! ## A155559.P8850175881388460567

`ceil(2^n-acot(n))`
-/

namespace A155559.P8850175881388460567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A155559.P8850175881388460567

namespace A155559

/-- `ceil(2^n-acot(n))` -/
def P8850175881388460567.Spec : Prop :=
  ∀ n, P8850175881388460567.a n = A155559 n

end A155559

/-! ## A155559.P15410953942485481617

`2*a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A155559.P15410953942485481617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 1)

end

end A155559.P15410953942485481617

namespace A155559

/-- `2*a(n-1)` -/
def P15410953942485481617.Spec : Prop :=
  ∀ n, (P15410953942485481617.a n : ℤ) = A155559 n

end A155559

/-! ## A155559.P5866861132577724158

`2*floor(2^(n-1))`
-/

namespace A155559.P5866861132577724158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A155559.P5866861132577724158

namespace A155559

/-- `2*floor(2^(n-1))` -/
def P5866861132577724158.Spec : Prop :=
  ∀ n, P5866861132577724158.a n = A155559 n

end A155559

/-! ## A155559.P2696068752732586239

`lcm(2^n, or(n, -n))`
-/

namespace A155559.P2696068752732586239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (Int.lor (n : ℤ) (-(n : ℤ)))

end

end A155559.P2696068752732586239

namespace A155559

/-- `lcm(2^n, or(n, -n))` -/
def P2696068752732586239.Spec : Prop :=
  ∀ n, (P2696068752732586239.a n : ℤ) = A155559 n

end A155559

/-! ## A155559.P14555731688834142411

`2^n-∏{d}[n, log(#)]`
-/

namespace A155559.P14555731688834142411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) - ∏ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ)

end

end A155559.P14555731688834142411

namespace A155559

/-- `2^n-∏{d}[n, log(#)]` -/
def P14555731688834142411.Spec : Prop :=
  ∀ n, P14555731688834142411.a n = (A155559 n : ℝ)

end A155559

/-! ## A155559.P6548952553381972853

`∑{d}[n, C(2, #²)^n]`
-/

namespace A155559.P6548952553381972853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 (d ^ 2) ^ n

end

end A155559.P6548952553381972853

namespace A155559

/-- `∑{d}[n, C(2, #²)^n]` -/
def P6548952553381972853.Spec : Prop :=
  ∀ n, (P6548952553381972853.a n : ℤ) = A155559 n

end A155559

/-! ## A155559.P18145400712808471273

`2^n-floor(cos(n)²)`
-/

namespace A155559.P18145400712808471273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌊Real.cos (n : ℝ) ^ 2⌋

end

end A155559.P18145400712808471273

namespace A155559

/-- `2^n-floor(cos(n)²)` -/
def P18145400712808471273.Spec : Prop :=
  ∀ n, P18145400712808471273.a n = A155559 n

end A155559

/-! ## A155559.P15942116781593708419

`∑{p}[xor(n, -n), #^n]`
-/

namespace A155559.P15942116781593708419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A155559.P15942116781593708419

namespace A155559

/-- `∑{p}[xor(n, -n), #^n]` -/
def P15942116781593708419.Spec : Prop :=
  ∀ n, (P15942116781593708419.a n : ℤ) = A155559 n

end A155559

/-! ## A155559.P17145453084939350569

`2^n-C(2, n+2)`
-/

namespace A155559.P17145453084939350569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A155559.P17145453084939350569

namespace A155559

/-- `2^n-C(2, n+2)` -/
def P17145453084939350569.Spec : Prop :=
  ∀ n, P17145453084939350569.a n = A155559 n

end A155559

/-! ## A155559.P17611628023781846044

`gcd(2, a(n-1))^n` with `a(0)=0`
-/

namespace A155559.P17611628023781846044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd 2 (a (n - 1)) ^ n

end

end A155559.P17611628023781846044

namespace A155559

/-- `gcd(2, a(n-1))^n` -/
def P17611628023781846044.Spec : Prop :=
  ∀ n, (P17611628023781846044.a n : ℤ) = A155559 n

end A155559

/-! ## A155559.P3440133926673566285

`xor(2^n, C(2, n+2))`
-/

namespace A155559.P3440133926673566285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n) (Nat.choose 2 (n + 2))

end

end A155559.P3440133926673566285

namespace A155559

/-- `xor(2^n, C(2, n+2))` -/
def P3440133926673566285.Spec : Prop :=
  ∀ n, (P3440133926673566285.a n : ℤ) = A155559 n

end A155559

/-! ## A155559.P6346404685618865574

`round(2^n-acot(n+1))`
-/

namespace A155559.P6346404685618865574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))

end

end A155559.P6346404685618865574

namespace A155559

/-- `round(2^n-acot(n+1))` -/
def P6346404685618865574.Spec : Prop :=
  ∀ n, P6346404685618865574.a n = A155559 n

end A155559

/-! ## A155559.P7352932990086962340

`a(((-1)^n)²)^n` with `a(0)=0, a(1)=2`
-/

namespace A155559.P7352932990086962340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (((-1) ^ n) ^ 2).toNat ^ n

end

end A155559.P7352932990086962340

namespace A155559

/-- `a(((-1)^n)²)^n` -/
def P7352932990086962340.Spec : Prop :=
  ∀ n, (P7352932990086962340.a n : ℤ) = A155559 n

end A155559

/-!
# A155560: Intersection of A000404 and A092572: N = a^2 + b^2 = c^2 + 3d^2 with a,b,c,d>0.

The programs for A155560, the canonical program `A155560.P3033731189565993518` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155560 has offset 1).

The definition of A155560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155560.P3033731189565993518

`filter[A092572(n+1), A353814(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A155560

/-- `filter[A092572(n+1), A353814(#)]` -/
def P3033731189565993518.Spec : Prop :=
  ∀ n, P3033731189565993518.a n = A155560 (n + 1)

theorem P3033731189565993518.correct : P3033731189565993518.Spec := by
  intro n
  simp only [A155560, Nat.add_sub_cancel]

end A155560

/-! ## A155560.P12452424841788838780

`∩[A092572(n+1), A097268(n+1)]`
-/

namespace A155560.P12452424841788838780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155560.P12452424841788838780

namespace A155560

/-- `∩[A092572(n+1), A097268(n+1)]` -/
def P12452424841788838780.Spec : Prop :=
  ∀ n, (P12452424841788838780.a n : ℤ) = A155560 (n + 1)

end A155560

/-! ## A155560.P9935952037080848175

`∩[A092572(n+1), A264732(n+1)]`
-/

namespace A155560.P9935952037080848175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155560.P9935952037080848175

namespace A155560

/-- `∩[A092572(n+1), A264732(n+1)]` -/
def P9935952037080848175.Spec : Prop :=
  ∀ n, (P9935952037080848175.a n : ℤ) = A155560 (n + 1)

end A155560

/-! ## A155560.P17205159912524606153

`∩[A004431(n+1), A092572(n+1)]`
-/

namespace A155560.P17205159912524606153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155560.P17205159912524606153

namespace A155560

/-- `∩[A004431(n+1), A092572(n+1)]` -/
def P17205159912524606153.Spec : Prop :=
  ∀ n, (P17205159912524606153.a n : ℤ) = A155560 (n + 1)

end A155560

/-! ## A155560.P5411980971424503262

`∩[A000404(n+1), A092572(n+1)]`
-/

namespace A155560.P5411980971424503262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155560.P5411980971424503262

namespace A155560

/-- `∩[A000404(n+1), A092572(n+1)]` -/
def P5411980971424503262.Spec : Prop :=
  ∀ n, (P5411980971424503262.a n : ℤ) = A155560 (n + 1)

end A155560

/-! ## A155560.P6775625956713955078

`lt[1, A063725(n)*A092573(n)]`
-/

namespace A155560.P6775625956713955078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n * A092573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155560.P6775625956713955078

namespace A155560

/-- `lt[1, A063725(n)*A092573(n)]` -/
def P6775625956713955078.Spec : Prop :=
  ∀ n, (P6775625956713955078.a n : ℤ) = A155560 (n + 1)

end A155560

/-!
# A155561: Intersection of A000404 and A154777: N = a^2 + b^2 = c^2 + 2d^2 with a,b,c,d>0.

The programs for A155561, there is no canonical definition to state claims against.
-/

/-! ## A155561.P15510494267499222272

`∩[A000404(n+1), A154777(n+1)]`
-/

namespace A155561.P15510494267499222272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155561.P15510494267499222272

/-! ## A155561.P3263456800511506147

`∩[lt[0, A025426(n)], A154777(n+1)]`
-/

namespace A155561.P3263456800511506147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155561.P3263456800511506147

/-! ## A155561.P16629079469855156835

`∩[lt[4, A133692(n)²], A000404(n+1)]`
-/

namespace A155561.P16629079469855156835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155561.P16629079469855156835

/-! ## A155561.P8653990584221900912

`∩[lt[2, A133692(2*n)], A000404(n+2)]`
-/

namespace A155561.P8653990584221900912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155561.P8653990584221900912

/-!
# A155562: Intersection of A001481 and A002479: N = a^2 + b^2 = c^2 + 2d^2 for some integers a,b,c,d.

The programs for A155562, the canonical program `A155562.P8802644400243401487` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155562 has offset 1).

The definition of A155562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3067 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155562.P8802644400243401487

`filter[A002479(n+1), A229062(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A155562

/-- `filter[A002479(n+1), A229062(#)]` -/
def P8802644400243401487.Spec : Prop :=
  ∀ n, P8802644400243401487.a n = A155562 (n + 1)

theorem P8802644400243401487.correct : P8802644400243401487.Spec := by
  intro n
  simp only [A155562, Nat.add_sub_cancel]

end A155562

/-! ## A155562.P5372713583785039617

`∩[A001481(n+1), A002479(n+1)]`
-/

namespace A155562.P5372713583785039617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155562.P5372713583785039617

namespace A155562

/-- `∩[A001481(n+1), A002479(n+1)]` -/
def P5372713583785039617.Spec : Prop :=
  ∀ n, (P5372713583785039617.a n : ℤ) = A155562 (n + 1)

end A155562

/-! ## A155562.P1542286687706306143

`filter[A001481(n+1), A391183(#)]`
-/

namespace A155562.P1542286687706306143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A155562.P1542286687706306143

namespace A155562

/-- `filter[A001481(n+1), A391183(#)]` -/
def P1542286687706306143.Spec : Prop :=
  ∀ n, P1542286687706306143.a n = A155562 (n + 1)

end A155562

/-! ## A155562.P8475330535565228384

`eq[0, A070176(n)^A033715(n)]`
-/

namespace A155562.P8475330535565228384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070176 n : ℚ) ^ (A033715 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A155562.P8475330535565228384

namespace A155562

/-- `eq[0, A070176(n)^A033715(n)]` -/
def P8475330535565228384.Spec : Prop :=
  ∀ n, (P8475330535565228384.a n : ℤ) = A155562 (n + 1)

end A155562

/-! ## A155562.P7749171143564794381

`∩[lt[0, A033715(n)], A001481(n+1)]`
-/

namespace A155562.P7749171143564794381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155562.P7749171143564794381

namespace A155562

/-- `∩[lt[0, A033715(n)], A001481(n+1)]` -/
def P7749171143564794381.Spec : Prop :=
  ∀ n, (P7749171143564794381.a n : ℤ) = A155562 (n + 1)

end A155562

/-! ## A155562.P5457347231739987078

`∩[lt[0, A139093(n)²], A001481(n+1)]`
-/

namespace A155562.P5457347231739987078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155562.P5457347231739987078

namespace A155562

/-- `∩[lt[0, A139093(n)²], A001481(n+1)]` -/
def P5457347231739987078.Spec : Prop :=
  ∀ n, (P5457347231739987078.a n : ℤ) = A155562 (n + 1)

end A155562

/-! ## A155562.P10051504694046807059

`∩[lt[0, A033715(n)], A166687(n+1)-1]`
-/

namespace A155562.P10051504694046807059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155562.P10051504694046807059

namespace A155562

/-- `∩[lt[0, A033715(n)], A166687(n+1)-1]` -/
def P10051504694046807059.Spec : Prop :=
  ∀ n, (P10051504694046807059.a n : ℤ) = A155562 (n + 1)

end A155562

/-! ## A155562.P4506968655381702662

`lt[A070176(n), A019425(A033715(n))]`
-/

namespace A155562.P4506968655381702662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155562.P4506968655381702662

namespace A155562

/-- `lt[A070176(n), A019425(A033715(n))]` -/
def P4506968655381702662.Spec : Prop :=
  ∀ n, (P4506968655381702662.a n : ℤ) = A155562 (n + 1)

end A155562

/-! ## A155562.P5257239789879217107

`lt[n*A070176(2*n), A033715(n)]`
-/

namespace A155562.P5257239789879217107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070176 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155562.P5257239789879217107

namespace A155562

/-- `lt[n*A070176(2*n), A033715(n)]` -/
def P5257239789879217107.Spec : Prop :=
  ∀ n, (P5257239789879217107.a n : ℤ) = A155562 (n + 1)

end A155562

/-! ## A155562.P16362528769857165253

`lt[A070176(n), A057427(A033715(3*n))]`
-/

namespace A155562.P16362528769857165253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A033715 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155562.P16362528769857165253

namespace A155562

/-- `lt[A070176(n), A057427(A033715(3*n))]` -/
def P16362528769857165253.Spec : Prop :=
  ∀ n, (P16362528769857165253.a n : ℤ) = A155562 (n + 1)

end A155562

/-!
# A155563: Intersection of A001481 and A003136: N = a^2 + b^2 = c^2 + 3d^2 for some integers a,b,c,d.

The programs for A155563, the canonical program `A155563.P9922242301162862577` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155563 has offset 1).

The definition of A155563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155563.P39193952071634781

`∪[A155560(n+1), n²]`
-/

namespace A155563.P39193952071634781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A155563.P39193952071634781

namespace A155563

/-- `∪[A155560(n+1), n²]` -/
def P39193952071634781.Spec : Prop :=
  ∀ n, (P39193952071634781.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P12486113535924463316

`∪[A264732(n+1), n²]`
-/

namespace A155563.P12486113535924463316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A155563.P12486113535924463316

namespace A155563

/-- `∪[A264732(n+1), n²]` -/
def P12486113535924463316.Spec : Prop :=
  ∀ n, (P12486113535924463316.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P9922242301162862577

`∪[A353198(n+1), n²]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A155563

/-- `∪[A353198(n+1), n²]` -/
def P9922242301162862577.Spec : Prop :=
  ∀ n, (P9922242301162862577.a n : ℤ) = A155563 (n + 1)

theorem P9922242301162862577.correct : P9922242301162862577.Spec := by
  intro n
  simp only [A155563, Nat.add_sub_cancel]

end A155563

/-! ## A155563.P6493247770189415069

`filter[A020672(n+1), A353816(#)]`
-/

namespace A155563.P6493247770189415069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A155563.P6493247770189415069

namespace A155563

/-- `filter[A020672(n+1), A353816(#)]` -/
def P6493247770189415069.Spec : Prop :=
  ∀ n, P6493247770189415069.a n = A155563 (n + 1)

end A155563

/-! ## A155563.P16856523200872795059

`∩[A020672(n+1), A272933(n+1)]`
-/

namespace A155563.P16856523200872795059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155563.P16856523200872795059

namespace A155563

/-- `∩[A020672(n+1), A272933(n+1)]` -/
def P16856523200872795059.Spec : Prop :=
  ∀ n, (P16856523200872795059.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P12162001398315453701

`filter[A272933(n+1), A229062(#)]`
-/

namespace A155563.P12162001398315453701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A155563.P12162001398315453701

namespace A155563

/-- `filter[A272933(n+1), A229062(#)]` -/
def P12162001398315453701.Spec : Prop :=
  ∀ n, P12162001398315453701.a n = A155563 (n + 1)

end A155563

/-! ## A155563.P14847206102027994062

`filter[A243175(n+1), A229062(#)]`
-/

namespace A155563.P14847206102027994062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A155563.P14847206102027994062

namespace A155563

/-- `filter[A243175(n+1), A229062(#)]` -/
def P14847206102027994062.Spec : Prop :=
  ∀ n, P14847206102027994062.a n = A155563 (n + 1)

end A155563

/-! ## A155563.P17010984755600485942

`∩[A020672(n+1), A243175(n+1)]`
-/

namespace A155563.P17010984755600485942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155563.P17010984755600485942

namespace A155563

/-- `∩[A020672(n+1), A243175(n+1)]` -/
def P17010984755600485942.Spec : Prop :=
  ∀ n, (P17010984755600485942.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P3730225552586994569

`filter[A020668(n+1), A353816(#)]`
-/

namespace A155563.P3730225552586994569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A155563.P3730225552586994569

namespace A155563

/-- `filter[A020668(n+1), A353816(#)]` -/
def P3730225552586994569.Spec : Prop :=
  ∀ n, P3730225552586994569.a n = A155563 (n + 1)

end A155563

/-! ## A155563.P2757871054008951821

`∩[A020668(n+1), A243175(n+1)]`
-/

namespace A155563.P2757871054008951821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155563.P2757871054008951821

namespace A155563

/-- `∩[A020668(n+1), A243175(n+1)]` -/
def P2757871054008951821.Spec : Prop :=
  ∀ n, (P2757871054008951821.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P17632462658507480341

`∩[A020668(n+1), A272933(n+1)]`
-/

namespace A155563.P17632462658507480341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155563.P17632462658507480341

namespace A155563

/-- `∩[A020668(n+1), A272933(n+1)]` -/
def P17632462658507480341.Spec : Prop :=
  ∀ n, (P17632462658507480341.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P3842499817812175152

`filter[A003136(n+1), A229062(#)]`
-/

namespace A155563.P3842499817812175152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A155563.P3842499817812175152

namespace A155563

/-- `filter[A003136(n+1), A229062(#)]` -/
def P3842499817812175152.Spec : Prop :=
  ∀ n, P3842499817812175152.a n = A155563 (n + 1)

end A155563

/-! ## A155563.P18177897350474117041

`∩[A003136(n+1), A020668(n+1)]`
-/

namespace A155563.P18177897350474117041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155563.P18177897350474117041

namespace A155563

/-- `∩[A003136(n+1), A020668(n+1)]` -/
def P18177897350474117041.Spec : Prop :=
  ∀ n, (P18177897350474117041.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P8425061929696762782

`∩[A003136(n+1), A020672(n+1)]`
-/

namespace A155563.P8425061929696762782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155563.P8425061929696762782

namespace A155563

/-- `∩[A003136(n+1), A020672(n+1)]` -/
def P8425061929696762782.Spec : Prop :=
  ∀ n, (P8425061929696762782.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P7867036357825476220

`filter[A001481(n+1), A353816(#)]`
-/

namespace A155563.P7867036357825476220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A155563.P7867036357825476220

namespace A155563

/-- `filter[A001481(n+1), A353816(#)]` -/
def P7867036357825476220.Spec : Prop :=
  ∀ n, P7867036357825476220.a n = A155563 (n + 1)

end A155563

/-! ## A155563.P10606043818916775539

`∩[A001481(n+1), A003136(n+1)]`
-/

namespace A155563.P10606043818916775539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155563.P10606043818916775539

namespace A155563

/-- `∩[A001481(n+1), A003136(n+1)]` -/
def P10606043818916775539.Spec : Prop :=
  ∀ n, (P10606043818916775539.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P14434417480997658077

`∩[A001481(n+1), A243175(n+1)]`
-/

namespace A155563.P14434417480997658077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155563.P14434417480997658077

namespace A155563

/-- `∩[A001481(n+1), A243175(n+1)]` -/
def P14434417480997658077.Spec : Prop :=
  ∀ n, (P14434417480997658077.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P14249362916593561158

`∩[A001481(n+1), A272933(n+1)]`
-/

namespace A155563.P14249362916593561158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155563.P14249362916593561158

namespace A155563

/-- `∩[A001481(n+1), A272933(n+1)]` -/
def P14249362916593561158.Spec : Prop :=
  ∀ n, (P14249362916593561158.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P5153385427496830230

`eq[A262750(n+1), A353816(n)]`
-/

namespace A155563.P5153385427496830230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155563.P5153385427496830230

namespace A155563

/-- `eq[A262750(n+1), A353816(n)]` -/
def P5153385427496830230.Spec : Prop :=
  ∀ n, (P5153385427496830230.a n : ℤ) = A155563 (n + 1)

end A155563

/-! ## A155563.P17177204298886805289

`eq[A019425(A033716(n)), A262750(n+1)]`
-/

namespace A155563.P17177204298886805289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033716 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155563.P17177204298886805289

namespace A155563

/-- `eq[A019425(A033716(n)), A262750(n+1)]` -/
def P17177204298886805289.Spec : Prop :=
  ∀ n, (P17177204298886805289.a n : ℤ) = A155563 (n + 1)

end A155563

/-!
# A155564: Intersection of A002479 and A003136: N = a^2 + 2b^2 = c^2 + 3d^2 for some integers a,b,c,d.

The programs for A155564, the canonical program `A155564.P17453781957059509256` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155564 has offset 1).

The definition of A155564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155564.P17453781957059509256

`filter[A002479(n+1), A353816(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A155564

/-- `filter[A002479(n+1), A353816(#)]` -/
def P17453781957059509256.Spec : Prop :=
  ∀ n, P17453781957059509256.a n = A155564 (n + 1)

theorem P17453781957059509256.correct : P17453781957059509256.Spec := by
  intro n
  simp only [A155564, Nat.add_sub_cancel]

end A155564

/-! ## A155564.P16800739112561524216

`∩[A002479(n+1), A003136(n+1)]`
-/

namespace A155564.P16800739112561524216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155564.P16800739112561524216

namespace A155564

/-- `∩[A002479(n+1), A003136(n+1)]` -/
def P16800739112561524216.Spec : Prop :=
  ∀ n, (P16800739112561524216.a n : ℤ) = A155564 (n + 1)

end A155564

/-! ## A155564.P16487064186173010022

`∩[A002479(n+1), A270672(n+1)-A270050(n+1)]`
-/

namespace A155564.P16487064186173010022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270672 (n + 1) - A270050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155564.P16487064186173010022

namespace A155564

/-- `∩[A002479(n+1), A270672(n+1)-A270050(n+1)]` -/
def P16487064186173010022.Spec : Prop :=
  ∀ n, (P16487064186173010022.a n : ℤ) = A155564 (n + 1)

end A155564

/-! ## A155564.P5558922593499467540

`lt[acot(A033715(n)), A353816(n)]`
-/

namespace A155564.P5558922593499467540
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A033715 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A155564.P5558922593499467540

namespace A155564

/-- `lt[acot(A033715(n)), A353816(n)]` -/
def P5558922593499467540.Spec : Prop :=
  ∀ n, (P5558922593499467540.a n : ℤ) = A155564 (n + 1)

end A155564

/-! ## A155564.P8118872345026124742

`filter[A003136(n+1), A391183(#)]`
-/

namespace A155564.P8118872345026124742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A155564.P8118872345026124742

namespace A155564

/-- `filter[A003136(n+1), A391183(#)]` -/
def P8118872345026124742.Spec : Prop :=
  ∀ n, P8118872345026124742.a n = A155564 (n + 1)

end A155564

/-! ## A155564.P14285862267051337771

`lt[A151878(A033715(3*n)), A353816(n)]`
-/

namespace A155564.P14285862267051337771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A033715 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155564.P14285862267051337771

namespace A155564

/-- `lt[A151878(A033715(3*n)), A353816(n)]` -/
def P14285862267051337771.Spec : Prop :=
  ∀ n, (P14285862267051337771.a n : ℤ) = A155564 (n + 1)

end A155564

/-! ## A155564.P6355832947983133673

`filter[A242661(n+1), A353816(#)]`
-/

namespace A155564.P6355832947983133673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A155564.P6355832947983133673

namespace A155564

/-- `filter[A242661(n+1), A353816(#)]` -/
def P6355832947983133673.Spec : Prop :=
  ∀ n, P6355832947983133673.a n = A155564 (n + 1)

end A155564

/-! ## A155564.P16421202668225986430

`filter[A242661(n+1), A391183(#)]`
-/

namespace A155564.P16421202668225986430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A155564.P16421202668225986430

namespace A155564

/-- `filter[A242661(n+1), A391183(#)]` -/
def P16421202668225986430.Spec : Prop :=
  ∀ n, P16421202668225986430.a n = A155564 (n + 1)

end A155564

/-!
# A155565: Intersection of A001481 and A020669: N = a^2 + b^2 = c^2 + 5d^2 for some integers a,b,c,d.

The programs for A155565, there is no canonical definition to state claims against.
-/

/-! ## A155565.P5572101055081378172

`filter[A020669(n+1), A229062(#)]`
-/

namespace A155565.P5572101055081378172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A155565.P5572101055081378172

/-! ## A155565.P2413668283481793289

`∩[A020668(n+1), A020669(n+1)]`
-/

namespace A155565.P2413668283481793289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155565.P2413668283481793289

/-! ## A155565.P9645357198019913538

`∩[A001481(n+1), A020669(n+1)]`
-/

namespace A155565.P9645357198019913538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155565.P9645357198019913538

/-! ## A155565.P5614476632548309561

`lt[char[A232681(n+1)], A229062(n)]`
-/

namespace A155565.P5614476632548309561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232681 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A155565.P5614476632548309561

/-! ## A155565.P6472115739386824699

`eq[A222639(n), A374276(n)]`
-/

namespace A155565.P6472115739386824699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155565.P6472115739386824699

/-!
# A155566: Intersection of A001481 and A002481: N = a^2 + b^2 = c^2 + 6d^2 for some integers a,b,c,d.

The programs for A155566, there is no canonical definition to state claims against.
-/

/-! ## A155566.P13833504486966429067

`filter[A002481(n+1), A229062(#)]`
-/

namespace A155566.P13833504486966429067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A155566.P13833504486966429067

/-! ## A155566.P18228213995122515026

`∩[A002481(n+1), A020672(n+1)]`
-/

namespace A155566.P18228213995122515026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155566.P18228213995122515026

/-! ## A155566.P13084453415656650233

`∩[A001481(n+1), A002481(n+1)]`
-/

namespace A155566.P13084453415656650233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155566.P13084453415656650233

/-! ## A155566.P3950913766999610357

`∩[A002481(n+1), A166687(n+1)-1]`
-/

namespace A155566.P3950913766999610357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155566.P3950913766999610357

/-! ## A155566.P4770758185191910945

`∩[A002481(n+1), floor(A128106(n+1)/2)]`
-/

namespace A155566.P4770758185191910945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128106 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155566.P4770758185191910945

/-! ## A155566.P10308375827020078817

`∩[∪[A000404(n+1), n²], A002481(n+1)]`
-/

namespace A155566.P10308375827020078817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155566.P10308375827020078817

/-! ## A155566.P5269565492787894502

`∩[∪[A000415(n+1), n²], A002481(n+1)]`
-/

namespace A155566.P5269565492787894502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155566.P5269565492787894502

/-! ## A155566.P14838509393776197282

`∩[A125110(n+1)%A166687(n+1), A002481(n+1)]`
-/

namespace A155566.P14838509393776197282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125110 (n + 1)) (A166687 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155566.P14838509393776197282

/-!
# A155567: Intersection of A002479 and A020669 : N = a^2 + 2b^2 = c^2 + 5d^2 for some integers a,b,c,d.

The programs for A155567, there is no canonical definition to state claims against.
-/

/-! ## A155567.P13094695366275695720

`∩[A002479(n+1), A020669(n+1)]`
-/

namespace A155567.P13094695366275695720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155567.P13094695366275695720

/-! ## A155567.P5389202760300162626

`filter[A020669(n+1), A391183(#)]`
-/

namespace A155567.P5389202760300162626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A155567.P5389202760300162626

/-! ## A155567.P5725338957072837961

`∩[lt[1, A028586(2*n)+1], A002479(n+1)]`
-/

namespace A155567.P5725338957072837961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (2 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155567.P5725338957072837961

/-! ## A155567.P14913088044073889404

`filter[A242664(n+1), A391183(#)]`
-/

namespace A155567.P14913088044073889404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A155567.P14913088044073889404

/-! ## A155567.P11824789743989788519

`∩[A020669(n+1), A242664(n+1)]`
-/

namespace A155567.P11824789743989788519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155567.P11824789743989788519

/-!
# A155568: Intersection of A001481 inter A020670: N = a^2 + b^2 = c^2 + 7d^2 for some integers a,b,c,d.

The programs for A155568, there is no canonical definition to state claims against.
-/

/-! ## A155568.P7458795059846816895

`filter[A020670(n+1), A229062(#)]`
-/

namespace A155568.P7458795059846816895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A155568.P7458795059846816895

/-! ## A155568.P12083897350825270782

`∩[A020668(n+1), A020670(n+1)]`
-/

namespace A155568.P12083897350825270782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155568.P12083897350825270782

/-! ## A155568.P9116109308950374817

`∩[A001481(n+1), A020670(n+1)]`
-/

namespace A155568.P9116109308950374817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155568.P9116109308950374817

/-! ## A155568.P1759759416353897258

`eq[char[A020670(n+1)], A262750(n+1)]`
-/

namespace A155568.P1759759416353897258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A155568.P1759759416353897258

/-! ## A155568.P5644714979225142354

`eq[A019425(A033719(n)), A262750(n+1)]`
-/

namespace A155568.P5644714979225142354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033719 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155568.P5644714979225142354

/-! ## A155568.P11626970177447030219

`∩[A020670(n+1), A242662(n)]`
-/

namespace A155568.P11626970177447030219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155568.P11626970177447030219

/-! ## A155568.P11975478026276070609

`∩[A020668(n+1), A242662(n)]`
-/

namespace A155568.P11975478026276070609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155568.P11975478026276070609

/-!
# A155569: Intersection of A002479 inter A002481: N = a^2 + 2b^2 = c^2 + 6d^2 for some integers a,b,c,d.

The programs for A155569, there is no canonical definition to state claims against.
-/

/-! ## A155569.P345100589086248205

`∩[A002479(n+1), A002481(n+1)]`
-/

namespace A155569.P345100589086248205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155569.P345100589086248205

/-! ## A155569.P4615269480262824406

`filter[A002481(n+1), A391183(#)]`
-/

namespace A155569.P4615269480262824406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A155569.P4615269480262824406

/-! ## A155569.P3864298058594297839

`∩[lt[0, A033715(n)], A002481(n+1)]`
-/

namespace A155569.P3864298058594297839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155569.P3864298058594297839

/-! ## A155569.P2926815194228990304

`∩[lt[0, A139093(n)²], A002481(n+1)]`
-/

namespace A155569.P2926815194228990304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155569.P2926815194228990304

/-! ## A155569.P11226999813469119035

`∩[lt[0, A046113(n)], A002479(n+1)]`
-/

namespace A155569.P11226999813469119035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155569.P11226999813469119035

/-! ## A155569.P546250077432025318

`∩[lt[1, A108563(2*n)+1], A002479(n+1)]`
-/

namespace A155569.P546250077432025318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (2 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155569.P546250077432025318

/-!
# A155570: Intersection of A003136 and A020669: N = a^2 + 3b^2 = c^2 + 5d^2 for some integers a,b,c,d.

The programs for A155570, there is no canonical definition to state claims against.
-/

/-! ## A155570.P18385502001108475738

`filter[A243188(n+1), A353816(#)]`
-/

namespace A155570.P18385502001108475738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A155570.P18385502001108475738

/-! ## A155570.P3305640883087482586

`∩[A020669(n+1), A243188(n+1)]`
-/

namespace A155570.P3305640883087482586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155570.P3305640883087482586

/-! ## A155570.P17628160621365917627

`∩[A243188(n+1), A272933(n+1)]`
-/

namespace A155570.P17628160621365917627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155570.P17628160621365917627

/-! ## A155570.P17908418165210847341

`filter[A020669(n+1), A353816(#)]`
-/

namespace A155570.P17908418165210847341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A155570.P17908418165210847341

/-! ## A155570.P16468146043867727958

`∩[A020669(n+1), A272933(n+1)]`
-/

namespace A155570.P16468146043867727958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155570.P16468146043867727958

/-! ## A155570.P3797243898845132880

`∩[A003136(n+1), A020669(n+1)]`
-/

namespace A155570.P3797243898845132880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155570.P3797243898845132880

/-! ## A155570.P12859984308350621508

`∩[A003136(n+1), A243188(n+1)]`
-/

namespace A155570.P12859984308350621508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155570.P12859984308350621508

/-!
# A155571: Intersection of A000404, A092572 and A154778: N = a^2 + b^2 = c^2 + 3d^2 = e^2 + 5f^2 for some positive integers a,b,c,d,e,f.

The programs for A155571, there is no canonical definition to state claims against.
-/

/-! ## A155571.P8788437977395878975

`∩[A154778(n+1), A155560(n+1)]`
-/

namespace A155571.P8788437977395878975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155571.P8788437977395878975

/-! ## A155571.P1190888010840724323

`filter[A155710(n+1), A353814(#)]`
-/

namespace A155571.P1190888010840724323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A155571.P1190888010840724323

/-! ## A155571.P12083744878531316116

`∩[A155710(n+1), A353198(n+2)]`
-/

namespace A155571.P12083744878531316116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155571.P12083744878531316116

/-! ## A155571.P9812196490447175168

`∩[A155560(n+1), A155710(n+1)]`
-/

namespace A155571.P9812196490447175168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155571.P9812196490447175168

/-! ## A155571.P15235322930491366287

`∩[A155710(n+1), A264732(n+2)]`
-/

namespace A155571.P15235322930491366287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155571.P15235322930491366287

/-!
# A155572: Intersection of A000404, A154777 and A154778: N = a^2 + b^2 = c^2 + 2d^2 = e^2 + 5f^2 for some positive integers a,b,c,d,e,f.

The programs for A155572, there is no canonical definition to state claims against.
-/

/-! ## A155572.P10537195441475619277

`filter[A155577(n+1), A353814(#)]`
-/

namespace A155572.P10537195441475619277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A155572.P10537195441475619277

/-! ## A155572.P413367051948322044

`filter[A155575(n+1), A391183(#)]`
-/

namespace A155572.P413367051948322044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A155572.P413367051948322044

/-! ## A155572.P17213188561221317188

`∩[A155575(n+1), A155577(n+1)]`
-/

namespace A155572.P17213188561221317188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155572.P17213188561221317188

/-! ## A155572.P12028896223591822804

`∩[A155575(n+1), A241971(n+1)]`
-/

namespace A155572.P12028896223591822804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155572.P12028896223591822804

/-! ## A155572.P5983669961468215437

`∩[A155575(n+1), A155567(n+10)]`
-/

namespace A155572.P5983669961468215437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155567 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155572.P5983669961468215437

/-!
# A155573: Intersection of A000404, A154777 and A092572: N = a^2 + b^2 = c^2 + 2d^2 = e^2 + 3f^2 for some positive integers a,b,c,d,e,f.

The programs for A155573, there is no canonical definition to state claims against.
-/

/-! ## A155573.P15259115257930620548

`∩[A154777(n+1), A155560(n+1)]`
-/

namespace A155573.P15259115257930620548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155573.P15259115257930620548

/-! ## A155573.P1442048529320408754

`filter[A155576(n+1), A358769(#)]`
-/

namespace A155573.P1442048529320408754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A155573.P1442048529320408754

/-! ## A155573.P13724609670791820406

`filter[A155576(n+1), A358770(#)]`
-/

namespace A155573.P13724609670791820406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A155573.P13724609670791820406

/-! ## A155573.P7336555792343781855

`∩[A155576(n+1), A353198(n+1)]`
-/

namespace A155573.P7336555792343781855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155573.P7336555792343781855

/-! ## A155573.P15027643782122593895

`filter[A155709(n+1), A353812(#)]`
-/

namespace A155573.P15027643782122593895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A155573.P15027643782122593895

/-!
# A155574: Intersection of A154777 and A092572: N = a^2 + 2b^2 = c^2 + 3d^2 for some positive integers a,b,c,d.

The programs for A155574, there is no canonical definition to state claims against.
-/

/-! ## A155574.P8766615413490892976

`∩[A092572(n+1), A154777(n+1)]`
-/

namespace A155574.P8766615413490892976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155574.P8766615413490892976

/-! ## A155574.P7412574087603246830

`∩[lt[0, A092573(n)], A154777(n+1)]`
-/

namespace A155574.P7412574087603246830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155574.P7412574087603246830

/-! ## A155574.P3131040900817533920

`∩[lt[2, A033716(n)], A154777(n+1)]`
-/

namespace A155574.P3131040900817533920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155574.P3131040900817533920

/-! ## A155574.P12090188765982710146

`∩[lt[4, A133692(n)²], A092572(n+1)]`
-/

namespace A155574.P12090188765982710146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155574.P12090188765982710146

/-! ## A155574.P15975218314790717892

`∩[lt[2, A133692(2*n)], A092572(n+2)]`
-/

namespace A155574.P15975218314790717892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155574.P15975218314790717892

/-! ## A155574.P7309116451255594413

`∩[lt[1, A096936(n+1)]+1, A154777(n+1)]`
-/

namespace A155574.P7309116451255594413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155574.P7309116451255594413

/-! ## A155574.P13410674224431720987

`∩[lt[1, A112298(n+1)]+1, A154777(n+1)]`
-/

namespace A155574.P13410674224431720987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112298 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155574.P13410674224431720987

/-!
# A155575: Intersection of A000404 and A154778: N = a^2 + b^2 = c^2 + 5d^2 for some positive integers a,b,c,d.

The programs for A155575, there is no canonical definition to state claims against.
-/

/-! ## A155575.P12759479721411012683

`filter[A154778(n+1), A353814(#)]`
-/

namespace A155575.P12759479721411012683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A155575.P12759479721411012683

/-! ## A155575.P17650437372086112156

`lt[2, C(A033718(n), A025441(n))]`
-/

namespace A155575.P17650437372086112156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033718 n).toNat (A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155575.P17650437372086112156

/-! ## A155575.P163460515344503369

`∩[A000404(n+1), A154778(n+1)]`
-/

namespace A155575.P163460515344503369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155575.P163460515344503369

/-! ## A155575.P10195096791744176151

`∩[A004431(n+1), A154778(n+1)]`
-/

namespace A155575.P10195096791744176151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155575.P10195096791744176151

/-! ## A155575.P2496065359230472358

`∩[A097268(n+1), A154778(n+1)]`
-/

namespace A155575.P2496065359230472358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155575.P2496065359230472358

/-! ## A155575.P2605071290870756981

`∩[A100829(n+1), A154778(n+1)]`
-/

namespace A155575.P2605071290870756981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155575.P2605071290870756981

/-! ## A155575.P18338369576746173105

`∩[lt[2, A033718(n)], A097268(n+1)]`
-/

namespace A155575.P18338369576746173105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155575.P18338369576746173105

/-! ## A155575.P12299900513794189972

`∩[lt[2, A028586(2*n)], A097268(n+1)]`
-/

namespace A155575.P12299900513794189972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155575.P12299900513794189972

/-! ## A155575.P6912965475289410519

`∩[lt[0, A216279(n+1)]+1, A097268(n+1)]`
-/

namespace A155575.P6912965475289410519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155575.P6912965475289410519

/-! ## A155575.P10852944312217941664

`lt[A010168(A033718(n)), A063725(n)]`
-/

namespace A155575.P10852944312217941664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010168 (A033718 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155575.P10852944312217941664

/-!
# A155576: Intersection of A000404 and A155716: N = a^2 + b^2 = c^2 + 6d^2 for some positive integers a,b,c,d.

The programs for A155576, there is no canonical definition to state claims against.
-/

/-! ## A155576.P5557493074662400185

`filter[A155716(n+1), A353814(#)]`
-/

namespace A155576.P5557493074662400185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A155576.P5557493074662400185

/-! ## A155576.P15217449896333561475

`∩[A000404(n+1), A155716(n+1)]`
-/

namespace A155576.P15217449896333561475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155576.P15217449896333561475

/-! ## A155576.P8936421258991600564

`∩[A004431(n+1), A155716(n+1)]`
-/

namespace A155576.P8936421258991600564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155576.P8936421258991600564

/-! ## A155576.P12526492022655257877

`∩[A100829(n+1), A155716(n+1)]`
-/

namespace A155576.P12526492022655257877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155576.P12526492022655257877

/-! ## A155576.P17739553351185101958

`lt[A010168(A046113(n)), A063725(n)]`
-/

namespace A155576.P17739553351185101958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010168 (A046113 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155576.P17739553351185101958

/-!
# A155577: Intersection of A154777 and A154778: N = a^2 + 2b^2 = c^2 + 5d^2 for some positive integers a,b,c,d.

The programs for A155577, there is no canonical definition to state claims against.
-/

/-! ## A155577.P4995240253629931246

`∩[A154777(n+1), A154778(n+1)]`
-/

namespace A155577.P4995240253629931246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155577.P4995240253629931246

/-! ## A155577.P6760288376028289570

`∩[lt[2, A033718(n)], A154777(n+1)]`
-/

namespace A155577.P6760288376028289570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155577.P6760288376028289570

/-! ## A155577.P4719460345823901940

`∩[lt[2, A028586(2*n)], A154777(n+1)]`
-/

namespace A155577.P4719460345823901940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155577.P4719460345823901940

/-! ## A155577.P2067654220676384729

`∩[lt[0, A216279(n+1)]+1, A154777(n+1)]`
-/

namespace A155577.P2067654220676384729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155577.P2067654220676384729

/-! ## A155577.P4368714396658530875

`∩[lt[1, A111949(n+1)]+1, A154777(n+1)]`
-/

namespace A155577.P4368714396658530875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155577.P4368714396658530875

/-!
# A155578: Intersection of A000404 and A155717: N = a^2 + b^2 = c^2 + 7*d^2 for some positive integers a,b,c,d.

The programs for A155578, there is no canonical definition to state claims against.
-/

/-! ## A155578.P9358450199447924927

`∩[A000404(n+1), A155717(n+1)]`
-/

namespace A155578.P9358450199447924927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155578.P9358450199447924927

/-! ## A155578.P3924293545785534715

`∩[A097268(n+1), A155717(n+1)]`
-/

namespace A155578.P3924293545785534715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155578.P3924293545785534715

/-! ## A155578.P8020289832446237479

`∩[A100829(n+1), A155717(n+1)]`
-/

namespace A155578.P8020289832446237479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155578.P8020289832446237479

/-! ## A155578.P14903929724058792534

`∩[lt[2, A033719(n)], A097268(n+1)]`
-/

namespace A155578.P14903929724058792534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155578.P14903929724058792534

/-! ## A155578.P1634664849819521597

`∩[lt[13^(n%4-1), A063725(n)], A155717(n+1)]`
-/

namespace A155578.P1634664849819521597
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (((n % 4 : ℕ) : ℤ) - 1 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℚ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155578.P1634664849819521597

/-!
# A155579: Recursive sequence (n+1)*a(n) = 3*(3*n-2)*a(n-1), a(0) = 2.

The programs for A155579, the canonical program `A155579.P9743455769077789618` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155579 has offset 0).

The definition of A155579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155579.P9743455769077789618

`3*(3-5/(n+1))*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155579

/-- `3*(3-5/(n+1))*a(n-1)` -/
def P9743455769077789618.Spec : Prop :=
  ∀ n, P9743455769077789618.a n = (A155579 n : ℚ)

end A155579

/-! ## A155579.P17142601585662706220

`A004989(n+1)/A004990(n+1)*A097188(n)`
-/

namespace A155579.P17142601585662706220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004989 (n + 1) : ℚ) / (A004990 (n + 1) : ℚ) * (A097188 n : ℚ)

end

end A155579.P17142601585662706220

namespace A155579

/-- `A004989(n+1)/A004990(n+1)*A097188(n)` -/
def P17142601585662706220.Spec : Prop :=
  ∀ n, P17142601585662706220.a n = (A155579 n : ℚ)

end A155579

/-! ## A155579.P7405365727872007799

`2/(n+1)*A004987(n)`
-/

namespace A155579.P7405365727872007799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A004987 n : ℚ)

end

end A155579.P7405365727872007799

namespace A155579

/-- `2/(n+1)*A004987(n)` -/
def P7405365727872007799.Spec : Prop :=
  ∀ n, P7405365727872007799.a n = (A155579 n : ℚ)

end A155579

/-! ## A155579.P15427303200822731108

`3*A004987(n)-A034171(n)`
-/

namespace A155579.P15427303200822731108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004987 n - A034171 n

end

end A155579.P15427303200822731108

namespace A155579

/-- `3*A004987(n)-A034171(n)` -/
def P15427303200822731108.Spec : Prop :=
  ∀ n, P15427303200822731108.a n = A155579 n

end A155579

/-! ## A155579.P12353972296372349719

`2/A016777(n)*A034171(n)`
-/

namespace A155579.P12353972296372349719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A016777 n : ℚ) * (A034171 n : ℚ)

end

end A155579.P12353972296372349719

namespace A155579

/-- `2/A016777(n)*A034171(n)` -/
def P12353972296372349719.Spec : Prop :=
  ∀ n, P12353972296372349719.a n = (A155579 n : ℚ)

end A155579

/-! ## A155579.P14578456420668590284

`Δ[A004987(n)]/A016813(n)`
-/

namespace A155579.P14578456420668590284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004987 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A016813 n : ℚ)

end

end A155579.P14578456420668590284

namespace A155579

/-- `Δ[A004987(n)]/A016813(n)` -/
def P14578456420668590284.Spec : Prop :=
  ∀ n, P14578456420668590284.a n = (A155579 n : ℚ)

end A155579

/-! ## A155579.P5978292986364440484

`Δ[A004987(n)]/ratio[A007696(n)]`
-/

namespace A155579.P5978292986364440484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007696 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A155579.P5978292986364440484

namespace A155579

/-- `Δ[A004987(n)]/ratio[A007696(n)]` -/
def P5978292986364440484.Spec : Prop :=
  ∀ n, P5978292986364440484.a n = (A155579 n : ℚ)

end A155579

/-!
# A155580: a(n)=If[IntegerQ[((3*n - 2)/( n + 1))*a(n - 1)], ((3*n - 2)/(n + 1))* a(n - 1), If[IntegerQ[((4*n - 2)/(n + 1))*a( n - 1)], ((4*n - 2)/(n + 1))*a(n - 1), n*a(n - 1)]].

The programs for A155580, there is no canonical definition to state claims against.
-/

/-! ## A155580.P8586664240097355477

`A018321(round(cosh(log(acot(n))))+C(n, 2))`
-/

namespace A155580.P8586664240097355477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018321 (SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ)))) + (Nat.choose n 2 : ℤ)).toNat

end

end A155580.P8586664240097355477

/-! ## A155580.P1791851370629860603

`A265769(a(n-1))-1` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A155580.P1791851370629860603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  A265769 (a (n - 1)).toNat - 1

end

end A155580.P1791851370629860603

/-! ## A155580.P13247826310584647895

`A219842(∑[n*a(n-1)]+1)` with `a(0)=3`
-/

namespace A155580.P13247826310584647895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219842 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A155580.P13247826310584647895

/-!
# A155581: a(n)=If[IntegerQ[((6*n - 4)/( n + 1))*a(n - 1)], ((6*n - 4)/(n + 1))* a(n - 1), If[IntegerQ[((4*n - 2)/(n + 1))*a( n - 1)], ((4*n - 2)/(n + 1))*a(n - 1), n*a(n - 1)]].

The programs for A155581, there is no canonical definition to state claims against.
-/

/-! ## A155581.P6499519227772336071

`A298479(A095892(n)+A052103(n))`
-/

namespace A155581.P6499519227772336071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298479 (A095892 n + A052103 n).toNat

end

end A155581.P6499519227772336071

/-! ## A155581.P8996640259017448562

`A298479(A145545(n+1)+∑[A002264(n)])`
-/

namespace A155581.P8996640259017448562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298479 (A145545 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155581.P8996640259017448562

/-! ## A155581.P16240919200910867497

`A298479(A215796(n+1)+∑[A002264(n)])`
-/

namespace A155581.P16240919200910867497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298479 (A215796 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155581.P16240919200910867497

/-!
# A155582: See Mathematica program for definition.

The programs for A155582, there is no canonical definition to state claims against.
-/

/-! ## A155582.P7583053828538222605

`A256435(A129276(n)+1)`
-/

namespace A155582.P7583053828538222605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256435 (A129276 n + 1).toNat

end

end A155582.P7583053828538222605

/-! ## A155582.P14276662393441710660

`∏{e}[A063539(A157273(n)), #]`
-/

namespace A155582.P14276662393441710660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (A157273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A155582.P14276662393441710660

/-! ## A155582.P17168859779900412857

`A341594(A220786(n+1))+1`
-/

namespace A155582.P17168859779900412857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (A220786 (n + 1)).toNat + 1

end

end A155582.P17168859779900412857

/-! ## A155582.P1223155278714574285

`∑{e}[A274059(A196863(n+1)), #]`
-/

namespace A155582.P1223155278714574285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274059 (A196863 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A155582.P1223155278714574285

/-! ## A155582.P12986826930558659448

`A027746(and(A059802(n+3), A129276(n)))`
-/

namespace A155582.P12986826930558659448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (Int.land (A059802 (n + 3)) (A129276 n)).toNat

end

end A155582.P12986826930558659448

/-!
# A155584: Array, read by antidiagonals, of n-th strobogrammatic number in base k.

The programs for A155584, there is no canonical definition to state claims against.
-/

/-! ## A155584.P11637992677100026498

`lcm(A000120(A291774(n+1)), A276172(n+1))`
-/

namespace A155584.P11637992677100026498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000120 (A291774 (n + 1)).toNat) (A276172 (n + 1))

end

end A155584.P11637992677100026498

/-! ## A155584.P8434283074502193089

`A196062(A079474(n+1))`
-/

namespace A155584.P8434283074502193089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (A079474 (n + 1)).toNat

end

end A155584.P8434283074502193089

/-! ## A155584.P15691623238665847650

`A303370(A265882(n+1))`
-/

namespace A155584.P15691623238665847650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303370 (A265882 (n + 1)).toNat

end

end A155584.P15691623238665847650

/-! ## A155584.P1528695423980409136

`A111972(A364074(n+2))`
-/

namespace A155584.P1528695423980409136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A364074 (n + 2)).toNat

end

end A155584.P1528695423980409136

/-!
# A155585: a(n) = 2^n*E(n, 1) where E(n, x) are the Euler polynomials.

The programs for A155585, there is no canonical definition to state claims against.
-/

/-! ## A155585.P12920822605586728454

`A209849(∑[n]+1)`
-/

namespace A155585.P12920822605586728454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209849 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A155585.P12920822605586728454

/-! ## A155585.P13413662419689095267

`(1-and(2, n))*A009006(n)`
-/

namespace A155585.P13413662419689095267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A009006 n

end

end A155585.P13413662419689095267

/-! ## A155585.P13941192455445667594

`(1-and(2, n))*A108040(∑[n])`
-/

namespace A155585.P13941192455445667594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A108040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155585.P13941192455445667594

/-! ## A155585.P9018585646710727283

`A009570(n)+A009126(n)`
-/

namespace A155585.P9018585646710727283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009570 n + A009126 n

end

end A155585.P9018585646710727283

/-! ## A155585.P1928160547517083042

`A122045(n)-A163747(n)`
-/

namespace A155585.P1928160547517083042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - A163747 n

end

end A155585.P1928160547517083042

/-! ## A155585.P2163952864754218946

`A009006(n)*A057077(n)`
-/

namespace A155585.P2163952864754218946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n * A057077 n

end

end A155585.P2163952864754218946

/-! ## A155585.P11597015658073687837

`A000111(n)*A117569(n)`
-/

namespace A155585.P11597015658073687837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A117569 n

end

end A155585.P11597015658073687837

/-! ## A155585.P15614294343033440563

`-(A163982(n)+A122045(n))`
-/

namespace A155585.P15614294343033440563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A163982 n + A122045 n)

end

end A155585.P15614294343033440563

/-! ## A155585.P3909743694228097473

`A323833(∑[n])+A122045(n)`
-/

namespace A155585.P3909743694228097473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (∑ j ∈ Finset.range (n + 1), f1 j) + A122045 n

end

end A155585.P3909743694228097473

/-! ## A155585.P12415769737762396008

`A000079(n+1)-A119881(n)`
-/

namespace A155585.P12415769737762396008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A119881 n

end

end A155585.P12415769737762396008

/-!
# A155586: A modified Catalan sequence array.

The programs for A155586, there is no canonical definition to state claims against.
-/

/-! ## A155586.P4916135188716005941

`abs(A343233(abs(1-n)))`
-/

namespace A155586.P4916135188716005941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A343233 |1 - (n : ℤ)|.toNat)|

end

end A155586.P4916135188716005941

/-! ## A155586.P7711014875224296439

`A120588(A193592(n))`
-/

namespace A155586.P7711014875224296439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A193592 n).toNat

end

end A155586.P7711014875224296439

/-! ## A155586.P13995767286994355914

`A091894(A193592(n)²)`
-/

namespace A155586.P13995767286994355914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091894 (A193592 n ^ 2).toNat

end

end A155586.P13995767286994355914

/-! ## A155586.P16796850757452440290

`A069739(A057728(n+1))`
-/

namespace A155586.P16796850757452440290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069739 (A057728 (n + 1)).toNat

end

end A155586.P16796850757452440290

/-! ## A155586.P11467805918912757690

`A000108(A193592(n)-1)`
-/

namespace A155586.P11467805918912757690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A193592 n - 1).toNat

end

end A155586.P11467805918912757690

/-! ## A155586.P3704360030124012787

`A122698(2^A193592(n))`
-/

namespace A155586.P3704360030124012787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122698 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A193592 n : ℤ))).toNat

end

end A155586.P3704360030124012787

/-! ## A155586.P8987267797593196308

`A039599(C(A193592(n), 2))`
-/

namespace A155586.P8987267797593196308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (Nat.choose (A193592 n).toNat 2)

end

end A155586.P8987267797593196308

/-! ## A155586.P11915167200212856069

`gcd(A073423(n), A106270(n))`
-/

namespace A155586.P11915167200212856069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A106270 n)

end

end A155586.P11915167200212856069

/-! ## A155586.P5447477633688929981

`A000108(round(log2(A140996(n))))`
-/

namespace A155586.P5447477633688929981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.logb 2 (A140996 n : ℝ))).toNat

end

end A155586.P5447477633688929981

/-! ## A155586.P13772431917672828815

`A051168(2*A193592(n)²)`
-/

namespace A155586.P13772431917672828815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (2 * A193592 n ^ 2).toNat

end

end A155586.P13772431917672828815

/-!
# A155587: Expansion of (1 + x*c(x))/(1 - x), where c(x) is the g.f. of A000108.

The programs for A155587, the canonical program `A155587.P7484894017318581983` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155587 has offset 0).

The definition of A155587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155587.P14207092178001655826

`∑[(4-6/n)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A155587.P14207092178001655826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P14207092178001655826

namespace A155587

/-- `∑[(4-6/n)*a(n-1)]` -/
def P14207092178001655826.Spec : Prop :=
  ∀ n, P14207092178001655826.a n = (A155587 n : ℚ)

end A155587

/-! ## A155587.P7484894017318581983

`∑[A120588(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155587

/-- `∑[A120588(n)]` -/
def P7484894017318581983.Spec : Prop :=
  ∀ n, P7484894017318581983.a n = A155587 n

theorem P7484894017318581983.correct : P7484894017318581983.Spec := by
  intro n
  simp only [A155587]

end A155587

/-! ## A155587.P11980103963609417886

`A166588(2*n)`
-/

namespace A155587.P11980103963609417886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 * n)

end

end A155587.P11980103963609417886

namespace A155587

/-- `A166588(2*n)` -/
def P11980103963609417886.Spec : Prop :=
  ∀ n, P11980103963609417886.a n = A155587 n

end A155587

/-! ## A155587.P4054369671633252358

`∑[abs(A115140(n))]`
-/

namespace A155587.P4054369671633252358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P4054369671633252358

namespace A155587

/-- `∑[abs(A115140(n))]` -/
def P4054369671633252358.Spec : Prop :=
  ∀ n, P4054369671633252358.a n = A155587 n

end A155587

/-! ## A155587.P3924013979347024187

`abs(∑[A246432(n)])`
-/

namespace A155587.P3924013979347024187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A155587.P3924013979347024187

namespace A155587

/-- `abs(∑[A246432(n)])` -/
def P3924013979347024187.Spec : Prop :=
  ∀ n, P3924013979347024187.a n = A155587 n

end A155587

/-! ## A155587.P3625617393458708280

`∑[A000108(abs(1-n))]`
-/

namespace A155587.P3625617393458708280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P3625617393458708280

namespace A155587

/-- `∑[A000108(abs(1-n))]` -/
def P3625617393458708280.Spec : Prop :=
  ∀ n, P3625617393458708280.a n = A155587 n

end A155587

/-! ## A155587.P14419841345491531573

`∑[abs(∑[A115142(n)])]-n`
-/

namespace A155587.P14419841345491531573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A155587.P14419841345491531573

namespace A155587

/-- `∑[abs(∑[A115142(n)])]-n` -/
def P14419841345491531573.Spec : Prop :=
  ∀ n, P14419841345491531573.a n = A155587 n

end A155587

/-! ## A155587.P17578343238214387195

`∑[A126120(abs(2*(1-n)))]`
-/

namespace A155587.P17578343238214387195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P17578343238214387195

namespace A155587

/-- `∑[A126120(abs(2*(1-n)))]` -/
def P17578343238214387195.Spec : Prop :=
  ∀ n, P17578343238214387195.a n = A155587 n

end A155587

/-! ## A155587.P8169274445042029870

`∑[ceil(A089408(2*n)/2)]`
-/

namespace A155587.P8169274445042029870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089408 (2 * n) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P8169274445042029870

namespace A155587

/-- `∑[ceil(A089408(2*n)/2)]` -/
def P8169274445042029870.Spec : Prop :=
  ∀ n, P8169274445042029870.a n = A155587 n

end A155587

/-! ## A155587.P3833050010142398275

`a(n-1)-A115141(n)` with `a(0)=1, a(1)=2`
-/

namespace A155587.P3833050010142398275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - A115141 n

end

end A155587.P3833050010142398275

namespace A155587

/-- `a(n-1)-A115141(n)` -/
def P3833050010142398275.Spec : Prop :=
  ∀ n, P3833050010142398275.a n = A155587 n

end A155587

/-! ## A155587.P16746914722672218878

`a(n-1)+A000108(n-1)` with `a(0)=1`
-/

namespace A155587.P16746914722672218878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000108 (n - 1)

end

end A155587.P16746914722672218878

namespace A155587

/-- `a(n-1)+A000108(n-1)` -/
def P16746914722672218878.Spec : Prop :=
  ∀ n, P16746914722672218878.a n = A155587 n

end A155587

/-! ## A155587.P10103746131101259111

`A075163(A008578(n+1))`
-/

namespace A155587.P10103746131101259111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075163 (A008578 (n + 1)).toNat

end

end A155587.P10103746131101259111

namespace A155587

/-- `A075163(A008578(n+1))` -/
def P10103746131101259111.Spec : Prop :=
  ∀ n, P10103746131101259111.a n = A155587 n

end A155587

/-! ## A155587.P7400205145566926320

`A075163(A158611(n+2))`
-/

namespace A155587.P7400205145566926320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075163 (A158611 (n + 2)).toNat

end

end A155587.P7400205145566926320

namespace A155587

/-- `A075163(A158611(n+2))` -/
def P7400205145566926320.Spec : Prop :=
  ∀ n, P7400205145566926320.a n = A155587 n

end A155587

/-! ## A155587.P3862764542466795168

`∑[abs(A105523(A004273(n)))]`
-/

namespace A155587.P3862764542466795168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 (A004273 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P3862764542466795168

namespace A155587

/-- `∑[abs(A105523(A004273(n)))]` -/
def P3862764542466795168.Spec : Prop :=
  ∀ n, P3862764542466795168.a n = A155587 n

end A155587

/-! ## A155587.P15478122826319380754

`∑[A097331(record[A006369(n)])]`
-/

namespace A155587.P15478122826319380754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P15478122826319380754

namespace A155587

/-- `∑[A097331(record[A006369(n)])]` -/
def P15478122826319380754.Spec : Prop :=
  ∀ n, P15478122826319380754.a n = A155587 n

end A155587

/-! ## A155587.P16407105228903954539

`A075163(record[A006530(n+1)])`
-/

namespace A155587.P16407105228903954539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075163 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155587.P16407105228903954539

namespace A155587

/-- `A075163(record[A006530(n+1)])` -/
def P16407105228903954539.Spec : Prop :=
  ∀ n, P16407105228903954539.a n = A155587 n

end A155587

/-! ## A155587.P8329054552206583919

`A075163(record[A014963(n+1)])`
-/

namespace A155587.P8329054552206583919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075163 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155587.P8329054552206583919

namespace A155587

/-- `A075163(record[A014963(n+1)])` -/
def P8329054552206583919.Spec : Prop :=
  ∀ n, P8329054552206583919.a n = A155587 n

end A155587

/-! ## A155587.P2091894176421825039

`A075163(record[A020639(n+1)])`
-/

namespace A155587.P2091894176421825039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075163 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155587.P2091894176421825039

namespace A155587

/-- `A075163(record[A020639(n+1)])` -/
def P2091894176421825039.Spec : Prop :=
  ∀ n, P2091894176421825039.a n = A155587 n

end A155587

/-! ## A155587.P6201453439597034119

`2-A033999(n)*A099324(n)`
-/

namespace A155587.P6201453439597034119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033999 n * A099324 n

end

end A155587.P6201453439597034119

namespace A155587

/-- `2-A033999(n)*A099324(n)` -/
def P6201453439597034119.Spec : Prop :=
  ∀ n, P6201453439597034119.a n = A155587 n

end A155587

/-! ## A155587.P856724686397076944

`∑[A028304(A004277(abs(1-n)))]`
-/

namespace A155587.P856724686397076944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (A004277 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P856724686397076944

namespace A155587

/-- `∑[A028304(A004277(abs(1-n)))]` -/
def P856724686397076944.Spec : Prop :=
  ∀ n, P856724686397076944.a n = A155587 n

end A155587

/-!
# A155588: a(n) = 5^n + 2^n - 1^n.

The programs for A155588, the canonical program `A155588.P8924744068557299207` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155588 has offset 0).

The definition of A155588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+2^n-1` (program `A155588.P8924744068557299207`, by `A155588.P8924744068557299207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155588.P8924744068557299207

`5^n+2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155588

/-- `5^n+2^n-1` -/
def P8924744068557299207.Spec : Prop :=
  ∀ n, P8924744068557299207.a n = A155588 n

theorem P8924744068557299207.correct : P8924744068557299207.Spec := by
  intro n
  simp only [A155588]

end A155588

/-! ## A155588.P2249192094124205384

`∑[ogf((1-2x-3x^2)/(1-7x+10x^2))]`
-/

namespace A155588.P2249192094124205384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -3] [1, -7, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155588.P2249192094124205384

namespace A155588

/-- `∑[ogf((1-2x-3x^2)/(1-7x+10x^2))]` -/
def P2249192094124205384.Spec : Prop :=
  ∀ n, P2249192094124205384.a n = A155588 n

end A155588

/-! ## A155588.P3620626258017889741

`xor(-(2^n+5^n), -1)`
-/

namespace A155588.P3620626258017889741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 ^ n + 5 ^ n : ℤ)) (-1)

end

end A155588.P3620626258017889741

namespace A155588

/-- `xor(-(2^n+5^n), -1)` -/
def P3620626258017889741.Spec : Prop :=
  ∀ n, P3620626258017889741.a n = A155588 n

end A155588

/-! ## A155588.P7248570587805214272

`abs(2-A074501(n))`
-/

namespace A155588.P7248570587805214272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074501 n|

end

end A155588.P7248570587805214272

namespace A155588

/-- `abs(2-A074501(n))` -/
def P7248570587805214272.Spec : Prop :=
  ∀ n, P7248570587805214272.a n = A155588 n

end A155588

/-! ## A155588.P17752450695314122372

`lcm(A024049(n)+2^n, (-1)^n)`
-/

namespace A155588.P17752450695314122372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024049 n + (2 ^ n : ℤ)) ((-1) ^ n)

end

end A155588.P17752450695314122372

namespace A155588

/-- `lcm(A024049(n)+2^n, (-1)^n)` -/
def P17752450695314122372.Spec : Prop :=
  ∀ n, (P17752450695314122372.a n : ℤ) = A155588 n

end A155588

/-! ## A155588.P10235768325944089853

`∑[A131577(n)+A005054(n)]`
-/

namespace A155588.P10235768325944089853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155588.P10235768325944089853

namespace A155588

/-- `∑[A131577(n)+A005054(n)]` -/
def P10235768325944089853.Spec : Prop :=
  ∀ n, P10235768325944089853.a n = A155588 n

end A155588

/-! ## A155588.P2524583406044770375

`abs(A034474(n)+A000225(n)-1)`
-/

namespace A155588.P2524583406044770375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n + (A000225 n - 1)|

end

end A155588.P2524583406044770375

namespace A155588

/-- `abs(A034474(n)+A000225(n)-1)` -/
def P2524583406044770375.Spec : Prop :=
  ∀ n, P2524583406044770375.a n = A155588 n

end A155588

/-! ## A155588.P7918777909239415748

`abs(A028243(n+1)-A135160(n))`
-/

namespace A155588.P7918777909239415748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028243 (n + 1) - A135160 n|

end

end A155588.P7918777909239415748

namespace A155588

/-- `abs(A028243(n+1)-A135160(n))` -/
def P7918777909239415748.Spec : Prop :=
  ∀ n, P7918777909239415748.a n = A155588 n

end A155588

/-! ## A155588.P10540388091976469643

`abs(2-(A155596(n)+A155559(n+1)))`
-/

namespace A155588.P10540388091976469643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A155596 n + A155559 (n + 1))|

end

end A155588.P10540388091976469643

namespace A155588

/-- `abs(2-(A155596(n)+A155559(n+1)))` -/
def P10540388091976469643.Spec : Prop :=
  ∀ n, P10540388091976469643.a n = A155588 n

end A155588

/-! ## A155588.P18156952790917078540

`abs(1-(A104745(n)+A000079(n)-n))`
-/

namespace A155588.P18156952790917078540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A104745 n + A000079 n - (n : ℤ))|

end

end A155588.P18156952790917078540

namespace A155588

/-- `abs(1-(A104745(n)+A000079(n)-n))` -/
def P18156952790917078540.Spec : Prop :=
  ∀ n, P18156952790917078540.a n = A155588 n

end A155588

/-! ## A155588.P13400729401107569146

`Δ[A003463(n)+A000295(n)]`
-/

namespace A155588.P13400729401107569146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155588.P13400729401107569146

namespace A155588

/-- `Δ[A003463(n)+A000295(n)]` -/
def P13400729401107569146.Spec : Prop :=
  ∀ n, P13400729401107569146.a n = A155588 n

end A155588

/-! ## A155588.P8101904822748157250

`abs(A155592(n)-A191468(n))`
-/

namespace A155588.P8101904822748157250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155592 n - A191468 n|

end

end A155588.P8101904822748157250

namespace A155588

/-- `abs(A155592(n)-A191468(n))` -/
def P8101904822748157250.Spec : Prop :=
  ∀ n, P8101904822748157250.a n = A155588 n

end A155588

/-! ## A155588.P1126503068368397053

`record[A230445(n)+A191702(n+1)]`
-/

namespace A155588.P1126503068368397053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n + A191702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155588.P1126503068368397053

namespace A155588

/-- `record[A230445(n)+A191702(n+1)]` -/
def P1126503068368397053.Spec : Prop :=
  ∀ n, P1126503068368397053.a n = A155588 n

end A155588

/-!
# A155589: a(n) = 6^n + 2^n - 1.

The programs for A155589, the canonical program `A155589.P17710979720063210091` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155589 has offset 0).

The definition of A155589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+2^n-1` (program `A155589.P17710979720063210091`, by `A155589.P17710979720063210091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155589.P17710979720063210091

`6^n+2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155589

/-- `6^n+2^n-1` -/
def P17710979720063210091.Spec : Prop :=
  ∀ n, P17710979720063210091.a n = A155589 n

theorem P17710979720063210091.correct : P17710979720063210091.Spec := by
  intro n
  simp only [A155589]

end A155589

/-! ## A155589.P9420656630917012352

`or(6^n, ∑[2^n])`
-/

namespace A155589.P9420656630917012352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (6 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155589.P9420656630917012352

namespace A155589

/-- `or(6^n, ∑[2^n])` -/
def P9420656630917012352.Spec : Prop :=
  ∀ n, (P9420656630917012352.a n : ℤ) = A155589 n

end A155589

/-! ## A155589.P7299228983220794294

`xor(2^n-1, 6^n)`
-/

namespace A155589.P7299228983220794294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) (6 ^ n : ℤ)

end

end A155589.P7299228983220794294

namespace A155589

/-- `xor(2^n-1, 6^n)` -/
def P7299228983220794294.Spec : Prop :=
  ∀ n, P7299228983220794294.a n = A155589 n

end A155589

/-! ## A155589.P8589508785810523429

`abs(or(2^n-1, 6^n))`
-/

namespace A155589.P8589508785810523429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((2 ^ n : ℤ) - 1) (6 ^ n : ℤ)|

end

end A155589.P8589508785810523429

namespace A155589

/-- `abs(or(2^n-1, 6^n))` -/
def P8589508785810523429.Spec : Prop :=
  ∀ n, P8589508785810523429.a n = A155589 n

end A155589

/-! ## A155589.P13737405005617983955

`abs(1-A074601(n))`
-/

namespace A155589.P13737405005617983955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074601 n|

end

end A155589.P13737405005617983955

namespace A155589

/-- `abs(1-A074601(n))` -/
def P13737405005617983955.Spec : Prop :=
  ∀ n, P13737405005617983955.a n = A155589 n

end A155589

/-! ## A155589.P7099279496542083947

`abs(2-A074502(n))`
-/

namespace A155589.P7099279496542083947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074502 n|

end

end A155589.P7099279496542083947

namespace A155589

/-- `abs(2-A074502(n))` -/
def P7099279496542083947.Spec : Prop :=
  ∀ n, P7099279496542083947.a n = A155589 n

end A155589

/-! ## A155589.P11320294318102067498

`∑[abs(Δ[A092807(n)])]`
-/

namespace A155589.P11320294318102067498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092807 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155589.P11320294318102067498

namespace A155589

/-- `∑[abs(Δ[A092807(n)])]` -/
def P11320294318102067498.Spec : Prop :=
  ∀ n, P11320294318102067498.a n = A155589 n

end A155589

/-! ## A155589.P13698335834162436135

`Δ[A003464(n)+A000295(n)]`
-/

namespace A155589.P13698335834162436135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155589.P13698335834162436135

namespace A155589

/-- `Δ[A003464(n)+A000295(n)]` -/
def P13698335834162436135.Spec : Prop :=
  ∀ n, P13698335834162436135.a n = A155589 n

end A155589

/-! ## A155589.P4280792028033074865

`∑[A074601(n)-A092807(n)]`
-/

namespace A155589.P4280792028033074865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074601 n - A092807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155589.P4280792028033074865

namespace A155589

/-- `∑[A074601(n)-A092807(n)]` -/
def P4280792028033074865.Spec : Prop :=
  ∀ n, P4280792028033074865.a n = A155589 n

end A155589

/-! ## A155589.P18053335643774174869

`∑[A052934(n)+Δ[A011782(n)]]`
-/

namespace A155589.P18053335643774174869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155589.P18053335643774174869

namespace A155589

/-- `∑[A052934(n)+Δ[A011782(n)]]` -/
def P18053335643774174869.Spec : Prop :=
  ∀ n, P18053335643774174869.a n = A155589 n

end A155589

/-! ## A155589.P13435337861551292367

`∑[A052934(n)+A034008(n+1)]`
-/

namespace A155589.P13435337861551292367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n + A034008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155589.P13435337861551292367

namespace A155589

/-- `∑[A052934(n)+A034008(n+1)]` -/
def P13435337861551292367.Spec : Prop :=
  ∀ n, P13435337861551292367.a n = A155589 n

end A155589

/-! ## A155589.P10866760509825129183

`∑[A158780(2*n)+A052934(n)]`
-/

namespace A155589.P10866760509825129183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) + A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155589.P10866760509825129183

namespace A155589

/-- `∑[A158780(2*n)+A052934(n)]` -/
def P10866760509825129183.Spec : Prop :=
  ∀ n, P10866760509825129183.a n = A155589 n

end A155589

/-! ## A155589.P13798890580170293744

`Δ[A003464(n)+A000225(n)-n]`
-/

namespace A155589.P13798890580170293744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + A000225 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155589.P13798890580170293744

namespace A155589

/-- `Δ[A003464(n)+A000225(n)-n]` -/
def P13798890580170293744.Spec : Prop :=
  ∀ n, P13798890580170293744.a n = A155589 n

end A155589

/-! ## A155589.P10522903706995151926

`Δ[A001478(n+1)+A003464(n)+A000225(n)]`
-/

namespace A155589.P10522903706995151926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A003464 n + A000225 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155589.P10522903706995151926

namespace A155589

/-- `Δ[A001478(n+1)+A003464(n)+A000225(n)]` -/
def P10522903706995151926.Spec : Prop :=
  ∀ n, P10522903706995151926.a n = A155589 n

end A155589

/-! ## A155589.P6710398121524677329

`(A074601(n)-1)%A074609(n)`
-/

namespace A155589.P6710398121524677329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074601 n - 1) (A074609 n)

end

end A155589.P6710398121524677329

namespace A155589

/-- `(A074601(n)-1)%A074609(n)` -/
def P6710398121524677329.Spec : Prop :=
  ∀ n, P6710398121524677329.a n = A155589 n

end A155589

/-!
# A155590: a(n) = 7^n + 2^n - 1.

The programs for A155590, the canonical program `A155590.P9114205197239892315` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155590 has offset 0).

The definition of A155590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+2^n-1` (program `A155590.P9114205197239892315`, by `A155590.P9114205197239892315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155590.P9114205197239892315

`7^n+2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155590

/-- `7^n+2^n-1` -/
def P9114205197239892315.Spec : Prop :=
  ∀ n, P9114205197239892315.a n = A155590 n

theorem P9114205197239892315.correct : P9114205197239892315.Spec := by
  intro n
  simp only [A155590]

end A155590

/-! ## A155590.P6304773736879324912

`abs(Δ[2^n]+xor(1, 7^n))`
-/

namespace A155590.P6304773736879324912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.xor 1 (7 ^ n) : ℤ)|

end

end A155590.P6304773736879324912

namespace A155590

/-- `abs(Δ[2^n]+xor(1, 7^n))` -/
def P6304773736879324912.Spec : Prop :=
  ∀ n, P6304773736879324912.a n = A155590 n

end A155590

/-! ## A155590.P1375428890343971588

`abs(1-A074602(n))`
-/

namespace A155590.P1375428890343971588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074602 n|

end

end A155590.P1375428890343971588

namespace A155590

/-- `abs(1-A074602(n))` -/
def P1375428890343971588.Spec : Prop :=
  ∀ n, P1375428890343971588.a n = A155590 n

end A155590

/-! ## A155590.P14568409025380369470

`abs(2-A074503(n))`
-/

namespace A155590.P14568409025380369470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074503 n|

end

end A155590.P14568409025380369470

namespace A155590

/-- `abs(2-A074503(n))` -/
def P14568409025380369470.Spec : Prop :=
  ∀ n, P14568409025380369470.a n = A155590 n

end A155590

/-! ## A155590.P2938819068042526371

`abs(7^n-(1-A000079(n)))`
-/

namespace A155590.P2938819068042526371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - (1 - A000079 n)|

end

end A155590.P2938819068042526371

namespace A155590

/-- `abs(7^n-(1-A000079(n)))` -/
def P2938819068042526371.Spec : Prop :=
  ∀ n, P2938819068042526371.a n = A155590 n

end A155590

/-! ## A155590.P9933934628270689927

`xor(4^n-A074534(n), -1)`
-/

namespace A155590.P9933934628270689927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((4 ^ n : ℤ) - A074534 n) (-1)

end

end A155590.P9933934628270689927

namespace A155590

/-- `xor(4^n-A074534(n), -1)` -/
def P9933934628270689927.Spec : Prop :=
  ∀ n, P9933934628270689927.a n = A155590 n

end A155590

/-! ## A155590.P5502967565600942962

`∑[A131577(n)+A055272(n)]`
-/

namespace A155590.P5502967565600942962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A055272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155590.P5502967565600942962

namespace A155590

/-- `∑[A131577(n)+A055272(n)]` -/
def P5502967565600942962.Spec : Prop :=
  ∀ n, P5502967565600942962.a n = A155590 n

end A155590

/-! ## A155590.P16036128136859532176

`Δ[A023000(n)+A000295(n)]`
-/

namespace A155590.P16036128136859532176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155590.P16036128136859532176

namespace A155590

/-- `Δ[A023000(n)+A000295(n)]` -/
def P16036128136859532176.Spec : Prop :=
  ∀ n, P16036128136859532176.a n = A155590 n

end A155590

/-! ## A155590.P16827575521273167427

`∑[A055272(n)+∑[A166444(n)]]`
-/

namespace A155590.P16827575521273167427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155590.P16827575521273167427

namespace A155590

/-- `∑[A055272(n)+∑[A166444(n)]]` -/
def P16827575521273167427.Spec : Prop :=
  ∀ n, P16827575521273167427.a n = A155590 n

end A155590

/-! ## A155590.P1033595691477721753

`abs(A000079(n)+A000420(n)-1)`
-/

namespace A155590.P1033595691477721753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n + (A000420 n - 1)|

end

end A155590.P1033595691477721753

namespace A155590

/-- `abs(A000079(n)+A000420(n)-1)` -/
def P1033595691477721753.Spec : Prop :=
  ∀ n, P1033595691477721753.a n = A155590 n

end A155590

/-! ## A155590.P456029415083429433

`abs(A034491(n)+A000225(n)-1)`
-/

namespace A155590.P456029415083429433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n + (A000225 n - 1)|

end

end A155590.P456029415083429433

namespace A155590

/-- `abs(A034491(n)+A000225(n)-1)` -/
def P456029415083429433.Spec : Prop :=
  ∀ n, P456029415083429433.a n = A155590 n

end A155590

/-! ## A155590.P15413888059246758628

`xor(A000244(C(2, n+2)), A074602(n))`
-/

namespace A155590.P15413888059246758628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000244 (Nat.choose 2 (n + 2))) (A074602 n)

end

end A155590.P15413888059246758628

namespace A155590

/-- `xor(A000244(C(2, n+2)), A074602(n))` -/
def P15413888059246758628.Spec : Prop :=
  ∀ n, P15413888059246758628.a n = A155590 n

end A155590

/-! ## A155590.P17361253091789997106

`xor(A074602(n), A320472(C(2, n+2)))`
-/

namespace A155590.P17361253091789997106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A074602 n) (A320472 (Nat.choose 2 (n + 2)))

end

end A155590.P17361253091789997106

namespace A155590

/-- `xor(A074602(n), A320472(C(2, n+2)))` -/
def P17361253091789997106.Spec : Prop :=
  ∀ n, P17361253091789997106.a n = A155590 n

end A155590

/-! ## A155590.P16478997350018212246

`Δ[A047852(n)+A024000(n)+A000225(n)]`
-/

namespace A155590.P16478997350018212246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + (A024000 n + A000225 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155590.P16478997350018212246

namespace A155590

/-- `Δ[A047852(n)+A024000(n)+A000225(n)]` -/
def P16478997350018212246.Spec : Prop :=
  ∀ n, P16478997350018212246.a n = A155590 n

end A155590

/-! ## A155590.P7850056041036724091

`(A198687(n)+2^n)%A208704(n+1)`
-/

namespace A155590.P7850056041036724091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198687 n + (2 ^ n : ℤ)) (A208704 (n + 1))

end

end A155590.P7850056041036724091

namespace A155590

/-- `(A198687(n)+2^n)%A208704(n+1)` -/
def P7850056041036724091.Spec : Prop :=
  ∀ n, P7850056041036724091.a n = A155590 n

end A155590

/-! ## A155590.P12262704967339549402

`(∑[A000079(n)]+A109808(n+1)-1)/2`
-/

namespace A155590.P12262704967339549402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (A109808 (n + 1) - 1) : ℤ) : ℚ) / 2

end

end A155590.P12262704967339549402

namespace A155590

/-- `(∑[A000079(n)]+A109808(n+1)-1)/2` -/
def P12262704967339549402.Spec : Prop :=
  ∀ n, P12262704967339549402.a n = (A155590 n : ℚ)

end A155590

/-!
# A155592: a(n) = 8^n+2^n-1^n.

The programs for A155592, the canonical program `A155592.P5195456742387795530` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155592 has offset 0).

The definition of A155592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+2^n-1` (program `A155592.P5195456742387795530`, by `A155592.P5195456742387795530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155592.P5195456742387795530

`8^n+2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155592

/-- `8^n+2^n-1` -/
def P5195456742387795530.Spec : Prop :=
  ∀ n, P5195456742387795530.a n = A155592 n

theorem P5195456742387795530.correct : P5195456742387795530.Spec := by
  intro n
  simp only [A155592]

end A155592

/-! ## A155592.P13010975405878825922

`or(2^n-1, 8^n)`
-/

namespace A155592.P13010975405878825922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ n : ℤ) - 1) (8 ^ n : ℤ)

end

end A155592.P13010975405878825922

namespace A155592

/-- `or(2^n-1, 8^n)` -/
def P13010975405878825922.Spec : Prop :=
  ∀ n, P13010975405878825922.a n = A155592 n

end A155592

/-! ## A155592.P6387317343540485859

`xor(2^n-1, 8^n)`
-/

namespace A155592.P6387317343540485859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) (8 ^ n : ℤ)

end

end A155592.P6387317343540485859

namespace A155592

/-- `xor(2^n-1, 8^n)` -/
def P6387317343540485859.Spec : Prop :=
  ∀ n, P6387317343540485859.a n = A155592 n

end A155592

/-! ## A155592.P9627901962549068125

`abs(1-A074603(n))`
-/

namespace A155592.P9627901962549068125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074603 n|

end

end A155592.P9627901962549068125

namespace A155592

/-- `abs(1-A074603(n))` -/
def P9627901962549068125.Spec : Prop :=
  ∀ n, P9627901962549068125.a n = A155592 n

end A155592

/-! ## A155592.P2007312746327920662

`abs(2-A074504(n))`
-/

namespace A155592.P2007312746327920662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074504 n|

end

end A155592.P2007312746327920662

namespace A155592

/-- `abs(2-A074504(n))` -/
def P2007312746327920662.Spec : Prop :=
  ∀ n, P2007312746327920662.a n = A155592 n

end A155592

/-! ## A155592.P13185304811575441038

`abs(5^n-2^n-A155635(n))`
-/

namespace A155592.P13185304811575441038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (2 ^ n : ℤ) - A155635 n|

end

end A155592.P13185304811575441038

namespace A155592

/-- `abs(5^n-2^n-A155635(n))` -/
def P13185304811575441038.Spec : Prop :=
  ∀ n, P13185304811575441038.a n = A155592 n

end A155592

/-! ## A155592.P5596521150613635443

`abs(A034472(n)-A074530(n))`
-/

namespace A155592.P5596521150613635443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034472 n - A074530 n|

end

end A155592.P5596521150613635443

namespace A155592

/-- `abs(A034472(n)-A074530(n))` -/
def P5596521150613635443.Spec : Prop :=
  ∀ n, P5596521150613635443.a n = A155592 n

end A155592

/-! ## A155592.P9334398100915986930

`and(-A155599(n), A155619(n))`
-/

namespace A155592.P9334398100915986930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A155599 n) (A155619 n)

end

end A155592.P9334398100915986930

namespace A155592

/-- `and(-A155599(n), A155619(n))` -/
def P9334398100915986930.Spec : Prop :=
  ∀ n, P9334398100915986930.a n = A155592 n

end A155592

/-! ## A155592.P1630992338848214186

`∑[A131577(n)+A055274(n)]`
-/

namespace A155592.P1630992338848214186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A055274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155592.P1630992338848214186

namespace A155592

/-- `∑[A131577(n)+A055274(n)]` -/
def P1630992338848214186.Spec : Prop :=
  ∀ n, P1630992338848214186.a n = A155592 n

end A155592

/-! ## A155592.P4167215604372653813

`Δ[A023001(n)+A000295(n)]`
-/

namespace A155592.P4167215604372653813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155592.P4167215604372653813

namespace A155592

/-- `Δ[A023001(n)+A000295(n)]` -/
def P4167215604372653813.Spec : Prop :=
  ∀ n, P4167215604372653813.a n = A155592 n

end A155592

/-!
# A155593: a(n) = 9^n + 2^n - 1.

The programs for A155593, the canonical program `A155593.P1442951020438496343` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155593 has offset 0).

The definition of A155593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+2^n-1` (program `A155593.P1442951020438496343`, by `A155593.P1442951020438496343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155593.P1442951020438496343

`9^n+2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155593

/-- `9^n+2^n-1` -/
def P1442951020438496343.Spec : Prop :=
  ∀ n, P1442951020438496343.a n = A155593 n

theorem P1442951020438496343.correct : P1442951020438496343.Spec := by
  intro n
  simp only [A155593]

end A155593

/-! ## A155593.P2673805649450941843

`abs(1-A074604(n))`
-/

namespace A155593.P2673805649450941843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074604 n|

end

end A155593.P2673805649450941843

namespace A155593

/-- `abs(1-A074604(n))` -/
def P2673805649450941843.Spec : Prop :=
  ∀ n, P2673805649450941843.a n = A155593 n

end A155593

/-! ## A155593.P15515615136311445308

`abs(2-A074505(n))`
-/

namespace A155593.P15515615136311445308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074505 n|

end

end A155593.P15515615136311445308

namespace A155593

/-- `abs(2-A074505(n))` -/
def P15515615136311445308.Spec : Prop :=
  ∀ n, P15515615136311445308.a n = A155593 n

end A155593

/-! ## A155593.P18055909283584021617

`Δ[A002452(n)+A000295(n)]`
-/

namespace A155593.P18055909283584021617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155593.P18055909283584021617

namespace A155593

/-- `Δ[A002452(n)+A000295(n)]` -/
def P18055909283584021617.Spec : Prop :=
  ∀ n, P18055909283584021617.a n = A155593 n

end A155593

/-! ## A155593.P1844936077888901317

`lcm(1-A074604(n), A000034(n))`
-/

namespace A155593.P1844936077888901317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A074604 n) (A000034 n)

end

end A155593.P1844936077888901317

namespace A155593

/-- `lcm(1-A074604(n), A000034(n))` -/
def P1844936077888901317.Spec : Prop :=
  ∀ n, (P1844936077888901317.a n : ℤ) = A155593 n

end A155593

/-! ## A155593.P10349173328665602169

`abs(A000225(n)+Δ[A002452(n)])`
-/

namespace A155593.P10349173328665602169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n + (f1 (n + 1) - f1 n)|

end

end A155593.P10349173328665602169

namespace A155593

/-- `abs(A000225(n)+Δ[A002452(n)])` -/
def P10349173328665602169.Spec : Prop :=
  ∀ n, P10349173328665602169.a n = A155593 n

end A155593

/-! ## A155593.P2763221262376329800

`record[A173787(n)+A140303(n)²]`
-/

namespace A155593.P2763221262376329800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A140303 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155593.P2763221262376329800

namespace A155593

/-- `record[A173787(n)+A140303(n)²]` -/
def P2763221262376329800.Spec : Prop :=
  ∀ n, P2763221262376329800.a n = A155593 n

end A155593

/-! ## A155593.P9330373332797423895

`∑[A055275(n)+∑[A166444(n)]]`
-/

namespace A155593.P9330373332797423895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155593.P9330373332797423895

namespace A155593

/-- `∑[A055275(n)+∑[A166444(n)]]` -/
def P9330373332797423895.Spec : Prop :=
  ∀ n, P9330373332797423895.a n = A155593 n

end A155593

/-! ## A155593.P2645324260685945742

`ceil(A155600(2*n)/A155600(n))`
-/

namespace A155593.P2645324260685945742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155600 (2 * n) : ℚ) / (A155600 n : ℚ)⌉

end

end A155593.P2645324260685945742

namespace A155593

/-- `ceil(A155600(2*n)/A155600(n))` -/
def P2645324260685945742.Spec : Prop :=
  ∀ n, P2645324260685945742.a n = A155593 n

end A155593

/-!
# A155594: a(n) = 10^n+2^n-1.

The programs for A155594, the canonical program `A155594.P7210869866837828244` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155594 has offset 0).

The definition of A155594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+2^n-1` (program `A155594.P7210869866837828244`, by `A155594.P7210869866837828244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155594.P7210869866837828244

`10^n+2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155594

/-- `10^n+2^n-1` -/
def P7210869866837828244.Spec : Prop :=
  ∀ n, P7210869866837828244.a n = A155594 n

theorem P7210869866837828244.correct : P7210869866837828244.Spec := by
  intro n
  simp only [A155594]

end A155594

/-! ## A155594.P15868726780773309920

`or(10^n, ∑[2^n])`
-/

namespace A155594.P15868726780773309920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (10 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155594.P15868726780773309920

namespace A155594

/-- `or(10^n, ∑[2^n])` -/
def P15868726780773309920.Spec : Prop :=
  ∀ n, (P15868726780773309920.a n : ℤ) = A155594 n

end A155594

/-! ## A155594.P18276473935030038245

`xor(2^n-1, 10^n)`
-/

namespace A155594.P18276473935030038245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) (10 ^ n : ℤ)

end

end A155594.P18276473935030038245

namespace A155594

/-- `xor(2^n-1, 10^n)` -/
def P18276473935030038245.Spec : Prop :=
  ∀ n, P18276473935030038245.a n = A155594 n

end A155594

/-! ## A155594.P16355991444176878264

`abs(or(2^n-1, 10^n))`
-/

namespace A155594.P16355991444176878264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((2 ^ n : ℤ) - 1) (10 ^ n : ℤ)|

end

end A155594.P16355991444176878264

namespace A155594

/-- `abs(or(2^n-1, 10^n))` -/
def P16355991444176878264.Spec : Prop :=
  ∀ n, P16355991444176878264.a n = A155594 n

end A155594

/-! ## A155594.P5770716166212403143

`abs(1-A050621(n+1))`
-/

namespace A155594.P5770716166212403143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A050621 (n + 1)|

end

end A155594.P5770716166212403143

namespace A155594

/-- `abs(1-A050621(n+1))` -/
def P5770716166212403143.Spec : Prop :=
  ∀ n, P5770716166212403143.a n = A155594 n

end A155594

/-! ## A155594.P2751550530370816881

`abs(A002283(n)+Δ[A000225(n)])`
-/

namespace A155594.P2751550530370816881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002283 n + (f1 (n + 1) - f1 n)|

end

end A155594.P2751550530370816881

namespace A155594

/-- `abs(A002283(n)+Δ[A000225(n)])` -/
def P2751550530370816881.Spec : Prop :=
  ∀ n, P2751550530370816881.a n = A155594 n

end A155594

/-! ## A155594.P13894193876760525166

`record[A050621(A331181(n+1))-1]`
-/

namespace A155594.P13894193876760525166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050621 (A331181 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155594.P13894193876760525166

namespace A155594

/-- `record[A050621(A331181(n+1))-1]` -/
def P13894193876760525166.Spec : Prop :=
  ∀ n, P13894193876760525166.a n = A155594 n

end A155594

/-! ## A155594.P2946760364272075720

`record[A050621(A331182(n+1))-1]`
-/

namespace A155594.P2946760364272075720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050621 (A331182 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155594.P2946760364272075720

namespace A155594

/-- `record[A050621(A331182(n+1))-1]` -/
def P2946760364272075720.Spec : Prop :=
  ∀ n, P2946760364272075720.a n = A155594 n

end A155594

/-! ## A155594.P3710092856129774255

`record[A055237(n)*A055248(n)-1]`
-/

namespace A155594.P3710092856129774255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 n * A055248 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155594.P3710092856129774255

namespace A155594

/-- `record[A055237(n)*A055248(n)-1]` -/
def P3710092856129774255.Spec : Prop :=
  ∀ n, P3710092856129774255.a n = A155594 n

end A155594

/-! ## A155594.P786535959467549633

`Δ[A002275(n)+A000295(n)]`
-/

namespace A155594.P786535959467549633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155594.P786535959467549633

namespace A155594

/-- `Δ[A002275(n)+A000295(n)]` -/
def P786535959467549633.Spec : Prop :=
  ∀ n, P786535959467549633.a n = A155594 n

end A155594

/-! ## A155594.P15720728767243018159

`Δ[A002275(n)+A000325(n)]`
-/

namespace A155594.P15720728767243018159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + A000325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155594.P15720728767243018159

namespace A155594

/-- `Δ[A002275(n)+A000325(n)]` -/
def P15720728767243018159.Spec : Prop :=
  ∀ n, P15720728767243018159.a n = A155594 n

end A155594

/-! ## A155594.P4528346941420359183

`Δ[A047855(n)+A000295(n)]`
-/

namespace A155594.P4528346941420359183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155594.P4528346941420359183

namespace A155594

/-- `Δ[A047855(n)+A000295(n)]` -/
def P4528346941420359183.Spec : Prop :=
  ∀ n, P4528346941420359183.a n = A155594 n

end A155594

/-! ## A155594.P5864996538860529495

`record[A052551(n)+Δ[A289404(n)]]`
-/

namespace A155594.P5864996538860529495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155594.P5864996538860529495

namespace A155594

/-- `record[A052551(n)+Δ[A289404(n)]]` -/
def P5864996538860529495.Spec : Prop :=
  ∀ n, P5864996538860529495.a n = A155594 n

end A155594

/-! ## A155594.P13187683986865885221

`(A050621(n+1)-1)%A035014(n+1)`
-/

namespace A155594.P13187683986865885221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050621 (n + 1) - 1) (A035014 (n + 1))

end

end A155594.P13187683986865885221

namespace A155594

/-- `(A050621(n+1)-1)%A035014(n+1)` -/
def P13187683986865885221.Spec : Prop :=
  ∀ n, P13187683986865885221.a n = A155594 n

end A155594

/-!
# A155595: a(n) = 11^n + 2^n - 1.

The programs for A155595, the canonical program `A155595.P12468292112133480231` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155595 has offset 0).

The definition of A155595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+2^n-1` (program `A155595.P12468292112133480231`, by `A155595.P12468292112133480231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155595.P12468292112133480231

`11^n+2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155595

/-- `11^n+2^n-1` -/
def P12468292112133480231.Spec : Prop :=
  ∀ n, P12468292112133480231.a n = A155595 n

theorem P12468292112133480231.correct : P12468292112133480231.Spec := by
  intro n
  simp only [A155595]

end A155595

/-! ## A155595.P11784042904700356707

`abs(1-A000079(n)-11^n)`
-/

namespace A155595.P11784042904700356707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000079 n - (11 ^ n : ℤ)|

end

end A155595.P11784042904700356707

namespace A155595

/-- `abs(1-A000079(n)-11^n)` -/
def P11784042904700356707.Spec : Prop :=
  ∀ n, P11784042904700356707.a n = A155595 n

end A155595

/-! ## A155595.P4517362094803715375

`abs(3^n-2^n-A155623(n))`
-/

namespace A155595.P4517362094803715375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - (2 ^ n : ℤ) - A155623 n|

end

end A155595.P4517362094803715375

namespace A155595

/-- `abs(3^n-2^n-A155623(n))` -/
def P4517362094803715375.Spec : Prop :=
  ∀ n, P4517362094803715375.a n = A155595 n

end A155595

/-! ## A155595.P9514191978227773490

`abs(5^n-2^n-A155638(n))`
-/

namespace A155595.P9514191978227773490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (2 ^ n : ℤ) - A155638 n|

end

end A155595.P9514191978227773490

namespace A155595

/-- `abs(5^n-2^n-A155638(n))` -/
def P9514191978227773490.Spec : Prop :=
  ∀ n, P9514191978227773490.a n = A155595 n

end A155595

/-! ## A155595.P2327081880995020637

`abs(A024127(n)+A000918(n)+2)`
-/

namespace A155595.P2327081880995020637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024127 n + (A000918 n + 2)|

end

end A155595.P2327081880995020637

namespace A155595

/-- `abs(A024127(n)+A000918(n)+2)` -/
def P2327081880995020637.Spec : Prop :=
  ∀ n, P2327081880995020637.a n = A155595 n

end A155595

/-! ## A155595.P1860410855096016546

`abs(A034524(n)+A000051(n)-3)`
-/

namespace A155595.P1860410855096016546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034524 n + A000051 n - 3|

end

end A155595.P1860410855096016546

namespace A155595

/-- `abs(A034524(n)+A000051(n)-3)` -/
def P1860410855096016546.Spec : Prop :=
  ∀ n, P1860410855096016546.a n = A155595 n

end A155595

/-! ## A155595.P12774266674699492731

`abs(∑[2^n]-(A024014(n)-A024131(n)))`
-/

namespace A155595.P12774266674699492731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A024014 n - A024131 n)|

end

end A155595.P12774266674699492731

namespace A155595

/-- `abs(∑[2^n]-(A024014(n)-A024131(n)))` -/
def P12774266674699492731.Spec : Prop :=
  ∀ n, P12774266674699492731.a n = A155595 n

end A155595

/-! ## A155595.P15220982980742343170

`Δ[A047856(n)+A000295(n)]`
-/

namespace A155595.P15220982980742343170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047856 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155595.P15220982980742343170

namespace A155595

/-- `Δ[A047856(n)+A000295(n)]` -/
def P15220982980742343170.Spec : Prop :=
  ∀ n, P15220982980742343170.a n = A155595 n

end A155595

/-!
# A155596: a(n) = 5^n - 2^n + 1^n.

The programs for A155596, the canonical program `A155596.P8688873619706975239` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155596 has offset 0).

The definition of A155596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-2^n+1` (program `A155596.P8688873619706975239`, by `A155596.P8688873619706975239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155596.P8688873619706975239

`5^n-2^n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155596

/-- `5^n-2^n+1` -/
def P8688873619706975239.Spec : Prop :=
  ∀ n, P8688873619706975239.a n = A155596 n

theorem P8688873619706975239.correct : P8688873619706975239.Spec := by
  intro n
  simp only [A155596]

end A155596

/-! ## A155596.P17535966199142031406

`∑[ogf((1-4x+7x^2)/(1-7x+10x^2))]`
-/

namespace A155596.P17535966199142031406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 7] [1, -7, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155596.P17535966199142031406

namespace A155596

/-- `∑[ogf((1-4x+7x^2)/(1-7x+10x^2))]` -/
def P17535966199142031406.Spec : Prop :=
  ∀ n, P17535966199142031406.a n = A155596 n

end A155596

/-! ## A155596.P6516145236533433689

`-xor(5^n-2^n, -1)`
-/

namespace A155596.P6516145236533433689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((5 ^ n : ℤ) - (2 ^ n : ℤ)) (-1)

end

end A155596.P6516145236533433689

namespace A155596

/-- `-xor(5^n-2^n, -1)` -/
def P6516145236533433689.Spec : Prop :=
  ∀ n, P6516145236533433689.a n = A155596 n

end A155596

/-! ## A155596.P9993835262618885382

`abs(2^n-A034474(n))`
-/

namespace A155596.P9993835262618885382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A034474 n|

end

end A155596.P9993835262618885382

namespace A155596

/-- `abs(2^n-A034474(n))` -/
def P9993835262618885382.Spec : Prop :=
  ∀ n, P9993835262618885382.a n = A155596 n

end A155596

/-! ## A155596.P14514534771102314181

`abs(5^n-A000225(n))`
-/

namespace A155596.P14514534771102314181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A000225 n|

end

end A155596.P14514534771102314181

namespace A155596

/-- `abs(5^n-A000225(n))` -/
def P14514534771102314181.Spec : Prop :=
  ∀ n, P14514534771102314181.a n = A155596 n

end A155596

/-! ## A155596.P14358771198207708608

`abs(2^n-1-A000351(n))`
-/

namespace A155596.P14358771198207708608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A000351 n|

end

end A155596.P14358771198207708608

namespace A155596

/-- `abs(2^n-1-A000351(n))` -/
def P14358771198207708608.Spec : Prop :=
  ∀ n, P14358771198207708608.a n = A155596 n

end A155596

/-! ## A155596.P12748290256021897093

`abs(A024049(n)-(2^n-2))`
-/

namespace A155596.P12748290256021897093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024049 n - ((2 ^ n : ℤ) - 2)|

end

end A155596.P12748290256021897093

namespace A155596

/-- `abs(A024049(n)-(2^n-2))` -/
def P12748290256021897093.Spec : Prop :=
  ∀ n, P12748290256021897093.a n = A155596 n

end A155596

/-! ## A155596.P18135321234636434680

`abs(5^n-(A000079(n)-1))`
-/

namespace A155596.P18135321234636434680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (A000079 n - 1)|

end

end A155596.P18135321234636434680

namespace A155596

/-- `abs(5^n-(A000079(n)-1))` -/
def P18135321234636434680.Spec : Prop :=
  ∀ n, P18135321234636434680.a n = A155596 n

end A155596

/-! ## A155596.P1442562911797124263

`abs(A171559(n)-1-5^n)`
-/

namespace A155596.P1442562911797124263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171559 n - 1 - (5 ^ n : ℤ)|

end

end A155596.P1442562911797124263

namespace A155596

/-- `abs(A171559(n)-1-5^n)` -/
def P1442562911797124263.Spec : Prop :=
  ∀ n, P1442562911797124263.a n = A155596 n

end A155596

/-! ## A155596.P2194993626119197253

`∑[A005054(n)-A131577(n)]`
-/

namespace A155596.P2194993626119197253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155596.P2194993626119197253

namespace A155596

/-- `∑[A005054(n)-A131577(n)]` -/
def P2194993626119197253.Spec : Prop :=
  ∀ n, P2194993626119197253.a n = A155596 n

end A155596

/-! ## A155596.P8488412135768306656

`lcm(A005057(n)+1, A257075(n))`
-/

namespace A155596.P8488412135768306656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005057 n + 1) (A257075 n)

end

end A155596.P8488412135768306656

namespace A155596

/-- `lcm(A005057(n)+1, A257075(n))` -/
def P8488412135768306656.Spec : Prop :=
  ∀ n, (P8488412135768306656.a n : ℤ) = A155596 n

end A155596

/-! ## A155596.P8817856669683740167

`Δ[A003463(n)-A000295(n)]`
-/

namespace A155596.P8817856669683740167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155596.P8817856669683740167

namespace A155596

/-- `Δ[A003463(n)-A000295(n)]` -/
def P8817856669683740167.Spec : Prop :=
  ∀ n, P8817856669683740167.a n = A155596 n

end A155596

/-! ## A155596.P4279858924160512040

`record[A227076(n)-A023758(n+1)]`
-/

namespace A155596.P4279858924160512040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n - A023758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155596.P4279858924160512040

namespace A155596

/-- `record[A227076(n)-A023758(n+1)]` -/
def P4279858924160512040.Spec : Prop :=
  ∀ n, P4279858924160512040.a n = A155596 n

end A155596

/-! ## A155596.P995125529182292197

`record[A152568(n)+1-A152572(n)]`
-/

namespace A155596.P995125529182292197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152568 n + (1 - A152572 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155596.P995125529182292197

namespace A155596

/-- `record[A152568(n)+1-A152572(n)]` -/
def P995125529182292197.Spec : Prop :=
  ∀ n, P995125529182292197.a n = A155596 n

end A155596

/-! ## A155596.P9373203182229809522

`(10^n)%(5^n+1)`
-/

namespace A155596.P9373203182229809522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n % (5 ^ n + 1)

end

end A155596.P9373203182229809522

namespace A155596

/-- `(10^n)%(5^n+1)` -/
def P9373203182229809522.Spec : Prop :=
  ∀ n, (P9373203182229809522.a n : ℤ) = A155596 n

end A155596

/-! ## A155596.P5455929523370666217

`(A248338(n)+A000079(n))/A000079(n)`
-/

namespace A155596.P5455929523370666217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248338 n + A000079 n : ℚ) / (A000079 n : ℚ)

end

end A155596.P5455929523370666217

namespace A155596

/-- `(A248338(n)+A000079(n))/A000079(n)` -/
def P5455929523370666217.Spec : Prop :=
  ∀ n, P5455929523370666217.a n = (A155596 n : ℚ)

end A155596

/-! ## A155596.P17276539405940825940

`record[A191702(n+1)-A230445(n)]`
-/

namespace A155596.P17276539405940825940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (n + 1) - A230445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155596.P17276539405940825940

namespace A155596

/-- `record[A191702(n+1)-A230445(n)]` -/
def P17276539405940825940.Spec : Prop :=
  ∀ n, P17276539405940825940.a n = A155596 n

end A155596

/-! ## A155596.P14256702276678821717

`record[A191702(n+1)-A023758(n+1)]`
-/

namespace A155596.P14256702276678821717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (n + 1) - A023758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155596.P14256702276678821717

namespace A155596

/-- `record[A191702(n+1)-A023758(n+1)]` -/
def P14256702276678821717.Spec : Prop :=
  ∀ n, P14256702276678821717.a n = A155596 n

end A155596

/-!
# A155597: a(n) = 6^n - 2^n + 1.

The programs for A155597, the canonical program `A155597.P8396953069529146360` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155597 has offset 0).

The definition of A155597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-2^n+1` (program `A155597.P8396953069529146360`, by `A155597.P8396953069529146360.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155597.P8396953069529146360

`6^n-2^n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155597

/-- `6^n-2^n+1` -/
def P8396953069529146360.Spec : Prop :=
  ∀ n, P8396953069529146360.a n = A155597 n

theorem P8396953069529146360.correct : P8396953069529146360.Spec := by
  intro n
  simp only [A155597]

end A155597

/-! ## A155597.P11680499645046576283

`or(1, 6^n-2^n)`
-/

namespace A155597.P11680499645046576283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((6 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A155597.P11680499645046576283

namespace A155597

/-- `or(1, 6^n-2^n)` -/
def P11680499645046576283.Spec : Prop :=
  ∀ n, P11680499645046576283.a n = A155597 n

end A155597

/-! ## A155597.P16322021808241888203

`xor(1, 6^n-2^n)`
-/

namespace A155597.P16322021808241888203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((6 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A155597.P16322021808241888203

namespace A155597

/-- `xor(1, 6^n-2^n)` -/
def P16322021808241888203.Spec : Prop :=
  ∀ n, P16322021808241888203.a n = A155597 n

end A155597

/-! ## A155597.P3757658569372675103

`abs(2^n-A062394(n))`
-/

namespace A155597.P3757658569372675103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A062394 n|

end

end A155597.P3757658569372675103

namespace A155597

/-- `abs(2^n-A062394(n))` -/
def P3757658569372675103.Spec : Prop :=
  ∀ n, P3757658569372675103.a n = A155597 n

end A155597

/-! ## A155597.P13313368189059813340

`abs(6^n-A000225(n))`
-/

namespace A155597.P13313368189059813340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - A000225 n|

end

end A155597.P13313368189059813340

namespace A155597

/-- `abs(6^n-A000225(n))` -/
def P13313368189059813340.Spec : Prop :=
  ∀ n, P13313368189059813340.a n = A155597 n

end A155597

/-! ## A155597.P9826793218542091483

`abs(1-(2^n-A000400(n)))`
-/

namespace A155597.P9826793218542091483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((2 ^ n : ℤ) - A000400 n)|

end

end A155597.P9826793218542091483

namespace A155597

/-- `abs(1-(2^n-A000400(n)))` -/
def P9826793218542091483.Spec : Prop :=
  ∀ n, P9826793218542091483.a n = A155597 n

end A155597

/-! ## A155597.P17504876939745727421

`abs(1-(A000079(n)-6^n))`
-/

namespace A155597.P17504876939745727421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000079 n - (6 ^ n : ℤ))|

end

end A155597.P17504876939745727421

namespace A155597

/-- `abs(1-(A000079(n)-6^n))` -/
def P17504876939745727421.Spec : Prop :=
  ∀ n, P17504876939745727421.a n = A155597 n

end A155597

/-! ## A155597.P17740648219562975408

`∑[A052934(n)-floor(2^(n-1))]`
-/

namespace A155597.P17740648219562975408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155597.P17740648219562975408

namespace A155597

/-- `∑[A052934(n)-floor(2^(n-1))]` -/
def P17740648219562975408.Spec : Prop :=
  ∀ n, P17740648219562975408.a n = A155597 n

end A155597

/-! ## A155597.P7942778157791519459

`Δ[A003464(n)-A000295(n)]`
-/

namespace A155597.P7942778157791519459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155597.P7942778157791519459

namespace A155597

/-- `Δ[A003464(n)-A000295(n)]` -/
def P7942778157791519459.Spec : Prop :=
  ∀ n, P7942778157791519459.a n = A155597 n

end A155597

/-! ## A155597.P2080554313021952552

`∑[A000079(n)*A060816(n)]`
-/

namespace A155597.P2080554313021952552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A060816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155597.P2080554313021952552

namespace A155597

/-- `∑[A000079(n)*A060816(n)]` -/
def P2080554313021952552.Spec : Prop :=
  ∀ n, P2080554313021952552.a n = A155597 n

end A155597

/-! ## A155597.P14379246437312868941

`∑[∑[A011782(n)]*A060816(n)]`
-/

namespace A155597.P14379246437312868941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A060816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155597.P14379246437312868941

namespace A155597

/-- `∑[∑[A011782(n)]*A060816(n)]` -/
def P14379246437312868941.Spec : Prop :=
  ∀ n, P14379246437312868941.a n = A155597 n

end A155597

/-! ## A155597.P12570969733964164523

`ceil(A049294(n)/3)`
-/

namespace A155597.P12570969733964164523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049294 n : ℚ) / 3⌉

end

end A155597.P12570969733964164523

namespace A155597

/-- `ceil(A049294(n)/3)` -/
def P12570969733964164523.Spec : Prop :=
  ∀ n, P12570969733964164523.a n = A155597 n

end A155597

/-! ## A155597.P6742648701885195155

`and(A155599(n), A155646(n))`
-/

namespace A155597.P6742648701885195155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155599 n) (A155646 n)

end

end A155597.P6742648701885195155

namespace A155597

/-- `and(A155599(n), A155646(n))` -/
def P6742648701885195155.Spec : Prop :=
  ∀ n, P6742648701885195155.a n = A155597 n

end A155597

/-! ## A155597.P680727532113269780

`(A074620(n)+1)%A074603(n)`
-/

namespace A155597.P680727532113269780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074620 n + 1) (A074603 n)

end

end A155597.P680727532113269780

namespace A155597

/-- `(A074620(n)+1)%A074603(n)` -/
def P680727532113269780.Spec : Prop :=
  ∀ n, P680727532113269780.a n = A155597 n

end A155597

/-!
# A155598: a(n) = 7^n-2^n+1.

The programs for A155598, the canonical program `A155598.P11403342762458531487` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155598 has offset 0).

The definition of A155598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-2^n+1` (program `A155598.P11403342762458531487`, by `A155598.P11403342762458531487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155598.P11403342762458531487

`7^n-2^n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155598

/-- `7^n-2^n+1` -/
def P11403342762458531487.Spec : Prop :=
  ∀ n, P11403342762458531487.a n = A155598 n

theorem P11403342762458531487.correct : P11403342762458531487.Spec := by
  intro n
  simp only [A155598]

end A155598

/-! ## A155598.P15405608620722893150

`abs(2^n-A034491(n))`
-/

namespace A155598.P15405608620722893150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A034491 n|

end

end A155598.P15405608620722893150

namespace A155598

/-- `abs(2^n-A034491(n))` -/
def P15405608620722893150.Spec : Prop :=
  ∀ n, P15405608620722893150.a n = A155598 n

end A155598

/-! ## A155598.P14271375798913555957

`abs(7^n-A000225(n))`
-/

namespace A155598.P14271375798913555957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - A000225 n|

end

end A155598.P14271375798913555957

namespace A155598

/-- `abs(7^n-A000225(n))` -/
def P14271375798913555957.Spec : Prop :=
  ∀ n, P14271375798913555957.a n = A155598 n

end A155598

/-! ## A155598.P14097753730813451008

`abs(2^n-1-A000420(n))`
-/

namespace A155598.P14097753730813451008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A000420 n|

end

end A155598.P14097753730813451008

namespace A155598

/-- `abs(2^n-1-A000420(n))` -/
def P14097753730813451008.Spec : Prop :=
  ∀ n, P14097753730813451008.a n = A155598 n

end A155598

/-! ## A155598.P17148640124544140977

`∑[A055272(n)-floor(2^(n-1))]`
-/

namespace A155598.P17148640124544140977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155598.P17148640124544140977

namespace A155598

/-- `∑[A055272(n)-floor(2^(n-1))]` -/
def P17148640124544140977.Spec : Prop :=
  ∀ n, P17148640124544140977.a n = A155598 n

end A155598

/-! ## A155598.P12600371398427757396

`Δ[A023000(n)-A000295(n)]`
-/

namespace A155598.P12600371398427757396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155598.P12600371398427757396

namespace A155598

/-- `Δ[A023000(n)-A000295(n)]` -/
def P12600371398427757396.Spec : Prop :=
  ∀ n, P12600371398427757396.a n = A155598 n

end A155598

/-! ## A155598.P13680160077485516146

`Δ[A047852(n)-(A024000(n)+A000225(n))]`
-/

namespace A155598.P13680160077485516146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n - (A024000 n + A000225 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155598.P13680160077485516146

namespace A155598

/-- `Δ[A047852(n)-(A024000(n)+A000225(n))]` -/
def P13680160077485516146.Spec : Prop :=
  ∀ n, P13680160077485516146.a n = A155598 n

end A155598

/-! ## A155598.P18146335220304800221

`(A190540(n)+1)*A014963(A000217(n+6))`
-/

namespace A155598.P18146335220304800221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190540 n + 1) * A014963 (A000217 (n + 6)).toNat

end

end A155598.P18146335220304800221

namespace A155598

/-- `(A190540(n)+1)*A014963(A000217(n+6))` -/
def P18146335220304800221.Spec : Prop :=
  ∀ n, P18146335220304800221.a n = A155598 n

end A155598

/-! ## A155598.P2607257763373355863

`A208704(n+1)%(A198647(n)+2^n)`
-/

namespace A155598.P2607257763373355863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208704 (n + 1)) (A198647 n + (2 ^ n : ℤ))

end

end A155598.P2607257763373355863

namespace A155598

/-- `A208704(n+1)%(A198647(n)+2^n)` -/
def P2607257763373355863.Spec : Prop :=
  ∀ n, P2607257763373355863.a n = A155598 n

end A155598

/-! ## A155598.P1609053724738844680

`(14^n)%(7^n+1)`
-/

namespace A155598.P1609053724738844680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ n % (7 ^ n + 1)

end

end A155598.P1609053724738844680

namespace A155598

/-- `(14^n)%(7^n+1)` -/
def P1609053724738844680.Spec : Prop :=
  ∀ n, (P1609053724738844680.a n : ℤ) = A155598 n

end A155598

/-!
# A155599: a(n) = 8^n - 2^n + 1^n.

The programs for A155599, the canonical program `A155599.P14257603641218183126` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155599 has offset 0).

The definition of A155599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-2^n+1` (program `A155599.P14257603641218183126`, by `A155599.P14257603641218183126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155599.P14257603641218183126

`8^n-2^n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155599

/-- `8^n-2^n+1` -/
def P14257603641218183126.Spec : Prop :=
  ∀ n, P14257603641218183126.a n = A155599 n

theorem P14257603641218183126.correct : P14257603641218183126.Spec := by
  intro n
  simp only [A155599]

end A155599

/-! ## A155599.P5251417904498793500

`or(1, 8^n-2^n)`
-/

namespace A155599.P5251417904498793500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((8 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A155599.P5251417904498793500

namespace A155599

/-- `or(1, 8^n-2^n)` -/
def P5251417904498793500.Spec : Prop :=
  ∀ n, P5251417904498793500.a n = A155599 n

end A155599

/-! ## A155599.P18047547690076746280

`xor(1, 8^n-2^n)`
-/

namespace A155599.P18047547690076746280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((8 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A155599.P18047547690076746280

namespace A155599

/-- `xor(1, 8^n-2^n)` -/
def P18047547690076746280.Spec : Prop :=
  ∀ n, P18047547690076746280.a n = A155599 n

end A155599

/-! ## A155599.P9977562223314809177

`abs(2^n-A062395(n))`
-/

namespace A155599.P9977562223314809177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A062395 n|

end

end A155599.P9977562223314809177

namespace A155599

/-- `abs(2^n-A062395(n))` -/
def P9977562223314809177.Spec : Prop :=
  ∀ n, P9977562223314809177.a n = A155599 n

end A155599

/-! ## A155599.P15484982843972053930

`abs(8^n-A000225(n))`
-/

namespace A155599.P15484982843972053930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 ^ n : ℤ) - A000225 n|

end

end A155599.P15484982843972053930

namespace A155599

/-- `abs(8^n-A000225(n))` -/
def P15484982843972053930.Spec : Prop :=
  ∀ n, P15484982843972053930.a n = A155599 n

end A155599

/-! ## A155599.P1378841283455961401

`abs(2^n-1-A001018(n))`
-/

namespace A155599.P1378841283455961401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A001018 n|

end

end A155599.P1378841283455961401

namespace A155599

/-- `abs(2^n-1-A001018(n))` -/
def P1378841283455961401.Spec : Prop :=
  ∀ n, P1378841283455961401.a n = A155599 n

end A155599

/-! ## A155599.P9191202751723611959

`∑[A055274(n)-A131577(n)]`
-/

namespace A155599.P9191202751723611959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155599.P9191202751723611959

namespace A155599

/-- `∑[A055274(n)-A131577(n)]` -/
def P9191202751723611959.Spec : Prop :=
  ∀ n, P9191202751723611959.a n = A155599 n

end A155599

/-! ## A155599.P8755516505658912225

`Δ[A023001(n)-A000295(n)]`
-/

namespace A155599.P8755516505658912225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155599.P8755516505658912225

namespace A155599

/-- `Δ[A023001(n)-A000295(n)]` -/
def P8755516505658912225.Spec : Prop :=
  ∀ n, P8755516505658912225.a n = A155599 n

end A155599

/-! ## A155599.P15418447986984928353

`record[1-(A137688(n)-A305561(A099375(n)))]`
-/

namespace A155599.P15418447986984928353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A137688 n - A305561 (A099375 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155599.P15418447986984928353

namespace A155599

/-- `record[1-(A137688(n)-A305561(A099375(n)))]` -/
def P15418447986984928353.Spec : Prop :=
  ∀ n, P15418447986984928353.a n = A155599 n

end A155599

/-! ## A155599.P1825221680554086461

`ceil(A009976(n)/A000051(2*n))`
-/

namespace A155599.P1825221680554086461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A009976 n : ℚ) / (A000051 (2 * n) : ℚ)⌉

end

end A155599.P1825221680554086461

namespace A155599

/-- `ceil(A009976(n)/A000051(2*n))` -/
def P1825221680554086461.Spec : Prop :=
  ∀ n, P1825221680554086461.a n = A155599 n

end A155599

