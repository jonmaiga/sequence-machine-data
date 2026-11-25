import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A197200: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,1,0,3 for x=0,1,2,3,4.

The programs for A197200, there is no canonical definition to state claims against.
-/

/-! ## A197200.P7692226000021183763

`A197207(∑[4*n]+1)`
-/

namespace A197200.P7692226000021183763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197200.P7692226000021183763

/-! ## A197200.P13918778021475411352

`record[A197207(Δ[A235355(n)])]`
-/

namespace A197200.P13918778021475411352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197200.P13918778021475411352

/-!
# A197201: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,3 for x=0,1,2,3,4.

The programs for A197201, the canonical program `A197201.P16817078797627714000` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197201 has offset 1).

The definition of A197201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197201.P16817078797627714000

`ogf((1+3x+2x^2-7x^3-10x^4-4x^5+3x^6+4x^7)/(1-2x-4x^2-2x^3+4x^4+8x^5-x^7-2x^8))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197201

/-- `ogf((1+3x+2x^2-7x^3-10x^4-4x^5+3x^6+4x^7)/(1-2x-4x^2-2x^3+4x^4+8x^5-x^7-2x^8))` -/
def P16817078797627714000.Spec : Prop :=
  ∀ n, P16817078797627714000.a n = A197201 (n + 1)

theorem P16817078797627714000.correct : P16817078797627714000.Spec := by
  intro n
  simp only [A197201, Nat.add_sub_cancel]

end A197201

/-! ## A197201.P16409103561426344544

`A197207(∑[n+1]+2)`
-/

namespace A197201.P16409103561426344544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197201.P16409103561426344544

namespace A197201

/-- `A197207(∑[n+1]+2)` -/
def P16409103561426344544.Spec : Prop :=
  ∀ n, P16409103561426344544.a n = A197201 (n + 1)

end A197201

/-! ## A197201.P11323209022947266446

`A197805(∑[n+1]+2)`
-/

namespace A197201.P11323209022947266446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197201.P11323209022947266446

namespace A197201

/-- `A197805(∑[n+1]+2)` -/
def P11323209022947266446.Spec : Prop :=
  ∀ n, P11323209022947266446.a n = A197201 (n + 1)

end A197201

/-! ## A197201.P16325116520649923359

`record[gcd(A197207(n+1), A263233(n))]`
-/

namespace A197201.P16325116520649923359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197207 (n + 1)) (A263233 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197201.P16325116520649923359

namespace A197201

/-- `record[gcd(A197207(n+1), A263233(n))]` -/
def P16325116520649923359.Spec : Prop :=
  ∀ n, (P16325116520649923359.a n : ℤ) = A197201 (n + 1)

end A197201

/-! ## A197201.P5847651800365223897

`record[gcd(A197805(n+1), A264403(n))]`
-/

namespace A197201.P5847651800365223897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197805 (n + 1)) (A264403 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197201.P5847651800365223897

namespace A197201

/-- `record[gcd(A197805(n+1), A264403(n))]` -/
def P5847651800365223897.Spec : Prop :=
  ∀ n, (P5847651800365223897.a n : ℤ) = A197201 (n + 1)

end A197201

/-!
# A197202: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,3 for x=0,1,2,3,4.

The programs for A197202, there is no canonical definition to state claims against.
-/

/-! ## A197202.P5445763117086052894

`A197207(∑[n+2]+4)`
-/

namespace A197202.P5445763117086052894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197202.P5445763117086052894

/-! ## A197202.P15151320285290695705

`record[A197207(n+4)/A286231(n+1)]`
-/

namespace A197202.P15151320285290695705
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197207 (n + 4) : ℚ) / (A286231 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197202.P15151320285290695705

/-!
# A197203: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,3 for x=0,1,2,3,4.

The programs for A197203, there is no canonical definition to state claims against.
-/

/-! ## A197203.P4266928710597082085

`A197207(A374004(n+1))`
-/

namespace A197203.P4266928710597082085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (A374004 (n + 1)).toNat

end

end A197203.P4266928710597082085

/-! ## A197203.P8310951567739832456

`A197207(A141214(n+1))`
-/

namespace A197203.P8310951567739832456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (A141214 (n + 1)).toNat

end

end A197203.P8310951567739832456

/-!
# A197204: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,3 for x=0,1,2,3,4.

The programs for A197204, there is no canonical definition to state claims against.
-/

/-! ## A197204.P8409314166864536840

`A197207(A374005(n+1))`
-/

namespace A197204.P8409314166864536840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (A374005 (n + 1)).toNat

end

end A197204.P8409314166864536840

/-!
# A197205: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,3 for x=0,1,2,3,4.

The programs for A197205, there is no canonical definition to state claims against.
-/

/-! ## A197205.P5897044167901790691

`A197207(A374007(n+1))`
-/

namespace A197205.P5897044167901790691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (A374007 (n + 1)).toNat

end

end A197205.P5897044167901790691

/-!
# A197206: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,3 for x=0,1,2,3,4.

The programs for A197206, there is no canonical definition to state claims against.
-/

/-! ## A197206.P13557180057337921680

`A197207(A374008(n+1))`
-/

namespace A197206.P13557180057337921680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (A374008 (n + 1)).toNat

end

end A197206.P13557180057337921680

/-!
# A197207: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,1,0,3 for x=0,1,2,3,4.

The programs for A197207, there is no canonical definition to state claims against.
-/

/-! ## A197207.P5643411643582603579

`A197805(n+1)-A028930(A174912(n))`
-/

namespace A197207.P5643411643582603579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (n + 1) - A028930 (A174912 n).toNat

end

end A197207.P5643411643582603579

/-! ## A197207.P7937549823526671192

`A197805(n+1)-A051516(A157630(n))`
-/

namespace A197207.P7937549823526671192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (n + 1) - A051516 (A157630 n).toNat

end

end A197207.P7937549823526671192

/-! ## A197207.P774415814028893287

`A197805(n+1)-A174875(A157177(n))`
-/

namespace A197207.P774415814028893287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (n + 1) - A174875 (A157177 n).toNat

end

end A197207.P774415814028893287

/-! ## A197207.P2608290992303395519

`A197805(n+1)-A102679(A222608(n+1))`
-/

namespace A197207.P2608290992303395519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (n + 1) - A102679 (A222608 (n + 1)).toNat

end

end A197207.P2608290992303395519

/-! ## A197207.P12031688559486173992

`A197805(A043317(n+1))`
-/

namespace A197207.P12031688559486173992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A043317 (n + 1)).toNat

end

end A197207.P12031688559486173992

/-!
# A197208: Triangular array: T(n,k) = sqrt(C(n-1,k-1)*C(n-1,k)*C(n,k+1)* C(n+1,k+1)*C(n+1,k)*C(n,k-1)), where C(n,k) = binomial(n,k).

The programs for A197208, the canonical program `A197208.P16904640746338435843` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197208 has offset 2).

The definition of A197208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6493 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197208.P3057255674515707596

`A027480(A002024(n+1))*A056939(n)`
-/

namespace A197208.P3057255674515707596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (A002024 (n + 1)).toNat * A056939 n

end

end A197208.P3057255674515707596

namespace A197208

/-- `A027480(A002024(n+1))*A056939(n)` -/
def P3057255674515707596.Spec : Prop :=
  ∀ n, P3057255674515707596.a n = A197208 (n + 2)

end A197208

/-! ## A197208.P16904640746338435843

`A168577(n+2)*A209518(n)*A135278(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A197208

/-- `A168577(n+2)*A209518(n)*A135278(n)` -/
def P16904640746338435843.Spec : Prop :=
  ∀ n, P16904640746338435843.a n = A197208 (n + 2)

theorem P16904640746338435843.correct : P16904640746338435843.Spec := by
  intro n
  simp only [A197208, Nat.add_sub_cancel]

end A197208

/-! ## A197208.P14546027771300196089

`A173882(eq[0, A103452(n)])/2`
-/

namespace A197208.P14546027771300196089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A197208.P14546027771300196089

namespace A197208

/-- `A173882(eq[0, A103452(n)])/2` -/
def P14546027771300196089.Spec : Prop :=
  ∀ n, P14546027771300196089.a n = (A197208 (n + 2) : ℚ)

end A197208

/-! ## A197208.P6760019638201361161

`A173882(lt[1, A173882(n)])/2`
-/

namespace A197208.P6760019638201361161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173882 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A197208.P6760019638201361161

namespace A197208

/-- `A173882(lt[1, A173882(n)])/2` -/
def P6760019638201361161.Spec : Prop :=
  ∀ n, P6760019638201361161.a n = (A197208 (n + 2) : ℚ)

end A197208

/-! ## A197208.P5590651541680643238

`A173882(A014132(A014132(n+1)))/2`
-/

namespace A197208.P5590651541680643238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173882 (A014132 (A014132 (n + 1)).toNat).toNat : ℚ) / 2

end

end A197208.P5590651541680643238

namespace A197208

/-- `A173882(A014132(A014132(n+1)))/2` -/
def P5590651541680643238.Spec : Prop :=
  ∀ n, P5590651541680643238.a n = (A197208 (n + 2) : ℚ)

end A197208

/-!
# A197209: Row sums of A197208.

The programs for A197209, there is no canonical definition to state claims against.
-/

/-! ## A197209.P3922344173975176948

`A001181(1+n)*A027480(n+1)`
-/

namespace A197209.P3922344173975176948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001181 (1 + n) * A027480 (n + 1)

end

end A197209.P3922344173975176948

/-! ## A197209.P6699374815994193324

`(A006002(n+1)+A000217(n+1))*A001181(n+1)`
-/

namespace A197209.P6699374815994193324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006002 (n + 1) + A000217 (n + 1)) * A001181 (n + 1)

end

end A197209.P6699374815994193324

/-! ## A197209.P13039340094286676989

`(n+3)*A259992(A028387(n))`
-/

namespace A197209.P13039340094286676989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A259992 (A028387 n).toNat

end

end A197209.P13039340094286676989

/-!
# A197210: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,2,1,0 for x=0,1,2,3,4.

The programs for A197210, there is no canonical definition to state claims against.
-/

/-! ## A197210.P6427875949309726200

`A197217(∑[4*n]+1)`
-/

namespace A197210.P6427875949309726200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197210.P6427875949309726200

/-! ## A197210.P6652896925162360900

`record[A197217(∑[A266981(n)])]`
-/

namespace A197210.P6652896925162360900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197210.P6652896925162360900

/-! ## A197210.P15148151356068830768

`record[A197217(Δ[A235355(n)])]`
-/

namespace A197210.P15148151356068830768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197210.P15148151356068830768

/-! ## A197210.P1662030529903095723

`record[A197217(A330613(n+1))]`
-/

namespace A197210.P1662030529903095723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197210.P1662030529903095723

/-!
# A197211: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,0 for x=0,1,2,3,4.

The programs for A197211, the canonical program `A197211.P7418357946200209690` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197211 has offset 1).

The definition of A197211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197211.P3475187905933548679

`ogf((1+x+2x^2-x^3+x^4)/(1-x-x^2-2x^3-x^5))`
-/

namespace A197211.P3475187905933548679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, -1, 1] [1, -1, -1, -2, 0, -1] n

end

end A197211.P3475187905933548679

namespace A197211

/-- `ogf((1+x+2x^2-x^3+x^4)/(1-x-x^2-2x^3-x^5))` -/
def P3475187905933548679.Spec : Prop :=
  ∀ n, P3475187905933548679.a n = A197211 (n + 1)

end A197211

/-! ## A197211.P7418357946200209690

`a(n-1)+a(n-2)+2*a(n-3)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8, a(4)=18`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197211

/-- `a(n-1)+a(n-2)+2*a(n-3)+a(n-5)` -/
def P7418357946200209690.Spec : Prop :=
  ∀ n, (P7418357946200209690.a n : ℤ) = A197211 (n + 1)

theorem P7418357946200209690.correct : P7418357946200209690.Spec := by
  intro n
  simp only [A197211, Nat.add_sub_cancel]

end A197211

/-! ## A197211.P14232711151420825787

`record[ratio[A197342(n+1)]]`
-/

namespace A197211.P14232711151420825787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197211.P14232711151420825787

namespace A197211

/-- `record[ratio[A197342(n+1)]]` -/
def P14232711151420825787.Spec : Prop :=
  ∀ n, P14232711151420825787.a n = (A197211 (n + 1) : ℚ)

end A197211

/-! ## A197211.P9271914333595609201

`A197342(∑[n+1]+2)`
-/

namespace A197211.P9271914333595609201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197211.P9271914333595609201

namespace A197211

/-- `A197342(∑[n+1]+2)` -/
def P9271914333595609201.Spec : Prop :=
  ∀ n, P9271914333595609201.a n = A197211 (n + 1)

end A197211

/-! ## A197211.P13532109233030247268

`record[A197342(A252460(n+1))]`
-/

namespace A197211.P13532109233030247268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197211.P13532109233030247268

namespace A197211

/-- `record[A197342(A252460(n+1))]` -/
def P13532109233030247268.Spec : Prop :=
  ∀ n, P13532109233030247268.a n = A197211 (n + 1)

end A197211

/-!
# A197212: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,0 for x=0,1,2,3,4.

The programs for A197212, the canonical program `A197212.P9625887759698102099` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197212 has offset 1).

The definition of A197212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197212.P9625887759698102099

`ogf((1+3x+4x^2+8x^3+11x^4+3x^5-x^6-5x^7-14x^8-10x^9-5x^10-x^11)/(1-2x-8x^3-10x^4-16x^5-8x^6-6x^7+8x^8+12x^9+10x^10+4x^11+x^12))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197212

/-- `ogf((1+3x+4x^2+8x^3+11x^4+3x^5-x^6-5x^7-14x^8-10x^9-5x^10-x^11)/(1-2x-8x^3-10x^4-16x^5-8x^6-6x^7+8x^8+12x^9+10x^10+4x^11+x^12))` -/
def P9625887759698102099.Spec : Prop :=
  ∀ n, P9625887759698102099.a n = A197212 (n + 1)

theorem P9625887759698102099.correct : P9625887759698102099.Spec := by
  intro n
  simp only [A197212, Nat.add_sub_cancel]

end A197212

/-! ## A197212.P13963764708868676454

`A197217(∑[n+2]+4)`
-/

namespace A197212.P13963764708868676454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197212.P13963764708868676454

namespace A197212

/-- `A197217(∑[n+2]+4)` -/
def P13963764708868676454.Spec : Prop :=
  ∀ n, P13963764708868676454.a n = A197212 (n + 1)

end A197212

/-!
# A197213: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,0 for x=0,1,2,3,4.

The programs for A197213, there is no canonical definition to state claims against.
-/

/-! ## A197213.P17358675104533690316

`A197217(A374004(n+1))`
-/

namespace A197213.P17358675104533690316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (A374004 (n + 1)).toNat

end

end A197213.P17358675104533690316

/-! ## A197213.P3295259053731280675

`A197217(A141214(n+1))`
-/

namespace A197213.P3295259053731280675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (A141214 (n + 1)).toNat

end

end A197213.P3295259053731280675

/-!
# A197214: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,0 for x=0,1,2,3,4.

The programs for A197214, there is no canonical definition to state claims against.
-/

/-! ## A197214.P14204244171367539342

`A197217(A374005(n+1))`
-/

namespace A197214.P14204244171367539342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (A374005 (n + 1)).toNat

end

end A197214.P14204244171367539342

/-!
# A197215: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,0 for x=0,1,2,3,4.

The programs for A197215, there is no canonical definition to state claims against.
-/

/-! ## A197215.P9946616540431757801

`A197217(A374007(n+1))`
-/

namespace A197215.P9946616540431757801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (A374007 (n + 1)).toNat

end

end A197215.P9946616540431757801

/-!
# A197216: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,0 for x=0,1,2,3,4.

The programs for A197216, there is no canonical definition to state claims against.
-/

/-! ## A197216.P11897173274464394025

`A197217(A374008(n+1))`
-/

namespace A197216.P11897173274464394025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (A374008 (n + 1)).toNat

end

end A197216.P11897173274464394025

/-!
# A197217: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,2,1,0 for x=0,1,2,3,4.

The programs for A197217, there is no canonical definition to state claims against.
-/

/-! ## A197217.P5196362763382748251

`A197242(n+1)-A186034(A022167(n))`
-/

namespace A197217.P5196362763382748251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (n + 1) - A186034 (A022167 n).toNat

end

end A197217.P5196362763382748251

/-! ## A197217.P14442948974328293845

`A197242(n+1)-A033264(A176791(n))`
-/

namespace A197217.P14442948974328293845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (n + 1) - A033264 (A176791 n).toNat

end

end A197217.P14442948974328293845

/-! ## A197217.P5886911305069422401

`A197242(n+1)-A124763(A099594(n))`
-/

namespace A197217.P5886911305069422401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (n + 1) - A124763 (A099594 n).toNat

end

end A197217.P5886911305069422401

/-! ## A197217.P11226887961476543296

`A197242(n+1)-A124763(A174545(n))`
-/

namespace A197217.P11226887961476543296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (n + 1) - A124763 (A174545 n).toNat

end

end A197217.P11226887961476543296

/-! ## A197217.P2536591392039874512

`A197242(n+1)-A037800(A296548(n))`
-/

namespace A197217.P2536591392039874512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (n + 1) - A037800 (A296548 n).toNat

end

end A197217.P2536591392039874512

/-!
# A197218: a(n) = phi(Lucas(n)).

The programs for A197218, the canonical program `A197218.P5916423780579939464` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197218 has offset 0).

The definition of A197218 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000032(n))` (program `A197218.P5916423780579939464`, by `A197218.P5916423780579939464.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197218.P5916423780579939464

`A000010(A000032(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A197218

/-- `A000010(A000032(n))` -/
def P5916423780579939464.Spec : Prop :=
  ∀ n, P5916423780579939464.a n = A197218 n

theorem P5916423780579939464.correct : P5916423780579939464.Spec := by
  intro n
  simp only [A197218]

end A197218

/-! ## A197218.P8756107699331545964

`A000010(round(ϕ^n))`
-/

namespace A197218.P8756107699331545964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n)).toNat

end

end A197218.P8756107699331545964

namespace A197218

/-- `A000010(round(ϕ^n))` -/
def P8756107699331545964.Spec : Prop :=
  ∀ n, P8756107699331545964.a n = A197218 n

end A197218

/-! ## A197218.P1513047817620857918

`A372677(A169985(n))`
-/

namespace A197218.P1513047817620857918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372677 (A169985 n).toNat

end

end A197218.P1513047817620857918

namespace A197218

/-- `A372677(A169985(n))` -/
def P1513047817620857918.Spec : Prop :=
  ∀ n, P1513047817620857918.a n = A197218 n

end A197218

/-! ## A197218.P15742794910994217645

`A070091(A280154(n))`
-/

namespace A197218.P15742794910994217645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (A280154 n).toNat

end

end A197218.P15742794910994217645

namespace A197218

/-- `A070091(A280154(n))` -/
def P15742794910994217645.Spec : Prop :=
  ∀ n, P15742794910994217645.a n = A197218 n

end A197218

/-! ## A197218.P11780366792491757784

`A333698(A094894(n))`
-/

namespace A197218.P11780366792491757784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333698 (A094894 n).toNat

end

end A197218.P11780366792491757784

namespace A197218

/-- `A333698(A094894(n))` -/
def P11780366792491757784.Spec : Prop :=
  ∀ n, P11780366792491757784.a n = A197218 n

end A197218

/-!
# A197219: a(0) = 2, a(n) = Lucas(phi(n)) for n > 0.

The programs for A197219, the canonical program `A197219.P1176045312080678236` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197219 has offset 0).

The definition of A197219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197219.P1176045312080678236

`A000032(floor(A000010(n)+a(n-1))-a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A197219

/-- `A000032(floor(A000010(n)+a(n-1))-a(n-1))` -/
def P1176045312080678236.Spec : Prop :=
  ∀ n, P1176045312080678236.a n = A197219 n

theorem P1176045312080678236.correct : P1176045312080678236.Spec := by
  intro n
  simp only [A197219]

end A197219

/-! ## A197219.P6507369356122923970

`A000032(A000010(gcd(n, n*a(n-1))))` with `a(0)=2`
-/

namespace A197219.P6507369356122923970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 (A000010 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))).toNat

end

end A197219.P6507369356122923970

namespace A197219

/-- `A000032(A000010(gcd(n, n*a(n-1))))` -/
def P6507369356122923970.Spec : Prop :=
  ∀ n, P6507369356122923970.a n = A197219 n

theorem P6507369356122923970.correct : P6507369356122923970.Spec := by
  intro n
  simp only [A197219, Nat.add_sub_cancel, A197219.P6507369356122923970.a, A197219.P1176045312080678236.a, SequenceMachineLib.memo_apply]
  try simp

end A197219

/-!
# A197224: Exponent in the power of 2 which is the period of the decimal fraction 1/A072982(n).

The programs for A197224, there is no canonical definition to state claims against.
-/

/-! ## A197224.P16642874079621026282

`A274512(round(sqrt(n²+1)))+A057427(n)`
-/

namespace A197224.P16642874079621026282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274512 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A057427 n

end

end A197224.P16642874079621026282

/-! ## A197224.P17530827150830089790

`A274512(round(sqrt(n²+1)))+A178334(n)`
-/

namespace A197224.P17530827150830089790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274512 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A178334 n

end

end A197224.P17530827150830089790

/-! ## A197224.P1332482434143523797

`A274512(A028310(n))-A057428(n)`
-/

namespace A197224.P1332482434143523797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274512 (A028310 n).toNat - A057428 n

end

end A197224.P1332482434143523797

/-! ## A197224.P8454764253013328882

`A274512(A028310(n))+abs(A134824(n))`
-/

namespace A197224.P8454764253013328882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274512 (A028310 n).toNat + |A134824 n|

end

end A197224.P8454764253013328882

/-! ## A197224.P15362512709318372211

`A274512(A028310(n))+and(1, A000040(n+1))`
-/

namespace A197224.P15362512709318372211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274512 (A028310 n).toNat + Int.land 1 (A000040 (n + 1))

end

end A197224.P15362512709318372211

/-!
# A197225: Primes p with the period of the decimal fraction 1/p a prime power, A000961.

The programs for A197225, there is no canonical definition to state claims against.
-/

/-! ## A197225.P11370929582956490601

`p?[A001221(A172372(n+1))*A004139(n+1)]`
-/

namespace A197225.P11370929582956490601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A172372 (n + 1)).toNat * A004139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197225.P11370929582956490601

/-! ## A197225.P16738104861674294719

`p?[A001221(A099679(n+1))*A045572(n+1)]`
-/

namespace A197225.P16738104861674294719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A099679 (n + 1)).toNat * A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197225.P16738104861674294719

/-! ## A197225.P6086256866037954420

`∪[A072859(n+1), A128948(n+1)]`
-/

namespace A197225.P6086256866037954420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A197225.P6086256866037954420

/-! ## A197225.P10729613204087536094

`p?[floor(2/acot(4*n))-A331784(2*n+5)]`
-/

namespace A197225.P10729613204087536094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋ - A331784 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197225.P10729613204087536094

/-!
# A197226: The period of the decimal fraction 1/A197225(n).

The programs for A197226, there is no canonical definition to state claims against.
-/

/-! ## A197226.P2368157971960129992

`A007732(A197225(1+n))`
-/

namespace A197226.P2368157971960129992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A197225 (1 + n)).toNat

end

end A197226.P2368157971960129992

/-! ## A197226.P5691720454330235844

`A051626(A197225(n+1))`
-/

namespace A197226.P5691720454330235844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A197225 (n + 1)).toNat

end

end A197226.P5691720454330235844

/-! ## A197226.P12579423336075911315

`filter[A048595(n+3), A010055(#)]`
-/

namespace A197226.P12579423336075911315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A197226.P12579423336075911315

/-!
# A197227: Primes that are not the sum of at least two consecutive primes.

The programs for A197227, there is no canonical definition to state claims against.
-/

/-! ## A197227.P7672570072739898561

`p?[A054996(n+1)]`
-/

namespace A197227.P7672570072739898561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197227.P7672570072739898561

/-! ## A197227.P7115552765011877553

`filter[A054996(n+1), A010051(#)]`
-/

namespace A197227.P7115552765011877553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A197227.P7115552765011877553

/-! ## A197227.P17086661470022582920

`∩[A000040(n+1), A054996(n+1)]`
-/

namespace A197227.P17086661470022582920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P17086661470022582920

/-! ## A197227.P2065998795275268809

`∩[A008578(n+1), A054996(n+1)]`
-/

namespace A197227.P2065998795275268809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P2065998795275268809

/-! ## A197227.P13771994918925211135

`∩[A045319(n+1), A054996(n+1)]`
-/

namespace A197227.P13771994918925211135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P13771994918925211135

/-! ## A197227.P8311629169165760590

`∩[A046022(n+1), A054996(n+1)]`
-/

namespace A197227.P8311629169165760590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P8311629169165760590

/-! ## A197227.P4137093298909494786

`∩[A051948(n+1), A054996(n+1)]`
-/

namespace A197227.P4137093298909494786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P4137093298909494786

/-! ## A197227.P4534607029930644685

`∩[A054996(n+1), A067126(n+1)]`
-/

namespace A197227.P4534607029930644685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P4534607029930644685

/-! ## A197227.P6228866915760278723

`∩[A054996(n+1), A071200(n+1)]`
-/

namespace A197227.P6228866915760278723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P6228866915760278723

/-! ## A197227.P2010405155247835552

`∩[A054996(n+1), A116974(n+1)]`
-/

namespace A197227.P2010405155247835552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P2010405155247835552

/-! ## A197227.P8603860555035814782

`∩[A054996(n+1), A158611(n+1)]`
-/

namespace A197227.P8603860555035814782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P8603860555035814782

/-! ## A197227.P11153960084973822277

`∩[A054996(n+1), A175787(n+1)]`
-/

namespace A197227.P11153960084973822277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P11153960084973822277

/-! ## A197227.P13899064492464095155

`∩[A054996(n+1), A182986(n+1)]`
-/

namespace A197227.P13899064492464095155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P13899064492464095155

/-! ## A197227.P9215722034944606220

`p?[A087072(n+1)]`
-/

namespace A197227.P9215722034944606220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197227.P9215722034944606220

/-! ## A197227.P12868289718804759407

`p?[comp[A050936(n+1)]]`
-/

namespace A197227.P12868289718804759407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A197227.P12868289718804759407

/-! ## A197227.P3771245893533499094

`record[A006530(A087072(n+2))]`
-/

namespace A197227.P3771245893533499094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087072 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197227.P3771245893533499094

/-! ## A197227.P7121180324726433123

`filter[A087072(n+1), A010051(#)]`
-/

namespace A197227.P7121180324726433123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A197227.P7121180324726433123

/-! ## A197227.P5240598303419545830

`∩[A000040(n+1), A087072(n+1)]`
-/

namespace A197227.P5240598303419545830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P5240598303419545830

/-! ## A197227.P9961177989737981237

`∩[A034707(n+1), A087072(n+1)]`
-/

namespace A197227.P9961177989737981237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P9961177989737981237

/-! ## A197227.P3600434922770983726

`∩[A045319(n+1), A087072(n+1)]`
-/

namespace A197227.P3600434922770983726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197227.P3600434922770983726

/-!
# A197228: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,1,2 for x=0,1,2,3,4.

The programs for A197228, there is no canonical definition to state claims against.
-/

/-! ## A197228.P12733378336877875566

`A197235(∑[4*n]+1)`
-/

namespace A197228.P12733378336877875566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197228.P12733378336877875566

/-! ## A197228.P3241580448053520550

`record[A197235(A152271(n²))]`
-/

namespace A197228.P3241580448053520550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197228.P3241580448053520550

/-! ## A197228.P1403933321536909781

`record[A197235(Δ[A235355(n)])]`
-/

namespace A197228.P1403933321536909781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197228.P1403933321536909781

/-!
# A197229: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,2 for x=0,1,2,3,4.

The programs for A197229, the canonical program `A197229.P2553262070899847448` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197229 has offset 1).

The definition of A197229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197229.P2553262070899847448

`ogf((1+6x+2x^2-4x^3-x^4-2x^5)/(1-x-3x^2-2x^3+x^4+x^5+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197229

/-- `ogf((1+6x+2x^2-4x^3-x^4-2x^5)/(1-x-3x^2-2x^3+x^4+x^5+x^6))` -/
def P2553262070899847448.Spec : Prop :=
  ∀ n, P2553262070899847448.a n = A197229 (n + 1)

theorem P2553262070899847448.correct : P2553262070899847448.Spec := by
  intro n
  simp only [A197229, Nat.add_sub_cancel]

end A197229

/-! ## A197229.P10657469310593473276

`A198013(∑[n+1]+2)`
-/

namespace A197229.P10657469310593473276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197229.P10657469310593473276

namespace A197229

/-- `A198013(∑[n+1]+2)` -/
def P10657469310593473276.Spec : Prop :=
  ∀ n, P10657469310593473276.a n = A197229 (n + 1)

end A197229

/-! ## A197229.P2361290467270536619

`A197750(∑[n+1]+2)`
-/

namespace A197229.P2361290467270536619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197229.P2361290467270536619

namespace A197229

/-- `A197750(∑[n+1]+2)` -/
def P2361290467270536619.Spec : Prop :=
  ∀ n, P2361290467270536619.a n = A197229 (n + 1)

end A197229

/-! ## A197229.P16685228538890620625

`A197235(∑[n+1]+2)`
-/

namespace A197229.P16685228538890620625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197229.P16685228538890620625

namespace A197229

/-- `A197235(∑[n+1]+2)` -/
def P16685228538890620625.Spec : Prop :=
  ∀ n, P16685228538890620625.a n = A197229 (n + 1)

end A197229

/-! ## A197229.P15046841083959491396

`A197896(∑[1+n]+2)`
-/

namespace A197229.P15046841083959491396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197229.P15046841083959491396

namespace A197229

/-- `A197896(∑[1+n]+2)` -/
def P15046841083959491396.Spec : Prop :=
  ∀ n, P15046841083959491396.a n = A197229 (n + 1)

end A197229

/-!
# A197230: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,2 for x=0,1,2,3,4.

The programs for A197230, there is no canonical definition to state claims against.
-/

/-! ## A197230.P10861769123271247795

`A197235(∑[n+2]+4)`
-/

namespace A197230.P10861769123271247795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197230.P10861769123271247795

/-!
# A197231: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,2 for x=0,1,2,3,4.

The programs for A197231, there is no canonical definition to state claims against.
-/

/-! ## A197231.P11013897510813398087

`A197235(A374004(n+1))`
-/

namespace A197231.P11013897510813398087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (A374004 (n + 1)).toNat

end

end A197231.P11013897510813398087

/-! ## A197231.P10912240651366465757

`A197235(A141214(n+1))`
-/

namespace A197231.P10912240651366465757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (A141214 (n + 1)).toNat

end

end A197231.P10912240651366465757

/-!
# A197232: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,2 for x=0,1,2,3,4.

The programs for A197232, there is no canonical definition to state claims against.
-/

/-! ## A197232.P7997459923861189086

`A197235(∑[n+3]+n+12)`
-/

namespace A197232.P7997459923861189086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A197232.P7997459923861189086

/-!
# A197233: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,2 for x=0,1,2,3,4.

The programs for A197233, there is no canonical definition to state claims against.
-/

/-! ## A197233.P3303895705713299742

`A197235(A374007(n+1))`
-/

namespace A197233.P3303895705713299742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (A374007 (n + 1)).toNat

end

end A197233.P3303895705713299742

/-!
# A197234: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,2 for x=0,1,2,3,4.

The programs for A197234, there is no canonical definition to state claims against.
-/

/-! ## A197234.P3551730128712062482

`A197235(A374008(n+1))`
-/

namespace A197234.P3551730128712062482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (A374008 (n + 1)).toNat

end

end A197234.P3551730128712062482

/-!
# A197235: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,1,2 for x=0,1,2,3,4.

The programs for A197235, there is no canonical definition to state claims against.
-/

/-! ## A197235.P12240722831934153554

`A198155(n+1)+A186034(A022167(n))`
-/

namespace A197235.P12240722831934153554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (n + 1) + A186034 (A022167 n).toNat

end

end A197235.P12240722831934153554

/-! ## A197235.P1804793611295536299

`A198155(n+1)+A033264(A176791(n))`
-/

namespace A197235.P1804793611295536299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (n + 1) + A033264 (A176791 n).toNat

end

end A197235.P1804793611295536299

/-! ## A197235.P10276019316725751305

`A198155(n+1)+A124763(A099594(n))`
-/

namespace A197235.P10276019316725751305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (n + 1) + A124763 (A099594 n).toNat

end

end A197235.P10276019316725751305

/-! ## A197235.P14110945623244913957

`A198155(n+1)+A107846(A154336(n))`
-/

namespace A197235.P14110945623244913957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (n + 1) + A107846 (A154336 n).toNat

end

end A197235.P14110945623244913957

/-! ## A197235.P17310909525342988692

`A198155(n+1)+A124763(A174545(n))`
-/

namespace A197235.P17310909525342988692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (n + 1) + A124763 (A174545 n).toNat

end

end A197235.P17310909525342988692

/-!
# A197236: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,2,1,2 for x=0,1,2,3,4.

The programs for A197236, there is no canonical definition to state claims against.
-/

/-! ## A197236.P6044711513914947413

`A197242(∑[4*n]+1)`
-/

namespace A197236.P6044711513914947413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197236.P6044711513914947413

/-! ## A197236.P9649585693948824757

`record[A197242(∑[A266981(n)])]`
-/

namespace A197236.P9649585693948824757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197236.P9649585693948824757

/-! ## A197236.P5899460592637052670

`record[A197242(A330613(n+1))]`
-/

namespace A197236.P5899460592637052670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197236.P5899460592637052670

/-! ## A197236.P6966117329079886150

`record[A003982(n)*A197242(n+1)]`
-/

namespace A197236.P6966117329079886150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197236.P6966117329079886150

/-!
# A197237: Number of n X 3 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,2,1,2 for x=0,1,2,3,4.

The programs for A197237, there is no canonical definition to state claims against.
-/

/-! ## A197237.P7555015118801726604

`A197242(∑[n+2]+4)`
-/

namespace A197237.P7555015118801726604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197237.P7555015118801726604

/-!
# A197238: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,2 for x=0,1,2,3,4.

The programs for A197238, there is no canonical definition to state claims against.
-/

/-! ## A197238.P7738586858001338963

`A197242(A374004(n+1))`
-/

namespace A197238.P7738586858001338963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (A374004 (n + 1)).toNat

end

end A197238.P7738586858001338963

/-! ## A197238.P15340275752065230521

`A197242(A141214(n+1))`
-/

namespace A197238.P15340275752065230521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (A141214 (n + 1)).toNat

end

end A197238.P15340275752065230521

/-!
# A197239: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,2 for x=0,1,2,3,4.

The programs for A197239, there is no canonical definition to state claims against.
-/

/-! ## A197239.P3064099484613598539

`A197242(∑[n+3]+n+12)`
-/

namespace A197239.P3064099484613598539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A197239.P3064099484613598539

/-!
# A197240: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,2 for x=0,1,2,3,4.

The programs for A197240, there is no canonical definition to state claims against.
-/

/-! ## A197240.P11203785809244291682

`A197242(A374007(n+1))`
-/

namespace A197240.P11203785809244291682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (A374007 (n + 1)).toNat

end

end A197240.P11203785809244291682

/-!
# A197241: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,1,2 for x=0,1,2,3,4.

The programs for A197241, there is no canonical definition to state claims against.
-/

/-! ## A197241.P17778062963067895073

`A197242(A374008(n+1))`
-/

namespace A197241.P17778062963067895073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (A374008 (n + 1)).toNat

end

end A197241.P17778062963067895073

/-!
# A197242: T(n,k) = number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,2,1,2 for x=0,1,2,3,4.

The programs for A197242, there is no canonical definition to state claims against.
-/

/-! ## A197242.P1125275993115507353

`A197217(n+1)+A186034(A022167(n))`
-/

namespace A197242.P1125275993115507353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (n + 1) + A186034 (A022167 n).toNat

end

end A197242.P1125275993115507353

/-! ## A197242.P9295491473352789566

`A197217(n+1)+A033264(A176791(n))`
-/

namespace A197242.P9295491473352789566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (n + 1) + A033264 (A176791 n).toNat

end

end A197242.P9295491473352789566

/-! ## A197242.P11513061602499126315

`A197217(n+1)+A124763(A099594(n))`
-/

namespace A197242.P11513061602499126315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (n + 1) + A124763 (A099594 n).toNat

end

end A197242.P11513061602499126315

/-! ## A197242.P4835710304505257576

`A197217(n+1)+A124763(A174545(n))`
-/

namespace A197242.P4835710304505257576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (n + 1) + A124763 (A174545 n).toNat

end

end A197242.P4835710304505257576

/-! ## A197242.P12409871664793165625

`A197217(n+1)+A163510(A157273(n))`
-/

namespace A197242.P12409871664793165625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197217 (n + 1) + A163510 (A157273 n).toNat

end

end A197242.P12409871664793165625

/-!
# A197243: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,0,1,1,1 for x=0,1,2,3,4.

The programs for A197243, there is no canonical definition to state claims against.
-/

/-! ## A197243.P10874408635706336790

`A197250(∑[4*n]+1)`
-/

namespace A197243.P10874408635706336790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197243.P10874408635706336790

/-!
# A197244: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,0,1,1,1 for x=0,1,2,3,4.

The programs for A197244, the canonical program `A197244.P17749954141902796861` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197244 has offset 1).

The definition of A197244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197244.P1415231607811969925

`ogf((2+4x-4x^3-2x^4)/(1-4x^2-2x^3-x^4+2x^5))`
-/

namespace A197244.P1415231607811969925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 0, -4, -2] [1, 0, -4, -2, -1, 2] n

end

end A197244.P1415231607811969925

namespace A197244

/-- `ogf((2+4x-4x^3-2x^4)/(1-4x^2-2x^3-x^4+2x^5))` -/
def P1415231607811969925.Spec : Prop :=
  ∀ n, P1415231607811969925.a n = A197244 (n + 1)

end A197244

/-! ## A197244.P17749954141902796861

`4*a(n-2)+2*a(n-3)+a(n-4)-2*a(n-5)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=16, a(4)=40`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197244

/-- `4*a(n-2)+2*a(n-3)+a(n-4)-2*a(n-5)` -/
def P17749954141902796861.Spec : Prop :=
  ∀ n, P17749954141902796861.a n = A197244 (n + 1)

theorem P17749954141902796861.correct : P17749954141902796861.Spec := by
  intro n
  simp only [A197244, Nat.add_sub_cancel]

end A197244

/-! ## A197244.P5526970494230721395

`A197250(∑[n+1]+2)`
-/

namespace A197244.P5526970494230721395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197244.P5526970494230721395

namespace A197244

/-- `A197250(∑[n+1]+2)` -/
def P5526970494230721395.Spec : Prop :=
  ∀ n, P5526970494230721395.a n = A197244 (n + 1)

end A197244

/-! ## A197244.P5365036047211210974

`record[A197250(abs(A201163(n)))]`
-/

namespace A197244.P5365036047211210974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197244.P5365036047211210974

namespace A197244

/-- `record[A197250(abs(A201163(n)))]` -/
def P5365036047211210974.Spec : Prop :=
  ∀ n, P5365036047211210974.a n = A197244 (n + 1)

end A197244

/-!
# A197245: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,0,1,1,1 for x=0,1,2,3,4.

The programs for A197245, there is no canonical definition to state claims against.
-/

/-! ## A197245.P3464824426479389296

`A197250(∑[n+2]+4)`
-/

namespace A197245.P3464824426479389296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197245.P3464824426479389296

/-!
# A197246: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,0,1,1,1 for x=0,1,2,3,4.

The programs for A197246, there is no canonical definition to state claims against.
-/

/-! ## A197246.P11888736797063657631

`A197250(A141214(n)+7)`
-/

namespace A197246.P11888736797063657631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (A141214 n + 7).toNat

end

end A197246.P11888736797063657631

/-! ## A197246.P5696399221471070403

`A197250(A141214(n+1))`
-/

namespace A197246.P5696399221471070403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (A141214 (n + 1)).toNat

end

end A197246.P5696399221471070403

/-!
# A197247: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,0,1,1,1 for x=0,1,2,3,4.

The programs for A197247, there is no canonical definition to state claims against.
-/

/-! ## A197247.P3951144793293297657

`A197250(A167499(n+3))`
-/

namespace A197247.P3951144793293297657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (A167499 (n + 3)).toNat

end

end A197247.P3951144793293297657

/-! ## A197247.P15333280329583099997

`A197250(A374005(n+1))`
-/

namespace A197247.P15333280329583099997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (A374005 (n + 1)).toNat

end

end A197247.P15333280329583099997

/-!
# A197248: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,0,1,1,1 for x=0,1,2,3,4.

The programs for A197248, there is no canonical definition to state claims against.
-/

/-! ## A197248.P14875064268525290527

`A197250(A056115(n)+21)`
-/

namespace A197248.P14875064268525290527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (A056115 n + 21).toNat

end

end A197248.P14875064268525290527

/-! ## A197248.P7411951666624927853

`A197250(A374007(n+1))`
-/

namespace A197248.P7411951666624927853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (A374007 (n + 1)).toNat

end

end A197248.P7411951666624927853

/-!
# A197249: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,0,1,1,1 for x=0,1,2,3,4.

The programs for A197249, there is no canonical definition to state claims against.
-/

/-! ## A197249.P16770190828571955550

`A197250(C(n+7, 2)+7)`
-/

namespace A197249.P16770190828571955550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197250 (Nat.choose (n + 7) 2 + 7)

end

end A197249.P16770190828571955550

/-!
# A197271: a(n) = (10 / ((3*n+1)*(3*n+2))) * binomial(4*n, n).

The programs for A197271, the canonical program `A197271.P10709753192351263941` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197271 has offset 0).

The definition of A197271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197271.P10709753192351263941

`A000260(n)*5*(n+1)/(4*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A197271

/-- `A000260(n)*5*(n+1)/(4*n+1)` -/
def P10709753192351263941.Spec : Prop :=
  ∀ n, P10709753192351263941.a n = (A197271 n : ℚ)

end A197271

/-! ## A197271.P3907293439162149586

`10/((3*n+1)*(3*n+2))*C(4*n, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A197271.P3907293439162149586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / ((3 * n + 1) * (3 * n + 2) : ℚ) * (Nat.choose (4 * n) n : ℚ)

end

end A197271.P3907293439162149586

namespace A197271

/-- `10/((3*n+1)*(3*n+2))*C(4*n, n)` -/
def P3907293439162149586.Spec : Prop :=
  ∀ n, P3907293439162149586.a n = (A197271 n : ℚ)

end A197271

/-! ## A197271.P18261542202481782979

`A384585(n)-A000260(n)`
-/

namespace A197271.P18261542202481782979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384585 n - A000260 n

end

end A197271.P18261542202481782979

namespace A197271

/-- `A384585(n)-A000260(n)` -/
def P18261542202481782979.Spec : Prop :=
  ∀ n, P18261542202481782979.a n = A197271 n

end A197271

/-! ## A197271.P3893640176753489181

`A146305(A000124(A000038(n)+n))`
-/

namespace A197271.P3893640176753489181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A000124 (A000038 n + (n : ℤ)).toNat).toNat

end

end A197271.P3893640176753489181

namespace A197271

/-- `A146305(A000124(A000038(n)+n))` -/
def P3893640176753489181.Spec : Prop :=
  ∀ n, P3893640176753489181.a n = A197271 n

end A197271

/-! ## A197271.P16339952356953556742

`5/A000217(3*n+1)*A005810(n)`
-/

namespace A197271.P16339952356953556742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (A000217 (3 * n + 1) : ℚ) * (A005810 n : ℚ)

end

end A197271.P16339952356953556742

namespace A197271

/-- `5/A000217(3*n+1)*A005810(n)` -/
def P16339952356953556742.Spec : Prop :=
  ∀ n, P16339952356953556742.a n = (A197271 n : ℚ)

end A197271

/-!
# A197272: a(n) = (6/((4*n+1)*(4*n+2)))*binomial(5*n,n).

The programs for A197272, the canonical program `A197272.P6611341782457821211` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197272 has offset 0).

The definition of A197272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197272.P6611341782457821211

`6/((4*n+1)*(4*n+2))*C(5*n, n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197272

/-- `6/((4*n+1)*(4*n+2))*C(5*n, n)` -/
def P6611341782457821211.Spec : Prop :=
  ∀ n, P6611341782457821211.a n = (A197272 n : ℚ)

end A197272

/-! ## A197272.P2985118756704552283

`3*A002294(n)/A005408(n)`
-/

namespace A197272.P2985118756704552283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A002294 n : ℚ) / (A005408 n : ℚ))

end

end A197272.P2985118756704552283

namespace A197272

/-- `3*A002294(n)/A005408(n)` -/
def P2985118756704552283.Spec : Prop :=
  ∀ n, P2985118756704552283.a n = (A197272 n : ℚ)

end A197272

/-! ## A197272.P1073791573213292709

`3/A016861(n)*A118969(n)`
-/

namespace A197272.P1073791573213292709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A016861 n : ℚ) * (A118969 n : ℚ)

end

end A197272.P1073791573213292709

namespace A197272

/-- `3/A016861(n)*A118969(n)` -/
def P1073791573213292709.Spec : Prop :=
  ∀ n, P1073791573213292709.a n = (A197272 n : ℚ)

end A197272

/-! ## A197272.P472852000783969754

`3/A247328(n+1)*A002294(n)`
-/

namespace A197272.P472852000783969754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A247328 (n + 1) : ℚ) * (A002294 n : ℚ)

end

end A197272.P472852000783969754

namespace A197272

/-- `3/A247328(n+1)*A002294(n)` -/
def P472852000783969754.Spec : Prop :=
  ∀ n, P472852000783969754.a n = (A197272 n : ℚ)

end A197272

/-! ## A197272.P8355649018049968007

`3*A002294(n)/A317439(n+1)`
-/

namespace A197272.P8355649018049968007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A002294 n : ℚ) / (A317439 (n + 1) : ℚ))

end

end A197272.P8355649018049968007

namespace A197272

/-- `3*A002294(n)/A317439(n+1)` -/
def P8355649018049968007.Spec : Prop :=
  ∀ n, P8355649018049968007.a n = (A197272 n : ℚ)

end A197272

/-! ## A197272.P12781171004246196131

`3/(2*n+1)*A070914(A052905(n+2))`
-/

namespace A197272.P12781171004246196131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (2 * n + 1 : ℚ) * (A070914 (A052905 (n + 2)).toNat : ℚ)

end

end A197272.P12781171004246196131

namespace A197272

/-- `3/(2*n+1)*A070914(A052905(n+2))` -/
def P12781171004246196131.Spec : Prop :=
  ∀ n, P12781171004246196131.a n = (A197272 n : ℚ)

end A197272

/-!
# A197273: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,1,1,1 for x=0,1,2,3,4.

The programs for A197273, there is no canonical definition to state claims against.
-/

/-! ## A197273.P183654026896483835

`A197280(∑[4*n]+1)`
-/

namespace A197273.P183654026896483835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197273.P183654026896483835

/-! ## A197273.P4589782249303079959

`record[A197280(A330613(n+1))]`
-/

namespace A197273.P4589782249303079959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197273.P4589782249303079959

/-! ## A197273.P15808706112087492228

`record[A197280(Δ[A079824(n+1)])]`
-/

namespace A197273.P15808706112087492228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197273.P15808706112087492228

/-! ## A197273.P13899380098061586906

`record[A003982(n)*A197280(n+1)]`
-/

namespace A197273.P13899380098061586906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197273.P13899380098061586906

/-!
# A197274: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,1,1 for x=0,1,2,3,4.

The programs for A197274, the canonical program `A197274.P14177296108632675155` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197274 has offset 1).

The definition of A197274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197274.P14177296108632675155

`ogf((3+3x-4x^2-5x^3-3x^4-4x^5-2x^6)/(1-2x-2x^3+2x^4+2x^5+x^6+2x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197274

/-- `ogf((3+3x-4x^2-5x^3-3x^4-4x^5-2x^6)/(1-2x-2x^3+2x^4+2x^5+x^6+2x^7))` -/
def P14177296108632675155.Spec : Prop :=
  ∀ n, P14177296108632675155.a n = A197274 (n + 1)

theorem P14177296108632675155.correct : P14177296108632675155.Spec := by
  intro n
  simp only [A197274, Nat.add_sub_cancel]

end A197274

/-! ## A197274.P7720341179016553688

`A197280(∑[n+1]+2)`
-/

namespace A197274.P7720341179016553688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197274.P7720341179016553688

namespace A197274

/-- `A197280(∑[n+1]+2)` -/
def P7720341179016553688.Spec : Prop :=
  ∀ n, P7720341179016553688.a n = A197274 (n + 1)

end A197274

/-!
# A197275: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,1,1 for x=0,1,2,3,4.

The programs for A197275, there is no canonical definition to state claims against.
-/

/-! ## A197275.P3628090155433393106

`A197280(∑[n+2]+4)`
-/

namespace A197275.P3628090155433393106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197275.P3628090155433393106

/-!
# A197276: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,1,1 for x=0,1,2,3,4.

The programs for A197276, there is no canonical definition to state claims against.
-/

/-! ## A197276.P4624506203619601163

`A197280(∑[n+3]+7)`
-/

namespace A197276.P4624506203619601163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197276.P4624506203619601163

/-!
# A197277: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,1,1 for x=0,1,2,3,4.

The programs for A197277, there is no canonical definition to state claims against.
-/

/-! ## A197277.P15841854874362348795

`A197280(∑[n+4]+11)`
-/

namespace A197277.P15841854874362348795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A197277.P15841854874362348795

/-!
# A197278: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,1,1 for x=0,1,2,3,4.

The programs for A197278, there is no canonical definition to state claims against.
-/

/-! ## A197278.P4904835484739013732

`A197280(A374007(n+1))`
-/

namespace A197278.P4904835484739013732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (A374007 (n + 1)).toNat

end

end A197278.P4904835484739013732

/-!
# A197279: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,1,1 for x=0,1,2,3,4.

The programs for A197279, there is no canonical definition to state claims against.
-/

/-! ## A197279.P10231990600028483035

`A197280(A374008(n+1))`
-/

namespace A197279.P10231990600028483035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (A374008 (n + 1)).toNat

end

end A197279.P10231990600028483035

/-!
# A197280: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,1,1,1 for x=0,1,2,3,4.

The programs for A197280, there is no canonical definition to state claims against.
-/

/-! ## A197280.P15422457701560933981

`A197537(n+1)-A347689(A022167(n))`
-/

namespace A197280.P15422457701560933981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (n + 1) - A347689 (A022167 n).toNat

end

end A197280.P15422457701560933981

/-! ## A197280.P7753170371209412319

`A195978(n+1)+A008651(A083961(n+1))`
-/

namespace A197280.P7753170371209412319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (n + 1) + A008651 (A083961 (n + 1)).toNat

end

end A197280.P7753170371209412319

/-! ## A197280.P8422925366239023172

`A195978(n+1)+A002839(A202812(n+1))`
-/

namespace A197280.P8422925366239023172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (n + 1) + A002839 (A202812 (n + 1)).toNat

end

end A197280.P8422925366239023172

/-! ## A197280.P14771852006650347403

`A197537(n+1)-A302642(A372066(n+1))`
-/

namespace A197280.P14771852006650347403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (n + 1) - A302642 (A372066 (n + 1)).toNat

end

end A197280.P14771852006650347403

/-!
# A197297: The Riemann primes of the theta type and index 1.

The programs for A197297, there is no canonical definition to state claims against.
-/

/-! ## A197297.P6049409252703545065

`p?[lt[A130067(n+1), n]]`
-/

namespace A197297.P6049409252703545065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130067 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A197297.P6049409252703545065

/-! ## A197297.P1178014131790765140

`p?[∑[or(1, A111397(3*n+1))]]`
-/

namespace A197297.P1178014131790765140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A111397 (3 * n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197297.P1178014131790765140

/-! ## A197297.P7279634425674362916

`p?[A153308(∑[A124778(n)])]`
-/

namespace A197297.P7279634425674362916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153308 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197297.P7279634425674362916

/-! ## A197297.P5959202252344239233

`record[A248147(A025475(n+1))]`
-/

namespace A197297.P5959202252344239233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248147 (A025475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197297.P5959202252344239233

/-! ## A197297.P3571194211098480608

`record[A248147(A246547(n+1))]`
-/

namespace A197297.P3571194211098480608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248147 (A246547 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197297.P3571194211098480608

/-!
# A197298: The Riemann primes of the theta type and index 2.

The programs for A197298, there is no canonical definition to state claims against.
-/

/-! ## A197298.P12007174312757264671

`A000040(lt[A299128(3*(n+1)), A161409(n)])`
-/

namespace A197298.P12007174312757264671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197298.P12007174312757264671

/-! ## A197298.P1203892552349233346

`A000040(lt[A100881(n), A278065(n+1)])`
-/

namespace A197298.P1203892552349233346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197298.P1203892552349233346

/-! ## A197298.P6484151520696639406

`A008578(lt[A117144(n), A100208(n+1)]+1)`
-/

namespace A197298.P6484151520696639406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A197298.P6484151520696639406

/-! ## A197298.P6359648257923271249

`∩[A078668(n+1), A364354(n+1)]`
-/

namespace A197298.P6359648257923271249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197298.P6359648257923271249

/-! ## A197298.P1895615245618371658

`∩[A118849(n+1), A364354(n+1)]`
-/

namespace A197298.P1895615245618371658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197298.P1895615245618371658

/-!
# A197299: The Riemann primes of the theta type and index 3.

The programs for A197299, there is no canonical definition to state claims against.
-/

/-! ## A197299.P15441845743919547260

`p?[lt[A270654(n+1), A270633(n+2)]]`
-/

namespace A197299.P15441845743919547260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270654 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270633 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A197299.P15441845743919547260

/-! ## A197299.P14423373166375247078

`p?[lt[A229199(n), A229173(n+3)]]`
-/

namespace A197299.P14423373166375247078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229199 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229173 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A197299.P14423373166375247078

/-! ## A197299.P1768454892330270212

`A000040(lt[A398496(3*(n+1)), A134032(2*n+5)])`
-/

namespace A197299.P1768454892330270212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398496 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134032 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197299.P1768454892330270212

/-! ## A197299.P4250024888416543716

`A000040(lt[1, A118435(3*n+1)])`
-/

namespace A197299.P4250024888416543716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118435 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A197299.P4250024888416543716

/-! ## A197299.P15387529443668110061

`∩[A028783(n+1), A386356(n+1)]`
-/

namespace A197299.P15387529443668110061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197299.P15387529443668110061

