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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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

/-!
# A024600: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (odd natural numbers), t = A001950 (upper Wythoff sequence).

The programs for A024600, there is no canonical definition to state claims against.
-/

/-! ## A024600.P13401877455279905857

`A059268(n)*A102399(A080376(n+1))`
-/

namespace A024600.P13401877455279905857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A102399 (A080376 (n + 1)).toNat

end

end A024600.P13401877455279905857

/-!
# A024601: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (odd natural numbers), t = A023533.

The programs for A024601, there is no canonical definition to state claims against.
-/

/-! ## A024601.P5098485042658283932

`A008619(n)²-A024602(n+1)`
-/

namespace A024601.P5098485042658283932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A024602 (n + 1)

end

end A024601.P5098485042658283932

/-! ## A024601.P3317100967284644135

`A346004(or(1, n))-A024602(n+1)`
-/

namespace A024601.P3317100967284644135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346004 (Nat.lor 1 n) - A024602 (n + 1)

end

end A024601.P3317100967284644135

/-! ## A024601.P3280902113784283662

`(A004526(n)+1)²-A024602(n+1)`
-/

namespace A024601.P3280902113784283662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) ^ 2 - A024602 (n + 1)

end

end A024601.P3280902113784283662

/-! ## A024601.P1824505738299391037

`∑[A193356(n+1)]-A024602(n+1)`
-/

namespace A024601.P1824505738299391037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024602 (n + 1)

end

end A024601.P1824505738299391037

/-! ## A024601.P5368590111697369788

`A008794(n+2)-A024602(n+1)`
-/

namespace A024601.P5368590111697369788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (n + 2) - A024602 (n + 1)

end

end A024601.P5368590111697369788

/-! ## A024601.P4565337623303519875

`A001057(n+1)²-A024602(n+1)`
-/

namespace A024601.P4565337623303519875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) ^ 2 - A024602 (n + 1)

end

end A024601.P4565337623303519875

/-!
# A024602: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (odd natural numbers), t = A014306.

The programs for A024602, there is no canonical definition to state claims against.
-/

/-! ## A024602.P14809599793466955842

`A008619(n)²-A024601(n+1)`
-/

namespace A024602.P14809599793466955842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A024601 (n + 1)

end

end A024602.P14809599793466955842

/-! ## A024602.P12398866978048760559

`(A004526(n)+1)²-A024601(n+1)`
-/

namespace A024602.P12398866978048760559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) ^ 2 - A024601 (n + 1)

end

end A024602.P12398866978048760559

/-! ## A024602.P2439757446230065806

`A110654(n+1)²-A024601(n+1)`
-/

namespace A024602.P2439757446230065806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) ^ 2 - A024601 (n + 1)

end

end A024602.P2439757446230065806

/-! ## A024602.P17094219302903534850

`∑[A193356(n+1)]-A024601(n+1)`
-/

namespace A024602.P17094219302903534850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024601 (n + 1)

end

end A024602.P17094219302903534850

/-! ## A024602.P609081234242529011

`A008794(n+2)-A024601(n+1)`
-/

namespace A024602.P609081234242529011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (n + 2) - A024601 (n + 1)

end

end A024602.P609081234242529011

/-! ## A024602.P3432135315712656882

`A001057(n+1)²-A024601(n+1)`
-/

namespace A024602.P3432135315712656882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) ^ 2 - A024601 (n + 1)

end

end A024602.P3432135315712656882

/-!
# A024603: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (odd natural numbers), t = (primes).

The programs for A024603, there is no canonical definition to state claims against.
-/

/-! ## A024603.P2383451671413957364

`A024697(n+1)-p?[A019565(n)]`
-/

namespace A024603.P2383451671413957364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024697 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024603.P2383451671413957364

/-! ## A024603.P9574021011432310746

`A024697(n+1)-p?[A077168(n)]`
-/

namespace A024603.P9574021011432310746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024697 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024603.P9574021011432310746

/-! ## A024603.P14477571435314279103

`A024697(n+1)-p?[A174738(n)]`
-/

namespace A024603.P14477571435314279103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024697 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024603.P14477571435314279103

/-! ## A024603.P10394638686605385832

`A024697(n+1)-p?[A333484(n)]`
-/

namespace A024603.P10394638686605385832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024697 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024603.P10394638686605385832

/-!
# A024604: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (composite numbers), t = (primes).

The programs for A024604, there is no canonical definition to state claims against.
-/

/-! ## A024604.P3411260001349612035

`A107819(or(5, C(Δ[n²], 2)))`
-/

namespace A024604.P3411260001349612035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107819 (Nat.lor 5 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2))

end

end A024604.P3411260001349612035

/-!
# A024606: Numbers of form x^2 + xy + y^2 with distinct x and y > 0.

The programs for A024606, there is no canonical definition to state claims against.
-/

/-! ## A024606.P9374397517745700097

`A240227(n+1)/2`
-/

namespace A024606.P9374397517745700097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240227 (n + 1) : ℚ) / 2

end

end A024606.P9374397517745700097

/-! ## A024606.P5862371506439612254

`A001281(A240227(n+1))`
-/

namespace A024606.P5862371506439612254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A240227 (n + 1)).toNat

end

end A024606.P5862371506439612254

/-! ## A024606.P1537939556793399491

`A110654(A240227(n+1)-1)`
-/

namespace A024606.P1537939556793399491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A240227 (n + 1) - 1).toNat

end

end A024606.P1537939556793399491

/-! ## A024606.P14406989013582663667

`A110654(lcm(2, A240227(n+1)))`
-/

namespace A024606.P14406989013582663667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lcm 2 (A240227 (n + 1)))

end

end A024606.P14406989013582663667

/-! ## A024606.P12922874207499803682

`A110654(and(-A000034(n), A240227(n+1)))`
-/

namespace A024606.P12922874207499803682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.land (-A000034 n) (A240227 (n + 1))).toNat

end

end A024606.P12922874207499803682

/-!
# A024607: Number of connected triangle-free graphs on n unlabeled nodes.

The programs for A024607, there is no canonical definition to state claims against.
-/

/-! ## A024607.P10278950272450689351

`A283417(∑[n+1]+1)`
-/

namespace A024607.P10278950272450689351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283417 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A024607.P10278950272450689351

/-! ## A024607.P10391665876418673158

`A001349(n+1)-A128240(n+1)`
-/

namespace A024607.P10391665876418673158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A128240 (n + 1)

end

end A024607.P10391665876418673158

/-! ## A024607.P16922900800255717640

`A283417(A000124(n+1))+A011738(n)`
-/

namespace A024607.P16922900800255717640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283417 (A000124 (n + 1)).toNat + A011738 n

end

end A024607.P16922900800255717640

/-! ## A024607.P14270505243001529012

`gcd(A000038(n), A283417(A000124(n+1)))`
-/

namespace A024607.P14270505243001529012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A283417 (A000124 (n + 1)).toNat)

end

end A024607.P14270505243001529012

/-! ## A024607.P7890145089435955153

`A283417(A000124(n+1))+A000007(n+1)`
-/

namespace A024607.P7890145089435955153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283417 (A000124 (n + 1)).toNat + A000007 (n + 1)

end

end A024607.P7890145089435955153

/-!
# A024608: Positions of even numbers in A003136.

The programs for A024608, the canonical program `A024608.P9945346834874073053` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024608 has offset 1).

The definition of A024608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024608.P9945346834874073053

`eq[0, A181932(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A024608

/-- `eq[0, A181932(n+1)]+1` -/
def P9945346834874073053.Spec : Prop :=
  ∀ n, (P9945346834874073053.a n : ℤ) = A024608 (n + 1)

theorem P9945346834874073053.correct : P9945346834874073053.Spec := by
  intro n
  simp only [A024608, Nat.add_sub_cancel]

end A024608

/-! ## A024608.P12225312763529178435

`eq[0, A000035(A003136(n+1))]+1`
-/

namespace A024608.P12225312763529178435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003136 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024608.P12225312763529178435

namespace A024608

/-- `eq[0, A000035(A003136(n+1))]+1` -/
def P12225312763529178435.Spec : Prop :=
  ∀ n, (P12225312763529178435.a n : ℤ) = A024608 (n + 1)

end A024608

/-! ## A024608.P2720982648547111022

`eq[1, A007814(A003136(n+1)+2)]+1`
-/

namespace A024608.P2720982648547111022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003136 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024608.P2720982648547111022

namespace A024608

/-- `eq[1, A007814(A003136(n+1)+2)]+1` -/
def P2720982648547111022.Spec : Prop :=
  ∀ n, (P2720982648547111022.a n : ℤ) = A024608 (n + 1)

end A024608

/-! ## A024608.P11453428366211194614

`lt[A177499(A270248(n+1)/4), 5]+1`
-/

namespace A024608.P11453428366211194614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (SequenceMachineLib.roundAway ((A270248 (n + 1) : ℚ) / 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024608.P11453428366211194614

namespace A024608

/-- `lt[A177499(A270248(n+1)/4), 5]+1` -/
def P11453428366211194614.Spec : Prop :=
  ∀ n, (P11453428366211194614.a n : ℤ) = A024608 (n + 1)

end A024608

/-! ## A024608.P1500637721219567796

`lt[A255051(A270248(n+1)/4+1), 2]+1`
-/

namespace A024608.P1500637721219567796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (SequenceMachineLib.roundAway ((A270248 (n + 1) : ℚ) / 4 + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024608.P1500637721219567796

namespace A024608

/-- `lt[A255051(A270248(n+1)/4+1), 2]+1` -/
def P1500637721219567796.Spec : Prop :=
  ∀ n, (P1500637721219567796.a n : ℤ) = A024608 (n + 1)

end A024608

/-! ## A024608.P5523195588692383181

`record[A000027(n+1)*A056594(A003136(n+1))]`
-/

namespace A024608.P5523195588692383181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A056594 (A003136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024608.P5523195588692383181

namespace A024608

/-- `record[A000027(n+1)*A056594(A003136(n+1))]` -/
def P5523195588692383181.Spec : Prop :=
  ∀ n, P5523195588692383181.a n = A024608 (n + 1)

end A024608

/-! ## A024608.P893368459117895619

`record[(n+1)*A133872(A270050(n+1))]`
-/

namespace A024608.P893368459117895619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A133872 (A270050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024608.P893368459117895619

namespace A024608

/-- `record[(n+1)*A133872(A270050(n+1))]` -/
def P893368459117895619.Spec : Prop :=
  ∀ n, P893368459117895619.a n = A024608 (n + 1)

end A024608

/-! ## A024608.P9423560091695030039

`record[(n+1)/A059126(A270672(n+1))]`
-/

namespace A024608.P9423560091695030039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A059126 (A270672 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024608.P9423560091695030039

namespace A024608

/-- `record[(n+1)/A059126(A270672(n+1))]` -/
def P9423560091695030039.Spec : Prop :=
  ∀ n, P9423560091695030039.a n = (A024608 (n + 1) : ℚ)

end A024608

/-!
# A024609: Positions of odd numbers in A003136.

The programs for A024609, the canonical program `A024609.P1848620475317135968` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024609 has offset 1).

The definition of A024609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024609.P9544523221683492051

`filter[n+1, A181932(#)]`
-/

namespace A024609.P9544523221683492051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181932 (f1 j) = 1) n)

end

end A024609.P9544523221683492051

namespace A024609

/-- `filter[n+1, A181932(#)]` -/
def P9544523221683492051.Spec : Prop :=
  ∀ n, (P9544523221683492051.a n : ℤ) = A024609 (n + 1)

end A024609

/-! ## A024609.P10060069252700610495

`eq[1, A181932(n+1)]+1`
-/

namespace A024609.P10060069252700610495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024609.P10060069252700610495

namespace A024609

/-- `eq[1, A181932(n+1)]+1` -/
def P10060069252700610495.Spec : Prop :=
  ∀ n, (P10060069252700610495.a n : ℤ) = A024609 (n + 1)

end A024609

/-! ## A024609.P4636568844294430358

`record[(n+2)*A181932(n+2)]`
-/

namespace A024609.P4636568844294430358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A181932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024609.P4636568844294430358

namespace A024609

/-- `record[(n+2)*A181932(n+2)]` -/
def P4636568844294430358.Spec : Prop :=
  ∀ n, P4636568844294430358.a n = A024609 (n + 1)

end A024609

/-! ## A024609.P4720718203683644828

`eq[1, A270672(n+1)%2]+1`
-/

namespace A024609.P4720718203683644828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270672 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024609.P4720718203683644828

namespace A024609

/-- `eq[1, A270672(n+1)%2]+1` -/
def P4720718203683644828.Spec : Prop :=
  ∀ n, (P4720718203683644828.a n : ℤ) = A024609 (n + 1)

end A024609

/-! ## A024609.P1848620475317135968

`lt[gcd(2, A003136(n+1)), 2]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024609

/-- `lt[gcd(2, A003136(n+1)), 2]+1` -/
def P1848620475317135968.Spec : Prop :=
  ∀ n, (P1848620475317135968.a n : ℤ) = A024609 (n + 1)

theorem P1848620475317135968.correct : P1848620475317135968.Spec := by
  intro n
  simp only [A024609, Nat.add_sub_cancel]

end A024609

/-! ## A024609.P15665144705162942523

`eq[1, and(1, A003136(n+2))]+2`
-/

namespace A024609.P15665144705162942523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003136 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024609.P15665144705162942523

namespace A024609

/-- `eq[1, and(1, A003136(n+2))]+2` -/
def P15665144705162942523.Spec : Prop :=
  ∀ n, (P15665144705162942523.a n : ℤ) = A024609 (n + 1)

end A024609

/-! ## A024609.P17981543749735989240

`eq[2, and(2, A270050(n+1))]+1`
-/

namespace A024609.P17981543749735989240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A270050 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024609.P17981543749735989240

namespace A024609

/-- `eq[2, and(2, A270050(n+1))]+1` -/
def P17981543749735989240.Spec : Prop :=
  ∀ n, (P17981543749735989240.a n : ℤ) = A024609 (n + 1)

end A024609

/-! ## A024609.P310682170274447902

`eq[1, A000035(A003136(n+1))]+1`
-/

namespace A024609.P310682170274447902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003136 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024609.P310682170274447902

namespace A024609

/-- `eq[1, A000035(A003136(n+1))]+1` -/
def P310682170274447902.Spec : Prop :=
  ∀ n, (P310682170274447902.a n : ℤ) = A024609 (n + 1)

end A024609

/-! ## A024609.P4845496733090162602

`lt[A177499(A270248(n+1)/4+1), 5]+1`
-/

namespace A024609.P4845496733090162602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (SequenceMachineLib.roundAway ((A270248 (n + 1) : ℚ) / 4 + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024609.P4845496733090162602

namespace A024609

/-- `lt[A177499(A270248(n+1)/4+1), 5]+1` -/
def P4845496733090162602.Spec : Prop :=
  ∀ n, (P4845496733090162602.a n : ℤ) = A024609 (n + 1)

end A024609

/-!
# A024610: Position of n^2 in A003136.

The programs for A024610, there is no canonical definition to state claims against.
-/

/-! ## A024610.P3030847294954323506

`∑[A364443(n)+1]-A364443(n)`
-/

namespace A024610.P3030847294954323506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364443 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364443 n

end

end A024610.P3030847294954323506

/-! ## A024610.P8579439960927535637

`lt[A262678(A003136(n+1)), 1]+1`
-/

namespace A024610.P8579439960927535637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A003136 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024610.P8579439960927535637

/-! ## A024610.P13537739934004458972

`lt[1, A000122(A003136(n+1))*A014682(n+1)]+1`
-/

namespace A024610.P13537739934004458972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A003136 (n + 1)).toNat * A014682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024610.P13537739934004458972

/-! ## A024610.P6660858215974194430

`eq[A049076(2*(n+2)), A331953(A003136(n+1))]+1`
-/

namespace A024610.P6660858215974194430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331953 (A003136 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024610.P6660858215974194430

/-! ## A024610.P11940876562578111136

`∑[A000120(A056309(n+2)+A054521(n+5))]`
-/

namespace A024610.P11940876562578111136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A056309 (n + 2) + A054521 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024610.P11940876562578111136

/-!
# A024611: Position of n^2 - n + 1 in A003136.

The programs for A024611, there is no canonical definition to state claims against.
-/

/-! ## A024611.P16692310799050911386

`∑[∑[A157238(A157265(n+1))]]+1`
-/

namespace A024611.P16692310799050911386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157238 (A157265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024611.P16692310799050911386

/-! ## A024611.P12483206288371443497

`∑[∑[A275661(A275662(n+1))]]+1`
-/

namespace A024611.P12483206288371443497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275661 (A275662 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024611.P12483206288371443497

/-! ## A024611.P3666837864933413907

`∑[∑[A005614(A128157(n+1))]]-(n-1)`
-/

namespace A024611.P3666837864933413907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A128157 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1)

end

end A024611.P3666837864933413907

/-! ## A024611.P294285131027091773

`∑[∑[A285414(A000079(n)+n)]]+1`
-/

namespace A024611.P294285131027091773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285414 (A000079 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024611.P294285131027091773

/-! ## A024611.P8115472652737592865

`∑[∑[A165560(A249156(n+1))]+1]+1`
-/

namespace A024611.P8115472652737592865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A249156 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024611.P8115472652737592865

/-!
# A024612: a(n) = number in position n when all i^2 - i*j + j^2, where 1 <= i < j are arranged in increasing order.

The programs for A024612, there is no canonical definition to state claims against.
-/

/-! ## A024612.P17246429024770457522

`A024605(A014132(n+1))-A045698(A275266(n+1))`
-/

namespace A024612.P17246429024770457522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024605 (A014132 (n + 1)).toNat - A045698 (A275266 (n + 1)).toNat

end

end A024612.P17246429024770457522

/-! ## A024612.P16174413574847196510

`A024605(A014132(n+1)%A080529(n))`
-/

namespace A024612.P16174413574847196510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024605 (Int.tmod (A014132 (n + 1)) (A080529 n)).toNat

end

end A024612.P16174413574847196510

/-! ## A024612.P12551322950152738283

`A024605(A014132(n+1)*A137278(n²))`
-/

namespace A024612.P12551322950152738283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024605 (A014132 (n + 1) * A137278 (n ^ 2)).toNat

end

end A024612.P12551322950152738283

/-! ## A024612.P8601614851228629553

`A024605(A014132(n+1)/A137278(n²))`
-/

namespace A024612.P8601614851228629553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024605 (SequenceMachineLib.roundAway ((A014132 (n + 1) : ℚ) / (A137278 (n ^ 2) : ℚ))).toNat

end

end A024612.P8601614851228629553

/-!
# A024614: Numbers of the form x^2 + xy + y^2, where x and y are positive integers.

The programs for A024614, the canonical program `A024614.P12526737859498726809` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024614 has offset 1).

The definition of A024614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024614.P8204805618780964253

`record[A024612(n+1)%A057781(n)]`
-/

namespace A024614.P8204805618780964253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024612 (n + 1)) (A057781 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024614.P8204805618780964253

namespace A024614

/-- `record[A024612(n+1)%A057781(n)]` -/
def P8204805618780964253.Spec : Prop :=
  ∀ n, P8204805618780964253.a n = A024614 (n + 1)

end A024614

/-! ## A024614.P10171165352121160638

`record[A024612(A026238(n+2))]`
-/

namespace A024614.P10171165352121160638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024612 (A026238 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024614.P10171165352121160638

namespace A024614

/-- `record[A024612(A026238(n+2))]` -/
def P10171165352121160638.Spec : Prop :=
  ∀ n, P10171165352121160638.a n = A024614 (n + 1)

end A024614

/-! ## A024614.P4580298265713582215

`lt[0, char[A024612(n+1)]]`
-/

namespace A024614.P4580298265713582215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024612 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024614.P4580298265713582215

namespace A024614

/-- `lt[0, char[A024612(n+1)]]` -/
def P4580298265713582215.Spec : Prop :=
  ∀ n, (P4580298265713582215.a n : ℤ) = A024614 (n + 1)

end A024614

/-! ## A024614.P12526737859498726809

`lt[0, char[A215631(n+1)]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A024614

/-- `lt[0, char[A215631(n+1)]]` -/
def P12526737859498726809.Spec : Prop :=
  ∀ n, (P12526737859498726809.a n : ℤ) = A024614 (n + 1)

theorem P12526737859498726809.correct : P12526737859498726809.Spec := by
  intro n
  simp only [A024614, Nat.add_sub_cancel]

end A024614

/-! ## A024614.P6639793273198082269

`lt[A000122(n)^3, A004016(n)]`
-/

namespace A024614.P6639793273198082269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024614.P6639793273198082269

namespace A024614

/-- `lt[A000122(n)^3, A004016(n)]` -/
def P6639793273198082269.Spec : Prop :=
  ∀ n, (P6639793273198082269.a n : ℤ) = A024614 (n + 1)

end A024614

/-! ## A024614.P2525323271291553644

`lt[(A010052(n)+2)², A004016(n)]`
-/

namespace A024614.P2525323271291553644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010052 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024614.P2525323271291553644

namespace A024614

/-- `lt[(A010052(n)+2)², A004016(n)]` -/
def P2525323271291553644.Spec : Prop :=
  ∀ n, (P2525323271291553644.a n : ℤ) = A024614 (n + 1)

end A024614

/-! ## A024614.P16356393485953845921

`lt[A033749(n), A067659(A004016(n))]`
-/

namespace A024614.P16356393485953845921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (A004016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024614.P16356393485953845921

namespace A024614

/-- `lt[A033749(n), A067659(A004016(n))]` -/
def P16356393485953845921.Spec : Prop :=
  ∀ n, (P16356393485953845921.a n : ℤ) = A024614 (n + 1)

end A024614

/-! ## A024614.P2044381227172049316

`record[A024612(A052938(n))]`
-/

namespace A024614.P2044381227172049316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024612 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024614.P2044381227172049316

namespace A024614

/-- `record[A024612(A052938(n))]` -/
def P2044381227172049316.Spec : Prop :=
  ∀ n, P2044381227172049316.a n = A024614 (n + 1)

end A024614

/-! ## A024614.P6736411898531405844

`record[A024612(A032742(n+1))]`
-/

namespace A024614.P6736411898531405844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024612 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024614.P6736411898531405844

namespace A024614

/-- `record[A024612(A032742(n+1))]` -/
def P6736411898531405844.Spec : Prop :=
  ∀ n, P6736411898531405844.a n = A024614 (n + 1)

end A024614

/-! ## A024614.P10458430056476960023

`record[A024612(A065648(n))]`
-/

namespace A024614.P10458430056476960023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024612 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024614.P10458430056476960023

namespace A024614

/-- `record[A024612(A065648(n))]` -/
def P10458430056476960023.Spec : Prop :=
  ∀ n, P10458430056476960023.a n = A024614 (n + 1)

end A024614

/-! ## A024614.P6576022368994967608

`record[A024612(A109785(n))]`
-/

namespace A024614.P6576022368994967608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024612 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024614.P6576022368994967608

namespace A024614

/-- `record[A024612(A109785(n))]` -/
def P6576022368994967608.Spec : Prop :=
  ∀ n, P6576022368994967608.a n = A024614 (n + 1)

end A024614

/-! ## A024614.P4199755555593458613

`record[A024612(A027750(n+1))]`
-/

namespace A024614.P4199755555593458613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024612 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024614.P4199755555593458613

namespace A024614

/-- `record[A024612(A027750(n+1))]` -/
def P4199755555593458613.Spec : Prop :=
  ∀ n, P4199755555593458613.a n = A024614 (n + 1)

end A024614

/-! ## A024614.P10420888680927325486

`record[A024612(A056239(n+2))]`
-/

namespace A024614.P10420888680927325486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024612 (A056239 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024614.P10420888680927325486

namespace A024614

/-- `record[A024612(A056239(n+2))]` -/
def P10420888680927325486.Spec : Prop :=
  ∀ n, P10420888680927325486.a n = A024614 (n + 1)

end A024614

/-!
# A024615: Positions of even numbers in A024614.

The programs for A024615, the canonical program `A024615.P1121594222135408077` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024615 has offset 1).

The definition of A024615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024615.P1121594222135408077

`eq[0, A024614(n+1)%2]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A024615

/-- `eq[0, A024614(n+1)%2]+1` -/
def P1121594222135408077.Spec : Prop :=
  ∀ n, (P1121594222135408077.a n : ℤ) = A024615 (n + 1)

theorem P1121594222135408077.correct : P1121594222135408077.Spec := by
  intro n
  simp only [A024615, Nat.add_sub_cancel]

end A024615

/-! ## A024615.P11324865363656509756

`eq[char[A024616(n+1)], A000007(n)]`
-/

namespace A024615.P11324865363656509756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024616 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024615.P11324865363656509756

namespace A024615

/-- `eq[char[A024616(n+1)], A000007(n)]` -/
def P11324865363656509756.Spec : Prop :=
  ∀ n, (P11324865363656509756.a n : ℤ) = A024615 (n + 1)

end A024615

/-! ## A024615.P7651101412649718014

`eq[char[A024616(n+1)], A000038(n)]`
-/

namespace A024615.P7651101412649718014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024616 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024615.P7651101412649718014

namespace A024615

/-- `eq[char[A024616(n+1)], A000038(n)]` -/
def P7651101412649718014.Spec : Prop :=
  ∀ n, (P7651101412649718014.a n : ℤ) = A024615 (n + 1)

end A024615

/-! ## A024615.P13994583862539641858

`eq[0, A024614(A000007(n)+n)%2]`
-/

namespace A024615.P13994583862539641858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024614 (A000007 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024615.P13994583862539641858

namespace A024615

/-- `eq[0, A024614(A000007(n)+n)%2]` -/
def P13994583862539641858.Spec : Prop :=
  ∀ n, (P13994583862539641858.a n : ℤ) = A024615 (n + 1)

end A024615

/-! ## A024615.P14881132989186688752

`lt[A002129(A024614(n+1)), 1]+1`
-/

namespace A024615.P14881132989186688752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A024614 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024615.P14881132989186688752

namespace A024615

/-- `lt[A002129(A024614(n+1)), 1]+1` -/
def P14881132989186688752.Spec : Prop :=
  ∀ n, (P14881132989186688752.a n : ℤ) = A024615 (n + 1)

end A024615

/-! ## A024615.P14941474845257119709

`lt[A133622(A024614(n+1)+1), n+2]+1`
-/

namespace A024615.P14941474845257119709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A024614 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024615.P14941474845257119709

namespace A024615

/-- `lt[A133622(A024614(n+1)+1), n+2]+1` -/
def P14941474845257119709.Spec : Prop :=
  ∀ n, (P14941474845257119709.a n : ℤ) = A024615 (n + 1)

end A024615

/-! ## A024615.P9009981262464246879

`lt[A133622(n+1), A133622(A024614(n+1))]+1`
-/

namespace A024615.P9009981262464246879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A024614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024615.P9009981262464246879

namespace A024615

/-- `lt[A133622(n+1), A133622(A024614(n+1))]+1` -/
def P9009981262464246879.Spec : Prop :=
  ∀ n, (P9009981262464246879.a n : ℤ) = A024615 (n + 1)

end A024615

/-!
# A024616: Positions of odd numbers in A024614.

The programs for A024616, the canonical program `A024616.P13687596449847597735` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024616 has offset 1).

The definition of A024616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024616.P13687596449847597735

`eq[1, A024614(n+1)%2]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A024616

/-- `eq[1, A024614(n+1)%2]+1` -/
def P13687596449847597735.Spec : Prop :=
  ∀ n, (P13687596449847597735.a n : ℤ) = A024616 (n + 1)

theorem P13687596449847597735.correct : P13687596449847597735.Spec := by
  intro n
  simp only [A024616, Nat.add_sub_cancel]

end A024616

/-! ## A024616.P9634895317460329578

`eq[char[A024615(n+1)], A000007(n)]`
-/

namespace A024616.P9634895317460329578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024615 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024616.P9634895317460329578

namespace A024616

/-- `eq[char[A024615(n+1)], A000007(n)]` -/
def P9634895317460329578.Spec : Prop :=
  ∀ n, (P9634895317460329578.a n : ℤ) = A024616 (n + 1)

end A024616

/-! ## A024616.P11052832547806713623

`eq[char[A024615(n+1)], A000038(n)]`
-/

namespace A024616.P11052832547806713623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024615 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024616.P11052832547806713623

namespace A024616

/-- `eq[char[A024615(n+1)], A000038(n)]` -/
def P11052832547806713623.Spec : Prop :=
  ∀ n, (P11052832547806713623.a n : ℤ) = A024616 (n + 1)

end A024616

/-! ## A024616.P7317431580346901709

`eq[char[A024615(n+1)], A010051(2*(n+1))]`
-/

namespace A024616.P7317431580346901709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024615 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024616.P7317431580346901709

namespace A024616

/-- `eq[char[A024615(n+1)], A010051(2*(n+1))]` -/
def P7317431580346901709.Spec : Prop :=
  ∀ n, (P7317431580346901709.a n : ℤ) = A024616 (n + 1)

end A024616

/-! ## A024616.P13101670317537038649

`lt[1, A002129(A024614(n+1))]+1`
-/

namespace A024616.P13101670317537038649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A024614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024616.P13101670317537038649

namespace A024616

/-- `lt[1, A002129(A024614(n+1))]+1` -/
def P13101670317537038649.Spec : Prop :=
  ∀ n, (P13101670317537038649.a n : ℤ) = A024616 (n + 1)

end A024616

/-! ## A024616.P1539575045913212612

`eq[char[A024615(n+1)], A151933(n)]`
-/

namespace A024616.P1539575045913212612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024615 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024616.P1539575045913212612

namespace A024616

/-- `eq[char[A024615(n+1)], A151933(n)]` -/
def P1539575045913212612.Spec : Prop :=
  ∀ n, (P1539575045913212612.a n : ℤ) = A024616 (n + 1)

end A024616

/-!
# A024617: Position of n^2 + n + 1 in A024614.

The programs for A024617, there is no canonical definition to state claims against.
-/

/-! ## A024617.P693822619821832283

`A123108(A297772(A203847(n+1))+A047838(n+2))`
-/

namespace A024617.P693822619821832283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A297772 (A203847 (n + 1)).toNat + A047838 (n + 2)).toNat

end

end A024617.P693822619821832283

/-! ## A024617.P1938084102468764371

`A261223(n+1)+A055642(A351971(n))`
-/

namespace A024617.P1938084102468764371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (n + 1) + A055642 (A351971 n).toNat

end

end A024617.P1938084102468764371

/-! ## A024617.P12508554863634127059

`floor(A003056(floor(A331757(n+1)/2))/2)`
-/

namespace A024617.P12508554863634127059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 ⌊(A331757 (n + 1) : ℚ) / 2⌋.toNat : ℚ) / 2⌋

end

end A024617.P12508554863634127059

/-! ## A024617.P16903884293557578710

`∑[A030308(A036296(n))+A004525(n)]`
-/

namespace A024617.P16903884293557578710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A036296 n).toNat + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024617.P16903884293557578710

/-! ## A024617.P8566215088018388133

`A130259(A305370(n))+A002620(n+1)`
-/

namespace A024617.P8566215088018388133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A305370 n).toNat + A002620 (n + 1)

end

end A024617.P8566215088018388133

/-!
# A024618: Positions of primes in A024614.

The programs for A024618, the canonical program `A024618.P1991265973536153053` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024618 has offset 1).

The definition of A024618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024618.P1991265973536153053

`eq[1, A001222(A024614(n+1))]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A024618

/-- `eq[1, A001222(A024614(n+1))]+1` -/
def P1991265973536153053.Spec : Prop :=
  ∀ n, (P1991265973536153053.a n : ℤ) = A024618 (n + 1)

theorem P1991265973536153053.correct : P1991265973536153053.Spec := by
  intro n
  simp only [A024618, Nat.add_sub_cancel]

end A024618

/-! ## A024618.P6580646716675265570

`eq[1, -∏{d}[A024614(n+1), A008683(#)]]+1`
-/

namespace A024618.P6580646716675265570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ d ∈ Nat.divisors (f3 n).natAbs, A008683 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024618.P6580646716675265570

namespace A024618

/-- `eq[1, -∏{d}[A024614(n+1), A008683(#)]]+1` -/
def P6580646716675265570.Spec : Prop :=
  ∀ n, (P6580646716675265570.a n : ℤ) = A024618 (n + 1)

end A024618

/-! ## A024618.P13917859467264554838

`record[A000027(n+1)/A001222(A024614(n+1))]`
-/

namespace A024618.P13917859467264554838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A001222 (A024614 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024618.P13917859467264554838

namespace A024618

/-- `record[A000027(n+1)/A001222(A024614(n+1))]` -/
def P13917859467264554838.Spec : Prop :=
  ∀ n, P13917859467264554838.a n = (A024618 (n + 1) : ℚ)

end A024618

/-! ## A024618.P18284119295190670032

`lt[A001222(A024614(n+1))%A234000(n+1), 2]+1`
-/

namespace A024618.P18284119295190670032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A024614 (n + 1)).toNat) (A234000 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024618.P18284119295190670032

namespace A024618

/-- `lt[A001222(A024614(n+1))%A234000(n+1), 2]+1` -/
def P18284119295190670032.Spec : Prop :=
  ∀ n, (P18284119295190670032.a n : ℤ) = A024618 (n + 1)

end A024618

/-! ## A024618.P1558690969671389365

`record[A008611(3*n)/A001222(A024614(n+1))]`
-/

namespace A024618.P1558690969671389365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (A001222 (A024614 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024618.P1558690969671389365

namespace A024618

/-- `record[A008611(3*n)/A001222(A024614(n+1))]` -/
def P1558690969671389365.Spec : Prop :=
  ∀ n, P1558690969671389365.a n = (A024618 (n + 1) : ℚ)

end A024618

/-! ## A024618.P17772427794713782976

`eq[0, A040081(A024614(n+1)+1)]+1`
-/

namespace A024618.P17772427794713782976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A024614 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024618.P17772427794713782976

namespace A024618

/-- `eq[0, A040081(A024614(n+1)+1)]+1` -/
def P17772427794713782976.Spec : Prop :=
  ∀ n, (P17772427794713782976.a n : ℤ) = A024618 (n + 1)

end A024618

/-!
# A024619: Numbers that are not powers of primes p^k (k >= 0); complement of A000961.

The programs for A024619, the canonical program `A024619.P14596117423334191378` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024619 has offset 1).

The definition of A024619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024619.P15488256459361935709

`lt[1, A231813(n)]`
-/

namespace A024619.P15488256459361935709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024619.P15488256459361935709

namespace A024619

/-- `lt[1, A231813(n)]` -/
def P15488256459361935709.Spec : Prop :=
  ∀ n, (P15488256459361935709.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P17566076042024569204

`lt[2, A327641(n)]`
-/

namespace A024619.P17566076042024569204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024619.P17566076042024569204

namespace A024619

/-- `lt[2, A327641(n)]` -/
def P17566076042024569204.Spec : Prop :=
  ∀ n, (P17566076042024569204.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P14596117423334191378

`A080765(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024619

/-- `A080765(n+1)+1` -/
def P14596117423334191378.Spec : Prop :=
  ∀ n, P14596117423334191378.a n = A024619 (n + 1)

theorem P14596117423334191378.correct : P14596117423334191378.Spec := by
  intro n
  simp only [A024619, Nat.add_sub_cancel]

end A024619

/-! ## A024619.P8735216262047604317

`floor(sqrt(A335064(n+1)))`
-/

namespace A024619.P8735216262047604317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A335064 (n + 1))

end

end A024619.P8735216262047604317

namespace A024619

/-- `floor(sqrt(A335064(n+1)))` -/
def P8735216262047604317.Spec : Prop :=
  ∀ n, P8735216262047604317.a n = A024619 (n + 1)

end A024619

/-! ## A024619.P3529168939495128940

`∑[A375708(n+1)]+1`
-/

namespace A024619.P3529168939495128940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024619.P3529168939495128940

namespace A024619

/-- `∑[A375708(n+1)]+1` -/
def P3529168939495128940.Spec : Prop :=
  ∀ n, P3529168939495128940.a n = A024619 (n + 1)

end A024619

/-! ## A024619.P18017779991300843050

`comp[A181062(n+1)]+1`
-/

namespace A024619.P18017779991300843050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A024619.P18017779991300843050

namespace A024619

/-- `comp[A181062(n+1)]+1` -/
def P18017779991300843050.Spec : Prop :=
  ∀ n, (P18017779991300843050.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P15291940591176893958

`comp[C(A008475(n+1), n)]`
-/

namespace A024619.P15291940591176893958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008475 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A024619.P15291940591176893958

namespace A024619

/-- `comp[C(A008475(n+1), n)]` -/
def P15291940591176893958.Spec : Prop :=
  ∀ n, (P15291940591176893958.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P12279288951008559419

`comp[C(A034699(n+1), n)]`
-/

namespace A024619.P12279288951008559419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034699 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A024619.P12279288951008559419

namespace A024619

/-- `comp[C(A034699(n+1), n)]` -/
def P12279288951008559419.Spec : Prop :=
  ∀ n, (P12279288951008559419.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P17819558911333513276

`lt[0, A035321(n+1)]+1`
-/

namespace A024619.P17819558911333513276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024619.P17819558911333513276

namespace A024619

/-- `lt[0, A035321(n+1)]+1` -/
def P17819558911333513276.Spec : Prop :=
  ∀ n, (P17819558911333513276.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P9899417178094494776

`lt[1, A001221(n+1)]+1`
-/

namespace A024619.P9899417178094494776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024619.P9899417178094494776

namespace A024619

/-- `lt[1, A001221(n+1)]+1` -/
def P9899417178094494776.Spec : Prop :=
  ∀ n, (P9899417178094494776.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P17508564742313111536

`lt[1, A034460(n+1)]+1`
-/

namespace A024619.P17508564742313111536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024619.P17508564742313111536

namespace A024619

/-- `lt[1, A034460(n+1)]+1` -/
def P17508564742313111536.Spec : Prop :=
  ∀ n, (P17508564742313111536.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P5389143665540167473

`lt[1, A052125(n+1)]+1`
-/

namespace A024619.P5389143665540167473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024619.P5389143665540167473

namespace A024619

/-- `lt[1, A052125(n+1)]+1` -/
def P5389143665540167473.Spec : Prop :=
  ∀ n, (P5389143665540167473.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P10203894843996956066

`lt[1, A076511(n+1)]+1`
-/

namespace A024619.P10203894843996956066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024619.P10203894843996956066

namespace A024619

/-- `lt[1, A076511(n+1)]+1` -/
def P10203894843996956066.Spec : Prop :=
  ∀ n, (P10203894843996956066.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P8000689694789378518

`lt[1, A120454(n+1)]+1`
-/

namespace A024619.P8000689694789378518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024619.P8000689694789378518

namespace A024619

/-- `lt[1, A120454(n+1)]+1` -/
def P8000689694789378518.Spec : Prop :=
  ∀ n, (P8000689694789378518.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P10634947208552910459

`lt[A011772(n+1), n]+1`
-/

namespace A024619.P10634947208552910459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024619.P10634947208552910459

namespace A024619

/-- `lt[A011772(n+1), n]+1` -/
def P10634947208552910459.Spec : Prop :=
  ∀ n, (P10634947208552910459.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P12884598456808693686

`comp[1-A074591(n+1)+n]`
-/

namespace A024619.P12884598456808693686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A074591 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A024619.P12884598456808693686

namespace A024619

/-- `comp[1-A074591(n+1)+n]` -/
def P12884598456808693686.Spec : Prop :=
  ∀ n, (P12884598456808693686.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P15515511795174879738

`A360519(A361103(n+1))`
-/

namespace A024619.P15515511795174879738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (A361103 (n + 1)).toNat

end

end A024619.P15515511795174879738

namespace A024619

/-- `A360519(A361103(n+1))` -/
def P15515511795174879738.Spec : Prop :=
  ∀ n, P15515511795174879738.a n = A024619 (n + 1)

end A024619

/-! ## A024619.P8000220525668500453

`lt[1, A349620(A007947(n+1))]+1`
-/

namespace A024619.P8000220525668500453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349620 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024619.P8000220525668500453

namespace A024619

/-- `lt[1, A349620(A007947(n+1))]+1` -/
def P8000220525668500453.Spec : Prop :=
  ∀ n, (P8000220525668500453.a n : ℤ) = A024619 (n + 1)

end A024619

/-! ## A024619.P14495136773827877764

`A375708(n+1)+A361102(n+1)`
-/

namespace A024619.P14495136773827877764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 1) + A361102 (n + 1)

end

end A024619.P14495136773827877764

namespace A024619

/-- `A375708(n+1)+A361102(n+1)` -/
def P14495136773827877764.Spec : Prop :=
  ∀ n, P14495136773827877764.a n = A024619 (n + 1)

end A024619

/-! ## A024619.P12920242768165572715

`∪[A069900(n+1), A005279(n+1)]`
-/

namespace A024619.P12920242768165572715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024619.P12920242768165572715

namespace A024619

/-- `∪[A069900(n+1), A005279(n+1)]` -/
def P12920242768165572715.Spec : Prop :=
  ∀ n, (P12920242768165572715.a n : ℤ) = A024619 (n + 1)

end A024619

/-!
# A024620: Positions of primes among the powers of primes (A000961).

The programs for A024620, the canonical program `A024620.P8536977387799856667` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024620 has offset 1).

The definition of A024620 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024620.P11908892921967350281

`A027883(n+1)+1`
-/

namespace A024620.P11908892921967350281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027883 (n + 1) + 1

end

end A024620.P11908892921967350281

namespace A024620

/-- `A027883(n+1)+1` -/
def P11908892921967350281.Spec : Prop :=
  ∀ n, P11908892921967350281.a n = A024620 (n + 1)

end A024620

/-! ## A024620.P8536977387799856667

`A065515(A000040(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024620

/-- `A065515(A000040(n+1))` -/
def P8536977387799856667.Spec : Prop :=
  ∀ n, P8536977387799856667.a n = A024620 (n + 1)

theorem P8536977387799856667.correct : P8536977387799856667.Spec := by
  intro n
  simp only [A024620, Nat.add_sub_cancel]

end A024620

/-! ## A024620.P1138862231757252230

`A366833(n)+a(n-1)` with `a(0)=2`
-/

namespace A024620.P1138862231757252230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A366833 n + a (n - 1)

end

end A024620.P1138862231757252230

namespace A024620

/-- `A366833(n)+a(n-1)` -/
def P1138862231757252230.Spec : Prop :=
  ∀ n, P1138862231757252230.a n = A024620 (n + 1)

end A024620

/-! ## A024620.P3243553897019307386

`A008864(n+1)-A378615(n+1)`
-/

namespace A024620.P3243553897019307386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A378615 (n + 1)

end

end A024620.P3243553897019307386

namespace A024620

/-- `A008864(n+1)-A378615(n+1)` -/
def P3243553897019307386.Spec : Prop :=
  ∀ n, P3243553897019307386.a n = A024620 (n + 1)

end A024620

/-! ## A024620.P10873141908229110418

`A000040(n+1)+1-A378615(n+1)`
-/

namespace A024620.P10873141908229110418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A378615 (n + 1))

end

end A024620.P10873141908229110418

namespace A024620

/-- `A000040(n+1)+1-A378615(n+1)` -/
def P10873141908229110418.Spec : Prop :=
  ∀ n, P10873141908229110418.a n = A024620 (n + 1)

end A024620

/-! ## A024620.P14165843003709884843

`lt[n, A063872(n+1)]+2`
-/

namespace A024620.P14165843003709884843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A024620.P14165843003709884843

namespace A024620

/-- `lt[n, A063872(n+1)]+2` -/
def P14165843003709884843.Spec : Prop :=
  ∀ n, (P14165843003709884843.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P5798137012579003451

`A020725(A027883(n+1))`
-/

namespace A024620.P5798137012579003451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A027883 (n + 1)).toNat

end

end A024620.P5798137012579003451

namespace A024620

/-- `A020725(A027883(n+1))` -/
def P5798137012579003451.Spec : Prop :=
  ∀ n, P5798137012579003451.a n = A024620 (n + 1)

end A024620

/-! ## A024620.P5071644708197462535

`eq[A329119(n+1), A352807(n+1)]+2`
-/

namespace A024620.P5071644708197462535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A024620.P5071644708197462535

namespace A024620

/-- `eq[A329119(n+1), A352807(n+1)]+2` -/
def P5071644708197462535.Spec : Prop :=
  ∀ n, (P5071644708197462535.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P18083113534652345092

`eq[1, A025474(n+1)]+1`
-/

namespace A024620.P18083113534652345092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024620.P18083113534652345092

namespace A024620

/-- `eq[1, A025474(n+1)]+1` -/
def P18083113534652345092.Spec : Prop :=
  ∀ n, (P18083113534652345092.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P10802845003475333064

`eq[1, A082950(n+1)]+1`
-/

namespace A024620.P10802845003475333064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024620.P10802845003475333064

namespace A024620

/-- `eq[1, A082950(n+1)]+1` -/
def P10802845003475333064.Spec : Prop :=
  ∀ n, (P10802845003475333064.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P8582951178916119183

`eq[1, A192015(n+1)]+1`
-/

namespace A024620.P8582951178916119183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024620.P8582951178916119183

namespace A024620

/-- `eq[1, A192015(n+1)]+1` -/
def P8582951178916119183.Spec : Prop :=
  ∀ n, (P8582951178916119183.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P5958921262527910428

`eq[2, A086454(n+1)]+1`
-/

namespace A024620.P5958921262527910428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024620.P5958921262527910428

namespace A024620

/-- `eq[2, A086454(n+1)]+1` -/
def P5958921262527910428.Spec : Prop :=
  ∀ n, (P5958921262527910428.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P10380257213340225159

`lt[A192016(n+2), 1]+2`
-/

namespace A024620.P10380257213340225159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192016 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A024620.P10380257213340225159

namespace A024620

/-- `lt[A192016(n+2), 1]+2` -/
def P10380257213340225159.Spec : Prop :=
  ∀ n, (P10380257213340225159.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P2622782573703445906

`lt[n, A025473(n+2)]+2`
-/

namespace A024620.P2622782573703445906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A024620.P2622782573703445906

namespace A024620

/-- `lt[n, A025473(n+2)]+2` -/
def P2622782573703445906.Spec : Prop :=
  ∀ n, (P2622782573703445906.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P14595989945980647206

`eq[1, A025474(A028310(n))]`
-/

namespace A024620.P14595989945980647206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024620.P14595989945980647206

namespace A024620

/-- `eq[1, A025474(A028310(n))]` -/
def P14595989945980647206.Spec : Prop :=
  ∀ n, (P14595989945980647206.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P2900866254840002056

`A020725(eq[2, A086454(n+1)])`
-/

namespace A024620.P2900866254840002056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024620.P2900866254840002056

namespace A024620

/-- `A020725(eq[2, A086454(n+1)])` -/
def P2900866254840002056.Spec : Prop :=
  ∀ n, P2900866254840002056.a n = A024620 (n + 1)

end A024620

/-! ## A024620.P17780504425671400950

`eq[A000007(n), A192016(n+1)]+1`
-/

namespace A024620.P17780504425671400950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024620.P17780504425671400950

namespace A024620

/-- `eq[A000007(n), A192016(n+1)]+1` -/
def P17780504425671400950.Spec : Prop :=
  ∀ n, (P17780504425671400950.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P6259754451216409613

`eq[A000038(n), A192016(n+1)]+1`
-/

namespace A024620.P6259754451216409613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024620.P6259754451216409613

namespace A024620

/-- `eq[A000038(n), A192016(n+1)]+1` -/
def P6259754451216409613.Spec : Prop :=
  ∀ n, (P6259754451216409613.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P3884723853841923939

`eq[A025473(n+1), A085729(n+1)]+1`
-/

namespace A024620.P3884723853841923939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024620.P3884723853841923939

namespace A024620

/-- `eq[A025473(n+1), A085729(n+1)]+1` -/
def P3884723853841923939.Spec : Prop :=
  ∀ n, (P3884723853841923939.a n : ℤ) = A024620 (n + 1)

end A024620

/-! ## A024620.P3051700615790294490

`eq[A081217(n+1), A085729(n+1)]+1`
-/

namespace A024620.P3051700615790294490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024620.P3051700615790294490

namespace A024620

/-- `eq[A081217(n+1), A085729(n+1)]+1` -/
def P3051700615790294490.Spec : Prop :=
  ∀ n, (P3051700615790294490.a n : ℤ) = A024620 (n + 1)

end A024620

/-!
# A024621: Positions of nonprimes among the powers of primes (A000961).

The programs for A024621, the canonical program `A024621.P362642709142674252` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024621 has offset 1).

The definition of A024621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024621.P15150214859916879762

`lt[A025473(n+1), A039649(n+1)]+1`
-/

namespace A024621.P15150214859916879762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024621.P15150214859916879762

namespace A024621

/-- `lt[A025473(n+1), A039649(n+1)]+1` -/
def P15150214859916879762.Spec : Prop :=
  ∀ n, (P15150214859916879762.a n : ℤ) = A024621 (n + 1)

end A024621

/-! ## A024621.P5036107087633678273

`lt[A025473(n+1)², A246655(n+1)]+1`
-/

namespace A024621.P5036107087633678273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024621.P5036107087633678273

namespace A024621

/-- `lt[A025473(n+1)², A246655(n+1)]+1` -/
def P5036107087633678273.Spec : Prop :=
  ∀ n, (P5036107087633678273.a n : ℤ) = A024621 (n + 1)

end A024621

/-! ## A024621.P362642709142674252

`lt[3*A025473(n+1), A162698(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024621

/-- `lt[3*A025473(n+1), A162698(n+1)]+1` -/
def P362642709142674252.Spec : Prop :=
  ∀ n, (P362642709142674252.a n : ℤ) = A024621 (n + 1)

theorem P362642709142674252.correct : P362642709142674252.Spec := by
  intro n
  simp only [A024621, Nat.add_sub_cancel]

end A024621

/-! ## A024621.P7022378608374899855

`A025528(A025475(n+1))+1`
-/

namespace A024621.P7022378608374899855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A025475 (n + 1)).toNat + 1

end

end A024621.P7022378608374899855

namespace A024621

/-- `A025528(A025475(n+1))+1` -/
def P7022378608374899855.Spec : Prop :=
  ∀ n, P7022378608374899855.a n = A024621 (n + 1)

end A024621

/-! ## A024621.P17846134211425173046

`A025528(record[A163813(n+1)])+1`
-/

namespace A024621.P17846134211425173046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A024621.P17846134211425173046

namespace A024621

/-- `A025528(record[A163813(n+1)])+1` -/
def P17846134211425173046.Spec : Prop :=
  ∀ n, P17846134211425173046.a n = A024621 (n + 1)

end A024621

/-! ## A024621.P11854421751734914451

`A025528(A249435(n+1)+1)+1`
-/

namespace A024621.P11854421751734914451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A249435 (n + 1) + 1).toNat + 1

end

end A024621.P11854421751734914451

namespace A024621

/-- `A025528(A249435(n+1)+1)+1` -/
def P11854421751734914451.Spec : Prop :=
  ∀ n, P11854421751734914451.a n = A024621 (n + 1)

end A024621

/-! ## A024621.P8393885542203518762

`A000720(record[A163813(n+1)])+1+n`
-/

namespace A024621.P8393885542203518762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1 + (n : ℤ)

end

end A024621.P8393885542203518762

namespace A024621

/-- `A000720(record[A163813(n+1)])+1+n` -/
def P8393885542203518762.Spec : Prop :=
  ∀ n, P8393885542203518762.a n = A024621 (n + 1)

end A024621

/-! ## A024621.P17617511570410384269

`record[or(n+1, A008683(A000961(n+1)))]`
-/

namespace A024621.P17617511570410384269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A008683 (A000961 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024621.P17617511570410384269

namespace A024621

/-- `record[or(n+1, A008683(A000961(n+1)))]` -/
def P17617511570410384269.Spec : Prop :=
  ∀ n, P17617511570410384269.a n = A024621 (n + 1)

end A024621

/-! ## A024621.P11043574424482425767

`A000720(A249435(n+1)+1)+n+1`
-/

namespace A024621.P11043574424482425767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A249435 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A024621.P11043574424482425767

namespace A024621

/-- `A000720(A249435(n+1)+1)+n+1` -/
def P11043574424482425767.Spec : Prop :=
  ∀ n, P11043574424482425767.a n = A024621 (n + 1)

end A024621

/-! ## A024621.P3741750203008159570

`lt[A000203(A025473(abs(1-n)+1)), n+1]`
-/

namespace A024621.P3741750203008159570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A025473 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024621.P3741750203008159570

namespace A024621

/-- `lt[A000203(A025473(abs(1-n)+1)), n+1]` -/
def P3741750203008159570.Spec : Prop :=
  ∀ n, (P3741750203008159570.a n : ℤ) = A024621 (n + 1)

end A024621

/-! ## A024621.P13773077119016489336

`lt[A025473(n+1)², A000010(A033300(n))]+1`
-/

namespace A024621.P13773077119016489336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A033300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024621.P13773077119016489336

namespace A024621

/-- `lt[A025473(n+1)², A000010(A033300(n))]+1` -/
def P13773077119016489336.Spec : Prop :=
  ∀ n, (P13773077119016489336.a n : ℤ) = A024621 (n + 1)

end A024621

/-!
# A024622: Position of 2^n among the powers of primes (A000961).

The programs for A024622, the canonical program `A024622.P7610113690782019861` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024622 has offset 0).

The definition of A024622 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024622.P7610113690782019861

`A025528(2^n)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024622

/-- `A025528(2^n)+1` -/
def P7610113690782019861.Spec : Prop :=
  ∀ n, P7610113690782019861.a n = A024622 n

theorem P7610113690782019861.correct : P7610113690782019861.Spec := by
  intro n
  simp only [A024622]

end A024622

/-! ## A024622.P7295314371881095593

`A304521(n)+a(n-1)` with `a(0)=1`
-/

namespace A024622.P7295314371881095593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304521 n + a (n - 1)

end

end A024622.P7295314371881095593

namespace A024622

/-- `A304521(n)+a(n-1)` -/
def P7295314371881095593.Spec : Prop :=
  ∀ n, P7295314371881095593.a n = A024622 n

end A024622

/-! ## A024622.P8308014307689950550

`A182908(A028310(n))+A057427(n)`
-/

namespace A024622.P8308014307689950550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (A028310 n).toNat + A057427 n

end

end A024622.P8308014307689950550

namespace A024622

/-- `A182908(A028310(n))+A057427(n)` -/
def P8308014307689950550.Spec : Prop :=
  ∀ n, P8308014307689950550.a n = A024622 n

end A024622

/-! ## A024622.P5608366797865123866

`A182908(A028310(n))-A057428(n)`
-/

namespace A024622.P5608366797865123866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (A028310 n).toNat - A057428 n

end

end A024622.P5608366797865123866

namespace A024622

/-- `A182908(A028310(n))-A057428(n)` -/
def P5608366797865123866.Spec : Prop :=
  ∀ n, P5608366797865123866.a n = A024622 n

end A024622

/-! ## A024622.P11743492470616096736

`record[A182908(A344180(n))+A057427(n)]`
-/

namespace A024622.P11743492470616096736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (A344180 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024622.P11743492470616096736

namespace A024622

/-- `record[A182908(A344180(n))+A057427(n)]` -/
def P11743492470616096736.Spec : Prop :=
  ∀ n, P11743492470616096736.a n = A024622 n

end A024622

/-! ## A024622.P6196858342671227801

`A182908(A065033(2*n))+A019431(2*n)`
-/

namespace A024622.P6196858342671227801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (A065033 (2 * n)).toNat + A019431 (2 * n)

end

end A024622.P6196858342671227801

namespace A024622

/-- `A182908(A065033(2*n))+A019431(2*n)` -/
def P6196858342671227801.Spec : Prop :=
  ∀ n, P6196858342671227801.a n = A024622 n

end A024622

/-! ## A024622.P5701671599812629816

`A182908(n+1)-A244508(n)`
-/

namespace A024622.P5701671599812629816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (n + 1) - A244508 n

end

end A024622.P5701671599812629816

namespace A024622

/-- `A182908(n+1)-A244508(n)` -/
def P5701671599812629816.Spec : Prop :=
  ∀ n, P5701671599812629816.a n = A024622 n

end A024622

/-!
# A024623: a(n) is the number of prime powers <= 3^n.

The programs for A024623, the canonical program `A024623.P17142202958174441954` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024623 has offset 0).

The definition of A024623 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024623.P17142202958174441954

`A065515(3^n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024623

/-- `A065515(3^n)` -/
def P17142202958174441954.Spec : Prop :=
  ∀ n, P17142202958174441954.a n = A024623 n

theorem P17142202958174441954.correct : P17142202958174441954.Spec := by
  intro n
  simp only [A024623]

end A024623

/-! ## A024623.P7124777909905237446

`A025528(3^n)+1`
-/

namespace A024623.P7124777909905237446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (3 ^ n) + 1

end

end A024623.P7124777909905237446

namespace A024623

/-- `A025528(3^n)+1` -/
def P7124777909905237446.Spec : Prop :=
  ∀ n, P7124777909905237446.a n = A024623 n

end A024623

/-! ## A024623.P17111755956172758289

`record[A025528(A125824(n))+1]`
-/

namespace A024623.P17111755956172758289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A125824 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024623.P17111755956172758289

namespace A024623

/-- `record[A025528(A125824(n))+1]` -/
def P17111755956172758289.Spec : Prop :=
  ∀ n, P17111755956172758289.a n = A024623 n

end A024623

/-! ## A024623.P3826746000339085311

`ceil(A025528(A000244(n))+1/(n+1))`
-/

namespace A024623.P3826746000339085311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025528 (A000244 n).toNat : ℚ) + 1 / (n + 1 : ℚ)⌉

end

end A024623.P3826746000339085311

namespace A024623

/-- `ceil(A025528(A000244(n))+1/(n+1))` -/
def P3826746000339085311.Spec : Prop :=
  ∀ n, P3826746000339085311.a n = A024623 n

end A024623

/-! ## A024623.P6874175676738494559

`A052307(n)+A025528(A000244(n))`
-/

namespace A024623.P6874175676738494559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n + A025528 (A000244 n).toNat

end

end A024623.P6874175676738494559

namespace A024623

/-- `A052307(n)+A025528(A000244(n))` -/
def P6874175676738494559.Spec : Prop :=
  ∀ n, P6874175676738494559.a n = A024623 n

end A024623

/-!
# A024624: a(n) is the position of square of n-th prime among the powers of primes (A000961).

The programs for A024624, there is no canonical definition to state claims against.
-/

/-! ## A024624.P11123822709660788144

`A024626(A024620(n+1))`
-/

namespace A024624.P11123822709660788144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024626 (A024620 (n + 1)).toNat

end

end A024624.P11123822709660788144

/-! ## A024624.P12332725234316039034

`eq[2, A025474(n+1)]+1`
-/

namespace A024624.P12332725234316039034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024624.P12332725234316039034

/-! ## A024624.P438016445398796098

`eq[2, A025474(A028310(n))]`
-/

namespace A024624.P438016445398796098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024624.P438016445398796098

/-! ## A024624.P15844484315978582165

`A020725(eq[3, A086454(n+1)])`
-/

namespace A024624.P15844484315978582165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024624.P15844484315978582165

/-! ## A024624.P2648157385831722495

`A025528(p?[round(8*n/7)]²)+1`
-/

namespace A024624.P2648157385831722495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat + 1

end

end A024624.P2648157385831722495

/-! ## A024624.P10938680966283999317

`A025528(A001248(n+1))+1`
-/

namespace A024624.P10938680966283999317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A001248 (n + 1)).toNat + 1

end

end A024624.P10938680966283999317

/-! ## A024624.P10807784843565432433

`A025528(A000040(n+1)²)+1`
-/

namespace A024624.P10807784843565432433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A000040 (n + 1) ^ 2).toNat + 1

end

end A024624.P10807784843565432433

/-! ## A024624.P11463458694862163639

`eq[2, A001222(A000961(n+1))]+1`
-/

namespace A024624.P11463458694862163639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000961 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024624.P11463458694862163639

/-!
# A024625: a(n) is the position of cube of the n-th prime among the powers of primes (A000961).

The programs for A024625, there is no canonical definition to state claims against.
-/

/-! ## A024625.P13899378023464398243

`A024627(A024620(n+1))`
-/

namespace A024625.P13899378023464398243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024627 (A024620 (n + 1)).toNat

end

end A024625.P13899378023464398243

/-! ## A024625.P5455400438327376158

`A024627(A027883(n+1)+1)`
-/

namespace A024625.P5455400438327376158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024627 (A027883 (n + 1) + 1).toNat

end

end A024625.P5455400438327376158

/-! ## A024625.P11904190526015633644

`A024627(A065515(A000040(n+1)))`
-/

namespace A024625.P11904190526015633644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024627 (A065515 (A000040 (n + 1)).toNat).toNat

end

end A024625.P11904190526015633644

/-! ## A024625.P12558077689827452290

`eq[3, A025474(n+1)]+1`
-/

namespace A024625.P12558077689827452290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024625.P12558077689827452290

/-! ## A024625.P9377790472276965297

`eq[4, A086454(n+1)]+1`
-/

namespace A024625.P9377790472276965297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024625.P9377790472276965297

/-!
# A024626: Positions of squares among the powers of primes (A000961).

The programs for A024626, there is no canonical definition to state claims against.
-/

/-! ## A024626.P8262921195422156958

`A025528(A056798(n+1))+1`
-/

namespace A024626.P8262921195422156958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A056798 (n + 1)).toNat + 1

end

end A024626.P8262921195422156958

/-! ## A024626.P6356638371455501427

`A025528(A000961(n+1)²)+1`
-/

namespace A024626.P6356638371455501427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A000961 (n + 1) ^ 2).toNat + 1

end

end A024626.P6356638371455501427

/-! ## A024626.P777001341529621888

`A025528(A000961(n+1)^2)+1`
-/

namespace A024626.P777001341529621888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A000961 (n + 1) ^ 2).toNat + 1

end

end A024626.P777001341529621888

/-! ## A024626.P3813462991368564000

`A025528(record[A034699(n+1)²])+1`
-/

namespace A024626.P3813462991368564000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A024626.P3813462991368564000

/-! ## A024626.P9353149752943280673

`A025528(record[A330691(n+1)²])+1`
-/

namespace A024626.P9353149752943280673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A024626.P9353149752943280673

/-! ## A024626.P11892015318757985956

`A025528((A138929(n+1)/2)²)+1`
-/

namespace A024626.P11892015318757985956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (SequenceMachineLib.roundAway (((A138929 (n + 1) : ℚ) / 2) ^ 2)).toNat + 1

end

end A024626.P11892015318757985956

/-! ## A024626.P1566999190922595419

`A025528(record[(n+1)/A001221(n+1)!]²)+1`
-/

namespace A024626.P1566999190922595419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2)).toNat + 1

end

end A024626.P1566999190922595419

/-! ## A024626.P3473982185685855232

`A025528(A000961(n+1)*A000961(n+1))+1`
-/

namespace A024626.P3473982185685855232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A000961 (n + 1) * A000961 (n + 1)).toNat + 1

end

end A024626.P3473982185685855232

/-!
# A024627: Positions of cubes among the powers of primes (A000961).

The programs for A024627, there is no canonical definition to state claims against.
-/

/-! ## A024627.P8824621607391696286

`record[A322981(Δ[∑[n]²])+1]`
-/

namespace A024627.P8824621607391696286
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322981 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024627.P8824621607391696286

/-! ## A024627.P17406530793468362246

`record[A095874((n+1)^3)]`
-/

namespace A024627.P17406530793468362246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 ((n + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024627.P17406530793468362246

/-! ## A024627.P11415580423342628622

`A065515(A000961(n+1)^3)`
-/

namespace A024627.P11415580423342628622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A000961 (n + 1) ^ 3).toNat

end

end A024627.P11415580423342628622

/-! ## A024627.P13121572350740160203

`A095874(A000961(n+1)^3)`
-/

namespace A024627.P13121572350740160203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (A000961 (n + 1) ^ 3).toNat

end

end A024627.P13121572350740160203

/-! ## A024627.P3101154449818130922

`A097621(A000961(n+1)^3)`
-/

namespace A024627.P3101154449818130922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 (A000961 (n + 1) ^ 3).toNat

end

end A024627.P3101154449818130922

/-!
# A024628: Odd numbers k such that neither k nor k + 2 is a power of a prime.

The programs for A024628, the canonical program `A024628.P14360975281112832861` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024628 has offset 1).

The definition of A024628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7553 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024628.P6039864012293250252

`∩[A061346(n+1)-2, A061346(n+1)]`
-/

namespace A024628.P6039864012293250252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024628.P6039864012293250252

namespace A024628

/-- `∩[A061346(n+1)-2, A061346(n+1)]` -/
def P6039864012293250252.Spec : Prop :=
  ∀ n, (P6039864012293250252.a n : ℤ) = A024628 (n + 1)

end A024628

/-! ## A024628.P14360975281112832861

`A061346(eq[2, A061346(n+2)-A061346(n+1)]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A024628

/-- `A061346(eq[2, A061346(n+2)-A061346(n+1)]+1)` -/
def P14360975281112832861.Spec : Prop :=
  ∀ n, P14360975281112832861.a n = A024628 (n + 1)

theorem P14360975281112832861.correct : P14360975281112832861.Spec := by
  intro n
  simp only [A024628, Nat.add_sub_cancel]

end A024628

/-! ## A024628.P8958961989331570288

`A061346(eq[2, A061346(n+2)%A061346(n+1)]+1)`
-/

namespace A024628.P8958961989331570288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061346 (n + 2)) (A061346 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A024628.P8958961989331570288

namespace A024628

/-- `A061346(eq[2, A061346(n+2)%A061346(n+1)]+1)` -/
def P8958961989331570288.Spec : Prop :=
  ∀ n, P8958961989331570288.a n = A024628 (n + 1)

end A024628

/-! ## A024628.P948979418841991596

`∩[A156683(n+1)-2, A156683(n+1)]`
-/

namespace A024628.P948979418841991596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024628.P948979418841991596

namespace A024628

/-- `∩[A156683(n+1)-2, A156683(n+1)]` -/
def P948979418841991596.Spec : Prop :=
  ∀ n, (P948979418841991596.a n : ℤ) = A024628 (n + 1)

end A024628

/-! ## A024628.P15306896841149586569

`A005408(eq[A020500(2*n+1), A020500(2*n+3)])`
-/

namespace A024628.P15306896841149586569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024628.P15306896841149586569

namespace A024628

/-- `A005408(eq[A020500(2*n+1), A020500(2*n+3)])` -/
def P15306896841149586569.Spec : Prop :=
  ∀ n, P15306896841149586569.a n = A024628 (n + 1)

end A024628

/-! ## A024628.P13174602099981899420

`A005408(eq[A120007(2*n+1), A120007(2*n+3)])`
-/

namespace A024628.P13174602099981899420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024628.P13174602099981899420

namespace A024628

/-- `A005408(eq[A120007(2*n+1), A120007(2*n+3)])` -/
def P13174602099981899420.Spec : Prop :=
  ∀ n, P13174602099981899420.a n = A024628 (n + 1)

end A024628

/-! ## A024628.P12084132304420756214

`eq[A073610(n+4)+A020513(2*(n+2)), A020513(2*n)]`
-/

namespace A024628.P12084132304420756214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 4) + A020513 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024628.P12084132304420756214

namespace A024628

/-- `eq[A073610(n+4)+A020513(2*(n+2)), A020513(2*n)]` -/
def P12084132304420756214.Spec : Prop :=
  ∀ n, (P12084132304420756214.a n : ℤ) = A024628 (n + 1)

end A024628

/-! ## A024628.P5903081464607971951

`A005408(eq[A072211(2*n+1), A072211(2*n+3)])`
-/

namespace A024628.P5903081464607971951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072211 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072211 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024628.P5903081464607971951

namespace A024628

/-- `A005408(eq[A072211(2*n+1), A072211(2*n+3)])` -/
def P5903081464607971951.Spec : Prop :=
  ∀ n, P5903081464607971951.a n = A024628 (n + 1)

end A024628

/-!
# A024629: n written in fractional base 3/2.

The programs for A024629, the canonical program `A024629.P12063631112154795864` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024629 has offset 0).

The definition of A024629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024629.P12063631112154795864

`A024637(2*n)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024629

/-- `A024637(2*n)/2` -/
def P12063631112154795864.Spec : Prop :=
  ∀ n, P12063631112154795864.a n = (A024629 n : ℚ)

end A024629

/-! ## A024629.P12036570812918391244

`record[A024637(n)/A102128(n+1)]`
-/

namespace A024629.P12036570812918391244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024637 n : ℚ) / (A102128 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024629.P12036570812918391244

namespace A024629

/-- `record[A024637(n)/A102128(n+1)]` -/
def P12036570812918391244.Spec : Prop :=
  ∀ n, P12036570812918391244.a n = (A024629 n : ℚ)

end A024629

/-! ## A024629.P2322323012658411729

`record[A024637(n)/A280560(n)]`
-/

namespace A024629.P2322323012658411729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024637 n : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024629.P2322323012658411729

namespace A024629

/-- `record[A024637(n)/A280560(n)]` -/
def P2322323012658411729.Spec : Prop :=
  ∀ n, P2322323012658411729.a n = (A024629 n : ℚ)

end A024629

/-! ## A024629.P13382493313953170127

`A024654(3*n)/3`
-/

namespace A024629.P13382493313953170127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024654 (3 * n) : ℚ) / 3

end

end A024629.P13382493313953170127

namespace A024629

/-- `A024654(3*n)/3` -/
def P13382493313953170127.Spec : Prop :=
  ∀ n, P13382493313953170127.a n = (A024629 n : ℚ)

end A024629

/-! ## A024629.P8819120418815487115

`floor(A024654(A008486(n))/3)`
-/

namespace A024629.P8819120418815487115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024654 (A008486 n).toNat : ℚ) / 3⌋

end

end A024629.P8819120418815487115

namespace A024629

/-- `floor(A024654(A008486(n))/3)` -/
def P8819120418815487115.Spec : Prop :=
  ∀ n, P8819120418815487115.a n = A024629 n

end A024629

/-! ## A024629.P1933514368489083482

`A007089(A261691(n))`
-/

namespace A024629.P1933514368489083482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A261691 n).toNat

end

end A024629.P1933514368489083482

namespace A024629

/-- `A007089(A261691(n))` -/
def P1933514368489083482.Spec : Prop :=
  ∀ n, P1933514368489083482.a n = A024629 n

end A024629

/-!
# A024630: n written in fractional base 4/2.

The programs for A024630, the canonical program `A024630.P11457597719607472306` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024630 has offset 0).

The definition of A024630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024630.P11690360725053954691

`ceil(A007088(n)/5)`
-/

namespace A024630.P11690360725053954691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007088 n : ℚ) / 5⌉

end

end A024630.P11690360725053954691

namespace A024630

/-- `ceil(A007088(n)/5)` -/
def P11690360725053954691.Spec : Prop :=
  ∀ n, P11690360725053954691.a n = A024630 n

end A024630

/-! ## A024630.P547511140904278453

`ceil(A169965(n+1)/10)`
-/

namespace A024630.P547511140904278453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A169965 (n + 1) : ℚ) / 10⌉

end

end A024630.P547511140904278453

namespace A024630

/-- `ceil(A169965(n+1)/10)` -/
def P547511140904278453.Spec : Prop :=
  ∀ n, P547511140904278453.a n = A024630 n

end A024630

/-! ## A024630.P1202900955514122184

`ceil((A228071(n)+n)/5)`
-/

namespace A024630.P1202900955514122184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228071 n + (n : ℤ) : ℚ) / 5⌉

end

end A024630.P1202900955514122184

namespace A024630

/-- `ceil((A228071(n)+n)/5)` -/
def P1202900955514122184.Spec : Prop :=
  ∀ n, P1202900955514122184.a n = A024630 n

end A024630

/-! ## A024630.P11710486230915873582

`ceil((A099820(n)-A097256(n))/5)`
-/

namespace A024630.P11710486230915873582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099820 n - A097256 n : ℚ) / 5⌉

end

end A024630.P11710486230915873582

namespace A024630

/-- `ceil((A099820(n)-A097256(n))/5)` -/
def P11710486230915873582.Spec : Prop :=
  ∀ n, P11710486230915873582.a n = A024630 n

end A024630

/-! ## A024630.P8172104413006032583

`ceil((A097256(n)-A204095(n))/5)`
-/

namespace A024630.P8172104413006032583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097256 n - A204095 n : ℚ) / 5⌉

end

end A024630.P8172104413006032583

namespace A024630

/-- `ceil((A097256(n)-A204095(n))/5)` -/
def P8172104413006032583.Spec : Prop :=
  ∀ n, P8172104413006032583.a n = A024630 n

end A024630

/-! ## A024630.P14753029267045558442

`ceil((A204095(n)-A204094(n))/5)`
-/

namespace A024630.P14753029267045558442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204095 n - A204094 n : ℚ) / 5⌉

end

end A024630.P14753029267045558442

namespace A024630

/-- `ceil((A204095(n)-A204094(n))/5)` -/
def P14753029267045558442.Spec : Prop :=
  ∀ n, P14753029267045558442.a n = A024630 n

end A024630

/-! ## A024630.P7819406085223178303

`ceil((A169964(n+1)-A169967(n+1))/5)`
-/

namespace A024630.P7819406085223178303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A169964 (n + 1) - A169967 (n + 1) : ℚ) / 5⌉

end

end A024630.P7819406085223178303

namespace A024630

/-- `ceil((A169964(n+1)-A169967(n+1))/5)` -/
def P7819406085223178303.Spec : Prop :=
  ∀ n, P7819406085223178303.a n = A024630 n

end A024630

/-! ## A024630.P6367024409324734474

`ceil((A169967(n+1)-A169966(n+1))/5)`
-/

namespace A024630.P6367024409324734474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A169967 (n + 1) - A169966 (n + 1) : ℚ) / 5⌉

end

end A024630.P6367024409324734474

namespace A024630

/-- `ceil((A169967(n+1)-A169966(n+1))/5)` -/
def P6367024409324734474.Spec : Prop :=
  ∀ n, P6367024409324734474.a n = A024630 n

end A024630

/-! ## A024630.P8239133259132975394

`A000035(n)+2*A007088(A004526(n))`
-/

namespace A024630.P8239133259132975394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 2 * A007088 (A004526 n).toNat

end

end A024630.P8239133259132975394

namespace A024630

/-- `A000035(n)+2*A007088(A004526(n))` -/
def P8239133259132975394.Spec : Prop :=
  ∀ n, P8239133259132975394.a n = A024630 n

end A024630

/-! ## A024630.P13398288524347590472

`A007088(n)-8*A007088(A004526(n))`
-/

namespace A024630.P13398288524347590472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n - 8 * A007088 (A004526 n).toNat

end

end A024630.P13398288524347590472

namespace A024630

/-- `A007088(n)-8*A007088(A004526(n))` -/
def P13398288524347590472.Spec : Prop :=
  ∀ n, P13398288524347590472.a n = A024630 n

end A024630

/-! ## A024630.P11469123527046440747

`ceil(A014550(A006068(n))/5)`
-/

namespace A024630.P11469123527046440747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014550 (A006068 n).toNat : ℚ) / 5⌉

end

end A024630.P11469123527046440747

namespace A024630

/-- `ceil(A014550(A006068(n))/5)` -/
def P11469123527046440747.Spec : Prop :=
  ∀ n, P11469123527046440747.a n = A024630 n

end A024630

/-! ## A024630.P11457597719607472306

`A024646(2*n)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024630

/-- `A024646(2*n)/2` -/
def P11457597719607472306.Spec : Prop :=
  ∀ n, P11457597719607472306.a n = (A024630 n : ℚ)

end A024630

/-! ## A024630.P3840289328266394506

`ceil(A185544(2*n)/5)`
-/

namespace A024630.P3840289328266394506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185544 (2 * n) : ℚ) / 5⌉

end

end A024630.P3840289328266394506

namespace A024630

/-- `ceil(A185544(2*n)/5)` -/
def P3840289328266394506.Spec : Prop :=
  ∀ n, P3840289328266394506.a n = A024630 n

end A024630

/-! ## A024630.P9552687906030420026

`ceil(round(A099821(n+1)/10)/5)`
-/

namespace A024630.P9552687906030420026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway ((A099821 (n + 1) : ℚ) / 10) : ℚ) / 5⌉

end

end A024630.P9552687906030420026

namespace A024630

/-- `ceil(round(A099821(n+1)/10)/5)` -/
def P9552687906030420026.Spec : Prop :=
  ∀ n, P9552687906030420026.a n = A024630 n

end A024630

/-! ## A024630.P16573753993512144932

`ceil(A007089(A005836(n+1))/5)`
-/

namespace A024630.P16573753993512144932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007089 (A005836 (n + 1)).toNat : ℚ) / 5⌉

end

end A024630.P16573753993512144932

namespace A024630

/-- `ceil(A007089(A005836(n+1))/5)` -/
def P16573753993512144932.Spec : Prop :=
  ∀ n, P16573753993512144932.a n = A024630 n

end A024630

/-! ## A024630.P6499737849418730849

`ceil(A007089(A005823(n+1)/2)/5)`
-/

namespace A024630.P6499737849418730849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007089 (SequenceMachineLib.roundAway ((A005823 (n + 1) : ℚ) / 2)).toNat : ℚ) / 5⌉

end

end A024630.P6499737849418730849

namespace A024630

/-- `ceil(A007089(A005823(n+1)/2)/5)` -/
def P6499737849418730849.Spec : Prop :=
  ∀ n, P6499737849418730849.a n = A024630 n

end A024630

/-! ## A024630.P2166472283270445543

`A007090(lt[A059905(n), 2])`
-/

namespace A024630.P2166472283270445543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A024630.P2166472283270445543

namespace A024630

/-- `A007090(lt[A059905(n), 2])` -/
def P2166472283270445543.Spec : Prop :=
  ∀ n, P2166472283270445543.a n = A024630 n

end A024630

/-! ## A024630.P6777716495165910631

`∩[A007090(n), A024635(n)]`
-/

namespace A024630.P6777716495165910631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024630.P6777716495165910631

namespace A024630

/-- `∩[A007090(n), A024635(n)]` -/
def P6777716495165910631.Spec : Prop :=
  ∀ n, (P6777716495165910631.a n : ℤ) = A024630 n

end A024630

/-! ## A024630.P7924423495220328171

`∩[A007090(n), A024644(n)]`
-/

namespace A024630.P7924423495220328171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024630.P7924423495220328171

namespace A024630

/-- `∩[A007090(n), A024644(n)]` -/
def P7924423495220328171.Spec : Prop :=
  ∀ n, (P7924423495220328171.a n : ℤ) = A024630 n

end A024630

/-! ## A024630.P4035867227874124526

`∩[A058186(n+1), A007090(n)]`
-/

namespace A024630.P4035867227874124526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024630.P4035867227874124526

namespace A024630

/-- `∩[A058186(n+1), A007090(n)]` -/
def P4035867227874124526.Spec : Prop :=
  ∀ n, (P4035867227874124526.a n : ℤ) = A024630 n

end A024630

/-!
# A024631: n written in fractional base 4/3.

The programs for A024631, the canonical program `A024631.P17546350862177043467` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024631 has offset 0).

The definition of A024631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024631.P15565435194323662899

`A024648(2*n)/2`
-/

namespace A024631.P15565435194323662899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024648 (2 * n) : ℚ) / 2

end

end A024631.P15565435194323662899

namespace A024631

/-- `A024648(2*n)/2` -/
def P15565435194323662899.Spec : Prop :=
  ∀ n, P15565435194323662899.a n = (A024631 n : ℚ)

end A024631

/-! ## A024631.P17546350862177043467

`floor(A024648(A004277(n))/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024631

/-- `floor(A024648(A004277(n))/2)` -/
def P17546350862177043467.Spec : Prop :=
  ∀ n, P17546350862177043467.a n = A024631 n

theorem P17546350862177043467.correct : P17546350862177043467.Spec := by
  intro n
  simp only [A024631]

end A024631

/-! ## A024631.P14357949517930733169

`record[A024648(n)/A102128(n+1)]`
-/

namespace A024631.P14357949517930733169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024648 n : ℚ) / (A102128 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024631.P14357949517930733169

namespace A024631

/-- `record[A024648(n)/A102128(n+1)]` -/
def P14357949517930733169.Spec : Prop :=
  ∀ n, P14357949517930733169.a n = (A024631 n : ℚ)

end A024631

/-! ## A024631.P12712622446725682085

`ceil(A024648(A004277(n))/2-A000007(n))`
-/

namespace A024631.P12712622446725682085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024648 (A004277 n).toNat : ℚ) / 2 - (A000007 n : ℚ)⌉

end

end A024631.P12712622446725682085

namespace A024631

/-- `ceil(A024648(A004277(n))/2-A000007(n))` -/
def P12712622446725682085.Spec : Prop :=
  ∀ n, P12712622446725682085.a n = A024631 n

end A024631

/-! ## A024631.P5097762944150944170

`record[A024648(n)/A280560(n)]`
-/

namespace A024631.P5097762944150944170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024648 n : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024631.P5097762944150944170

namespace A024631

/-- `record[A024648(n)/A280560(n)]` -/
def P5097762944150944170.Spec : Prop :=
  ∀ n, P5097762944150944170.a n = (A024631 n : ℚ)

end A024631

/-! ## A024631.P13692927320097323712

`record[A024648(n)/A002448(n²)]`
-/

namespace A024631.P13692927320097323712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024648 n : ℚ) / (A002448 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024631.P13692927320097323712

namespace A024631

/-- `record[A024648(n)/A002448(n²)]` -/
def P13692927320097323712.Spec : Prop :=
  ∀ n, P13692927320097323712.a n = (A024631 n : ℚ)

end A024631

/-!
# A024632: n written in fractional base 5/2.

The programs for A024632, the canonical program `A024632.P17937392516043720595` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024632 has offset 0).

The definition of A024632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024632.P17937392516043720595

`10*a(2*floor(n/5))+n%5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024632

/-- `10*a(2*floor(n/5))+n%5` -/
def P17937392516043720595.Spec : Prop :=
  ∀ n, (P17937392516043720595.a n : ℤ) = A024632 n

theorem P17937392516043720595.correct : P17937392516043720595.Spec := by
  intro n
  simp only [A024632]

end A024632

/-! ## A024632.P4164618096007877338

`A024659(2*n)/2`
-/

namespace A024632.P4164618096007877338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024659 (2 * n) : ℚ) / 2

end

end A024632.P4164618096007877338

namespace A024632

/-- `A024659(2*n)/2` -/
def P4164618096007877338.Spec : Prop :=
  ∀ n, P4164618096007877338.a n = (A024632 n : ℚ)

end A024632

/-! ## A024632.P10576048533856391139

`record[A024659(and(3, n)+n)/2]`
-/

namespace A024632.P10576048533856391139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024659 (Nat.land 3 n + n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024632.P10576048533856391139

namespace A024632

/-- `record[A024659(and(3, n)+n)/2]` -/
def P10576048533856391139.Spec : Prop :=
  ∀ n, P10576048533856391139.a n = (A024632 n : ℚ)

end A024632

/-! ## A024632.P18156985067813023129

`record[A024659(n)/A102128(n+1)]`
-/

namespace A024632.P18156985067813023129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024659 n : ℚ) / (A102128 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024632.P18156985067813023129

namespace A024632

/-- `record[A024659(n)/A102128(n+1)]` -/
def P18156985067813023129.Spec : Prop :=
  ∀ n, P18156985067813023129.a n = (A024632 n : ℚ)

end A024632

/-! ## A024632.P7437446195065560522

`floor(A024659(Δ[n²])/2)`
-/

namespace A024632.P7437446195065560522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024659 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋

end

end A024632.P7437446195065560522

namespace A024632

/-- `floor(A024659(Δ[n²])/2)` -/
def P7437446195065560522.Spec : Prop :=
  ∀ n, P7437446195065560522.a n = A024632 n

end A024632

/-! ## A024632.P2001105466797854554

`record[A024659(n)/Δ[A052938(n)]]`
-/

namespace A024632.P2001105466797854554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024659 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024632.P2001105466797854554

namespace A024632

/-- `record[A024659(n)/Δ[A052938(n)]]` -/
def P2001105466797854554.Spec : Prop :=
  ∀ n, P2001105466797854554.a n = (A024632 n : ℚ)

end A024632

/-! ## A024632.P11333277813255052650

`record[A024659(n)/2-A000035(n)]`
-/

namespace A024632.P11333277813255052650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024659 n : ℚ) / 2 - (A000035 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024632.P11333277813255052650

namespace A024632

/-- `record[A024659(n)/2-A000035(n)]` -/
def P11333277813255052650.Spec : Prop :=
  ∀ n, P11333277813255052650.a n = (A024632 n : ℚ)

end A024632

/-! ## A024632.P4514931278440195064

`A014682(A024659(2*n))`
-/

namespace A024632.P4514931278440195064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024659 (2 * n)).toNat

end

end A024632.P4514931278440195064

namespace A024632

/-- `A014682(A024659(2*n))` -/
def P4514931278440195064.Spec : Prop :=
  ∀ n, P4514931278440195064.a n = A024632 n

end A024632

/-! ## A024632.P644858140118206619

`record[A142150(A024659(n))]`
-/

namespace A024632.P644858140118206619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A024659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024632.P644858140118206619

namespace A024632

/-- `record[A142150(A024659(n))]` -/
def P644858140118206619.Spec : Prop :=
  ∀ n, P644858140118206619.a n = A024632 n

end A024632

/-! ## A024632.P2768964131491452637

`A004526(A024659(2*n+1))`
-/

namespace A024632.P2768964131491452637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024659 (2 * n + 1)).toNat

end

end A024632.P2768964131491452637

namespace A024632

/-- `A004526(A024659(2*n+1))` -/
def P2768964131491452637.Spec : Prop :=
  ∀ n, P2768964131491452637.a n = A024632 n

end A024632

/-! ## A024632.P10652630996852815739

`record[A001057(A024659(n+1)-1)]`
-/

namespace A024632.P10652630996852815739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A024659 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024632.P10652630996852815739

namespace A024632

/-- `record[A001057(A024659(n+1)-1)]` -/
def P10652630996852815739.Spec : Prop :=
  ∀ n, P10652630996852815739.a n = A024632 n

end A024632

/-! ## A024632.P1947122191795757669

`A142150(A024659(2*n+1)-1)`
-/

namespace A024632.P1947122191795757669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A024659 (2 * n + 1) - 1).toNat

end

end A024632.P1947122191795757669

namespace A024632

/-- `A142150(A024659(2*n+1)-1)` -/
def P1947122191795757669.Spec : Prop :=
  ∀ n, P1947122191795757669.a n = A024632 n

end A024632

/-! ## A024632.P8019938666023645170

`record[A000035(n)-A001057(A024659(n))]`
-/

namespace A024632.P8019938666023645170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A001057 (A024659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024632.P8019938666023645170

namespace A024632

/-- `record[A000035(n)-A001057(A024659(n))]` -/
def P8019938666023645170.Spec : Prop :=
  ∀ n, P8019938666023645170.a n = A024632 n

end A024632

/-! ## A024632.P2621937350742236676

`A000035(2*n)-A001057(A024659(2*n))`
-/

namespace A024632.P2621937350742236676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A001057 (A024659 (2 * n)).toNat

end

end A024632.P2621937350742236676

namespace A024632

/-- `A000035(2*n)-A001057(A024659(2*n))` -/
def P2621937350742236676.Spec : Prop :=
  ∀ n, P2621937350742236676.a n = A024632 n

end A024632

/-! ## A024632.P11506534001220653277

`A142150(A142150(2*n+1)+A024659(2*n))`
-/

namespace A024632.P11506534001220653277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 (2 * n + 1) + A024659 (2 * n)).toNat

end

end A024632.P11506534001220653277

namespace A024632

/-- `A142150(A142150(2*n+1)+A024659(2*n))` -/
def P11506534001220653277.Spec : Prop :=
  ∀ n, P11506534001220653277.a n = A024632 n

end A024632

/-! ## A024632.P206062260370657858

`A024659(2*n+1)-A052938(A024659(2*n))`
-/

namespace A024632.P206062260370657858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024659 (2 * n + 1) - A052938 (A024659 (2 * n)).toNat

end

end A024632.P206062260370657858

namespace A024632

/-- `A024659(2*n+1)-A052938(A024659(2*n))` -/
def P206062260370657858.Spec : Prop :=
  ∀ n, P206062260370657858.a n = A024632 n

end A024632

/-!
# A024633: n written in fractional base 5/3.

The programs for A024633, the canonical program `A024633.P9984867316754554066` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024633 has offset 0).

The definition of A024633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024633.P9984867316754554066

`10*a(3*floor(n/5))+n%5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024633

/-- `10*a(3*floor(n/5))+n%5` -/
def P9984867316754554066.Spec : Prop :=
  ∀ n, (P9984867316754554066.a n : ℤ) = A024633 n

theorem P9984867316754554066.correct : P9984867316754554066.Spec := by
  intro n
  simp only [A024633]

end A024633

/-! ## A024633.P18086274974773259441

`A024661(2*n)/2`
-/

namespace A024633.P18086274974773259441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024661 (2 * n) : ℚ) / 2

end

end A024633.P18086274974773259441

namespace A024633

/-- `A024661(2*n)/2` -/
def P18086274974773259441.Spec : Prop :=
  ∀ n, P18086274974773259441.a n = (A024633 n : ℚ)

end A024633

/-! ## A024633.P15995129897774795778

`ceil(A024661(A005843(n))/2)`
-/

namespace A024633.P15995129897774795778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024661 (A005843 n).toNat : ℚ) / 2⌉

end

end A024633.P15995129897774795778

namespace A024633

/-- `ceil(A024661(A005843(n))/2)` -/
def P15995129897774795778.Spec : Prop :=
  ∀ n, P15995129897774795778.a n = A024633 n

end A024633

/-! ## A024633.P2525078656820559931

`record[A024661(n)/A102128(n+1)]`
-/

namespace A024633.P2525078656820559931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024661 n : ℚ) / (A102128 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024633.P2525078656820559931

namespace A024633

/-- `record[A024661(n)/A102128(n+1)]` -/
def P2525078656820559931.Spec : Prop :=
  ∀ n, P2525078656820559931.a n = (A024633 n : ℚ)

end A024633

/-! ## A024633.P1811517583398312895

`record[A024661(n)/A280560(n)]`
-/

namespace A024633.P1811517583398312895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024661 n : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024633.P1811517583398312895

namespace A024633

/-- `record[A024661(n)/A280560(n)]` -/
def P1811517583398312895.Spec : Prop :=
  ∀ n, P1811517583398312895.a n = (A024633 n : ℚ)

end A024633

/-! ## A024633.P6304371313869387515

`record[A024661(n)/A266662(A289207(n))]`
-/

namespace A024633.P6304371313869387515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024661 n : ℚ) / (A266662 (A289207 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024633.P6304371313869387515

namespace A024633

/-- `record[A024661(n)/A266662(A289207(n))]` -/
def P6304371313869387515.Spec : Prop :=
  ∀ n, P6304371313869387515.a n = (A024633 n : ℚ)

end A024633

/-! ## A024633.P10667988616552178345

`A014682(A024661(2*n))`
-/

namespace A024633.P10667988616552178345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024661 (2 * n)).toNat

end

end A024633.P10667988616552178345

namespace A024633

/-- `A014682(A024661(2*n))` -/
def P10667988616552178345.Spec : Prop :=
  ∀ n, P10667988616552178345.a n = A024633 n

end A024633

/-!
# A024634: n written in fractional base 5/4.

The programs for A024634, the canonical program `A024634.P1187760278115695196` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024634 has offset 0).

The definition of A024634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024634.P1187760278115695196

`10*a(4*floor(n/5))+n%5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024634

/-- `10*a(4*floor(n/5))+n%5` -/
def P1187760278115695196.Spec : Prop :=
  ∀ n, (P1187760278115695196.a n : ℤ) = A024634 n

theorem P1187760278115695196.correct : P1187760278115695196.Spec := by
  intro n
  simp only [A024634]

end A024634

/-! ## A024634.P6274855784405453001

`A024663(2*n)/2`
-/

namespace A024634.P6274855784405453001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 (2 * n) : ℚ) / 2

end

end A024634.P6274855784405453001

namespace A024634

/-- `A024663(2*n)/2` -/
def P6274855784405453001.Spec : Prop :=
  ∀ n, P6274855784405453001.a n = (A024634 n : ℚ)

end A024634

/-! ## A024634.P7890219279364719643

`record[A024663(n)/A102128(n+1)]`
-/

namespace A024634.P7890219279364719643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 n : ℚ) / (A102128 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024634.P7890219279364719643

namespace A024634

/-- `record[A024663(n)/A102128(n+1)]` -/
def P7890219279364719643.Spec : Prop :=
  ∀ n, P7890219279364719643.a n = (A024634 n : ℚ)

end A024634

/-! ## A024634.P13035870553633957540

`record[A024663(n)/A266256(n)]`
-/

namespace A024634.P13035870553633957540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 n : ℚ) / (A266256 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024634.P13035870553633957540

namespace A024634

/-- `record[A024663(n)/A266256(n)]` -/
def P13035870553633957540.Spec : Prop :=
  ∀ n, P13035870553633957540.a n = (A024634 n : ℚ)

end A024634

/-! ## A024634.P13436679158798258504

`record[A024663(n)/A280193(n)]`
-/

namespace A024634.P13436679158798258504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 n : ℚ) / (A280193 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024634.P13436679158798258504

namespace A024634

/-- `record[A024663(n)/A280193(n)]` -/
def P13436679158798258504.Spec : Prop :=
  ∀ n, P13436679158798258504.a n = (A024634 n : ℚ)

end A024634

/-! ## A024634.P952439051021189374

`record[A024663(n)/A280560(n)]`
-/

namespace A024634.P952439051021189374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 n : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024634.P952439051021189374

namespace A024634

/-- `record[A024663(n)/A280560(n)]` -/
def P952439051021189374.Spec : Prop :=
  ∀ n, P952439051021189374.a n = (A024634 n : ℚ)

end A024634

/-!
# A024635: n written in fractional base 6/2.

The programs for A024635, the canonical program `A024635.P13832029080543762616` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024635 has offset 0).

The definition of A024635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024635.P13832029080543762616

`10*a(2*floor(n/6))+n%6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024635

/-- `10*a(2*floor(n/6))+n%6` -/
def P13832029080543762616.Spec : Prop :=
  ∀ n, (P13832029080543762616.a n : ℤ) = A024635 n

theorem P13832029080543762616.correct : P13832029080543762616.Spec := by
  intro n
  simp only [A024635]

end A024635

/-! ## A024635.P16919950618430610641

`ceil(A007089(floor(3*n/2))/5)`
-/

namespace A024635.P16919950618430610641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007089 ⌊3 * ((n : ℚ) / 2)⌋.toNat : ℚ) / 5⌉

end

end A024635.P16919950618430610641

namespace A024635

/-- `ceil(A007089(floor(3*n/2))/5)` -/
def P16919950618430610641.Spec : Prop :=
  ∀ n, P16919950618430610641.a n = A024635 n

end A024635

/-! ## A024635.P14955985600280980100

`ceil(record[lcm(n%3, A007089(n+1))]/5)`
-/

namespace A024635.P14955985600280980100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 3 : ℕ) : ℤ) (A007089 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 5⌉

end

end A024635.P14955985600280980100

namespace A024635

/-- `ceil(record[lcm(n%3, A007089(n+1))]/5)` -/
def P14955985600280980100.Spec : Prop :=
  ∀ n, P14955985600280980100.a n = A024635 n

end A024635

/-! ## A024635.P11795776082071247240

`ceil(record[A007089(n)*A131713(n)]/5)`
-/

namespace A024635.P11795776082071247240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n * A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 5⌉

end

end A024635.P11795776082071247240

namespace A024635

/-- `ceil(record[A007089(n)*A131713(n)]/5)` -/
def P11795776082071247240.Spec : Prop :=
  ∀ n, P11795776082071247240.a n = A024635 n

end A024635

/-! ## A024635.P6089743662789133774

`A024644(record[gcd(n, A292373(2*n))])`
-/

namespace A024635.P6089743662789133774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A292373 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A024635.P6089743662789133774

namespace A024635

/-- `A024644(record[gcd(n, A292373(2*n))])` -/
def P6089743662789133774.Spec : Prop :=
  ∀ n, P6089743662789133774.a n = A024635 n

end A024635

/-! ## A024635.P7490633657936609025

`A024644(eq[A059905(2*n), A292371(2*n)])`
-/

namespace A024635.P7490633657936609025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024635.P7490633657936609025

namespace A024635

/-- `A024644(eq[A059905(2*n), A292371(2*n)])` -/
def P7490633657936609025.Spec : Prop :=
  ∀ n, P7490633657936609025.a n = A024635 n

end A024635

/-! ## A024635.P9267199924918529144

`eq[1, A181061(floor(n/2))]`
-/

namespace A024635.P9267199924918529144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024635.P9267199924918529144

namespace A024635

/-- `eq[1, A181061(floor(n/2))]` -/
def P9267199924918529144.Spec : Prop :=
  ∀ n, (P9267199924918529144.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P17363109408068487788

`∩[A007092(n), A024644(n)]`
-/

namespace A024635.P17363109408068487788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024635.P17363109408068487788

namespace A024635

/-- `∩[A007092(n), A024644(n)]` -/
def P17363109408068487788.Spec : Prop :=
  ∀ n, (P17363109408068487788.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P18385033514019835919

`∩[A007092(n), A024657(n)]`
-/

namespace A024635.P18385033514019835919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024635.P18385033514019835919

namespace A024635

/-- `∩[A007092(n), A024657(n)]` -/
def P18385033514019835919.Spec : Prop :=
  ∀ n, (P18385033514019835919.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P1937943294686019715

`lt[A054055(floor(n/2)), 3]`
-/

namespace A024635.P1937943294686019715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024635.P1937943294686019715

namespace A024635

/-- `lt[A054055(floor(n/2)), 3]` -/
def P1937943294686019715.Spec : Prop :=
  ∀ n, (P1937943294686019715.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P2036606704260401553

`lt[A086066(floor(n/2)), 8]`
-/

namespace A024635.P2036606704260401553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024635.P2036606704260401553

namespace A024635

/-- `lt[A086066(floor(n/2)), 8]` -/
def P2036606704260401553.Spec : Prop :=
  ∀ n, (P2036606704260401553.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P17400588603534839465

`eq[0, A102671(A004526(n))]`
-/

namespace A024635.P17400588603534839465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024635.P17400588603534839465

namespace A024635

/-- `eq[0, A102671(A004526(n))]` -/
def P17400588603534839465.Spec : Prop :=
  ∀ n, (P17400588603534839465.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P1926931949503195346

`eq[0, A176407(A123108(n))]`
-/

namespace A024635.P1926931949503195346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 (A123108 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024635.P1926931949503195346

namespace A024635

/-- `eq[0, A176407(A123108(n))]` -/
def P1926931949503195346.Spec : Prop :=
  ∀ n, (P1926931949503195346.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P6787266649319667845

`eq[A004526(n), A064770(A052928(n))]`
-/

namespace A024635.P6787266649319667845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A052928 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024635.P6787266649319667845

namespace A024635

/-- `eq[A004526(n), A064770(A052928(n))]` -/
def P6787266649319667845.Spec : Prop :=
  ∀ n, (P6787266649319667845.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P5876212064173900365

`eq[A004525(n), A064770(A222248(n))]`
-/

namespace A024635.P5876212064173900365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024635.P5876212064173900365

namespace A024635

/-- `eq[A004525(n), A064770(A222248(n))]` -/
def P5876212064173900365.Spec : Prop :=
  ∀ n, (P5876212064173900365.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P16524915219441610671

`eq[A004526(n), A064770(2*A004526(n))]`
-/

namespace A024635.P16524915219441610671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (2 * A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024635.P16524915219441610671

namespace A024635

/-- `eq[A004526(n), A064770(2*A004526(n))]` -/
def P16524915219441610671.Spec : Prop :=
  ∀ n, (P16524915219441610671.a n : ℤ) = A024635 n

end A024635

/-! ## A024635.P4827303146662494191

`eq[A102677(n)+A103181(n)², A103181(n)]`
-/

namespace A024635.P4827303146662494191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n + A103181 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024635.P4827303146662494191

namespace A024635

/-- `eq[A102677(n)+A103181(n)², A103181(n)]` -/
def P4827303146662494191.Spec : Prop :=
  ∀ n, (P4827303146662494191.a n : ℤ) = A024635 n

end A024635

/-!
# A024636: n written in fractional base 6/3.

The programs for A024636, the canonical program `A024636.P2930992894957077945` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024636 has offset 0).

The definition of A024636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024636.P2930992894957077945

`10*a(3*floor(n/6))+n%6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024636

/-- `10*a(3*floor(n/6))+n%6` -/
def P2930992894957077945.Spec : Prop :=
  ∀ n, (P2930992894957077945.a n : ℤ) = A024636 n

theorem P2930992894957077945.correct : P2930992894957077945.Spec := by
  intro n
  simp only [A024636]

end A024636

/-! ## A024636.P15053716796040451744

`A169966(A008620(n))+n%3`
-/

namespace A024636.P15053716796040451744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (A008620 n).toNat + ((n % 3 : ℕ) : ℤ)

end

end A024636.P15053716796040451744

namespace A024636

/-- `A169966(A008620(n))+n%3` -/
def P15053716796040451744.Spec : Prop :=
  ∀ n, P15053716796040451744.a n = A024636 n

end A024636

/-! ## A024636.P10636446967699819327

`A169966(A008620(n))+A010872(n)`
-/

namespace A024636.P10636446967699819327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (A008620 n).toNat + A010872 n

end

end A024636.P10636446967699819327

namespace A024636

/-- `A169966(A008620(n))+A010872(n)` -/
def P10636446967699819327.Spec : Prop :=
  ∀ n, P10636446967699819327.a n = A024636 n

end A024636

/-! ## A024636.P6544722571931532564

`A340051(n)-A204094(A002264(n))`
-/

namespace A024636.P6544722571931532564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 n - A204094 (A002264 n).toNat

end

end A024636.P6544722571931532564

namespace A024636

/-- `A340051(n)-A204094(A002264(n))` -/
def P6544722571931532564.Spec : Prop :=
  ∀ n, P6544722571931532564.a n = A024636 n

end A024636

/-! ## A024636.P18069134981453855596

`A024651(eq[A289814(n)², A289814(n)])`
-/

namespace A024636.P18069134981453855596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024636.P18069134981453855596

namespace A024636

/-- `A024651(eq[A289814(n)², A289814(n)])` -/
def P18069134981453855596.Spec : Prop :=
  ∀ n, P18069134981453855596.a n = A024636 n

end A024636

/-! ## A024636.P10904855436715349081

`A024651(eq[A007949(n+1), A289814(n)])`
-/

namespace A024636.P10904855436715349081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024636.P10904855436715349081

namespace A024636

/-- `A024651(eq[A007949(n+1), A289814(n)])` -/
def P10904855436715349081.Spec : Prop :=
  ∀ n, P10904855436715349081.a n = A024636 n

end A024636

/-! ## A024636.P17700565340138120118

`A024651(eq[A189820(n+1), A289814(n)])`
-/

namespace A024636.P17700565340138120118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024636.P17700565340138120118

namespace A024636

/-- `A024651(eq[A189820(n+1), A289814(n)])` -/
def P17700565340138120118.Spec : Prop :=
  ∀ n, P17700565340138120118.a n = A024636 n

end A024636

/-! ## A024636.P10720430894898903340

`A024651(eq[A289814(n), A332498(n)])`
-/

namespace A024636.P10720430894898903340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024636.P10720430894898903340

namespace A024636

/-- `A024651(eq[A289814(n), A332498(n)])` -/
def P10720430894898903340.Spec : Prop :=
  ∀ n, P10720430894898903340.a n = A024636 n

end A024636

/-! ## A024636.P2779696569281335973

`A024651(eq[A332498(n)², A332498(n)])`
-/

namespace A024636.P2779696569281335973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332498 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024636.P2779696569281335973

namespace A024636

/-- `A024651(eq[A332498(n)², A332498(n)])` -/
def P2779696569281335973.Spec : Prop :=
  ∀ n, P2779696569281335973.a n = A024636 n

end A024636

/-! ## A024636.P15073384044034179948

`∩[A007092(n), A024651(n)]`
-/

namespace A024636.P15073384044034179948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024636.P15073384044034179948

namespace A024636

/-- `∩[A007092(n), A024651(n)]` -/
def P15073384044034179948.Spec : Prop :=
  ∀ n, (P15073384044034179948.a n : ℤ) = A024636 n

end A024636

/-!
# A024637: n written in fractional base 6/4.

The programs for A024637, the canonical program `A024637.P10073110898564660203` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024637 has offset 0).

The definition of A024637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024637.P10073110898564660203

`10*a(4*floor(n/6))+n%6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024637

/-- `10*a(4*floor(n/6))+n%6` -/
def P10073110898564660203.Spec : Prop :=
  ∀ n, (P10073110898564660203.a n : ℤ) = A024637 n

theorem P10073110898564660203.correct : P10073110898564660203.Spec := by
  intro n
  simp only [A024637]

end A024637

/-! ## A024637.P5465416535571951344

`record[A092942(A024654(n))]`
-/

namespace A024637.P5465416535571951344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A024654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024637.P5465416535571951344

namespace A024637

/-- `record[A092942(A024654(n))]` -/
def P5465416535571951344.Spec : Prop :=
  ∀ n, P5465416535571951344.a n = A024637 n

end A024637

/-! ## A024637.P13622544129825943005

`A004396(A024654(ceil(3*n/2)))`
-/

namespace A024637.P13622544129825943005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A024654 ⌈3 * ((n : ℚ) / 2)⌉.toNat).toNat

end

end A024637.P13622544129825943005

namespace A024637

/-- `A004396(A024654(ceil(3*n/2)))` -/
def P13622544129825943005.Spec : Prop :=
  ∀ n, P13622544129825943005.a n = A024637 n

end A024637

/-! ## A024637.P5499834287692231015

`record[A004396(A024654(A004788(n)))]`
-/

namespace A024637.P5499834287692231015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A024654 (A004788 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024637.P5499834287692231015

namespace A024637

/-- `record[A004396(A024654(A004788(n)))]` -/
def P5499834287692231015.Spec : Prop :=
  ∀ n, P5499834287692231015.a n = A024637 n

end A024637

/-! ## A024637.P12981568087237139821

`record[A004396(A024654(A008615(n)))]`
-/

namespace A024637.P12981568087237139821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A024654 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024637.P12981568087237139821

namespace A024637

/-- `record[A004396(A024654(A008615(n)))]` -/
def P12981568087237139821.Spec : Prop :=
  ∀ n, P12981568087237139821.a n = A024637 n

end A024637

/-!
# A024638: n written in fractional base 6/5.

The programs for A024638, the canonical program `A024638.P1514568373431681686` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024638 has offset 0).

The definition of A024638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024638.P1514568373431681686

`10*a(5*floor(n/6))+n%6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024638

/-- `10*a(5*floor(n/6))+n%6` -/
def P1514568373431681686.Spec : Prop :=
  ∀ n, (P1514568373431681686.a n : ℤ) = A024638 n

theorem P1514568373431681686.correct : P1514568373431681686.Spec := by
  intro n
  simp only [A024638]

end A024638

/-! ## A024638.P5439984157426312774

`A235049(A024643(comp[a(n-1)+7]))` with `a(0)=0`
-/

namespace A024638.P5439984157426312774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024643 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A024638.P5439984157426312774

namespace A024638

/-- `A235049(A024643(comp[a(n-1)+7]))` -/
def P5439984157426312774.Spec : Prop :=
  ∀ n, P5439984157426312774.a n = A024638 n

end A024638

/-! ## A024638.P7629714578909971530

`record[A235049(A024643(A025480(n)))]`
-/

namespace A024638.P7629714578909971530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024643 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024638.P7629714578909971530

namespace A024638

/-- `record[A235049(A024643(A025480(n)))]` -/
def P7629714578909971530.Spec : Prop :=
  ∀ n, P7629714578909971530.a n = A024638 n

end A024638

/-! ## A024638.P11405759658492724902

`record[A235049(A024643(A025581(n)))]`
-/

namespace A024638.P11405759658492724902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024643 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024638.P11405759658492724902

namespace A024638

/-- `record[A235049(A024643(A025581(n)))]` -/
def P11405759658492724902.Spec : Prop :=
  ∀ n, P11405759658492724902.a n = A024638 n

end A024638

/-! ## A024638.P6462793877661271182

`record[A235049(A024643(A002260(n+1)))]`
-/

namespace A024638.P6462793877661271182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024643 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024638.P6462793877661271182

namespace A024638

/-- `record[A235049(A024643(A002260(n+1)))]` -/
def P6462793877661271182.Spec : Prop :=
  ∀ n, P6462793877661271182.a n = A024638 n

end A024638

/-!
# A024639: n written in fractional base 7/2.

The programs for A024639, the canonical program `A024639.P8552657626560195108` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024639 has offset 0).

The definition of A024639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024639.P8552657626560195108

`10*a(2*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024639

/-- `10*a(2*floor(n/7))+n%7` -/
def P8552657626560195108.Spec : Prop :=
  ∀ n, (P8552657626560195108.a n : ℤ) = A024639 n

theorem P8552657626560195108.correct : P8552657626560195108.Spec := by
  intro n
  simp only [A024639]

end A024639

/-! ## A024639.P5705783330144102609

`∩[A007093(n), A140281(n)]`
-/

namespace A024639.P5705783330144102609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024639.P5705783330144102609

namespace A024639

/-- `∩[A007093(n), A140281(n)]` -/
def P5705783330144102609.Spec : Prop :=
  ∀ n, (P5705783330144102609.a n : ℤ) = A024639 n

end A024639

/-! ## A024639.P9705728699218722442

`∩[A007093(n), record[A118757(n)]]`
-/

namespace A024639.P9705728699218722442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024639.P9705728699218722442

namespace A024639

/-- `∩[A007093(n), record[A118757(n)]]` -/
def P9705728699218722442.Spec : Prop :=
  ∀ n, (P9705728699218722442.a n : ℤ) = A024639 n

end A024639

/-! ## A024639.P4665408280996547184

`∩[A118761(n+1), A007093(n)]`
-/

namespace A024639.P4665408280996547184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024639.P4665408280996547184

namespace A024639

/-- `∩[A118761(n+1), A007093(n)]` -/
def P4665408280996547184.Spec : Prop :=
  ∀ n, (P4665408280996547184.a n : ℤ) = A024639 n

end A024639

/-!
# A024640: n written in fractional base 7/3.

The programs for A024640, the canonical program `A024640.P13026742837248815174` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024640 has offset 0).

The definition of A024640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024640.P13026742837248815174

`10*a(3*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024640

/-- `10*a(3*floor(n/7))+n%7` -/
def P13026742837248815174.Spec : Prop :=
  ∀ n, (P13026742837248815174.a n : ℤ) = A024640 n

theorem P13026742837248815174.correct : P13026742837248815174.Spec := by
  intro n
  simp only [A024640]

end A024640

/-! ## A024640.P5796629372127718428

`lt[A274619(n)%30, 7]`
-/

namespace A024640.P5796629372127718428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274619 n) 30

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024640.P5796629372127718428

namespace A024640

/-- `lt[A274619(n)%30, 7]` -/
def P5796629372127718428.Spec : Prop :=
  ∀ n, (P5796629372127718428.a n : ℤ) = A024640 n

end A024640

/-! ## A024640.P15285867559465831269

`∩[A024645(n)-1, A024651(n)]`
-/

namespace A024640.P15285867559465831269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024645 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024640.P15285867559465831269

namespace A024640

/-- `∩[A024645(n)-1, A024651(n)]` -/
def P15285867559465831269.Spec : Prop :=
  ∀ n, (P15285867559465831269.a n : ℤ) = A024640 n

end A024640

/-! ## A024640.P9671866251461595605

`∑[A157392(A001316(3*n))]-1`
-/

namespace A024640.P9671866251461595605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157392 (A001316 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A024640.P9671866251461595605

namespace A024640

/-- `∑[A157392(A001316(3*n))]-1` -/
def P9671866251461595605.Spec : Prop :=
  ∀ n, P9671866251461595605.a n = A024640 n

end A024640

/-! ## A024640.P2416975351521482582

`∑[A004525(A109004(A195824(n)))]`
-/

namespace A024640.P2416975351521482582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A109004 (A195824 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024640.P2416975351521482582

namespace A024640

/-- `∑[A004525(A109004(A195824(n)))]` -/
def P2416975351521482582.Spec : Prop :=
  ∀ n, P2416975351521482582.a n = A024640 n

end A024640

/-!
# A024641: n written in fractional base 7/4.

The programs for A024641, the canonical program `A024641.P3641743525588810722` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024641 has offset 0).

The definition of A024641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024641.P3641743525588810722

`10*a(4*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024641

/-- `10*a(4*floor(n/7))+n%7` -/
def P3641743525588810722.Spec : Prop :=
  ∀ n, (P3641743525588810722.a n : ℤ) = A024641 n

theorem P3641743525588810722.correct : P3641743525588810722.Spec := by
  intro n
  simp only [A024641]

end A024641

/-! ## A024641.P3752581481126098161

`record[A235049(A024647(A163352(n)))]`
-/

namespace A024641.P3752581481126098161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024647 (A163352 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024641.P3752581481126098161

namespace A024641

/-- `record[A235049(A024647(A163352(n)))]` -/
def P3752581481126098161.Spec : Prop :=
  ∀ n, P3752581481126098161.a n = A024641 n

end A024641

/-! ## A024641.P8321668499598195743

`∑[and(5*n, -2)^A244170(n+7)]`
-/

namespace A024641.P8321668499598195743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (5 * n : ℤ) (-2) : ℚ) ^ (A244170 (n + 7) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024641.P8321668499598195743

namespace A024641

/-- `∑[and(5*n, -2)^A244170(n+7)]` -/
def P8321668499598195743.Spec : Prop :=
  ∀ n, P8321668499598195743.a n = (A024641 n : ℚ)

end A024641

/-! ## A024641.P3778361560430857652

`∑[(A147479(n+3)+1)^val(n+1, 8)]-1`
-/

namespace A024641.P3778361560430857652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147479 (n + 3) + 1) ^ SequenceMachineLib.valuation (n + 1) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A024641.P3778361560430857652

namespace A024641

/-- `∑[(A147479(n+3)+1)^val(n+1, 8)]-1` -/
def P3778361560430857652.Spec : Prop :=
  ∀ n, P3778361560430857652.a n = A024641 n

end A024641

/-! ## A024641.P12393122224895446300

`∩[A024639(n), A024652(n)]`
-/

namespace A024641.P12393122224895446300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024641.P12393122224895446300

namespace A024641

/-- `∩[A024639(n), A024652(n)]` -/
def P12393122224895446300.Spec : Prop :=
  ∀ n, (P12393122224895446300.a n : ℤ) = A024641 n

end A024641

/-!
# A024642: n written in fractional base 7/5.

The programs for A024642, the canonical program `A024642.P9450409300470968264` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024642 has offset 0).

The definition of A024642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024642.P9450409300470968264

`10*a(5*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024642

/-- `10*a(5*floor(n/7))+n%7` -/
def P9450409300470968264.Spec : Prop :=
  ∀ n, (P9450409300470968264.a n : ℤ) = A024642 n

theorem P9450409300470968264.correct : P9450409300470968264.Spec := by
  intro n
  simp only [A024642]

end A024642

/-! ## A024642.P5160816278398482680

`record[A235049(A024648(A008611(n)))]`
-/

namespace A024642.P5160816278398482680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024648 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024642.P5160816278398482680

namespace A024642

/-- `record[A235049(A024648(A008611(n)))]` -/
def P5160816278398482680.Spec : Prop :=
  ∀ n, P5160816278398482680.a n = A024642 n

end A024642

/-! ## A024642.P13284941053314669086

`record[A235049(A024648(A008612(n)))]`
-/

namespace A024642.P13284941053314669086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024648 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024642.P13284941053314669086

namespace A024642

/-- `record[A235049(A024648(A008612(n)))]` -/
def P13284941053314669086.Spec : Prop :=
  ∀ n, P13284941053314669086.a n = A024642 n

end A024642

/-! ## A024642.P1060625125262632711

`record[A235049(A024648(A025581(n)))]`
-/

namespace A024642.P1060625125262632711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024648 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024642.P1060625125262632711

namespace A024642

/-- `record[A235049(A024648(A025581(n)))]` -/
def P1060625125262632711.Spec : Prop :=
  ∀ n, P1060625125262632711.a n = A024642 n

end A024642

/-! ## A024642.P8102402615564277107

`record[A235049(A024648(A028242(n)))]`
-/

namespace A024642.P8102402615564277107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024648 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024642.P8102402615564277107

namespace A024642

/-- `record[A235049(A024648(A028242(n)))]` -/
def P8102402615564277107.Spec : Prop :=
  ∀ n, P8102402615564277107.a n = A024642 n

end A024642

/-!
# A024643: n written in fractional base 7/6.

The programs for A024643, the canonical program `A024643.P3481866071923284184` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024643 has offset 0).

The definition of A024643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024643.P3481866071923284184

`10*a(6*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024643

/-- `10*a(6*floor(n/7))+n%7` -/
def P3481866071923284184.Spec : Prop :=
  ∀ n, (P3481866071923284184.a n : ℤ) = A024643 n

theorem P3481866071923284184.correct : P3481866071923284184.Spec := by
  intro n
  simp only [A024643]

end A024643

/-! ## A024643.P16187529131713025459

`record[A235049(A024649(A008611(n)))]`
-/

namespace A024643.P16187529131713025459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024649 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024643.P16187529131713025459

namespace A024643

/-- `record[A235049(A024649(A008611(n)))]` -/
def P16187529131713025459.Spec : Prop :=
  ∀ n, P16187529131713025459.a n = A024643 n

end A024643

/-! ## A024643.P12602990693620104059

`record[A235049(A024649(A008612(n)))]`
-/

namespace A024643.P12602990693620104059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024649 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024643.P12602990693620104059

namespace A024643

/-- `record[A235049(A024649(A008612(n)))]` -/
def P12602990693620104059.Spec : Prop :=
  ∀ n, P12602990693620104059.a n = A024643 n

end A024643

/-! ## A024643.P16843168609118176431

`record[A235049(A024649(A025480(n)))]`
-/

namespace A024643.P16843168609118176431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024649 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024643.P16843168609118176431

namespace A024643

/-- `record[A235049(A024649(A025480(n)))]` -/
def P16843168609118176431.Spec : Prop :=
  ∀ n, P16843168609118176431.a n = A024643 n

end A024643

/-! ## A024643.P14125977409768140874

`record[A235049(A024649(A027656(n)))]`
-/

namespace A024643.P14125977409768140874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024649 (A027656 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024643.P14125977409768140874

namespace A024643

/-- `record[A235049(A024649(A027656(n)))]` -/
def P14125977409768140874.Spec : Prop :=
  ∀ n, P14125977409768140874.a n = A024643 n

end A024643

/-!
# A024644: n written in fractional base 8/2.

The programs for A024644, the canonical program `A024644.P1790937507206151574` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024644 has offset 0).

The definition of A024644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024644.P1790937507206151574

`10*a(2*floor(n/8))+n%8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024644

/-- `10*a(2*floor(n/8))+n%8` -/
def P1790937507206151574.Spec : Prop :=
  ∀ n, (P1790937507206151574.a n : ℤ) = A024644 n

theorem P1790937507206151574.correct : P1790937507206151574.Spec := by
  intro n
  simp only [A024644]

end A024644

/-! ## A024644.P6571189501999947955

`ceil(A007090(2*n)/5)`
-/

namespace A024644.P6571189501999947955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007090 (2 * n) : ℚ) / 5⌉

end

end A024644.P6571189501999947955

namespace A024644

/-- `ceil(A007090(2*n)/5)` -/
def P6571189501999947955.Spec : Prop :=
  ∀ n, P6571189501999947955.a n = A024644 n

end A024644

/-! ## A024644.P3089848556817059957

`round(A007090(2*n+1)/5)`
-/

namespace A024644.P3089848556817059957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007090 (2 * n + 1) : ℚ) / 5)

end

end A024644.P3089848556817059957

namespace A024644

/-- `round(A007090(2*n+1)/5)` -/
def P3089848556817059957.Spec : Prop :=
  ∀ n, P3089848556817059957.a n = A024644 n

end A024644

/-! ## A024644.P1814733340504095922

`∩[A007094(n), A024657(n)]`
-/

namespace A024644.P1814733340504095922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024644.P1814733340504095922

namespace A024644

/-- `∩[A007094(n), A024657(n)]` -/
def P1814733340504095922.Spec : Prop :=
  ∀ n, (P1814733340504095922.a n : ℤ) = A024644 n

end A024644

/-! ## A024644.P2186625432045066200

`eq[0, A102673(floor(n/2))]`
-/

namespace A024644.P2186625432045066200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024644.P2186625432045066200

namespace A024644

/-- `eq[0, A102673(floor(n/2))]` -/
def P2186625432045066200.Spec : Prop :=
  ∀ n, (P2186625432045066200.a n : ℤ) = A024644 n

end A024644

/-! ## A024644.P8809460420916562788

`lt[A086066(ceil((n-1)/2)), 16]`
-/

namespace A024644.P8809460420916562788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024644.P8809460420916562788

namespace A024644

/-- `lt[A086066(ceil((n-1)/2)), 16]` -/
def P8809460420916562788.Spec : Prop :=
  ∀ n, (P8809460420916562788.a n : ℤ) = A024644 n

end A024644

/-! ## A024644.P411881820151245054

`lt[A054055(∑[char[2*(n+1)]]), 4]`
-/

namespace A024644.P411881820151245054
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (∑ j ∈ Finset.range (n + 1), f2 j)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A024644.P411881820151245054

namespace A024644

/-- `lt[A054055(∑[char[2*(n+1)]]), 4]` -/
def P411881820151245054.Spec : Prop :=
  ∀ n, (P411881820151245054.a n : ℤ) = A024644 n

end A024644

/-! ## A024644.P9872725388461590210

`eq[n, A222254(A003100(n))]`
-/

namespace A024644.P9872725388461590210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A003100 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024644.P9872725388461590210

namespace A024644

/-- `eq[n, A222254(A003100(n))]` -/
def P9872725388461590210.Spec : Prop :=
  ∀ n, (P9872725388461590210.a n : ℤ) = A024644 n

end A024644

/-! ## A024644.P2203100274082712589

`eq[n, A222254(A174025(n))]`
-/

namespace A024644.P2203100274082712589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A174025 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024644.P2203100274082712589

namespace A024644

/-- `eq[n, A222254(A174025(n))]` -/
def P2203100274082712589.Spec : Prop :=
  ∀ n, (P2203100274082712589.a n : ℤ) = A024644 n

end A024644

/-! ## A024644.P5207035536467442545

`lt[A054055(A004525(n))-2, 2]`
-/

namespace A024644.P5207035536467442545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004525 n).toNat - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024644.P5207035536467442545

namespace A024644

/-- `lt[A054055(A004525(n))-2, 2]` -/
def P5207035536467442545.Spec : Prop :=
  ∀ n, (P5207035536467442545.a n : ℤ) = A024644 n

end A024644

/-! ## A024644.P1158748500478293044

`lt[A054055(A004526(n))-2, 2]`
-/

namespace A024644.P1158748500478293044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004526 n).toNat - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024644.P1158748500478293044

namespace A024644

/-- `lt[A054055(A004526(n))-2, 2]` -/
def P1158748500478293044.Spec : Prop :=
  ∀ n, (P1158748500478293044.a n : ℤ) = A024644 n

end A024644

/-!
# A024645: n written in fractional base 8/3.

The programs for A024645, the canonical program `A024645.P10093565530217384587` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024645 has offset 0).

The definition of A024645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024645.P10093565530217384587

`10*a(3*floor(n/8))+n%8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024645

/-- `10*a(3*floor(n/8))+n%8` -/
def P10093565530217384587.Spec : Prop :=
  ∀ n, (P10093565530217384587.a n : ℤ) = A024645 n

theorem P10093565530217384587.correct : P10093565530217384587.Spec := by
  intro n
  simp only [A024645]

end A024645

/-! ## A024645.P1365908642398766873

`∩[A007095(n), A222254(A024651(n))]`
-/

namespace A024645.P1365908642398766873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A024651 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024645.P1365908642398766873

namespace A024645

/-- `∩[A007095(n), A222254(A024651(n))]` -/
def P1365908642398766873.Spec : Prop :=
  ∀ n, (P1365908642398766873.a n : ℤ) = A024645 n

end A024645

/-! ## A024645.P16242691854505106563

`eq[A191760(A324160(n+2)), A324160(n)]`
-/

namespace A024645.P16242691854505106563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191760 (A324160 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324160 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024645.P16242691854505106563

namespace A024645

/-- `eq[A191760(A324160(n+2)), A324160(n)]` -/
def P16242691854505106563.Spec : Prop :=
  ∀ n, (P16242691854505106563.a n : ℤ) = A024645 n

end A024645

/-! ## A024645.P18120110580976489445

`A118759(∩[A024651(n)-1, A024651(n)])`
-/

namespace A024645.P18120110580976489445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A024645.P18120110580976489445

namespace A024645

/-- `A118759(∩[A024651(n)-1, A024651(n)])` -/
def P18120110580976489445.Spec : Prop :=
  ∀ n, P18120110580976489445.a n = A024645 n

end A024645

/-! ## A024645.P10147043368415406411

`A024651(eq[A161235(n+1), A161248(n+1)])`
-/

namespace A024645.P10147043368415406411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024645.P10147043368415406411

namespace A024645

/-- `A024651(eq[A161235(n+1), A161248(n+1)])` -/
def P10147043368415406411.Spec : Prop :=
  ∀ n, P10147043368415406411.a n = A024645 n

end A024645

/-!
# A024646: n written in fractional base 8/4.

The programs for A024646, the canonical program `A024646.P5299057724210518601` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024646 has offset 0).

The definition of A024646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024646.P5299057724210518601

`10*a(4*floor(n/8))+n%8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024646

/-- `10*a(4*floor(n/8))+n%8` -/
def P5299057724210518601.Spec : Prop :=
  ∀ n, (P5299057724210518601.a n : ℤ) = A024646 n

theorem P5299057724210518601.correct : P5299057724210518601.Spec := by
  intro n
  simp only [A024646]

end A024646

/-! ## A024646.P14947792182901393548

`A169967(A008621(n))+n%4`
-/

namespace A024646.P14947792182901393548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (A008621 n).toNat + ((n % 4 : ℕ) : ℤ)

end

end A024646.P14947792182901393548

namespace A024646

/-- `A169967(A008621(n))+n%4` -/
def P14947792182901393548.Spec : Prop :=
  ∀ n, P14947792182901393548.a n = A024646 n

end A024646

/-! ## A024646.P4082198847215527500

`A169967(A008621(n))+A010873(n)`
-/

namespace A024646.P4082198847215527500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (A008621 n).toNat + A010873 n

end

end A024646.P4082198847215527500

namespace A024646

/-- `A169967(A008621(n))+A010873(n)` -/
def P4082198847215527500.Spec : Prop :=
  ∀ n, P4082198847215527500.a n = A024646 n

end A024646

/-! ## A024646.P7781446729578988228

`A169967(floor(n/4)+1)+A048158(A052905(n)+9)`
-/

namespace A024646.P7781446729578988228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (⌊(n : ℚ) / 4⌋ + 1).toNat + A048158 (A052905 n + 9).toNat

end

end A024646.P7781446729578988228

namespace A024646

/-- `A169967(floor(n/4)+1)+A048158(A052905(n)+9)` -/
def P7781446729578988228.Spec : Prop :=
  ∀ n, P7781446729578988228.a n = A024646 n

end A024646

/-! ## A024646.P3082694142635568544

`record[n/A066459(A002265(n))]`
-/

namespace A024646.P3082694142635568544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A066459 (A002265 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024646.P3082694142635568544

namespace A024646

/-- `record[n/A066459(A002265(n))]` -/
def P3082694142635568544.Spec : Prop :=
  ∀ n, P3082694142635568544.a n = (A024646 n : ℚ)

end A024646

/-! ## A024646.P12206431437256966465

`record[A090223(A024660(A002262(n)))]`
-/

namespace A024646.P12206431437256966465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A024660 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024646.P12206431437256966465

namespace A024646

/-- `record[A090223(A024660(A002262(n)))]` -/
def P12206431437256966465.Spec : Prop :=
  ∀ n, P12206431437256966465.a n = A024646 n

end A024646

/-! ## A024646.P3605159574804856151

`record[A090223(A024660(A008611(n)))]`
-/

namespace A024646.P3605159574804856151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A024660 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024646.P3605159574804856151

namespace A024646

/-- `record[A090223(A024660(A008611(n)))]` -/
def P3605159574804856151.Spec : Prop :=
  ∀ n, P3605159574804856151.a n = A024646 n

end A024646

/-!
# A024647: n written in fractional base 8/5.

The programs for A024647, the canonical program `A024647.P7226230836447615935` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024647 has offset 0).

The definition of A024647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024647.P7226230836447615935

`10*a(5*floor(n/8))+n%8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024647

/-- `10*a(5*floor(n/8))+n%8` -/
def P7226230836447615935.Spec : Prop :=
  ∀ n, (P7226230836447615935.a n : ℤ) = A024647 n

theorem P7226230836447615935.correct : P7226230836447615935.Spec := by
  intro n
  simp only [A024647]

end A024647

/-! ## A024647.P11984719376268106555

`record[A235049(A024654(A163352(n)))]`
-/

namespace A024647.P11984719376268106555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024654 (A163352 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024647.P11984719376268106555

namespace A024647

/-- `record[A235049(A024654(A163352(n)))]` -/
def P11984719376268106555.Spec : Prop :=
  ∀ n, P11984719376268106555.a n = A024647 n

end A024647

/-! ## A024647.P5723881959492024702

`record[A235049(A024654(A002377(n+1)))]`
-/

namespace A024647.P5723881959492024702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024654 (A002377 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024647.P5723881959492024702

namespace A024647

/-- `record[A235049(A024654(A002377(n+1)))]` -/
def P5723881959492024702.Spec : Prop :=
  ∀ n, P5723881959492024702.a n = A024647 n

end A024647

/-! ## A024647.P8908106155692488465

`∑[A221755(A291721(n))]`
-/

namespace A024647.P8908106155692488465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A291721 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024647.P8908106155692488465

namespace A024647

/-- `∑[A221755(A291721(n))]` -/
def P8908106155692488465.Spec : Prop :=
  ∀ n, P8908106155692488465.a n = A024647 n

end A024647

/-!
# A024648: n written in fractional base 8/6.

The programs for A024648, the canonical program `A024648.P16141473087391355344` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024648 has offset 0).

The definition of A024648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024648.P16141473087391355344

`10*a(6*floor(n/8))+n%8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024648

/-- `10*a(6*floor(n/8))+n%8` -/
def P16141473087391355344.Spec : Prop :=
  ∀ n, (P16141473087391355344.a n : ℤ) = A024648 n

theorem P16141473087391355344.correct : P16141473087391355344.Spec := by
  intro n
  simp only [A024648]

end A024648

/-! ## A024648.P10182991657174305490

`record[A235049(A024655(A008611(n)))]`
-/

namespace A024648.P10182991657174305490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024655 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024648.P10182991657174305490

namespace A024648

/-- `record[A235049(A024655(A008611(n)))]` -/
def P10182991657174305490.Spec : Prop :=
  ∀ n, P10182991657174305490.a n = A024648 n

end A024648

/-! ## A024648.P5707493939678627032

`record[A235049(A024655(A025581(n)))]`
-/

namespace A024648.P5707493939678627032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024655 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024648.P5707493939678627032

namespace A024648

/-- `record[A235049(A024655(A025581(n)))]` -/
def P5707493939678627032.Spec : Prop :=
  ∀ n, P5707493939678627032.a n = A024648 n

end A024648

/-! ## A024648.P13111862802337905998

`record[A235049(A024655(A028242(n)))]`
-/

namespace A024648.P13111862802337905998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024655 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024648.P13111862802337905998

namespace A024648

/-- `record[A235049(A024655(A028242(n)))]` -/
def P13111862802337905998.Spec : Prop :=
  ∀ n, P13111862802337905998.a n = A024648 n

end A024648

/-! ## A024648.P5350849722310273163

`record[A235049(A024655(A057979(n)))]`
-/

namespace A024648.P5350849722310273163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024655 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024648.P5350849722310273163

namespace A024648

/-- `record[A235049(A024655(A057979(n)))]` -/
def P5350849722310273163.Spec : Prop :=
  ∀ n, P5350849722310273163.a n = A024648 n

end A024648

/-!
# A024649: n written in fractional base 8/7.

The programs for A024649, the canonical program `A024649.P13663551956419463370` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024649 has offset 0).

The definition of A024649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024649.P13663551956419463370

`10*a(7*floor(n/8))+n%8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024649

/-- `10*a(7*floor(n/8))+n%8` -/
def P13663551956419463370.Spec : Prop :=
  ∀ n, (P13663551956419463370.a n : ℤ) = A024649 n

theorem P13663551956419463370.correct : P13663551956419463370.Spec := by
  intro n
  simp only [A024649]

end A024649

/-! ## A024649.P5663402069522508260

`record[A235049(A024656(A008611(n)))]`
-/

namespace A024649.P5663402069522508260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024656 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024649.P5663402069522508260

namespace A024649

/-- `record[A235049(A024656(A008611(n)))]` -/
def P5663402069522508260.Spec : Prop :=
  ∀ n, P5663402069522508260.a n = A024649 n

end A024649

/-! ## A024649.P3817306373016454225

`record[A235049(A024656(A008612(n)))]`
-/

namespace A024649.P3817306373016454225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024656 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024649.P3817306373016454225

namespace A024649

/-- `record[A235049(A024656(A008612(n)))]` -/
def P3817306373016454225.Spec : Prop :=
  ∀ n, P3817306373016454225.a n = A024649 n

end A024649

/-! ## A024649.P11696970716211823298

`record[A235049(A024656(A008624(n)))]`
-/

namespace A024649.P11696970716211823298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024656 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024649.P11696970716211823298

namespace A024649

/-- `record[A235049(A024656(A008624(n)))]` -/
def P11696970716211823298.Spec : Prop :=
  ∀ n, P11696970716211823298.a n = A024649 n

end A024649

/-! ## A024649.P7069605767242617414

`record[A235049(A024656(A027656(n)))]`
-/

namespace A024649.P7069605767242617414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024656 (A027656 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024649.P7069605767242617414

namespace A024649

/-- `record[A235049(A024656(A027656(n)))]` -/
def P7069605767242617414.Spec : Prop :=
  ∀ n, P7069605767242617414.a n = A024649 n

end A024649

/-!
# A024650: n written in fractional base 9/2.

The programs for A024650, the canonical program `A024650.P16440267356351200811` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024650 has offset 0).

The definition of A024650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024650.P16440267356351200811

`10*a(2*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024650

/-- `10*a(2*floor(n/9))+n%9` -/
def P16440267356351200811.Spec : Prop :=
  ∀ n, (P16440267356351200811.a n : ℤ) = A024650 n

theorem P16440267356351200811.correct : P16440267356351200811.Spec := by
  intro n
  simp only [A024650]

end A024650

/-! ## A024650.P3687610059153069877

`lt[A118759(n)%20, 9]`
-/

namespace A024650.P3687610059153069877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 n) 20

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024650.P3687610059153069877

namespace A024650

/-- `lt[A118759(n)%20, 9]` -/
def P3687610059153069877.Spec : Prop :=
  ∀ n, (P3687610059153069877.a n : ℤ) = A024650 n

end A024650

/-! ## A024650.P13491710585577146516

`record[n/A118762(n+1)]`
-/

namespace A024650.P13491710585577146516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A118762 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024650.P13491710585577146516

namespace A024650

/-- `record[n/A118762(n+1)]` -/
def P13491710585577146516.Spec : Prop :=
  ∀ n, P13491710585577146516.a n = (A024650 n : ℚ)

end A024650

/-! ## A024650.P17631465332329968072

`A130734(A069571(n+1))`
-/

namespace A024650.P17631465332329968072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A069571 (n + 1)).toNat

end

end A024650.P17631465332329968072

namespace A024650

/-- `A130734(A069571(n+1))` -/
def P17631465332329968072.Spec : Prop :=
  ∀ n, P17631465332329968072.a n = A024650 n

end A024650

/-! ## A024650.P8517867925155586939

`A118759(A069571(n+1)-1)`
-/

namespace A024650.P8517867925155586939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A069571 (n + 1) - 1).toNat

end

end A024650.P8517867925155586939

namespace A024650

/-- `A118759(A069571(n+1)-1)` -/
def P8517867925155586939.Spec : Prop :=
  ∀ n, P8517867925155586939.a n = A024650 n

end A024650

/-!
# A024651: n written in fractional base 9/3.

The programs for A024651, the canonical program `A024651.P15067938960396412933` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024651 has offset 0).

The definition of A024651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024651.P15067938960396412933

`10*a(3*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024651

/-- `10*a(3*floor(n/9))+n%9` -/
def P15067938960396412933.Spec : Prop :=
  ∀ n, (P15067938960396412933.a n : ℤ) = A024651 n

theorem P15067938960396412933.correct : P15067938960396412933.Spec := by
  intro n
  simp only [A024651]

end A024651

/-! ## A024651.P16628978673739118072

`eq[1, A181061(floor(n/3))]`
-/

namespace A024651.P16628978673739118072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024651.P16628978673739118072

namespace A024651

/-- `eq[1, A181061(floor(n/3))]` -/
def P16628978673739118072.Spec : Prop :=
  ∀ n, (P16628978673739118072.a n : ℤ) = A024651 n

end A024651

/-! ## A024651.P1451945199884629463

`eq[0, A102671(A002264(n))]`
-/

namespace A024651.P1451945199884629463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A002264 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024651.P1451945199884629463

namespace A024651

/-- `eq[0, A102671(A002264(n))]` -/
def P1451945199884629463.Spec : Prop :=
  ∀ n, (P1451945199884629463.a n : ℤ) = A024651 n

end A024651

/-! ## A024651.P10635800364868572826

`A007095(lt[A105186(n), 3])`
-/

namespace A024651.P10635800364868572826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A024651.P10635800364868572826

namespace A024651

/-- `A007095(lt[A105186(n), 3])` -/
def P10635800364868572826.Spec : Prop :=
  ∀ n, P10635800364868572826.a n = A024651 n

end A024651

/-! ## A024651.P16056472984377382848

`A007095(eq[3, or(3, A105186(n))])`
-/

namespace A024651.P16056472984377382848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A105186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024651.P16056472984377382848

namespace A024651

/-- `A007095(eq[3, or(3, A105186(n))])` -/
def P16056472984377382848.Spec : Prop :=
  ∀ n, P16056472984377382848.a n = A024651 n

end A024651

/-! ## A024651.P12013241587024425796

`A007095(eq[n%3, A105186(n)])`
-/

namespace A024651.P12013241587024425796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024651.P12013241587024425796

namespace A024651

/-- `A007095(eq[n%3, A105186(n)])` -/
def P12013241587024425796.Spec : Prop :=
  ∀ n, P12013241587024425796.a n = A024651 n

end A024651

/-! ## A024651.P16293836270327405533

`A007095(eq[A105186(n), A163325(n)])`
-/

namespace A024651.P16293836270327405533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A024651.P16293836270327405533

namespace A024651

/-- `A007095(eq[A105186(n), A163325(n)])` -/
def P16293836270327405533.Spec : Prop :=
  ∀ n, P16293836270327405533.a n = A024651 n

end A024651

/-! ## A024651.P6369473699139933226

`lt[A176407(A002264(n)), A026513(n)]`
-/

namespace A024651.P6369473699139933226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 (A002264 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024651.P6369473699139933226

namespace A024651

/-- `lt[A176407(A002264(n)), A026513(n)]` -/
def P6369473699139933226.Spec : Prop :=
  ∀ n, (P6369473699139933226.a n : ℤ) = A024651 n

end A024651

/-! ## A024651.P6342350143277334437

`eq[0, A102671(A008615(A004273(n)))]`
-/

namespace A024651.P6342350143277334437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A008615 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024651.P6342350143277334437

namespace A024651

/-- `eq[0, A102671(A008615(A004273(n)))]` -/
def P6342350143277334437.Spec : Prop :=
  ∀ n, (P6342350143277334437.a n : ℤ) = A024651 n

end A024651

/-! ## A024651.P3803531831307267895

`A081502(A007089(n))`
-/

namespace A024651.P3803531831307267895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081502 (A007089 n).toNat

end

end A024651.P3803531831307267895

namespace A024651

/-- `A081502(A007089(n))` -/
def P3803531831307267895.Spec : Prop :=
  ∀ n, P3803531831307267895.a n = A024651 n

end A024651

/-!
# A024652: n written in fractional base 9/4.

The programs for A024652, the canonical program `A024652.P1197286262943388384` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024652 has offset 0).

The definition of A024652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024652.P1197286262943388384

`10*a(4*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024652

/-- `10*a(4*floor(n/9))+n%9` -/
def P1197286262943388384.Spec : Prop :=
  ∀ n, (P1197286262943388384.a n : ℤ) = A024652 n

theorem P1197286262943388384.correct : P1197286262943388384.Spec := by
  intro n
  simp only [A024652]

end A024652

/-! ## A024652.P13575085261602407272

`record[A249873(n)/A118762(n+1)]`
-/

namespace A024652.P13575085261602407272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249873 n : ℚ) / (A118762 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024652.P13575085261602407272

namespace A024652

/-- `record[A249873(n)/A118762(n+1)]` -/
def P13575085261602407272.Spec : Prop :=
  ∀ n, P13575085261602407272.a n = (A024652 n : ℚ)

end A024652

/-! ## A024652.P3076764925508244544

`A000196(A024659(A007095(n))²)`
-/

namespace A024652.P3076764925508244544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024659 (A007095 n).toNat ^ 2).toNat

end

end A024652.P3076764925508244544

namespace A024652

/-- `A000196(A024659(A007095(n))²)` -/
def P3076764925508244544.Spec : Prop :=
  ∀ n, P3076764925508244544.a n = A024652 n

end A024652

/-! ## A024652.P15628119018286495924

`A056926(A024659(A007095(n))²)`
-/

namespace A024652.P15628119018286495924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A024659 (A007095 n).toNat ^ 2).toNat

end

end A024652.P15628119018286495924

namespace A024652

/-- `A056926(A024659(A007095(n))²)` -/
def P15628119018286495924.Spec : Prop :=
  ∀ n, P15628119018286495924.a n = A024652 n

end A024652

/-! ## A024652.P9337716832345620092

`A235049(∑[A089161(n+1)^A244172(n+9)]+1)`
-/

namespace A024652.P9337716832345620092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089161 (n + 1) : ℚ) ^ (A244172 (n + 9) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A024652.P9337716832345620092

namespace A024652

/-- `A235049(∑[A089161(n+1)^A244172(n+9)]+1)` -/
def P9337716832345620092.Spec : Prop :=
  ∀ n, P9337716832345620092.a n = A024652 n

end A024652

/-!
# A024653: n written in fractional base 9/5.

The programs for A024653, the canonical program `A024653.P479663884833954974` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024653 has offset 0).

The definition of A024653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024653.P479663884833954974

`10*a(5*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024653

/-- `10*a(5*floor(n/9))+n%9` -/
def P479663884833954974.Spec : Prop :=
  ∀ n, (P479663884833954974.a n : ℤ) = A024653 n

theorem P479663884833954974.correct : P479663884833954974.Spec := by
  intro n
  simp only [A024653]

end A024653

/-! ## A024653.P9575541019912224054

`record[A235049(A024661(A244158(n)))]`
-/

namespace A024653.P9575541019912224054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024661 (A244158 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024653.P9575541019912224054

namespace A024653

/-- `record[A235049(A024661(A244158(n)))]` -/
def P9575541019912224054.Spec : Prop :=
  ∀ n, P9575541019912224054.a n = A024653 n

end A024653

/-! ## A024653.P9163030501896615714

`A196443(Δ[A051885(n)])+n`
-/

namespace A024653.P9163030501896615714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196443 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A024653.P9163030501896615714

namespace A024653

/-- `A196443(Δ[A051885(n)])+n` -/
def P9163030501896615714.Spec : Prop :=
  ∀ n, P9163030501896615714.a n = A024653 n

end A024653

/-! ## A024653.P15625243497804587243

`∑[A089161(n+1)^A244172(n+9)]`
-/

namespace A024653.P15625243497804587243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089161 (n + 1) : ℚ) ^ (A244172 (n + 9) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024653.P15625243497804587243

namespace A024653

/-- `∑[A089161(n+1)^A244172(n+9)]` -/
def P15625243497804587243.Spec : Prop :=
  ∀ n, P15625243497804587243.a n = (A024653 n : ℚ)

end A024653

/-! ## A024653.P4535576213788334453

`∑[A271852(n+1)^A244172(n+9)]`
-/

namespace A024653.P4535576213788334453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271852 (n + 1) : ℚ) ^ (A244172 (n + 9) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024653.P4535576213788334453

namespace A024653

/-- `∑[A271852(n+1)^A244172(n+9)]` -/
def P4535576213788334453.Spec : Prop :=
  ∀ n, P4535576213788334453.a n = (A024653 n : ℚ)

end A024653

/-!
# A024654: n written in fractional base 9/6.

The programs for A024654, the canonical program `A024654.P13535773530206555527` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024654 has offset 0).

The definition of A024654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024654.P13535773530206555527

`10*a(6*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024654

/-- `10*a(6*floor(n/9))+n%9` -/
def P13535773530206555527.Spec : Prop :=
  ∀ n, (P13535773530206555527.a n : ℤ) = A024654 n

theorem P13535773530206555527.correct : P13535773530206555527.Spec := by
  intro n
  simp only [A024654]

end A024654

/-! ## A024654.P2624548982270100478

`A005843(A024655(n))-A024656(n)`
-/

namespace A024654.P2624548982270100478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024655 n).toNat - A024656 n

end

end A024654.P2624548982270100478

namespace A024654

/-- `A005843(A024655(n))-A024656(n)` -/
def P2624548982270100478.Spec : Prop :=
  ∀ n, P2624548982270100478.a n = A024654 n

end A024654

/-! ## A024654.P668842823869304688

`(A024655(n)+A024653(n))/A182860(A182874(n+1))`
-/

namespace A024654.P668842823869304688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024655 n + A024653 n : ℚ) / (A182860 (A182874 (n + 1)).toNat : ℚ)

end

end A024654.P668842823869304688

namespace A024654

/-- `(A024655(n)+A024653(n))/A182860(A182874(n+1))` -/
def P668842823869304688.Spec : Prop :=
  ∀ n, P668842823869304688.a n = (A024654 n : ℚ)

end A024654

/-! ## A024654.P6377940484686614529

`A060681(A024653(n)+A111332(n)+A024655(n))`
-/

namespace A024654.P6377940484686614529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A024653 n + (A111332 n + A024655 n)).toNat

end

end A024654.P6377940484686614529

namespace A024654

/-- `A060681(A024653(n)+A111332(n)+A024655(n))` -/
def P6377940484686614529.Spec : Prop :=
  ∀ n, P6377940484686614529.a n = A024654 n

end A024654

/-! ## A024654.P10314418728593836319

`∩[A024650(n), A024661(n)]`
-/

namespace A024654.P10314418728593836319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024661 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024654.P10314418728593836319

namespace A024654

/-- `∩[A024650(n), A024661(n)]` -/
def P10314418728593836319.Spec : Prop :=
  ∀ n, (P10314418728593836319.a n : ℤ) = A024654 n

end A024654

/-!
# A024655: n written in fractional base 9/7.

The programs for A024655, the canonical program `A024655.P7819071602724788008` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024655 has offset 0).

The definition of A024655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024655.P7819071602724788008

`10*a(7*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024655

/-- `10*a(7*floor(n/9))+n%9` -/
def P7819071602724788008.Spec : Prop :=
  ∀ n, (P7819071602724788008.a n : ℤ) = A024655 n

theorem P7819071602724788008.correct : P7819071602724788008.Spec := by
  intro n
  simp only [A024655]

end A024655

/-! ## A024655.P10554791781113364816

`record[A235049(A024663(A263254(n)))]`
-/

namespace A024655.P10554791781113364816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024663 (A263254 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024655.P10554791781113364816

namespace A024655

/-- `record[A235049(A024663(A263254(n)))]` -/
def P10554791781113364816.Spec : Prop :=
  ∀ n, P10554791781113364816.a n = A024655 n

end A024655

/-! ## A024655.P7384799069035205465

`A038572(A024656(n)+A024654(n))`
-/

namespace A024655.P7384799069035205465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A024656 n + A024654 n).toNat

end

end A024655.P7384799069035205465

namespace A024655

/-- `A038572(A024656(n)+A024654(n))` -/
def P7384799069035205465.Spec : Prop :=
  ∀ n, P7384799069035205465.a n = A024655 n

end A024655

/-! ## A024655.P8013117951908807575

`A175126(A024656(n)+A024654(n))`
-/

namespace A024655.P8013117951908807575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A024656 n + A024654 n).toNat

end

end A024655.P8013117951908807575

namespace A024655

/-- `A175126(A024656(n)+A024654(n))` -/
def P8013117951908807575.Spec : Prop :=
  ∀ n, P8013117951908807575.a n = A024655 n

end A024655

/-! ## A024655.P4936641291610822582

`record[A235049(A024663(A339823(n+1)))]`
-/

namespace A024655.P4936641291610822582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024663 (A339823 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024655.P4936641291610822582

namespace A024655

/-- `record[A235049(A024663(A339823(n+1)))]` -/
def P4936641291610822582.Spec : Prop :=
  ∀ n, P4936641291610822582.a n = A024655 n

end A024655

/-!
# A024656: n written in fractional base 9/8.

The programs for A024656, the canonical program `A024656.P16079019890048505131` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024656 has offset 0).

The definition of A024656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024656.P16079019890048505131

`10*a(8*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024656

/-- `10*a(8*floor(n/9))+n%9` -/
def P16079019890048505131.Spec : Prop :=
  ∀ n, (P16079019890048505131.a n : ℤ) = A024656 n

theorem P16079019890048505131.correct : P16079019890048505131.Spec := by
  intro n
  simp only [A024656]

end A024656

/-! ## A024656.P6944074785959312258

`record[A235049(A024664(A008612(n)))]`
-/

namespace A024656.P6944074785959312258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024664 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024656.P6944074785959312258

namespace A024656

/-- `record[A235049(A024664(A008612(n)))]` -/
def P6944074785959312258.Spec : Prop :=
  ∀ n, P6944074785959312258.a n = A024656 n

end A024656

/-! ## A024656.P17787699093350885141

`record[A235049(A024664(A028242(n)))]`
-/

namespace A024656.P17787699093350885141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024664 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024656.P17787699093350885141

namespace A024656

/-- `record[A235049(A024664(A028242(n)))]` -/
def P17787699093350885141.Spec : Prop :=
  ∀ n, P17787699093350885141.a n = A024656 n

end A024656

/-! ## A024656.P7673788144892354515

`record[A235049(A024664(A103221(n)))]`
-/

namespace A024656.P7673788144892354515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024664 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024656.P7673788144892354515

namespace A024656

/-- `record[A235049(A024664(A103221(n)))]` -/
def P7673788144892354515.Spec : Prop :=
  ∀ n, P7673788144892354515.a n = A024656 n

end A024656

/-! ## A024656.P1330208966684531078

`record[A235049(A024664(A110657(n)))]`
-/

namespace A024656.P1330208966684531078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024664 (A110657 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024656.P1330208966684531078

namespace A024656

/-- `record[A235049(A024664(A110657(n)))]` -/
def P1330208966684531078.Spec : Prop :=
  ∀ n, P1330208966684531078.a n = A024656 n

end A024656

/-!
# A024657: n written in fractional base 10/2.

The programs for A024657, the canonical program `A024657.P1324016924929245262` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024657 has offset 0).

The definition of A024657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024657.P1324016924929245262

`10*a(2*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024657

/-- `10*a(2*floor(n/10))+n%10` -/
def P1324016924929245262.Spec : Prop :=
  ∀ n, (P1324016924929245262.a n : ℤ) = A024657 n

theorem P1324016924929245262.correct : P1324016924929245262.Spec := by
  intro n
  simp only [A024657]

end A024657

/-! ## A024657.P14514315588752861644

`∪[A014263(n+1)+1, A014263(n+1)]`
-/

namespace A024657.P14514315588752861644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024657.P14514315588752861644

namespace A024657

/-- `∪[A014263(n+1)+1, A014263(n+1)]` -/
def P14514315588752861644.Spec : Prop :=
  ∀ n, (P14514315588752861644.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P1527958334962721220

`A014263(A008619(n))+A000035(n)`
-/

namespace A024657.P1527958334962721220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (A008619 n).toNat + A000035 n

end

end A024657.P1527958334962721220

namespace A024657

/-- `A014263(A008619(n))+A000035(n)` -/
def P1527958334962721220.Spec : Prop :=
  ∀ n, P1527958334962721220.a n = A024657 n

end A024657

/-! ## A024657.P6677250629280403118

`eq[0, A102675(floor(n/2))]`
-/

namespace A024657.P6677250629280403118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024657.P6677250629280403118

namespace A024657

/-- `eq[0, A102675(floor(n/2))]` -/
def P6677250629280403118.Spec : Prop :=
  ∀ n, (P6677250629280403118.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P8902940418231924459

`eq[n, A003100(n)]`
-/

namespace A024657.P8902940418231924459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024657.P8902940418231924459

namespace A024657

/-- `eq[n, A003100(n)]` -/
def P8902940418231924459.Spec : Prop :=
  ∀ n, (P8902940418231924459.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P18261674825839725502

`eq[n, A174025(n)]`
-/

namespace A024657.P18261674825839725502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024657.P18261674825839725502

namespace A024657

/-- `eq[n, A174025(n)]` -/
def P18261674825839725502.Spec : Prop :=
  ∀ n, (P18261674825839725502.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P12092786665244436494

`eq[n%2, A196564(n)]`
-/

namespace A024657.P12092786665244436494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024657.P12092786665244436494

namespace A024657

/-- `eq[n%2, A196564(n)]` -/
def P12092786665244436494.Spec : Prop :=
  ∀ n, (P12092786665244436494.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P10875039733563943098

`eq[floor(n/2), A106747(n)]`
-/

namespace A024657.P10875039733563943098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024657.P10875039733563943098

namespace A024657

/-- `eq[floor(n/2), A106747(n)]` -/
def P10875039733563943098.Spec : Prop :=
  ∀ n, (P10875039733563943098.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P7562727738355609635

`record[and(1, n)+n-A103181(n)]`
-/

namespace A024657.P7562727738355609635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + ((n : ℤ) - A103181 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024657.P7562727738355609635

namespace A024657

/-- `record[and(1, n)+n-A103181(n)]` -/
def P7562727738355609635.Spec : Prop :=
  ∀ n, P7562727738355609635.a n = A024657 n

end A024657

/-! ## A024657.P9666151590216794179

`eq[floor(n/2), A167831(floor(n/2))]`
-/

namespace A024657.P9666151590216794179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024657.P9666151590216794179

namespace A024657

/-- `eq[floor(n/2), A167831(floor(n/2))]` -/
def P9666151590216794179.Spec : Prop :=
  ∀ n, (P9666151590216794179.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P2461433342667415451

`eq[0, A045841(A059995(n))]`
-/

namespace A024657.P2461433342667415451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045841 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024657.P2461433342667415451

namespace A024657

/-- `eq[0, A045841(A059995(n))]` -/
def P2461433342667415451.Spec : Prop :=
  ∀ n, (P2461433342667415451.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P5168035246983814461

`lt[A054055(A004526(n)), 5]`
-/

namespace A024657.P5168035246983814461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004526 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024657.P5168035246983814461

namespace A024657

/-- `lt[A054055(A004526(n)), 5]` -/
def P5168035246983814461.Spec : Prop :=
  ∀ n, (P5168035246983814461.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P2623666193185849615

`eq[A000035(n), A196564(n)]`
-/

namespace A024657.P2623666193185849615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024657.P2623666193185849615

namespace A024657

/-- `eq[A000035(n), A196564(n)]` -/
def P2623666193185849615.Spec : Prop :=
  ∀ n, (P2623666193185849615.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P8842294963123054735

`eq[A103181(n), A179081(n)]`
-/

namespace A024657.P8842294963123054735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024657.P8842294963123054735

namespace A024657

/-- `eq[A103181(n), A179081(n)]` -/
def P8842294963123054735.Spec : Prop :=
  ∀ n, (P8842294963123054735.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P15654873539492667689

`eq[A103181(n), A196564(n)]`
-/

namespace A024657.P15654873539492667689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024657.P15654873539492667689

namespace A024657

/-- `eq[A103181(n), A196564(n)]` -/
def P15654873539492667689.Spec : Prop :=
  ∀ n, (P15654873539492667689.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P14739916961194696876

`eq[A103181(n), A372584(n)]`
-/

namespace A024657.P14739916961194696876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024657.P14739916961194696876

namespace A024657

/-- `eq[A103181(n), A372584(n)]` -/
def P14739916961194696876.Spec : Prop :=
  ∀ n, (P14739916961194696876.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P11358397843434820902

`A003100(record[gcd(n, A003100(n))])`
-/

namespace A024657.P11358397843434820902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003100 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A024657.P11358397843434820902

namespace A024657

/-- `A003100(record[gcd(n, A003100(n))])` -/
def P11358397843434820902.Spec : Prop :=
  ∀ n, P11358397843434820902.a n = A024657 n

end A024657

/-! ## A024657.P13175364904844529895

`eq[A196564(n)+1, A177704(A020639(n+1)+1)]`
-/

namespace A024657.P13175364904844529895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A020639 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024657.P13175364904844529895

namespace A024657

/-- `eq[A196564(n)+1, A177704(A020639(n+1)+1)]` -/
def P13175364904844529895.Spec : Prop :=
  ∀ n, (P13175364904844529895.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P18320888352609366396

`lt[A196564(n), A176895(2*n)]`
-/

namespace A024657.P18320888352609366396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024657.P18320888352609366396

namespace A024657

/-- `lt[A196564(n), A176895(2*n)]` -/
def P18320888352609366396.Spec : Prop :=
  ∀ n, (P18320888352609366396.a n : ℤ) = A024657 n

end A024657

/-! ## A024657.P1477336574006780313

`lt[A196564(n), A177704(2*n+1)]`
-/

namespace A024657.P1477336574006780313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024657.P1477336574006780313

namespace A024657

/-- `lt[A196564(n), A177704(2*n+1)]` -/
def P1477336574006780313.Spec : Prop :=
  ∀ n, (P1477336574006780313.a n : ℤ) = A024657 n

end A024657

/-!
# A024658: n written in fractional base 10/3.

The programs for A024658, the canonical program `A024658.P13729033272159176084` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024658 has offset 0).

The definition of A024658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024658.P13729033272159176084

`10*a(3*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024658

/-- `10*a(3*floor(n/10))+n%10` -/
def P13729033272159176084.Spec : Prop :=
  ∀ n, (P13729033272159176084.a n : ℤ) = A024658 n

theorem P13729033272159176084.correct : P13729033272159176084.Spec := by
  intro n
  simp only [A024658]

end A024658

/-! ## A024658.P3656078127223320635

`lt[A059630(floor(n/10)), 4]`
-/

namespace A024658.P3656078127223320635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 ⌊(n : ℚ) / 10⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024658.P3656078127223320635

namespace A024658

/-- `lt[A059630(floor(n/10)), 4]` -/
def P3656078127223320635.Spec : Prop :=
  ∀ n, (P3656078127223320635.a n : ℤ) = A024658 n

end A024658

/-! ## A024658.P6764171014822705443

`lt[0, A016412(n-n%10)]`
-/

namespace A024658.P6764171014822705443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 (n - n % 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024658.P6764171014822705443

namespace A024658

/-- `lt[0, A016412(n-n%10)]` -/
def P6764171014822705443.Spec : Prop :=
  ∀ n, (P6764171014822705443.a n : ℤ) = A024658 n

end A024658

/-! ## A024658.P1731831714832508970

`eq[0, A110409(A130497(n))]`
-/

namespace A024658.P1731831714832508970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110409 (A130497 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024658.P1731831714832508970

namespace A024658

/-- `eq[0, A110409(A130497(n))]` -/
def P1731831714832508970.Spec : Prop :=
  ∀ n, (P1731831714832508970.a n : ℤ) = A024658 n

end A024658

/-! ## A024658.P5326173411438646257

`lt[0, A016366(A169932(n))]`
-/

namespace A024658.P5326173411438646257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016366 (A169932 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024658.P5326173411438646257

namespace A024658

/-- `lt[0, A016366(A169932(n))]` -/
def P5326173411438646257.Spec : Prop :=
  ∀ n, (P5326173411438646257.a n : ℤ) = A024658 n

end A024658

/-!
# A024659: n written in fractional base 10/4.

The programs for A024659, the canonical program `A024659.P2088765992928244906` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024659 has offset 0).

The definition of A024659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024659.P2088765992928244906

`10*a(4*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024659

/-- `10*a(4*floor(n/10))+n%10` -/
def P2088765992928244906.Spec : Prop :=
  ∀ n, (P2088765992928244906.a n : ℤ) = A024659 n

theorem P2088765992928244906.correct : P2088765992928244906.Spec := by
  intro n
  simp only [A024659]

end A024659

/-! ## A024659.P18244790841204878800

`eq[1, A063942(floor(n/10))]`
-/

namespace A024659.P18244790841204878800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024659.P18244790841204878800

namespace A024659

/-- `eq[1, A063942(floor(n/10))]` -/
def P18244790841204878800.Spec : Prop :=
  ∀ n, (P18244790841204878800.a n : ℤ) = A024659 n

end A024659

/-! ## A024659.P13572728981713922356

`lt[A004480(floor(n/10)), 3]`
-/

namespace A024659.P13572728981713922356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 ⌊(n : ℚ) / 10⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024659.P13572728981713922356

namespace A024659

/-- `lt[A004480(floor(n/10)), 3]` -/
def P13572728981713922356.Spec : Prop :=
  ∀ n, (P13572728981713922356.a n : ℤ) = A024659 n

end A024659

/-! ## A024659.P12490153386888468857

`lt[floor(n/10), A359359(floor(n/10))]`
-/

namespace A024659.P12490153386888468857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359359 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024659.P12490153386888468857

namespace A024659

/-- `lt[floor(n/10), A359359(floor(n/10))]` -/
def P12490153386888468857.Spec : Prop :=
  ∀ n, (P12490153386888468857.a n : ℤ) = A024659 n

end A024659

/-! ## A024659.P15987943006070353984

`eq[0, A194745(A132272(n))]`
-/

namespace A024659.P15987943006070353984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194745 (A132272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024659.P15987943006070353984

namespace A024659

/-- `eq[0, A194745(A132272(n))]` -/
def P15987943006070353984.Spec : Prop :=
  ∀ n, (P15987943006070353984.a n : ℤ) = A024659 n

end A024659

/-!
# A024660: n written in fractional base 10/5.

The programs for A024660, the canonical program `A024660.P5348898816658666254` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024660 has offset 0).

The definition of A024660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024660.P5348898816658666254

`10*a(5*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024660

/-- `10*a(5*floor(n/10))+n%10` -/
def P5348898816658666254.Spec : Prop :=
  ∀ n, (P5348898816658666254.a n : ℤ) = A024660 n

theorem P5348898816658666254.correct : P5348898816658666254.Spec := by
  intro n
  simp only [A024660]

end A024660

/-! ## A024660.P12014039043647744212

`eq[0, A004180(A059995(n))]`
-/

namespace A024660.P12014039043647744212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024660.P12014039043647744212

namespace A024660

/-- `eq[0, A004180(A059995(n))]` -/
def P12014039043647744212.Spec : Prop :=
  ∀ n, (P12014039043647744212.a n : ℤ) = A024660 n

end A024660

/-! ## A024660.P5600684127862841449

`lt[A235049(A222222(n)), 10]`
-/

namespace A024660.P5600684127862841449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A222222 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024660.P5600684127862841449

namespace A024660

/-- `lt[A235049(A222222(n)), 10]` -/
def P5600684127862841449.Spec : Prop :=
  ∀ n, (P5600684127862841449.a n : ℤ) = A024660 n

end A024660

/-! ## A024660.P14874031163992477658

`eq[A002266(n), A048385(A002266(n))]`
-/

namespace A024660.P14874031163992477658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A002266 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024660.P14874031163992477658

namespace A024660

/-- `eq[A002266(n), A048385(A002266(n))]` -/
def P14874031163992477658.Spec : Prop :=
  ∀ n, (P14874031163992477658.a n : ℤ) = A024660 n

end A024660

/-! ## A024660.P18282097829599652064

`eq[A169932(A055120(n)), A169932(n)]`
-/

namespace A024660.P18282097829599652064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 (A055120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024660.P18282097829599652064

namespace A024660

/-- `eq[A169932(A055120(n)), A169932(n)]` -/
def P18282097829599652064.Spec : Prop :=
  ∀ n, (P18282097829599652064.a n : ℤ) = A024660 n

end A024660

/-!
# A024661: n written in fractional base 10/6.

The programs for A024661, the canonical program `A024661.P3873366321320889545` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024661 has offset 0).

The definition of A024661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024661.P3873366321320889545

`10*a(6*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024661

/-- `10*a(6*floor(n/10))+n%10` -/
def P3873366321320889545.Spec : Prop :=
  ∀ n, (P3873366321320889545.a n : ℤ) = A024661 n

theorem P3873366321320889545.correct : P3873366321320889545.Spec := by
  intro n
  simp only [A024661]

end A024661

/-!
# A024662: n written in fractional base 10/7.

The programs for A024662, the canonical program `A024662.P13699203810571038140` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024662 has offset 0).

The definition of A024662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024662.P13699203810571038140

`10*a(7*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024662

/-- `10*a(7*floor(n/10))+n%10` -/
def P13699203810571038140.Spec : Prop :=
  ∀ n, (P13699203810571038140.a n : ℤ) = A024662 n

theorem P13699203810571038140.correct : P13699203810571038140.Spec := by
  intro n
  simp only [A024662]

end A024662

/-! ## A024662.P15834463597396420733

`A057353(A024664(n)-n)+n`
-/

namespace A024662.P15834463597396420733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A024664 n - (n : ℤ)).toNat + (n : ℤ)

end

end A024662.P15834463597396420733

namespace A024662

/-- `A057353(A024664(n)-n)+n` -/
def P15834463597396420733.Spec : Prop :=
  ∀ n, P15834463597396420733.a n = A024662 n

end A024662

/-! ## A024662.P5954704843285339184

`A057353(A024664(n)+A008620(n))`
-/

namespace A024662.P5954704843285339184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A024664 n + A008620 n).toNat

end

end A024662.P5954704843285339184

namespace A024662

/-- `A057353(A024664(n)+A008620(n))` -/
def P5954704843285339184.Spec : Prop :=
  ∀ n, P5954704843285339184.a n = A024662 n

end A024662

/-! ## A024662.P10851115192866558536

`A110655(n)+A057353(A024664(n))`
-/

namespace A024662.P10851115192866558536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + A057353 (A024664 n).toNat

end

end A024662.P10851115192866558536

namespace A024662

/-- `A110655(n)+A057353(A024664(n))` -/
def P10851115192866558536.Spec : Prop :=
  ∀ n, P10851115192866558536.a n = A024662 n

end A024662

/-! ## A024662.P17241962199717634395

`A005843(A024663(n))-A024664(n)`
-/

namespace A024662.P17241962199717634395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024663 n).toNat - A024664 n

end

end A024662.P17241962199717634395

namespace A024662

/-- `A005843(A024663(n))-A024664(n)` -/
def P17241962199717634395.Spec : Prop :=
  ∀ n, P17241962199717634395.a n = A024662 n

end A024662

/-!
# A024663: n written in fractional base 10/8.

The programs for A024663, the canonical program `A024663.P6743647253356249199` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024663 has offset 0).

The definition of A024663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024663.P6743647253356249199

`10*a(8*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024663

/-- `10*a(8*floor(n/10))+n%10` -/
def P6743647253356249199.Spec : Prop :=
  ∀ n, (P6743647253356249199.a n : ℤ) = A024663 n

theorem P6743647253356249199.correct : P6743647253356249199.Spec := by
  intro n
  simp only [A024663]

end A024663

/-! ## A024663.P2562019891650938662

`A008589(A270173(n-∑{digits}[n, #]))+n`
-/

namespace A024663.P2562019891650938662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A270173 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)).toNat + (n : ℤ)

end

end A024663.P2562019891650938662

namespace A024663

/-- `A008589(A270173(n-∑{digits}[n, #]))+n` -/
def P2562019891650938662.Spec : Prop :=
  ∀ n, P2562019891650938662.a n = A024663 n

end A024663

/-! ## A024663.P4908005725903915786

`A014682(A024664(n)+A024662(n))`
-/

namespace A024663.P4908005725903915786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024664 n + A024662 n).toNat

end

end A024663.P4908005725903915786

namespace A024663

/-- `A014682(A024664(n)+A024662(n))` -/
def P4908005725903915786.Spec : Prop :=
  ∀ n, P4908005725903915786.a n = A024663 n

end A024663

/-! ## A024663.P11221484220472208068

`A038572(A024664(n)+A024662(n))`
-/

namespace A024663.P11221484220472208068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A024664 n + A024662 n).toNat

end

end A024663.P11221484220472208068

namespace A024663

/-- `A038572(A024664(n)+A024662(n))` -/
def P11221484220472208068.Spec : Prop :=
  ∀ n, P11221484220472208068.a n = A024663 n

end A024663

/-! ## A024663.P5675178293009175859

`A328399(A024664(n)+A024662(n))-1`
-/

namespace A024663.P5675178293009175859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A024664 n + A024662 n).toNat - 1

end

end A024663.P5675178293009175859

namespace A024663

/-- `A328399(A024664(n)+A024662(n))-1` -/
def P5675178293009175859.Spec : Prop :=
  ∀ n, P5675178293009175859.a n = A024663 n

end A024663

/-!
# A024664: n written in fractional base 10/9.

The programs for A024664, the canonical program `A024664.P12001602404638269314` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024664 has offset 0).

The definition of A024664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024664.P12001602404638269314

`10*a(9*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024664

/-- `10*a(9*floor(n/10))+n%10` -/
def P12001602404638269314.Spec : Prop :=
  ∀ n, (P12001602404638269314.a n : ℤ) = A024664 n

theorem P12001602404638269314.correct : P12001602404638269314.Spec := by
  intro n
  simp only [A024664]

end A024664

/-! ## A024664.P8666921304217891014

`A005843(A024663(n))-A024662(n)`
-/

namespace A024664.P8666921304217891014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024663 n).toNat - A024662 n

end

end A024664.P8666921304217891014

namespace A024664

/-- `A005843(A024663(n))-A024662(n)` -/
def P8666921304217891014.Spec : Prop :=
  ∀ n, P8666921304217891014.a n = A024664 n

end A024664

/-! ## A024664.P2444376818497980217

`A004396(A005408(A024662(n))-A008619(n))`
-/

namespace A024664.P2444376818497980217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005408 (A024662 n).toNat - A008619 n).toNat

end

end A024664.P2444376818497980217

namespace A024664

/-- `A004396(A005408(A024662(n))-A008619(n))` -/
def P2444376818497980217.Spec : Prop :=
  ∀ n, P2444376818497980217.a n = A024664 n

end A024664

/-! ## A024664.P15318929650300949417

`2*A255400(n-∑{digits}[n, #])+n`
-/

namespace A024664.P15318929650300949417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255400 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) + (n : ℤ)

end

end A024664.P15318929650300949417

namespace A024664

/-- `2*A255400(n-∑{digits}[n, #])+n` -/
def P15318929650300949417.Spec : Prop :=
  ∀ n, P15318929650300949417.a n = A024664 n

end A024664

/-! ## A024664.P17026525958074844252

`A038364(1-∑{digits}[n, #]+n)-(n-(∏{digits}[n, #]+∑{digits}[n, #]))`
-/

namespace A024664.P17026525958074844252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038364 (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)).toNat - ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod + ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A024664.P17026525958074844252

namespace A024664

/-- `A038364(1-∑{digits}[n, #]+n)-(n-(∏{digits}[n, #]+∑{digits}[n, #]))` -/
def P17026525958074844252.Spec : Prop :=
  ∀ n, P17026525958074844252.a n = A024664 n

end A024664

/-!
# A024665: Positions of even numbers in A003325.

The programs for A024665, there is no canonical definition to state claims against.
-/

/-! ## A024665.P4799596625376957177

`comp[A024666(n+1)-1]+1`
-/

namespace A024665.P4799596625376957177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024666 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A024665.P4799596625376957177

/-! ## A024665.P15017290119044562190

`lt[and(1, A003325(n+1)), 1]+1`
-/

namespace A024665.P15017290119044562190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003325 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024665.P15017290119044562190

/-! ## A024665.P7480888590553190682

`lt[lcm(A003325(n+1)%2, A255057(n)), 1]+1`
-/

namespace A024665.P7480888590553190682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A003325 (n + 1)) 2) (A255057 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024665.P7480888590553190682

/-! ## A024665.P3822592333744762864

`eq[2, gcd(2, A339993(n+1)/8)]+1`
-/

namespace A024665.P3822592333744762864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (SequenceMachineLib.roundAway ((A339993 (n + 1) : ℚ) / 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024665.P3822592333744762864

/-! ## A024665.P12445252571880561288

`eq[char[A024666(n+1)], A000007(n)]`
-/

namespace A024665.P12445252571880561288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024666 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024665.P12445252571880561288

/-! ## A024665.P8833587322370856652

`eq[2, A020639(A003325(n+1))]+1`
-/

namespace A024665.P8833587322370856652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003325 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024665.P8833587322370856652

/-! ## A024665.P17744036494125891055

`eq[1, A247477(A003325(n+1)+1)]+1`
-/

namespace A024665.P17744036494125891055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (A003325 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024665.P17744036494125891055

/-! ## A024665.P15150796634948020436

`record[A000027(n+1)/A000034(A003325(n+1))]`
-/

namespace A024665.P15150796634948020436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000034 (A003325 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024665.P15150796634948020436

/-! ## A024665.P17693517218215474991

`record[A008619(2*n)/A000034(A003325(n+1))]`
-/

namespace A024665.P17693517218215474991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A000034 (A003325 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024665.P17693517218215474991

/-!
# A024666: Positions of odd numbers in A003325.

The programs for A024666, there is no canonical definition to state claims against.
-/

/-! ## A024666.P14556364079099422590

`eq[1, A003325(n+1)%2]+1`
-/

namespace A024666.P14556364079099422590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003325 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024666.P14556364079099422590

/-! ## A024666.P5394770916325901926

`eq[char[A024665(n+1)], A000007(n)]`
-/

namespace A024666.P5394770916325901926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024665 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024666.P5394770916325901926

/-! ## A024666.P17590277591069689298

`eq[char[A024665(n+1)], A000038(n)]`
-/

namespace A024666.P17590277591069689298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024665 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024666.P17590277591069689298

/-! ## A024666.P13399071227109090521

`lt[val(A339993(A028310(n))/8, 2), 1]`
-/

namespace A024666.P13399071227109090521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A339993 (A028310 n).toNat : ℚ) / 8)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024666.P13399071227109090521

/-! ## A024666.P17958952496905110674

`eq[A057428(n)+1, char[A024665(n+1)]]`
-/

namespace A024666.P17958952496905110674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024665 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A024666.P17958952496905110674

/-! ## A024666.P8597574905747585560

`eq[2, A020639(A003325(n+1)+1)]+1`
-/

namespace A024666.P8597574905747585560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003325 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024666.P8597574905747585560

/-! ## A024666.P4583159695601939138

`eq[1, A247477(A003325(n+1))]+1`
-/

namespace A024666.P4583159695601939138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (A003325 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024666.P4583159695601939138

/-!
# A024667: a(n) = position of 2*n^3 in A003325.

The programs for A024667, there is no canonical definition to state claims against.
-/

/-! ## A024667.P5163065609210501542

`lt[A280618(A003325(n+1)), 2]+1`
-/

namespace A024667.P5163065609210501542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A003325 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024667.P5163065609210501542

/-! ## A024667.P12392350263717433093

`∑[A231561(∑[A239849(3*n+1)])]`
-/

namespace A024667.P12392350263717433093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231561 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024667.P12392350263717433093

/-! ## A024667.P2111943675323193564

`∑[∑[A367771(A001405(n))]]`
-/

namespace A024667.P2111943675323193564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367771 (A001405 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024667.P2111943675323193564

/-! ## A024667.P16349554753372125780

`∑[∑[A231714(A293993(n))]]`
-/

namespace A024667.P16349554753372125780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231714 (A293993 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024667.P16349554753372125780

/-!
# A024668: Position of 1 + n^3 in A003325.

The programs for A024668, there is no canonical definition to state claims against.
-/

/-! ## A024668.P1610387880066646186

`A000124(n)-A139352(A035929(n))`
-/

namespace A024668.P1610387880066646186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A139352 (A035929 n).toNat

end

end A024668.P1610387880066646186

/-! ## A024668.P15130297656174136222

`A131754(A014112(n+1))`
-/

namespace A024668.P15130297656174136222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131754 (A014112 (n + 1)).toNat

end

end A024668.P15130297656174136222

/-! ## A024668.P8455559050851729098

`A334097(A294772(n))+A103262(n)`
-/

namespace A024668.P8455559050851729098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A294772 n).toNat + A103262 n

end

end A024668.P8455559050851729098

/-! ## A024668.P9604091278215785049

`A347697(A364534(n+3)+A261049(n))`
-/

namespace A024668.P9604091278215785049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A364534 (n + 3) + A261049 n).toNat

end

end A024668.P9604091278215785049

/-! ## A024668.P15712286079584165324

`A252649(A175965(n+1))`
-/

namespace A024668.P15712286079584165324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252649 (A175965 (n + 1)).toNat

end

end A024668.P15712286079584165324

/-!
# A024669: Position of n^3 + (n+1)^3 in A003325.

The programs for A024669, there is no canonical definition to state claims against.
-/

/-! ## A024669.P5932006533825783672

`A024674(n+1)+1+n`
-/

namespace A024669.P5932006533825783672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024674 (n + 1) + 1 + (n : ℤ)

end

end A024669.P5932006533825783672

/-! ## A024669.P13419155588849847167

`A020725(A024674(n+1))+n`
-/

namespace A024669.P13419155588849847167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A024674 (n + 1)).toNat + (n : ℤ)

end

end A024669.P13419155588849847167

/-! ## A024669.P2208624390397276003

`record[A134478(n)+A024674(A134478(n))]`
-/

namespace A024669.P2208624390397276003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n + A024674 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024669.P2208624390397276003

/-! ## A024669.P18109836177872854706

`record[A344180(n)+A024674(A344180(n))]`
-/

namespace A024669.P18109836177872854706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n + A024674 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024669.P18109836177872854706

/-! ## A024669.P16590617945348188084

`record[A137735(n)+A024674(A137735(n))]`
-/

namespace A024669.P16590617945348188084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 n + A024674 (A137735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024669.P16590617945348188084

/-!
# A024670: Numbers that are sums of 2 distinct positive cubes.

The programs for A024670, there is no canonical definition to state claims against.
-/

/-! ## A024670.P3050280797509238908

`A339994(n+1)/8`
-/

namespace A024670.P3050280797509238908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339994 (n + 1) : ℚ) / 8

end

end A024670.P3050280797509238908

/-! ## A024670.P2033403126662968640

`∩[A003325(n+1), A114090(n+1)]`
-/

namespace A024670.P2033403126662968640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024670.P2033403126662968640

/-! ## A024670.P9388030242524486477

`∩[A114090(n+1), A267686(n+1)]`
-/

namespace A024670.P9388030242524486477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024670.P9388030242524486477

/-! ## A024670.P11264572845176881827

`∩[A051386(n+1), A114090(n+1)]`
-/

namespace A024670.P11264572845176881827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024670.P11264572845176881827

/-! ## A024670.P16183871779491774225

`∩[A020894(n+1), A114090(n+1)]`
-/

namespace A024670.P16183871779491774225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024670.P16183871779491774225

/-! ## A024670.P6166885397002212366

`∩[A003325(n+1), A307585(n+1)]`
-/

namespace A024670.P6166885397002212366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024670.P6166885397002212366

/-! ## A024670.P17696400489163899694

`lt[0, A025468(n)]`
-/

namespace A024670.P17696400489163899694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024670.P17696400489163899694

/-! ## A024670.P14339650132985747230

`lt[1, A280618(n)]`
-/

namespace A024670.P14339650132985747230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024670.P14339650132985747230

/-!
# A024671: Positions of even numbers in A024670 (distinct sums of cubes of distinct positive integers).

The programs for A024671, there is no canonical definition to state claims against.
-/

/-! ## A024671.P16573224129306324114

`eq[0, A024670(n+1)%2]+1`
-/

namespace A024671.P16573224129306324114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024670 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024671.P16573224129306324114

/-! ## A024671.P14992387876079853211

`lt[2, xor(3, a(A024670(n)%2))]` with `a(0)=0, a(1)=1`
-/

namespace A024671.P14992387876079853211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  Nat.xor 3 (f2 (Int.tmod (A024670 n) 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024671.P14992387876079853211

/-! ## A024671.P10159218000753102557

`A020725(eq[0, A024670(n+1)%2])`
-/

namespace A024671.P10159218000753102557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024670 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024671.P10159218000753102557

/-! ## A024671.P13144771550713070394

`lt[and(1, (A024670(A000038(n)+n)%2)^n), 1]`
-/

namespace A024671.P13144771550713070394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A024670 (A000038 n + (n : ℤ)).toNat) 2 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024671.P13144771550713070394

/-! ## A024671.P10769644862612307309

`eq[2, A020639(A024670(n+2))]+2`
-/

namespace A024671.P10769644862612307309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024670 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024671.P10769644862612307309

/-! ## A024671.P6428631580850479748

`lt[A130717(A024670(n+1)+2), n]+1`
-/

namespace A024671.P6428631580850479748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130717 (A024670 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024671.P6428631580850479748

/-!
# A024672: Positions of odd numbers in A024670 (distinct sums of cubes of distinct positive integers).

The programs for A024672, there is no canonical definition to state claims against.
-/

/-! ## A024672.P17450704877755911876

`eq[1, A024670(n+1)%2]+1`
-/

namespace A024672.P17450704877755911876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024670 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024672.P17450704877755911876

/-! ## A024672.P4346818102176298071

`eq[1, A024670(A000038(n)+n)%2]`
-/

namespace A024672.P4346818102176298071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024670 (A000038 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024672.P4346818102176298071

/-! ## A024672.P18426602270671591032

`eq[1, A024670(xor(n, A000038(n)))%2]`
-/

namespace A024672.P18426602270671591032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024670 (Int.xor (n : ℤ) (A000038 n)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024672.P18426602270671591032

/-! ## A024672.P16278846100893469496

`record[and(1, A024670(n+1))*A008619(2*n)]`
-/

namespace A024672.P16278846100893469496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A024670 (n + 1)) * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024672.P16278846100893469496

/-! ## A024672.P4048079750153993811

`lt[2, A020639(A024670(n+1))]+1`
-/

namespace A024672.P4048079750153993811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024670 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024672.P4048079750153993811

/-! ## A024672.P5043691393472687224

`record[(n+1)*A000035(A024670(n+2))+1]`
-/

namespace A024672.P5043691393472687224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A024670 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024672.P5043691393472687224

/-! ## A024672.P8074171628502832833

`record[A000027(n+1)*A000035(A024670(n+1))]`
-/

namespace A024672.P8074171628502832833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A000035 (A024670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024672.P8074171628502832833

/-!
# A024673: Position of 1 + n^3 in A024670 (distinct sums of cubes of distinct positive integers).

The programs for A024673, there is no canonical definition to state claims against.
-/

/-! ## A024673.P3618443194415746177

`A008614(12*n)-A101638(A050864(n+1))`
-/

namespace A024673.P3618443194415746177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 (12 * n) - A101638 (A050864 (n + 1)).toNat

end

end A024673.P3618443194415746177

/-! ## A024673.P7676966628143123402

`A008614(12*n)-A321936(A044917(n+1))`
-/

namespace A024673.P7676966628143123402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 (12 * n) - A321936 (A044917 (n + 1)).toNat

end

end A024673.P7676966628143123402

/-! ## A024673.P8093425077203410931

`∑[A352241(n+2)+A281154(A077168(n))]`
-/

namespace A024673.P8093425077203410931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352241 (n + 2) + A281154 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024673.P8093425077203410931

/-! ## A024673.P2060112784829827698

`A071521(A095214(n))`
-/

namespace A024673.P2060112784829827698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A095214 n).toNat

end

end A024673.P2060112784829827698

/-! ## A024673.P4076486981471198846

`A071521(A384600(n))`
-/

namespace A024673.P4076486981471198846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A384600 n).toNat

end

end A024673.P4076486981471198846

/-!
# A024674: a(n) = position of n^3 + (n+1)^3 in A024670 (distinct sums of cubes of distinct positive integers).

The programs for A024674, there is no canonical definition to state claims against.
-/

/-! ## A024674.P30584044340636644

`A024669(n+1)-(n+1)`
-/

namespace A024674.P30584044340636644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024669 (n + 1) - (n + 1 : ℤ)

end

end A024674.P30584044340636644

/-! ## A024674.P12446489274009633892

`record[A024669(A065648(n))-1]-n`
-/

namespace A024674.P12446489274009633892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024669 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A024674.P12446489274009633892

/-! ## A024674.P18232415322182238262

`A051494(Δ[n²])+A024669(n+1)`
-/

namespace A024674.P18232415322182238262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A024669 (n + 1)

end

end A024674.P18232415322182238262

/-! ## A024674.P13640724040243573058

`record[A024669(A065033(n))-A008619(n)]`
-/

namespace A024674.P13640724040243573058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024669 (A065033 n).toNat - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024674.P13640724040243573058

/-! ## A024674.P14226526952390887983

`record[A024669(A065648(n))-A065648(n)]`
-/

namespace A024674.P14226526952390887983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024669 (A065648 n).toNat - A065648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024674.P14226526952390887983

/-!
# A024675: Average of two consecutive odd primes.

The programs for A024675, the canonical program `A024675.P1773648843625354992` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024675 has offset 1).

The definition of A024675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024675.P1773648843625354992

`A001043(n+2)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024675

/-- `A001043(n+2)/2` -/
def P1773648843625354992.Spec : Prop :=
  ∀ n, P1773648843625354992.a n = (A024675 (n + 1) : ℚ)

end A024675

/-! ## A024675.P16796179093320262738

`floor(sqrt(A293206(n+1)))`
-/

namespace A024675.P16796179093320262738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293206 (n + 1))

end

end A024675.P16796179093320262738

namespace A024675

/-- `floor(sqrt(A293206(n+1)))` -/
def P16796179093320262738.Spec : Prop :=
  ∀ n, P16796179093320262738.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P5532643782903109716

`floor(sqrt(A075892(n+2)))`
-/

namespace A024675.P5532643782903109716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A075892 (n + 2))

end

end A024675.P5532643782903109716

namespace A024675

/-- `floor(sqrt(A075892(n+2)))` -/
def P5532643782903109716.Spec : Prop :=
  ∀ n, P5532643782903109716.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P8684578365427647074

`A024678(n+1)+2+n`
-/

namespace A024675.P8684578365427647074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024678 (n + 1) + 2 + (n : ℤ)

end

end A024675.P8684578365427647074

namespace A024675

/-- `A024678(n+1)+2+n` -/
def P8684578365427647074.Spec : Prop :=
  ∀ n, P8684578365427647074.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P16041429665738666096

`A052288(n)+a(n-1)` with `a(0)=4`
-/

namespace A024675.P16041429665738666096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A052288 n + a (n - 1)

end

end A024675.P16041429665738666096

namespace A024675

/-- `A052288(n)+a(n-1)` -/
def P16041429665738666096.Spec : Prop :=
  ∀ n, P16041429665738666096.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P4784211305799341008

`A305748(n+1)+Δ[A007504(n)]`
-/

namespace A024675.P4784211305799341008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (n + 1) + (f1 (n + 1) - f1 n)

end

end A024675.P4784211305799341008

namespace A024675

/-- `A305748(n+1)+Δ[A007504(n)]` -/
def P4784211305799341008.Spec : Prop :=
  ∀ n, P4784211305799341008.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P7431675044052541398

`A089253(n+1)+A089038(n+1)`
-/

namespace A024675.P7431675044052541398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + A089038 (n + 1)

end

end A024675.P7431675044052541398

namespace A024675

/-- `A089253(n+1)+A089038(n+1)` -/
def P7431675044052541398.Spec : Prop :=
  ∀ n, P7431675044052541398.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P10621011215786185767

`A305748(n+1)+A000040(n+1)`
-/

namespace A024675.P10621011215786185767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (n + 1) + A000040 (n + 1)

end

end A024675.P10621011215786185767

namespace A024675

/-- `A305748(n+1)+A000040(n+1)` -/
def P10621011215786185767.Spec : Prop :=
  ∀ n, P10621011215786185767.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P9508355374675302536

`A065091(n+1)+A028334(n+2)`
-/

namespace A024675.P9508355374675302536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A028334 (n + 2)

end

end A024675.P9508355374675302536

namespace A024675

/-- `A065091(n+1)+A028334(n+2)` -/
def P9508355374675302536.Spec : Prop :=
  ∀ n, P9508355374675302536.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P16192527024075581220

`A181428(n+1)-A305748(n+1)`
-/

namespace A024675.P16192527024075581220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) - A305748 (n + 1)

end

end A024675.P16192527024075581220

namespace A024675

/-- `A181428(n+1)-A305748(n+1)` -/
def P16192527024075581220.Spec : Prop :=
  ∀ n, P16192527024075581220.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P12806769099026315580

`A215848(n+1)-A028334(n+2)`
-/

namespace A024675.P12806769099026315580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A028334 (n + 2)

end

end A024675.P12806769099026315580

namespace A024675

/-- `A215848(n+1)-A028334(n+2)` -/
def P12806769099026315580.Spec : Prop :=
  ∀ n, P12806769099026315580.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P10277148184085791605

`A161720(n+3)+A089192(n+1)`
-/

namespace A024675.P10277148184085791605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) + A089192 (n + 1)

end

end A024675.P10277148184085791605

namespace A024675

/-- `A161720(n+3)+A089192(n+1)` -/
def P10277148184085791605.Spec : Prop :=
  ∀ n, P10277148184085791605.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P7064974817075609744

`(A034961(n+1)-A000040(n+1))/2`
-/

namespace A024675.P7064974817075609744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034961 (n + 1) - A000040 (n + 1) : ℚ) / 2

end

end A024675.P7064974817075609744

namespace A024675

/-- `(A034961(n+1)-A000040(n+1))/2` -/
def P7064974817075609744.Spec : Prop :=
  ∀ n, P7064974817075609744.a n = (A024675 (n + 1) : ℚ)

end A024675

/-! ## A024675.P17552744173288914644

`A162735(n+2)`
-/

namespace A024675.P17552744173288914644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 2)

end

end A024675.P17552744173288914644

namespace A024675

/-- `A162735(n+2)` -/
def P17552744173288914644.Spec : Prop :=
  ∀ n, P17552744173288914644.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P14858983258312882480

`A162800(n+2)`
-/

namespace A024675.P14858983258312882480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 2)

end

end A024675.P14858983258312882480

namespace A024675

/-- `A162800(n+2)` -/
def P14858983258312882480.Spec : Prop :=
  ∀ n, P14858983258312882480.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P8892796624665184473

`sqrt(A076621(n+2))`
-/

namespace A024675.P8892796624665184473
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076621 (n + 2) : ℝ)

end

end A024675.P8892796624665184473

namespace A024675

/-- `sqrt(A076621(n+2))` -/
def P8892796624665184473.Spec : Prop :=
  ∀ n, P8892796624665184473.a n = (A024675 (n + 1) : ℝ)

end A024675

/-! ## A024675.P5912185087558960468

`Δ[A073612(n+2)]`
-/

namespace A024675.P5912185087558960468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073612 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024675.P5912185087558960468

namespace A024675

/-- `Δ[A073612(n+2)]` -/
def P5912185087558960468.Spec : Prop :=
  ∀ n, P5912185087558960468.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P9696810693637260798

`A078444(n+2)+1`
-/

namespace A024675.P9696810693637260798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 2) + 1

end

end A024675.P9696810693637260798

namespace A024675

/-- `A078444(n+2)+1` -/
def P9696810693637260798.Spec : Prop :=
  ∀ n, P9696810693637260798.a n = A024675 (n + 1)

end A024675

/-! ## A024675.P7590541996658114467

`A011974(n+3)/2`
-/

namespace A024675.P7590541996658114467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011974 (n + 3) : ℚ) / 2

end

end A024675.P7590541996658114467

namespace A024675

/-- `A011974(n+3)/2` -/
def P7590541996658114467.Spec : Prop :=
  ∀ n, P7590541996658114467.a n = (A024675 (n + 1) : ℚ)

end A024675

/-! ## A024675.P7114718346399171406

`floor(sqrt(A123134(n+2)))`
-/

namespace A024675.P7114718346399171406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A123134 (n + 2))

end

end A024675.P7114718346399171406

namespace A024675

/-- `floor(sqrt(A123134(n+2)))` -/
def P7114718346399171406.Spec : Prop :=
  ∀ n, P7114718346399171406.a n = A024675 (n + 1)

end A024675

/-!
# A024676: a(n) is the number of prime divisors (counted by multiplicity) of A024675(n).

The programs for A024676, the canonical program `A024676.P3514382292140376795` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024676 has offset 1).

The definition of A024676 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A024675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024676.P3514382292140376795

`A001222(A024675(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A024676

/-- `A001222(A024675(n+1))` -/
def P3514382292140376795.Spec : Prop :=
  ∀ n, P3514382292140376795.a n = A024676 (n + 1)

theorem P3514382292140376795.correct : P3514382292140376795.Spec := by
  intro n
  simp only [A024676, Nat.add_sub_cancel]

end A024676

/-! ## A024676.P11897072470944164768

`A098037(n+2)-1`
-/

namespace A024676.P11897072470944164768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098037 (n + 2) - 1

end

end A024676.P11897072470944164768

namespace A024676

/-- `A098037(n+2)-1` -/
def P11897072470944164768.Spec : Prop :=
  ∀ n, P11897072470944164768.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P5056698646900591792

`∑{e}[A162735(n+2), #]`
-/

namespace A024676.P5056698646900591792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A024676.P5056698646900591792

namespace A024676

/-- `∑{e}[A162735(n+2), #]` -/
def P5056698646900591792.Spec : Prop :=
  ∀ n, (P5056698646900591792.a n : ℤ) = A024676 (n + 1)

end A024676

/-! ## A024676.P1669972251947355851

`∑{e}[A162800(n+2), #]`
-/

namespace A024676.P1669972251947355851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A024676.P1669972251947355851

namespace A024676

/-- `∑{e}[A162800(n+2), #]` -/
def P1669972251947355851.Spec : Prop :=
  ∀ n, (P1669972251947355851.a n : ℤ) = A024676 (n + 1)

end A024676

/-! ## A024676.P9656234694792484130

`A001222(A162735(n+2))`
-/

namespace A024676.P9656234694792484130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A162735 (n + 2)).toNat

end

end A024676.P9656234694792484130

namespace A024676

/-- `A001222(A162735(n+2))` -/
def P9656234694792484130.Spec : Prop :=
  ∀ n, P9656234694792484130.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P12368061673443324929

`A001222(A001043(n+2)/2)`
-/

namespace A024676.P12368061673443324929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A001043 (n + 2) : ℚ) / 2)).toNat

end

end A024676.P12368061673443324929

namespace A024676

/-- `A001222(A001043(n+2)/2)` -/
def P12368061673443324929.Spec : Prop :=
  ∀ n, P12368061673443324929.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P13550263773778566822

`A001222(A011974(n+3)/2)`
-/

namespace A024676.P13550263773778566822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A011974 (n + 3) : ℚ) / 2)).toNat

end

end A024676.P13550263773778566822

namespace A024676

/-- `A001222(A011974(n+3)/2)` -/
def P13550263773778566822.Spec : Prop :=
  ∀ n, P13550263773778566822.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P9027996628408541278

`A001222(ceil(sqrt(A006094(n+2))))`
-/

namespace A024676.P9027996628408541278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈Real.sqrt (A006094 (n + 2) : ℝ)⌉.toNat

end

end A024676.P9027996628408541278

namespace A024676

/-- `A001222(ceil(sqrt(A006094(n+2))))` -/
def P9027996628408541278.Spec : Prop :=
  ∀ n, P9027996628408541278.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P12407147896349971105

`A001222(round(sqrt(A006094(n+2))))`
-/

namespace A024676.P12407147896349971105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A006094 (n + 2) : ℝ))).toNat

end

end A024676.P12407147896349971105

namespace A024676

/-- `A001222(round(sqrt(A006094(n+2))))` -/
def P12407147896349971105.Spec : Prop :=
  ∀ n, P12407147896349971105.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P9631370089224977567

`A001222(Δ[A061802(n+1)/2])`
-/

namespace A024676.P9631370089224977567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061802 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A024676.P9631370089224977567

namespace A024676

/-- `A001222(Δ[A061802(n+1)/2])` -/
def P9631370089224977567.Spec : Prop :=
  ∀ n, P9631370089224977567.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P5924646454497244394

`A001222(A024678(n+1)+2+n)`
-/

namespace A024676.P5924646454497244394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A024678 (n + 1) + 2 + (n : ℤ)).toNat

end

end A024676.P5924646454497244394

namespace A024676

/-- `A001222(A024678(n+1)+2+n)` -/
def P5924646454497244394.Spec : Prop :=
  ∀ n, P5924646454497244394.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P6613890828140923376

`A001222((A000040(n+2)+A000040(n+3))/2)`
-/

namespace A024676.P6613890828140923376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000040 (n + 2) + A000040 (n + 3) : ℚ) / 2)).toNat

end

end A024676.P6613890828140923376

namespace A024676

/-- `A001222((A000040(n+2)+A000040(n+3))/2)` -/
def P6613890828140923376.Spec : Prop :=
  ∀ n, P6613890828140923376.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P6045214291182047086

`A001222(Δ[A061802(n+1)])-1`
-/

namespace A024676.P6045214291182047086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat - 1

end

end A024676.P6045214291182047086

namespace A024676

/-- `A001222(Δ[A061802(n+1)])-1` -/
def P6045214291182047086.Spec : Prop :=
  ∀ n, P6045214291182047086.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P11154535879531243158

`A001222(A000040(n+2)+A000040(n+3))-1`
-/

namespace A024676.P11154535879531243158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 2) + A000040 (n + 3)).toNat - 1

end

end A024676.P11154535879531243158

namespace A024676

/-- `A001222(A000040(n+2)+A000040(n+3))-1` -/
def P11154535879531243158.Spec : Prop :=
  ∀ n, P11154535879531243158.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P16188497840911788180

`A001222(A018252(A024678(n+1)))`
-/

namespace A024676.P16188497840911788180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A018252 (A024678 (n + 1)).toNat).toNat

end

end A024676.P16188497840911788180

namespace A024676

/-- `A001222(A018252(A024678(n+1)))` -/
def P16188497840911788180.Spec : Prop :=
  ∀ n, P16188497840911788180.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P4948162063585546275

`A062502(A024678(n+1))`
-/

namespace A024676.P4948162063585546275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062502 (A024678 (n + 1)).toNat

end

end A024676.P4948162063585546275

namespace A024676

/-- `A062502(A024678(n+1))` -/
def P4948162063585546275.Spec : Prop :=
  ∀ n, P4948162063585546275.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P10677384686374605100

`A252736(A001043(n+2))`
-/

namespace A024676.P10677384686374605100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A001043 (n + 2)).toNat

end

end A024676.P10677384686374605100

namespace A024676

/-- `A252736(A001043(n+2))` -/
def P10677384686374605100.Spec : Prop :=
  ∀ n, P10677384686374605100.a n = A024676 (n + 1)

end A024676

/-! ## A024676.P6942927101950419754

`A001222(∑{p}[A006094(n+2), #])-1`
-/

namespace A024676.P6942927101950419754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) - 1

end

end A024676.P6942927101950419754

namespace A024676

/-- `A001222(∑{p}[A006094(n+2), #])-1` -/
def P6942927101950419754.Spec : Prop :=
  ∀ n, P6942927101950419754.a n = A024676 (n + 1)

end A024676

/-!
# A024677: Smallest prime divisor of n-th terms of sequence A024675 (averages of two consecutive odd primes).

The programs for A024677, there is no canonical definition to state claims against.
-/

/-! ## A024677.P14734315861266509021

`A020639(A024675(n+1))`
-/

namespace A024677.P14734315861266509021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024675 (n + 1)).toNat

end

end A024677.P14734315861266509021

/-! ## A024677.P6056254302798949389

`A020639(A162735(n+2))`
-/

namespace A024677.P6056254302798949389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A162735 (n + 2)).toNat

end

end A024677.P6056254302798949389

/-! ## A024677.P6114397134713940357

`A020639(A001043(n+2)/2)`
-/

namespace A024677.P6114397134713940357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A001043 (n + 2) : ℚ) / 2)).toNat

end

end A024677.P6114397134713940357

/-! ## A024677.P15012302239829763156

`A020639(floor(sqrt(A075892(n+2))))`
-/

namespace A024677.P15012302239829763156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.sqrt (A075892 (n + 2))).toNat

end

end A024677.P15012302239829763156

/-! ## A024677.P8316718265043069353

`A020639(ceil(sqrt(A006094(n+2))))`
-/

namespace A024677.P8316718265043069353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈Real.sqrt (A006094 (n + 2) : ℝ)⌉.toNat

end

end A024677.P8316718265043069353

/-! ## A024677.P6534727522832282890

`A020639(round(sqrt(A006094(n+2))))`
-/

namespace A024677.P6534727522832282890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A006094 (n + 2) : ℝ))).toNat

end

end A024677.P6534727522832282890

/-! ## A024677.P12519387379326714246

`A020639(∑[A162345(n+2)]+2)`
-/

namespace A024677.P12519387379326714246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A024677.P12519387379326714246

/-! ## A024677.P1603225410471476007

`A020639(Δ[A061802(n+1)/2])`
-/

namespace A024677.P1603225410471476007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061802 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A024677.P1603225410471476007

/-! ## A024677.P7369018025415380046

`A020639(Δ[A102724(n+1)/2])`
-/

namespace A024677.P7369018025415380046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102724 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A024677.P7369018025415380046

/-! ## A024677.P9961478340651625848

`A020639(A024678(n+1)+2+n)`
-/

namespace A024677.P9961478340651625848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024678 (n + 1) + 2 + (n : ℤ)).toNat

end

end A024677.P9961478340651625848

/-! ## A024677.P15339315601876311093

`A020639(A065091(n+1)+A028334(n+2))`
-/

namespace A024677.P15339315601876311093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A065091 (n + 1) + A028334 (n + 2)).toNat

end

end A024677.P15339315601876311093

/-! ## A024677.P6922518427781695476

`A020639((A000040(n+2)+A000040(n+3))/2)`
-/

namespace A024677.P6922518427781695476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A000040 (n + 2) + A000040 (n + 3) : ℚ) / 2)).toNat

end

end A024677.P6922518427781695476

/-! ## A024677.P8986442911505264084

`A074828(A001043(n+2)/2)`
-/

namespace A024677.P8986442911505264084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (SequenceMachineLib.roundAway ((A001043 (n + 2) : ℚ) / 2)).toNat

end

end A024677.P8986442911505264084

/-! ## A024677.P9971533180070414449

`A020639(A018252(A024678(n+1)))`
-/

namespace A024677.P9971533180070414449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 (A024678 (n + 1)).toNat).toNat

end

end A024677.P9971533180070414449

/-! ## A024677.P8444861113262049937

`A020639(A063932(A008864(n+2)))`
-/

namespace A024677.P8444861113262049937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063932 (A008864 (n + 2)).toNat).toNat

end

end A024677.P8444861113262049937

/-! ## A024677.P6892311097577830212

`A020639(A063932(A055670(n+2)))`
-/

namespace A024677.P6892311097577830212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063932 (A055670 (n + 2)).toNat).toNat

end

end A024677.P6892311097577830212

/-! ## A024677.P5393240680909183610

`A020639(A063932(A076083(n+2)))`
-/

namespace A024677.P5393240680909183610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063932 (A076083 (n + 2)).toNat).toNat

end

end A024677.P5393240680909183610

/-! ## A024677.P13412477791542786319

`A078835(n+1)-A105086(A024675(n+1))`
-/

namespace A024677.P13412477791542786319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078835 (n + 1) - A105086 (A024675 (n + 1)).toNat

end

end A024677.P13412477791542786319

/-! ## A024677.P10422301868260564271

`A020639(A063932(A114331(n+2)))`
-/

namespace A024677.P10422301868260564271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063932 (A114331 (n + 2)).toNat).toNat

end

end A024677.P10422301868260564271

/-!
# A024678: a(n) is the position of (prime(n+1) + prime(n+2))/2 in the ordered nonprimes.

The programs for A024678, the canonical program `A024678.P7047042052226671607` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024678 has offset 1).

The definition of A024678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024678.P7047042052226671607

`A024675(n+1)-(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024678

/-- `A024675(n+1)-(n+2)` -/
def P7047042052226671607.Spec : Prop :=
  ∀ n, P7047042052226671607.a n = A024678 (n + 1)

theorem P7047042052226671607.correct : P7047042052226671607.Spec := by
  intro n
  simp only [A024678, Nat.add_sub_cancel]

end A024678

/-! ## A024678.P9667365953644917603

`A052288(n)+a(n-1)-1` with `a(0)=2`
-/

namespace A024678.P9667365953644917603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A052288 n + a (n - 1) - 1

end

end A024678.P9667365953644917603

namespace A024678

/-- `A052288(n)+a(n-1)-1` -/
def P9667365953644917603.Spec : Prop :=
  ∀ n, P9667365953644917603.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P13046958040679676479

`floor(sqrt(A075892(n+2)))-(n+2)`
-/

namespace A024678.P13046958040679676479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A075892 (n + 2)) - (n + 2 : ℤ)

end

end A024678.P13046958040679676479

namespace A024678

/-- `floor(sqrt(A075892(n+2)))-(n+2)` -/
def P13046958040679676479.Spec : Prop :=
  ∀ n, P13046958040679676479.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P15549657356935086704

`A305748(n+1)+A065890(n+1)`
-/

namespace A024678.P15549657356935086704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (n + 1) + A065890 (n + 1)

end

end A024678.P15549657356935086704

namespace A024678

/-- `A305748(n+1)+A065890(n+1)` -/
def P15549657356935086704.Spec : Prop :=
  ∀ n, P15549657356935086704.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P3908106309558374699

`A177018(n+1)+A161720(n+3)`
-/

namespace A024678.P3908106309558374699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + A161720 (n + 3)

end

end A024678.P3908106309558374699

namespace A024678

/-- `A177018(n+1)+A161720(n+3)` -/
def P3908106309558374699.Spec : Prop :=
  ∀ n, P3908106309558374699.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P9808363679003486232

`A006254(n+1)+A089038(n+1)-n`
-/

namespace A024678.P9808363679003486232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + (A089038 (n + 1) - (n : ℤ))

end

end A024678.P9808363679003486232

namespace A024678

/-- `A006254(n+1)+A089038(n+1)-n` -/
def P9808363679003486232.Spec : Prop :=
  ∀ n, P9808363679003486232.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P1013234896669450725

`∑[A115061(n+2)]-n`
-/

namespace A024678.P1013234896669450725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A024678.P1013234896669450725

namespace A024678

/-- `∑[A115061(n+2)]-n` -/
def P1013234896669450725.Spec : Prop :=
  ∀ n, P1013234896669450725.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P10648929943949082796

`∑[A162345(n+2)]-n`
-/

namespace A024678.P10648929943949082796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A024678.P10648929943949082796

namespace A024678

/-- `∑[A162345(n+2)]-n` -/
def P10648929943949082796.Spec : Prop :=
  ∀ n, P10648929943949082796.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P4010142117261761205

`A078444(n+2)-(n+1)`
-/

namespace A024678.P4010142117261761205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 2) - (n + 1 : ℤ)

end

end A024678.P4010142117261761205

namespace A024678

/-- `A078444(n+2)-(n+1)` -/
def P4010142117261761205.Spec : Prop :=
  ∀ n, P4010142117261761205.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P16850358567671656

`A162735(n+2)-(n+2)`
-/

namespace A024678.P16850358567671656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 2) - (n + 2 : ℤ)

end

end A024678.P16850358567671656

namespace A024678

/-- `A162735(n+2)-(n+2)` -/
def P16850358567671656.Spec : Prop :=
  ∀ n, P16850358567671656.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P17159927816024111811

`A162800(n+2)-(n+2)`
-/

namespace A024678.P17159927816024111811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 2) - (n + 2 : ℤ)

end

end A024678.P17159927816024111811

namespace A024678

/-- `A162800(n+2)-(n+2)` -/
def P17159927816024111811.Spec : Prop :=
  ∀ n, P17159927816024111811.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P17227572583603412264

`A001043(n+2)/2-(n+2)`
-/

namespace A024678.P17227572583603412264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 2) : ℚ) / 2 - (n + 2 : ℚ)

end

end A024678.P17227572583603412264

namespace A024678

/-- `A001043(n+2)/2-(n+2)` -/
def P17227572583603412264.Spec : Prop :=
  ∀ n, P17227572583603412264.a n = (A024678 (n + 1) : ℚ)

end A024678

/-! ## A024678.P4280971262152139463

`A011974(n+3)/2-(n+2)`
-/

namespace A024678.P4280971262152139463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011974 (n + 3) : ℚ) / 2 - (n + 2 : ℚ)

end

end A024678.P4280971262152139463

namespace A024678

/-- `A011974(n+3)/2-(n+2)` -/
def P4280971262152139463.Spec : Prop :=
  ∀ n, P4280971262152139463.a n = (A024678 (n + 1) : ℚ)

end A024678

/-! ## A024678.P5064958533069213759

`floor(sqrt(A006094(n+2)))-(n+1)`
-/

namespace A024678.P5064958533069213759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006094 (n + 2)) - (n + 1 : ℤ)

end

end A024678.P5064958533069213759

namespace A024678

/-- `floor(sqrt(A006094(n+2)))-(n+1)` -/
def P5064958533069213759.Spec : Prop :=
  ∀ n, P5064958533069213759.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P8303737259610131444

`A008507(n+1)+A005097(n+2)`
-/

namespace A024678.P8303737259610131444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + A005097 (n + 2)

end

end A024678.P8303737259610131444

namespace A024678

/-- `A008507(n+1)+A005097(n+2)` -/
def P8303737259610131444.Spec : Prop :=
  ∀ n, P8303737259610131444.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P14244645587690124345

`A028334(n+2)+A014689(n+2)`
-/

namespace A024678.P14244645587690124345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + A014689 (n + 2)

end

end A024678.P14244645587690124345

namespace A024678

/-- `A028334(n+2)+A014689(n+2)` -/
def P14244645587690124345.Spec : Prop :=
  ∀ n, P14244645587690124345.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P9541134376233510018

`A129768(n+2)+A067076(n+2)`
-/

namespace A024678.P9541134376233510018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 2) + A067076 (n + 2)

end

end A024678.P9541134376233510018

namespace A024678

/-- `A129768(n+2)+A067076(n+2)` -/
def P9541134376233510018.Spec : Prop :=
  ∀ n, P9541134376233510018.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P7078705046062204986

`A005097(n+2)+A129768(n+2)-1`
-/

namespace A024678.P7078705046062204986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) + (A129768 (n + 2) - 1)

end

end A024678.P7078705046062204986

namespace A024678

/-- `A005097(n+2)+A129768(n+2)-1` -/
def P7078705046062204986.Spec : Prop :=
  ∀ n, P7078705046062204986.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P10721843594254710412

`A130290(n+2)+A177018(n+2)-2`
-/

namespace A024678.P10721843594254710412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) + (A177018 (n + 2) - 2)

end

end A024678.P10721843594254710412

namespace A024678

/-- `A130290(n+2)+A177018(n+2)-2` -/
def P10721843594254710412.Spec : Prop :=
  ∀ n, P10721843594254710412.a n = A024678 (n + 1)

end A024678

/-! ## A024678.P1578079199225673824

`A014689(n+2)+A001223(n+2)/2`
-/

namespace A024678.P1578079199225673824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014689 (n + 2) : ℚ) + (A001223 (n + 2) : ℚ) / 2

end

end A024678.P1578079199225673824

namespace A024678

/-- `A014689(n+2)+A001223(n+2)/2` -/
def P1578079199225673824.Spec : Prop :=
  ∀ n, P1578079199225673824.a n = (A024678 (n + 1) : ℚ)

end A024678

/-!
# A024679: Positions of primes in A003136 (ordered distinct numbers i^2 - i*j + j^2).

The programs for A024679, the canonical program `A024679.P10680649668885426669` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024679 has offset 1).

The definition of A024679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024679.P10680649668885426669

`eq[1, ∑{e}[A003136(n+1), #]]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024679

/-- `eq[1, ∑{e}[A003136(n+1), #]]+1` -/
def P10680649668885426669.Spec : Prop :=
  ∀ n, (P10680649668885426669.a n : ℤ) = A024679 (n + 1)

theorem P10680649668885426669.correct : P10680649668885426669.Spec := by
  intro n
  simp only [A024679, Nat.add_sub_cancel]

end A024679

/-! ## A024679.P7220145704670083586

`eq[1, A001222(A003136(n+2))]+2`
-/

namespace A024679.P7220145704670083586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003136 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024679.P7220145704670083586

namespace A024679

/-- `eq[1, A001222(A003136(n+2))]+2` -/
def P7220145704670083586.Spec : Prop :=
  ∀ n, (P7220145704670083586.a n : ℤ) = A024679 (n + 1)

end A024679

/-! ## A024679.P7663283195924289915

`eq[2, A001222(A270672(n+2))]+2`
-/

namespace A024679.P7663283195924289915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A270672 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024679.P7663283195924289915

namespace A024679

/-- `eq[2, A001222(A270672(n+2))]+2` -/
def P7663283195924289915.Spec : Prop :=
  ∀ n, (P7663283195924289915.a n : ℤ) = A024679 (n + 1)

end A024679

/-! ## A024679.P6575611601776085359

`eq[1, A003415(eq[1, A353816(n)])]+1`
-/

namespace A024679.P6575611601776085359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024679.P6575611601776085359

namespace A024679

/-- `eq[1, A003415(eq[1, A353816(n)])]+1` -/
def P6575611601776085359.Spec : Prop :=
  ∀ n, (P6575611601776085359.a n : ℤ) = A024679 (n + 1)

end A024679

/-! ## A024679.P17232860526646468820

`eq[1, A069359(A003136(A233583(n+1)))]`
-/

namespace A024679.P17232860526646468820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A003136 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024679.P17232860526646468820

namespace A024679

/-- `eq[1, A069359(A003136(A233583(n+1)))]` -/
def P17232860526646468820.Spec : Prop :=
  ∀ n, (P17232860526646468820.a n : ℤ) = A024679 (n + 1)

end A024679

/-!
# A024683: a(n) is the number of ways prime(n) is a sum of two composite numbers r,s satisfying r < s.

The programs for A024683, there is no canonical definition to state claims against.
-/

/-! ## A024683.P12088844706529340304

`A062303(n+1)-A060576(n)`
-/

namespace A024683.P12088844706529340304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062303 (n + 1) - A060576 n

end

end A024683.P12088844706529340304

/-! ## A024683.P14940159215080047638

`A062303(n+1)-A000035(A014092(n+1))`
-/

namespace A024683.P14940159215080047638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062303 (n + 1) - A000035 (A014092 (n + 1)).toNat

end

end A024683.P14940159215080047638

/-! ## A024683.P5738672987565848938

`A224710(A111333(n+1))`
-/

namespace A024683.P5738672987565848938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224710 (A111333 (n + 1)).toNat

end

end A024683.P5738672987565848938

/-! ## A024683.P11630742794928765017

`A224710(A130291(n+1))`
-/

namespace A024683.P11630742794928765017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224710 (A130291 (n + 1)).toNat

end

end A024683.P11630742794928765017

/-! ## A024683.P11738926284086146867

`A224710(A102781(n+1)+1)`
-/

namespace A024683.P11738926284086146867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224710 (A102781 (n + 1) + 1).toNat

end

end A024683.P11738926284086146867

/-! ## A024683.P17892628850808545414

`A224710(A124678(n+1)-2)`
-/

namespace A024683.P17892628850808545414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224710 (A124678 (n + 1) - 2).toNat

end

end A024683.P17892628850808545414

/-! ## A024683.P15938426733037593342

`A224708(A000040(n+1))`
-/

namespace A024683.P15938426733037593342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A000040 (n + 1)).toNat

end

end A024683.P15938426733037593342

/-! ## A024683.P11088447576888309517

`A224708(A006005(n+1))`
-/

namespace A024683.P11088447576888309517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A006005 (n + 1)).toNat

end

end A024683.P11088447576888309517

/-! ## A024683.P8016557867375432929

`A224708(A161847(n+1))`
-/

namespace A024683.P8016557867375432929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A161847 (n + 1)).toNat

end

end A024683.P8016557867375432929

/-! ## A024683.P11863266653081406233

`A224708(A008578(n+2))`
-/

namespace A024683.P11863266653081406233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A008578 (n + 2)).toNat

end

end A024683.P11863266653081406233

/-! ## A024683.P17659146666182630400

`A224708(A075643(n+2))`
-/

namespace A024683.P17659146666182630400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A075643 (n + 2)).toNat

end

end A024683.P17659146666182630400

/-! ## A024683.P9073668387715072954

`A224708(A116974(n+2))`
-/

namespace A024683.P9073668387715072954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A116974 (n + 2)).toNat

end

end A024683.P9073668387715072954

/-! ## A024683.P4737088946273757857

`A224708(A175787(n+2))`
-/

namespace A024683.P4737088946273757857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A175787 (n + 2)).toNat

end

end A024683.P4737088946273757857

/-! ## A024683.P15659355730897583853

`A224708(record[A006530(n+2)])`
-/

namespace A024683.P15659355730897583853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024683.P15659355730897583853

/-! ## A024683.P11498819957501766138

`A224708(record[A014963(n+2)])`
-/

namespace A024683.P11498819957501766138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024683.P11498819957501766138

/-! ## A024683.P11931502722543252795

`A224708(record[A020639(n+2)])`
-/

namespace A024683.P11931502722543252795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024683.P11931502722543252795

/-! ## A024683.P16308733255009081523

`A224708(A052147(n+1)-2)`
-/

namespace A024683.P16308733255009081523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A052147 (n + 1) - 2).toNat

end

end A024683.P16308733255009081523

/-! ## A024683.P5781200285079877894

`A331622(A040976(n+1)+2)/2`
-/

namespace A024683.P5781200285079877894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331622 (A040976 (n + 1) + 2).toNat : ℚ) / 2

end

end A024683.P5781200285079877894

/-! ## A024683.P15838717487803588648

`A331622(record[A000010(n+1)]+1)/2`
-/

namespace A024683.P15838717487803588648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331622 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat : ℚ) / 2

end

end A024683.P15838717487803588648

/-! ## A024683.P11986034498512326880

`A331622(p?[A098550(n+1)])/2`
-/

namespace A024683.P11986034498512326880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331622 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A024683.P11986034498512326880

/-!
# A024684: Number of ways prime(n) is a sum of three distinct primes.

The programs for A024684, there is no canonical definition to state claims against.
-/

/-! ## A024684.P3813456694731477637

`A102605(A102781(n+1))`
-/

namespace A024684.P3813456694731477637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102605 (A102781 (n + 1)).toNat

end

end A024684.P3813456694731477637

/-! ## A024684.P951857363496684943

`A102605(A130290(n+1))`
-/

namespace A024684.P951857363496684943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102605 (A130290 (n + 1)).toNat

end

end A024684.P951857363496684943

/-! ## A024684.P1133014916553470602

`A102605(lt[A074206(2*n+1), 2])`
-/

namespace A024684.P1133014916553470602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102605 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A024684.P1133014916553470602

/-! ## A024684.P15901288354067416377

`A125688(p?[xor(1, n)])`
-/

namespace A024684.P15901288354067416377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A024684.P15901288354067416377

/-! ## A024684.P10867290712630008129

`A125688(Δ[A007504(n)])`
-/

namespace A024684.P10867290712630008129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (f1 (n + 1) - f1 n).toNat

end

end A024684.P10867290712630008129

/-! ## A024684.P9792774151553959854

`A125688(A000040(n+1))`
-/

namespace A024684.P9792774151553959854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A000040 (n + 1)).toNat

end

end A024684.P9792774151553959854

/-! ## A024684.P11315587597028242365

`A125688(A006005(n+1))`
-/

namespace A024684.P11315587597028242365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A006005 (n + 1)).toNat

end

end A024684.P11315587597028242365

/-! ## A024684.P286091400836868449

`A125688(A161847(n+1))`
-/

namespace A024684.P286091400836868449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A161847 (n + 1)).toNat

end

end A024684.P286091400836868449

/-! ## A024684.P1707595248066338524

`A125688(A008578(n+2))`
-/

namespace A024684.P1707595248066338524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A008578 (n + 2)).toNat

end

end A024684.P1707595248066338524

/-! ## A024684.P15258158449382735437

`A125688(A075643(n+2))`
-/

namespace A024684.P15258158449382735437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A075643 (n + 2)).toNat

end

end A024684.P15258158449382735437

/-! ## A024684.P10848534752024819141

`A125688(A116974(n+2))`
-/

namespace A024684.P10848534752024819141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A116974 (n + 2)).toNat

end

end A024684.P10848534752024819141

/-! ## A024684.P12393529791984618559

`A125688(A175787(n+2))`
-/

namespace A024684.P12393529791984618559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A175787 (n + 2)).toNat

end

end A024684.P12393529791984618559

/-! ## A024684.P2852091693175630637

`A125688(record[A006530(n+2)])`
-/

namespace A024684.P2852091693175630637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024684.P2852091693175630637

/-! ## A024684.P1915172144765468602

`A125688(record[A014963(n+2)])`
-/

namespace A024684.P1915172144765468602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024684.P1915172144765468602

/-! ## A024684.P10126437085420498154

`A125688(record[A020639(n+2)])`
-/

namespace A024684.P10126437085420498154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024684.P10126437085420498154

/-! ## A024684.P3318952353961269772

`A125688(A089241(n+1)/2-1)`
-/

namespace A024684.P3318952353961269772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A024684.P3318952353961269772

/-! ## A024684.P547223768288084271

`A125688(A007504(n+1)-A007504(n))`
-/

namespace A024684.P547223768288084271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A007504 (n + 1) - A007504 n).toNat

end

end A024684.P547223768288084271

/-! ## A024684.P14355313881921765362

`A125688(A164023(A001748(n+1)))`
-/

namespace A024684.P14355313881921765362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A164023 (A001748 (n + 1)).toNat).toNat

end

end A024684.P14355313881921765362

/-!
# A024686: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A000201 (lower Wythoff sequence), t = A001950 (upper Wythoff sequence).

The programs for A024686, there is no canonical definition to state claims against.
-/

/-! ## A024686.P8921761772237765

`A024689(n+1)-A023867(n+1)`
-/

namespace A024686.P8921761772237765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024689 (n + 1) - A023867 (n + 1)

end

end A024686.P8921761772237765

/-! ## A024686.P5102011043143132604

`A024689(n+1)-(A023866(n+1)+A023855(n+1))`
-/

namespace A024686.P5102011043143132604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024689 (n + 1) - (A023866 (n + 1) + A023855 (n + 1))

end

end A024686.P5102011043143132604

/-! ## A024686.P16717254165321250225

`xor(A024475(n+1), A178999(A001400(n)))`
-/

namespace A024686.P16717254165321250225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024475 (n + 1)) (A178999 (A001400 n).toNat)

end

end A024686.P16717254165321250225

/-!
# A024687: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A000201 (lower Wythoff sequence), t = A023533.

The programs for A024687, there is no canonical definition to state claims against.
-/

/-! ## A024687.P9491281963514978483

`A024690(n+1)-A023868(n+1)`
-/

namespace A024687.P9491281963514978483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024690 (n + 1) - A023868 (n + 1)

end

end A024687.P9491281963514978483

/-! ## A024687.P16247615186810890961

`A023869(n+1)+A024690(n+1)-A008805(n)`
-/

namespace A024687.P16247615186810890961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023869 (n + 1) + (A024690 (n + 1) - A008805 n)

end

end A024687.P16247615186810890961

/-! ## A024687.P15968752130633723024

`A023869(n+1)+A024690(n+1)-A000217(A008619(n))`
-/

namespace A024687.P15968752130633723024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023869 (n + 1) + (A024690 (n + 1) - A000217 (A008619 n).toNat)

end

end A024687.P15968752130633723024

/-! ## A024687.P10976564176758849156

`A024690(n+1)-(A023856(n+1)-(A023869(n+1)+A023855(n+1)))`
-/

namespace A024687.P10976564176758849156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024690 (n + 1) - (A023856 (n + 1) - (A023869 (n + 1) + A023855 (n + 1)))

end

end A024687.P10976564176758849156

/-! ## A024687.P9483253399589238443

`A024690(n+1)-(A023858(n+1)+A023859(n+1)-A023869(n+1))`
-/

namespace A024687.P9483253399589238443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024690 (n + 1) - (A023858 (n + 1) + (A023859 (n + 1) - A023869 (n + 1)))

end

end A024687.P9483253399589238443

/-! ## A024687.P15287369946580573677

`A005206(A024690(n+1)+1)-A007318(C(n, 2))`
-/

namespace A024687.P15287369946580573677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A024690 (n + 1) + 1).toNat - A007318 (Nat.choose n 2)

end

end A024687.P15287369946580573677

/-! ## A024687.P1991632589387422368

`A005206(A024690(n+1)+1)-A007318(∑[n+1])`
-/

namespace A024687.P1991632589387422368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A024690 (n + 1) + 1).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024687.P1991632589387422368

/-! ## A024687.P11501514484935895282

`A005206(A024690(n+1)+1)-A001221(A140513(n))`
-/

namespace A024687.P11501514484935895282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A024690 (n + 1) + 1).toNat - A001221 (A140513 n).toNat

end

end A024687.P11501514484935895282

/-! ## A024687.P16196204742697749470

`A005206(A024690(n+1)+1)-A011598(A059268(n))`
-/

namespace A024687.P16196204742697749470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A024690 (n + 1) + 1).toNat - A011598 (A059268 n).toNat

end

end A024687.P16196204742697749470

/-! ## A024687.P10319384591240245052

`A005206(A024690(n+1)+1)-A001222(A002148(n))`
-/

namespace A024687.P10319384591240245052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A024690 (n + 1) + 1).toNat - A001222 (A002148 n).toNat

end

end A024687.P10319384591240245052

/-!
# A024688: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A000201 (lower Wythoff sequence), t = A014306.

The programs for A024688, there is no canonical definition to state claims against.
-/

/-! ## A024688.P18147642855723809450

`A024691(n+1)-A023869(n+1)`
-/

namespace A024688.P18147642855723809450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024691 (n + 1) - A023869 (n + 1)

end

end A024688.P18147642855723809450

/-! ## A024688.P11769311670856032564

`A023868(n+1)+A024691(n+1)-A008805(n)`
-/

namespace A024688.P11769311670856032564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023868 (n + 1) + (A024691 (n + 1) - A008805 n)

end

end A024688.P11769311670856032564

/-! ## A024688.P3229122195884247557

`A023868(n+1)+A024691(n+1)-∑[A027656(n)]`
-/

namespace A024688.P3229122195884247557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023868 (n + 1) + (A024691 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024688.P3229122195884247557

/-! ## A024688.P13450124223145212784

`A023868(n+1)+A024691(n+1)-A000217(A008619(n))`
-/

namespace A024688.P13450124223145212784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023868 (n + 1) + (A024691 (n + 1) - A000217 (A008619 n).toNat)

end

end A024688.P13450124223145212784

/-! ## A024688.P16301380921589077078

`A023868(n+1)+A024691(n+1)-Δ[A006918(n)]`
-/

namespace A024688.P16301380921589077078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023868 (n + 1) + (A024691 (n + 1) - (f1 (n + 1) - f1 n))

end

end A024688.P16301380921589077078

/-!
# A024689: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = A001950 (upper Wythoff sequence).

The programs for A024689, there is no canonical definition to state claims against.
-/

/-! ## A024689.P2065179942106886186

`A024686(n+1)+A023867(n+1)`
-/

namespace A024689.P2065179942106886186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024686 (n + 1) + A023867 (n + 1)

end

end A024689.P2065179942106886186

/-! ## A024689.P3225584933749127227

`A023855(n+1)+A024686(n+1)+A023866(n+1)`
-/

namespace A024689.P3225584933749127227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) + (A024686 (n + 1) + A023866 (n + 1))

end

end A024689.P3225584933749127227

/-!
# A024690: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A001950 (upper Wythoff sequence), t = A023533.

The programs for A024690, there is no canonical definition to state claims against.
-/

/-! ## A024690.P16142892045478728569

`A024687(n+1)+A023868(n+1)`
-/

namespace A024690.P16142892045478728569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024687 (n + 1) + A023868 (n + 1)

end

end A024690.P16142892045478728569

/-! ## A024690.P6300041706947715731

`A024687(n+1)+A008805(n)-A023869(n+1)`
-/

namespace A024690.P6300041706947715731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024687 (n + 1) + (A008805 n - A023869 (n + 1))

end

end A024690.P6300041706947715731

/-! ## A024690.P1126792992391380890

`A024687(n+1)+A000217(A008619(n))-A023869(n+1)`
-/

namespace A024690.P1126792992391380890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024687 (n + 1) + (A000217 (A008619 n).toNat - A023869 (n + 1))

end

end A024690.P1126792992391380890

/-! ## A024690.P16725734024847561092

`A024687(n+1)+A023856(n+1)-(A023869(n+1)+A023855(n+1))`
-/

namespace A024690.P16725734024847561092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024687 (n + 1) + (A023856 (n + 1) - (A023869 (n + 1) + A023855 (n + 1)))

end

end A024690.P16725734024847561092

/-! ## A024690.P9973374935749448967

`A024687(n+1)+A023858(n+1)+A023859(n+1)-A023869(n+1)`
-/

namespace A024690.P9973374935749448967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024687 (n + 1) + (A023858 (n + 1) + (A023859 (n + 1) - A023869 (n + 1)))

end

end A024690.P9973374935749448967

/-! ## A024690.P12633388688997149760

`A004956(A024687(n+1)%A225748(n+1))`
-/

namespace A024690.P12633388688997149760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (Int.tmod (A024687 (n + 1)) (A225748 (n + 1))).toNat

end

end A024690.P12633388688997149760

/-! ## A024690.P6217536386597981712

`A004956(A024687(n+1))+(2*A254761(n+1))%2`
-/

namespace A024690.P6217536386597981712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A024687 (n + 1)).toNat + Int.tmod (2 * A254761 (n + 1)) 2

end

end A024690.P6217536386597981712

/-!
# A024691: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A001950 (upper Wythoff sequence), t = A014306.

The programs for A024691, there is no canonical definition to state claims against.
-/

/-! ## A024691.P8206658010442164652

`A024688(n+1)+A023869(n+1)`
-/

namespace A024691.P8206658010442164652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024688 (n + 1) + A023869 (n + 1)

end

end A024691.P8206658010442164652

/-! ## A024691.P8523764121014234740

`A024688(n+1)+A008805(n)-A023868(n+1)`
-/

namespace A024691.P8523764121014234740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024688 (n + 1) + (A008805 n - A023868 (n + 1))

end

end A024691.P8523764121014234740

/-! ## A024691.P4298886095870471183

`A024688(n+1)+∑[A027656(n)]-A023868(n+1)`
-/

namespace A024691.P4298886095870471183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024688 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A023868 (n + 1))

end

end A024691.P4298886095870471183

/-! ## A024691.P2727369436122655566

`A024688(n+1)+A000217(A008619(n))-A023868(n+1)`
-/

namespace A024691.P2727369436122655566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024688 (n + 1) + (A000217 (A008619 n).toNat - A023868 (n + 1))

end

end A024691.P2727369436122655566

/-! ## A024691.P17959308839213724339

`A024688(n+1)+Δ[A006918(n)]-A023868(n+1)`
-/

namespace A024691.P17959308839213724339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024688 (n + 1) + (f1 (n + 1) - f1 n - A023868 (n + 1))

end

end A024691.P17959308839213724339

/-!
# A024692: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = floor((n+1)/2), s = A023533.

The programs for A024692, there is no canonical definition to state claims against.
-/

/-! ## A024692.P17258933769569995191

`round(sqrt(A023670(n+1)))`
-/

namespace A024692.P17258933769569995191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A023670 (n + 1) : ℝ))

end

end A024692.P17258933769569995191

/-! ## A024692.P17473843352831158947

`lcm(round(A023670(n+1)/2), A020985(n))`
-/

namespace A024692.P17473843352831158947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A023670 (n + 1) : ℚ) / 2)) (A020985 n)

end

end A024692.P17473843352831158947

/-! ## A024692.P1193883921672728970

`round(A023670(n+1)/gcd(2, A000010(n+2)))`
-/

namespace A024692.P1193883921672728970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023670 (n + 1) : ℚ) / (Int.gcd 2 (A000010 (n + 2)) : ℚ))

end

end A024692.P1193883921672728970

/-! ## A024692.P5685032260732874914

`A025125(n+1)+Δ[A024693(n+1)]`
-/

namespace A024692.P5685032260732874914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025125 (n + 1) + (f1 (n + 1) - f1 n)

end

end A024692.P5685032260732874914

/-! ## A024692.P3567599489141180736

`A025125(n+1)+A024693(n+2)-A024693(n+1)`
-/

namespace A024692.P3567599489141180736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025125 (n + 1) + (A024693 (n + 2) - A024693 (n + 1))

end

end A024692.P3567599489141180736

/-! ## A024692.P2948669786605084461

`round(A002262(A000217(n))+A023670(n+1)/2)`
-/

namespace A024692.P2948669786605084461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002262 (A000217 n).toNat : ℚ) + (A023670 (n + 1) : ℚ) / 2)

end

end A024692.P2948669786605084461

/-! ## A024692.P403281801859043354

`A019429((n+2)*A023670(n+1)²²)`
-/

namespace A024692.P403281801859043354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 ((n + 2 : ℤ) * (A023670 (n + 1) ^ 2) ^ 2).toNat

end

end A024692.P403281801859043354

/-! ## A024692.P748459819109780750

`A014306(A000292(n)+2*A023670(n+1))`
-/

namespace A024692.P748459819109780750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A000292 n + 2 * A023670 (n + 1)).toNat

end

end A024692.P748459819109780750

/-! ## A024692.P1149974526317862013

`A014306(A023670(n+1)+A023670(n+1)+A000292(n))`
-/

namespace A024692.P1149974526317862013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A023670 (n + 1) + (A023670 (n + 1) + A000292 n)).toNat

end

end A024692.P1149974526317862013

/-! ## A024692.P16511526647422537054

`A014306(A023670(n+1)+A000292(n+1))`
-/

namespace A024692.P16511526647422537054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A023670 (n + 1) + A000292 (n + 1)).toNat

end

end A024692.P16511526647422537054

/-!
# A024693: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023533, t = A014306.

The programs for A024693, there is no canonical definition to state claims against.
-/

/-! ## A024693.P12430443339172735795

`A025126(A000007(n)+n)-A000007(n)`
-/

namespace A024693.P12430443339172735795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A024693.P12430443339172735795

/-! ## A024693.P736900749447558249

`A025126(A123108(2*n))-A000007(n)`
-/

namespace A024693.P736900749447558249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A123108 (2 * n)).toNat - A000007 n

end

end A024693.P736900749447558249

/-! ## A024693.P2675027136339814103

`A025126(A233583(n+1)+A000007(n))`
-/

namespace A024693.P2675027136339814103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A233583 (n + 1) + A000007 n).toNat

end

end A024693.P2675027136339814103

/-! ## A024693.P17771095290329040278

`A025126(A233583(n+1))*A057427(n)`
-/

namespace A024693.P17771095290329040278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A233583 (n + 1)).toNat * A057427 n

end

end A024693.P17771095290329040278

/-! ## A024693.P17424773792600568980

`lcm(A025126(A233583(n+1)), A062157(n))`
-/

namespace A024693.P17424773792600568980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025126 (A233583 (n + 1)).toNat) (A062157 n)

end

end A024693.P17424773792600568980

/-! ## A024693.P1556900396858698704

`A025126(A233583(n+1)+1-A057427(n))`
-/

namespace A024693.P1556900396858698704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A233583 (n + 1) + (1 - A057427 n)).toNat

end

end A024693.P1556900396858698704

/-! ## A024693.P9370039106478793923

`A025126(A233583(n+1)+val(A000040(n+1), 2))`
-/

namespace A024693.P9370039106478793923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A233583 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)).toNat

end

end A024693.P9370039106478793923

/-! ## A024693.P12100367012853237971

`A025126(A233583(n+1))-A008683(A008574(n))`
-/

namespace A024693.P12100367012853237971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A233583 (n + 1)).toNat - A008683 (A008574 n).toNat

end

end A024693.P12100367012853237971

/-! ## A024693.P12336326321436447843

`A001221(A001316(n))*A025126(A233583(n+1))`
-/

namespace A024693.P12336326321436447843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A025126 (A233583 (n + 1)).toNat

end

end A024693.P12336326321436447843

/-! ## A024693.P6122379621698925562

`A025126(n^A178334(n))-A000007(n)`
-/

namespace A024693.P6122379621698925562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - A000007 n

end

end A024693.P6122379621698925562

/-! ## A024693.P12928214674090821865

`A025126(3*A028928(n²)+n)`
-/

namespace A024693.P12928214674090821865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (3 * A028928 (n ^ 2) + (n : ℤ)).toNat

end

end A024693.P12928214674090821865

/-!
# A024694: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023533, t = A000040.

The programs for A024694, there is no canonical definition to state claims against.
-/

/-! ## A024694.P11414108396124840494

`A024320(A077168(n)+2)`
-/

namespace A024694.P11414108396124840494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024320 (A077168 n + 2).toNat

end

end A024694.P11414108396124840494

/-! ## A024694.P10312053050321998681

`A024320(A187829(n+2)+1)`
-/

namespace A024694.P10312053050321998681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024320 (A187829 (n + 2) + 1).toNat

end

end A024694.P10312053050321998681

/-! ## A024694.P16596705612102723267

`A024320(A056239(2^n)+3)`
-/

namespace A024694.P16596705612102723267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024320 (A056239 (2 ^ n) + 3).toNat

end

end A024694.P16596705612102723267

/-! ## A024694.P1654745285046777167

`filter[A024320(n+3), A273592(#)]`
-/

namespace A024694.P1654745285046777167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024320 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A273592 (f1 j).toNat = 1) n)

end

end A024694.P1654745285046777167

/-! ## A024694.P2612148658116893227

`record[A024320(A007814(n+1)+3)]`
-/

namespace A024694.P2612148658116893227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024320 (A007814 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024694.P2612148658116893227

/-!
# A024695: s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = A014306.

The programs for A024695, there is no canonical definition to state claims against.
-/

/-! ## A024695.P2689897845449477592

`ceil(A023673(n+1)/2)`
-/

namespace A024695.P2689897845449477592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023673 (n + 1) : ℚ) / 2⌉

end

end A024695.P2689897845449477592

/-! ## A024695.P14995126046259089863

`A110654(A023673(n+1))`
-/

namespace A024695.P14995126046259089863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A023673 (n + 1)).toNat

end

end A024695.P14995126046259089863

/-! ## A024695.P12786792744446973120

`A004526(A023673(n+1)+1)`
-/

namespace A024695.P12786792744446973120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023673 (n + 1) + 1).toNat

end

end A024695.P12786792744446973120

/-! ## A024695.P8019732169672018338

`A123108(A023673(n+1)+1)`
-/

namespace A024695.P8019732169672018338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A023673 (n + 1) + 1).toNat

end

end A024695.P8019732169672018338

/-! ## A024695.P4326042504568566710

`round(A023673(n+1)/2)%(A000124(n+6)+6)`
-/

namespace A024695.P4326042504568566710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A023673 (n + 1) : ℚ) / 2)) (A000124 (n + 6) + 6)

end

end A024695.P4326042504568566710

/-! ## A024695.P149900364089496080

`A002265(2*(A023673(n+1)+1))`
-/

namespace A024695.P149900364089496080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A023673 (n + 1) + 1)).toNat

end

end A024695.P149900364089496080

/-! ## A024695.P4621314382154576262

`A124072(2*(A023673(n+1)+1))`
-/

namespace A024695.P4621314382154576262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (2 * (A023673 (n + 1) + 1)).toNat

end

end A024695.P4621314382154576262

/-! ## A024695.P16920248306344072892

`A002265(A023673(n+1)+A023673(n+1)+2)`
-/

namespace A024695.P16920248306344072892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A023673 (n + 1) + (A023673 (n + 1) + 2)).toNat

end

end A024695.P16920248306344072892

/-! ## A024695.P18415380466376335283

`A124072(A023673(n+1)+A023673(n+1)+2)`
-/

namespace A024695.P18415380466376335283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (A023673 (n + 1) + (A023673 (n + 1) + 2)).toNat

end

end A024695.P18415380466376335283

/-!
# A024697: a(n) = p(1)p(n) + p(2)p(n-1) + ... + p(k)p(n+1-k), where k = [ (n+1)/2 ], p = A000040 = the primes.

The programs for A024697, there is no canonical definition to state claims against.
-/

/-! ## A024697.P16777505203442003964

`A014342(n+1)-A025129(n+1)`
-/

namespace A024697.P16777505203442003964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 1) - A025129 (n + 1)

end

end A024697.P16777505203442003964

/-! ## A024697.P381830841087900250

`∑[A067773(n+1)]-A025129(n+1)`
-/

namespace A024697.P381830841087900250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025129 (n + 1)

end

end A024697.P381830841087900250

/-! ## A024697.P118309931018406236

`A209403(n+1)-(A343531(n+1)+A025129(n+1))`
-/

namespace A024697.P118309931018406236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209403 (n + 1) - (A343531 (n + 1) + A025129 (n + 1))

end

end A024697.P118309931018406236

/-! ## A024697.P14231423554400752596

`A024479(n+3)-A000040(n+2)`
-/

namespace A024697.P14231423554400752596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024479 (n + 3) - A000040 (n + 2)

end

end A024697.P14231423554400752596

/-! ## A024697.P17412203272630264066

`A024479(n+3)-A006005(n+2)`
-/

namespace A024697.P17412203272630264066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024479 (n + 3) - A006005 (n + 2)

end

end A024697.P17412203272630264066

/-! ## A024697.P11029349435779930026

`A024479(n+3)-A008578(n+3)`
-/

namespace A024697.P11029349435779930026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024479 (n + 3) - A008578 (n + 3)

end

end A024697.P11029349435779930026

/-! ## A024697.P12691270655186333348

`A023626(n+3)-A001747(n+3)-A025129(n+1)`
-/

namespace A024697.P12691270655186333348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023626 (n + 3) - A001747 (n + 3) - A025129 (n + 1)

end

end A024697.P12691270655186333348

/-! ## A024697.P17562948295202542163

`A023626(n+3)-2*A008578(n+3)-A025129(n+1)`
-/

namespace A024697.P17562948295202542163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023626 (n + 3) - 2 * A008578 (n + 3) - A025129 (n + 1)

end

end A024697.P17562948295202542163

/-! ## A024697.P17297814553712680433

`A340991(A034856(n+1)+4)-A025129(n+1)`
-/

namespace A024697.P17297814553712680433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A034856 (n + 1) + 4).toNat - A025129 (n + 1)

end

end A024697.P17297814553712680433

/-! ## A024697.P6886124606636514734

`A145518(∑[n+1]+2)`
-/

namespace A024697.P6886124606636514734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145518 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A024697.P6886124606636514734

/-! ## A024697.P14002699879218456162

`or(char[2], A145518(A000217(n+1)+2))`
-/

namespace A024697.P14002699879218456162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A145518 (A000217 (n + 1) + 2).toNat)

end

end A024697.P14002699879218456162

/-!
# A024698: a(n) = (prime(n+1) - 1)/4 if this is an integer or (prime(n+1) + 1)/4 otherwise.

The programs for A024698, the canonical program `A024698.P763574995904911415` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024698 has offset 1).

The definition of A024698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024698.P763574995904911415

`round(p?[2*n+1]/4)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024698

/-- `round(p?[2*n+1]/4)` -/
def P763574995904911415.Spec : Prop :=
  ∀ n, P763574995904911415.a n = A024698 (n + 1)

theorem P763574995904911415.correct : P763574995904911415.Spec := by
  intro n
  simp only [A024698, Nat.add_sub_cancel]

end A024698

/-! ## A024698.P17511056106992642741

`floor(A006254(n+1)/2)`
-/

namespace A024698.P17511056106992642741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006254 (n + 1) : ℚ) / 2⌋

end

end A024698.P17511056106992642741

namespace A024698

/-- `floor(A006254(n+1)/2)` -/
def P17511056106992642741.Spec : Prop :=
  ∀ n, P17511056106992642741.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P7289163164685618119

`ceil(A005097(n+1)/2)`
-/

namespace A024698.P7289163164685618119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005097 (n + 1) : ℚ) / 2⌉

end

end A024698.P7289163164685618119

namespace A024698

/-- `ceil(A005097(n+1)/2)` -/
def P7289163164685618119.Spec : Prop :=
  ∀ n, P7289163164685618119.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P61687542040235164

`floor(A048974(n+1)/4)`
-/

namespace A024698.P61687542040235164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048974 (n + 1) : ℚ) / 4⌋

end

end A024698.P61687542040235164

namespace A024698

/-- `floor(A048974(n+1)/4)` -/
def P61687542040235164.Spec : Prop :=
  ∀ n, P61687542040235164.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P3663872827965729267

`round(A045319(n+1)/4)`
-/

namespace A024698.P3663872827965729267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045319 (n + 1) : ℚ) / 4)

end

end A024698.P3663872827965729267

namespace A024698

/-- `round(A045319(n+1)/4)` -/
def P3663872827965729267.Spec : Prop :=
  ∀ n, P3663872827965729267.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P4156272144007893236

`round(A065091(n+1)/4)`
-/

namespace A024698.P4156272144007893236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A065091 (n + 1) : ℚ) / 4)

end

end A024698.P4156272144007893236

namespace A024698

/-- `round(A065091(n+1)/4)` -/
def P4156272144007893236.Spec : Prop :=
  ∀ n, P4156272144007893236.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P16139962811775221235

`ceil((A067076(n+1)+1)/2)`
-/

namespace A024698.P16139962811775221235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067076 (n + 1) + 1 : ℚ) / 2⌉

end

end A024698.P16139962811775221235

namespace A024698

/-- `ceil((A067076(n+1)+1)/2)` -/
def P16139962811775221235.Spec : Prop :=
  ∀ n, P16139962811775221235.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P2952049102023331956

`floor((A098090(n+1)-1)/2)`
-/

namespace A024698.P2952049102023331956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098090 (n + 1) - 1 : ℚ) / 2⌋

end

end A024698.P2952049102023331956

namespace A024698

/-- `floor((A098090(n+1)-1)/2)` -/
def P2952049102023331956.Spec : Prop :=
  ∀ n, P2952049102023331956.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P5701443583467910025

`ceil(A089192(n+1)/2)-2`
-/

namespace A024698.P5701443583467910025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089192 (n + 1) : ℚ) / 2⌉ - 2

end

end A024698.P5701443583467910025

namespace A024698

/-- `ceil(A089192(n+1)/2)-2` -/
def P5701443583467910025.Spec : Prop :=
  ∀ n, P5701443583467910025.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P12173304104734448433

`A076342(n+2)/4`
-/

namespace A024698.P12173304104734448433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076342 (n + 2) : ℚ) / 4

end

end A024698.P12173304104734448433

namespace A024698

/-- `A076342(n+2)/4` -/
def P12173304104734448433.Spec : Prop :=
  ∀ n, P12173304104734448433.a n = (A024698 (n + 1) : ℚ)

end A024698

/-! ## A024698.P16893964821737630981

`floor(A111333(n+2)/2)`
-/

namespace A024698.P16893964821737630981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111333 (n + 2) : ℚ) / 2⌋

end

end A024698.P16893964821737630981

namespace A024698

/-- `floor(A111333(n+2)/2)` -/
def P16893964821737630981.Spec : Prop :=
  ∀ n, P16893964821737630981.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P9045459768109728993

`floor(A130291(n+2)/2)`
-/

namespace A024698.P9045459768109728993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130291 (n + 2) : ℚ) / 2⌋

end

end A024698.P9045459768109728993

namespace A024698

/-- `floor(A130291(n+2)/2)` -/
def P9045459768109728993.Spec : Prop :=
  ∀ n, P9045459768109728993.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P2532965783405907597

`ceil(A102781(n+2)/2)`
-/

namespace A024698.P2532965783405907597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102781 (n + 2) : ℚ) / 2⌉

end

end A024698.P2532965783405907597

namespace A024698

/-- `ceil(A102781(n+2)/2)` -/
def P2532965783405907597.Spec : Prop :=
  ∀ n, P2532965783405907597.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P3441503506928889619

`ceil(A130290(n+2)/2)`
-/

namespace A024698.P3441503506928889619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130290 (n + 2) : ℚ) / 2⌉

end

end A024698.P3441503506928889619

namespace A024698

/-- `ceil(A130290(n+2)/2)` -/
def P3441503506928889619.Spec : Prop :=
  ∀ n, P3441503506928889619.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P4320758507225527352

`ceil(A006093(n+2)/4)`
-/

namespace A024698.P4320758507225527352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006093 (n + 2) : ℚ) / 4⌉

end

end A024698.P4320758507225527352

namespace A024698

/-- `ceil(A006093(n+2)/4)` -/
def P4320758507225527352.Spec : Prop :=
  ∀ n, P4320758507225527352.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P4211883204980944599

`ceil(A040976(n+2)/4)`
-/

namespace A024698.P4211883204980944599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040976 (n + 2) : ℚ) / 4⌉

end

end A024698.P4211883204980944599

namespace A024698

/-- `ceil(A040976(n+2)/4)` -/
def P4211883204980944599.Spec : Prop :=
  ∀ n, P4211883204980944599.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P18154974423005841949

`round(A000040(n+2)/4)`
-/

namespace A024698.P18154974423005841949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 2) : ℚ) / 4)

end

end A024698.P18154974423005841949

namespace A024698

/-- `round(A000040(n+2)/4)` -/
def P18154974423005841949.Spec : Prop :=
  ∀ n, P18154974423005841949.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P10561077229912854617

`A005097(n+1)-A075518(n+2)`
-/

namespace A024698.P10561077229912854617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A075518 (n + 2)

end

end A024698.P10561077229912854617

namespace A024698

/-- `A005097(n+1)-A075518(n+2)` -/
def P10561077229912854617.Spec : Prop :=
  ∀ n, P10561077229912854617.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P910210431347632018

`A100672(n+2)+A075518(n+2)`
-/

namespace A024698.P910210431347632018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100672 (n + 2) + A075518 (n + 2)

end

end A024698.P910210431347632018

namespace A024698

/-- `A100672(n+2)+A075518(n+2)` -/
def P910210431347632018.Spec : Prop :=
  ∀ n, P910210431347632018.a n = A024698 (n + 1)

end A024698

/-! ## A024698.P1044407484500752951

`A102781(n+2)-A075518(n+2)`
-/

namespace A024698.P1044407484500752951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2) - A075518 (n + 2)

end

end A024698.P1044407484500752951

namespace A024698

/-- `A102781(n+2)-A075518(n+2)` -/
def P1044407484500752951.Spec : Prop :=
  ∀ n, P1044407484500752951.a n = A024698 (n + 1)

end A024698

/-!
# A024699: a(n) = (prime(n+2)-1)/6 if this is an integer or (prime(n+2)+ 1)/6 otherwise.

The programs for A024699, the canonical program `A024699.P10288076727549564281` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024699 has offset 1).

The definition of A024699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024699.P10288076727549564281

`round(p?[2*n+5]/6)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024699

/-- `round(p?[2*n+5]/6)` -/
def P10288076727549564281.Spec : Prop :=
  ∀ n, P10288076727549564281.a n = A024699 (n + 1)

theorem P10288076727549564281.correct : P10288076727549564281.Spec := by
  intro n
  simp only [A024699, Nat.add_sub_cancel]

end A024699

/-! ## A024699.P1042825205594136915

`floor(A181709(n+1)/2)`
-/

namespace A024699.P1042825205594136915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181709 (n + 1) : ℚ) / 2⌋

end

end A024699.P1042825205594136915

namespace A024699

/-- `floor(A181709(n+1)/2)` -/
def P1042825205594136915.Spec : Prop :=
  ∀ n, P1042825205594136915.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P737416293088729553

`ceil(A172367(n+1)/6)`
-/

namespace A024699.P737416293088729553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A172367 (n + 1) : ℚ) / 6⌉

end

end A024699.P737416293088729553

namespace A024699

/-- `ceil(A172367(n+1)/6)` -/
def P737416293088729553.Spec : Prop :=
  ∀ n, P737416293088729553.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P6967825523542613284

`floor(A055670(n+3)/6)`
-/

namespace A024699.P6967825523542613284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055670 (n + 3) : ℚ) / 6⌋

end

end A024699.P6967825523542613284

namespace A024699

/-- `floor(A055670(n+3)/6)` -/
def P6967825523542613284.Spec : Prop :=
  ∀ n, P6967825523542613284.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P16996785278163775305

`round(A215848(n+1)/6)`
-/

namespace A024699.P16996785278163775305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A215848 (n + 1) : ℚ) / 6)

end

end A024699.P16996785278163775305

namespace A024699

/-- `round(A215848(n+1)/6)` -/
def P16996785278163775305.Spec : Prop :=
  ∀ n, P16996785278163775305.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P11332825301891219161

`ceil(∑[A028334(n+2)/3])`
-/

namespace A024699.P11332825301891219161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028334 (n + 2) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A024699.P11332825301891219161

namespace A024699

/-- `ceil(∑[A028334(n+2)/3])` -/
def P11332825301891219161.Spec : Prop :=
  ∀ n, P11332825301891219161.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P1522061084883705075

`ceil(A005097(n+2)/3)`
-/

namespace A024699.P1522061084883705075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005097 (n + 2) : ℚ) / 3⌉

end

end A024699.P1522061084883705075

namespace A024699

/-- `ceil(A005097(n+2)/3)` -/
def P1522061084883705075.Spec : Prop :=
  ∀ n, P1522061084883705075.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P11288941997992152864

`round(A005097(round((3*n+2)/3)+1)/3)`
-/

namespace A024699.P11288941997992152864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005097 (SequenceMachineLib.roundAway ((3 * n + 2 : ℚ) / 3) + 1).toNat : ℚ) / 3)

end

end A024699.P11288941997992152864

namespace A024699

/-- `round(A005097(round((3*n+2)/3)+1)/3)` -/
def P11288941997992152864.Spec : Prop :=
  ∀ n, P11288941997992152864.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P601575588389352479

`floor(A008864(n+3)/6)`
-/

namespace A024699.P601575588389352479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008864 (n + 3) : ℚ) / 6⌋

end

end A024699.P601575588389352479

namespace A024699

/-- `floor(A008864(n+3)/6)` -/
def P601575588389352479.Spec : Prop :=
  ∀ n, P601575588389352479.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P5949659116516386302

`round(A000040(n+3)/6)`
-/

namespace A024699.P5949659116516386302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 3) : ℚ) / 6)

end

end A024699.P5949659116516386302

namespace A024699

/-- `round(A000040(n+3)/6)` -/
def P5949659116516386302.Spec : Prop :=
  ∀ n, P5949659116516386302.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P7790495974909781725

`A005097(n+2)-A144769(n+3)`
-/

namespace A024699.P7790495974909781725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) - A144769 (n + 3)

end

end A024699.P7790495974909781725

namespace A024699

/-- `A005097(n+2)-A144769(n+3)` -/
def P7790495974909781725.Spec : Prop :=
  ∀ n, P7790495974909781725.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P7428794617762748806

`A102781(n+3)-A144769(n+3)`
-/

namespace A024699.P7428794617762748806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 3) - A144769 (n + 3)

end

end A024699.P7428794617762748806

namespace A024699

/-- `A102781(n+3)-A144769(n+3)` -/
def P7428794617762748806.Spec : Prop :=
  ∀ n, P7428794617762748806.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P3746180551318071387

`A130290(n+3)-A144769(n+3)`
-/

namespace A024699.P3746180551318071387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 3) - A144769 (n + 3)

end

end A024699.P3746180551318071387

namespace A024699

/-- `A130290(n+3)-A144769(n+3)` -/
def P3746180551318071387.Spec : Prop :=
  ∀ n, P3746180551318071387.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P235698426181771036

`round(A175787(n+4)/6)`
-/

namespace A024699.P235698426181771036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175787 (n + 4) : ℚ) / 6)

end

end A024699.P235698426181771036

namespace A024699

/-- `round(A175787(n+4)/6)` -/
def P235698426181771036.Spec : Prop :=
  ∀ n, P235698426181771036.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P17060643470537862044

`ceil(record[A000010(n+5)/6])`
-/

namespace A024699.P17060643470537862044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 5) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A024699.P17060643470537862044

namespace A024699

/-- `ceil(record[A000010(n+5)/6])` -/
def P17060643470537862044.Spec : Prop :=
  ∀ n, P17060643470537862044.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P18356803769203076612

`round(record[A006530(n+5)/6])`
-/

namespace A024699.P18356803769203076612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 5) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A024699.P18356803769203076612

namespace A024699

/-- `round(record[A006530(n+5)/6])` -/
def P18356803769203076612.Spec : Prop :=
  ∀ n, P18356803769203076612.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P17844594633369235638

`round(record[A000010(n+8)/6])`
-/

namespace A024699.P17844594633369235638
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 8) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A024699.P17844594633369235638

namespace A024699

/-- `round(record[A000010(n+8)/6])` -/
def P17844594633369235638.Spec : Prop :=
  ∀ n, P17844594633369235638.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P6691086020250290943

`A004396(A024698(n+2))`
-/

namespace A024699.P6691086020250290943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A024698 (n + 2)).toNat

end

end A024699.P6691086020250290943

namespace A024699

/-- `A004396(A024698(n+2))` -/
def P6691086020250290943.Spec : Prop :=
  ∀ n, P6691086020250290943.a n = A024699 (n + 1)

end A024699

/-! ## A024699.P12083861235451811911

`round(p?[A207790(n+5)]/3)/2`
-/

namespace A024699.P12083861235451811911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3) : ℚ) / 2

end

end A024699.P12083861235451811911

namespace A024699

/-- `round(p?[A207790(n+5)]/3)/2` -/
def P12083861235451811911.Spec : Prop :=
  ∀ n, P12083861235451811911.a n = (A024699 (n + 1) : ℚ)

end A024699

/-! ## A024699.P6997388887156473462

`A004526(A181709(n+1))`
-/

namespace A024699.P6997388887156473462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A181709 (n + 1)).toNat

end

end A024699.P6997388887156473462

namespace A024699

/-- `A004526(A181709(n+1))` -/
def P6997388887156473462.Spec : Prop :=
  ∀ n, P6997388887156473462.a n = A024699 (n + 1)

end A024699

