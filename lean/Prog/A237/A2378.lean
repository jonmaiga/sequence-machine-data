import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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

/-!
# A237800: Number of partitions of n such that 2*(least part) >= number of parts.

The programs for A237800, there is no canonical definition to state claims against.
-/

/-! ## A237800.P13467564454267907912

`record[A189357(n)]-A067661(n+1)`
-/

namespace A237800.P13467564454267907912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A067661 (n + 1)

end

end A237800.P13467564454267907912

/-! ## A237800.P158790355320152353

`A067659(n+1)+A000700(2*(n+1))`
-/

namespace A237800.P158790355320152353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 1) + A000700 (2 * (n + 1))

end

end A237800.P158790355320152353

/-! ## A237800.P5060327813360007433

`A081362(2*(n+1))+A067659(n+1)`
-/

namespace A237800.P5060327813360007433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (2 * (n + 1)) + A067659 (n + 1)

end

end A237800.P5060327813360007433

/-! ## A237800.P8509328057575856384

`A237799(n+1)+A237757(n+1)`
-/

namespace A237800.P8509328057575856384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237799 (n + 1) + A237757 (n + 1)

end

end A237800.P8509328057575856384

/-! ## A237800.P8685550820617667055

`A237799(n+1)+A027349(2*(n+1))`
-/

namespace A237800.P8685550820617667055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237799 (n + 1) + A027349 (2 * (n + 1))

end

end A237800.P8685550820617667055

/-! ## A237800.P7094835044437250322

`A237799(n+1)+∑[abs(A298596(2*n+1))]`
-/

namespace A237800.P7094835044437250322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A298596 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237799 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237800.P7094835044437250322

/-! ## A237800.P5859557038287772451

`A118083(n+1)+A237757(n+1)-A118082(n+1)`
-/

namespace A237800.P5859557038287772451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118083 (n + 1) + (A237757 (n + 1) - A118082 (n + 1))

end

end A237800.P5859557038287772451

/-! ## A237800.P14908686801868411107

`A237799(n+1)+A118084(n+1)-A237758(n+1)`
-/

namespace A237800.P14908686801868411107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237799 (n + 1) + A118084 (n + 1) - A237758 (n + 1)

end

end A237800.P14908686801868411107

/-!
# A237801: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2 X 2 subblock equal.

The programs for A237801, there is no canonical definition to state claims against.
-/

/-! ## A237801.P6114530491321138572

`A237809((n+1)²+n²)`
-/

namespace A237801.P6114530491321138572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 ((n + 1) ^ 2 + n ^ 2)

end

end A237801.P6114530491321138572

/-!
# A237802: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2 X 2 subblock equal.

The programs for A237802, there is no canonical definition to state claims against.
-/

/-! ## A237802.P14435226457751837692

`A237809(∑[n]+1)`
-/

namespace A237802.P14435226457751837692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237802.P14435226457751837692

/-! ## A237802.P12520851162970670615

`or(1, A237809(A000124(n)))`
-/

namespace A237802.P12520851162970670615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237809 (A000124 n).toNat)

end

end A237802.P12520851162970670615

/-! ## A237802.P13270483455933130184

`record[A010054(n)*A237809(n+1)]`
-/

namespace A237802.P13270483455933130184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237802.P13270483455933130184

/-! ## A237802.P14571946271426858248

`record[gcd(A049600(n), A237809(n+1))]`
-/

namespace A237802.P14571946271426858248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 n) (A237809 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237802.P14571946271426858248

/-! ## A237802.P13293530654770712125

`A007318(∑[n])*A237809(A000124(n))`
-/

namespace A237802.P13293530654770712125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A237809 (A000124 n).toNat

end

end A237802.P13293530654770712125

/-!
# A237803: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237803, there is no canonical definition to state claims against.
-/

/-! ## A237803.P17601510394941791029

`A237809(∑[n+1]+2)`
-/

namespace A237803.P17601510394941791029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237803.P17601510394941791029

/-! ## A237803.P10226057508919796559

`record[A010054(n)*A237809(n+2)]`
-/

namespace A237803.P10226057508919796559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237809 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237803.P10226057508919796559

/-! ## A237803.P2198778477644927773

`record[gcd(A049600(n), A237809(n+2))]`
-/

namespace A237803.P2198778477644927773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 n) (A237809 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237803.P2198778477644927773

/-! ## A237803.P1197770630376946765

`record[A237809(abs(A201163(n)))]`
-/

namespace A237803.P1197770630376946765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237803.P1197770630376946765

/-! ## A237803.P11126498824807188149

`or(1, A237809(A000096(n+1)))`
-/

namespace A237803.P11126498824807188149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237809 (A000096 (n + 1)).toNat)

end

end A237803.P11126498824807188149

/-!
# A237804: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237804, there is no canonical definition to state claims against.
-/

/-! ## A237804.P12226362259206349035

`A237809(∑[n+2]+4)`
-/

namespace A237804.P12226362259206349035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237804.P12226362259206349035

/-! ## A237804.P4406228842106036914

`or(1, A237809(A167614(n+1)))`
-/

namespace A237804.P4406228842106036914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237809 (A167614 (n + 1)).toNat)

end

end A237804.P4406228842106036914

/-! ## A237804.P12539033969169796119

`A237809(A167614(n+1))+A055967(n)`
-/

namespace A237804.P12539033969169796119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A167614 (n + 1)).toNat + A055967 n

end

end A237804.P12539033969169796119

/-! ## A237804.P15698673951673311751

`A237809(A167614(n+1))+A185044(n)`
-/

namespace A237804.P15698673951673311751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A167614 (n + 1)).toNat + A185044 n

end

end A237804.P15698673951673311751

/-! ## A237804.P12389168217112653312

`A016266(n)*A237809(A167614(n+1))`
-/

namespace A237804.P12389168217112653312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A237809 (A167614 (n + 1)).toNat

end

end A237804.P12389168217112653312

/-!
# A237805: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237805, there is no canonical definition to state claims against.
-/

/-! ## A237805.P8477098602767630118

`A237809(A141214(n)+7)`
-/

namespace A237805.P8477098602767630118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A141214 n + 7).toNat

end

end A237805.P8477098602767630118

/-! ## A237805.P6131434966333415218

`A237809(A052905(n)+9)`
-/

namespace A237805.P6131434966333415218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A052905 n + 9).toNat

end

end A237805.P6131434966333415218

/-! ## A237805.P1796938052873719197

`A237809(A055999(n)+10)`
-/

namespace A237805.P1796938052873719197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A055999 n + 10).toNat

end

end A237805.P1796938052873719197

/-! ## A237805.P14272763730342099927

`A237809(A167614(n+2)+1)`
-/

namespace A237805.P14272763730342099927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A167614 (n + 2) + 1).toNat

end

end A237805.P14272763730342099927

/-! ## A237805.P3050578357706657092

`A237809(Δ[A264443(n)-n²])`
-/

namespace A237805.P3050578357706657092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (f1 (n + 1) - f1 n).toNat

end

end A237805.P3050578357706657092

/-!
# A237806: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237806, there is no canonical definition to state claims against.
-/

/-! ## A237806.P281173339368537947

`A237809(A167499(n+3))`
-/

namespace A237806.P281173339368537947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A167499 (n + 3)).toNat

end

end A237806.P281173339368537947

/-! ## A237806.P7469138332182500904

`A237809(A056000(n)+15)`
-/

namespace A237806.P7469138332182500904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A056000 n + 15).toNat

end

end A237806.P7469138332182500904

/-! ## A237806.P1257089856226881390

`A237809(A167614(n+3)+2)`
-/

namespace A237806.P1257089856226881390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A167614 (n + 3) + 2).toNat

end

end A237806.P1257089856226881390

/-! ## A237806.P10603754155921621987

`A237809(Δ[A264443(n)])`
-/

namespace A237806.P10603754155921621987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (f1 (n + 1) - f1 n).toNat

end

end A237806.P10603754155921621987

/-! ## A237806.P9803084551384372965

`A237809(A374005(n+1))`
-/

namespace A237806.P9803084551384372965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A374005 (n + 1)).toNat

end

end A237806.P9803084551384372965

/-!
# A237807: Number of (n+1) X (6+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2 X 2 subblock equal.

The programs for A237807, there is no canonical definition to state claims against.
-/

/-! ## A237807.P6781129326165126543

`A237809(Δ[A264443(n)]+10)`
-/

namespace A237807.P6781129326165126543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (f1 (n + 1) - f1 n + 10).toNat

end

end A237807.P6781129326165126543

/-! ## A237807.P13970010262794415602

`A237809(eq[7, A131818(n+1)])`
-/

namespace A237807.P13970010262794415602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237807.P13970010262794415602

/-! ## A237807.P7452242566071007139

`A237809(Δ[A023545(n+1)]+10)`
-/

namespace A237807.P7452242566071007139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (f1 (n + 1) - f1 n + 10).toNat

end

end A237807.P7452242566071007139

/-! ## A237807.P10795697437739055642

`A237809(A374007(n+1))`
-/

namespace A237807.P10795697437739055642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A374007 (n + 1)).toNat

end

end A237807.P10795697437739055642

/-! ## A237807.P13696038166204130862

`A237809(eq[5, A193592(n)])`
-/

namespace A237807.P13696038166204130862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237807.P13696038166204130862

/-!
# A237808: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A237808, there is no canonical definition to state claims against.
-/

/-! ## A237808.P15557426383501011268

`A237809(A374008(n+1))`
-/

namespace A237808.P15557426383501011268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (A374008 (n + 1)).toNat

end

end A237808.P15557426383501011268

/-! ## A237808.P2229630530441768472

`A237809(eq[6, A193592(n)])`
-/

namespace A237808.P2229630530441768472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237808.P2229630530441768472

/-!
# A237810: Primes p such that 2*p+1 and 2*p+7 are also prime.

The programs for A237810, the canonical program `A237810.P13913380025692696917` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237810 has offset 1).

The definition of A237810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237810.P13913380025692696917

`∩[A005384(n+1), A023206(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A237810

/-- `∩[A005384(n+1), A023206(n+1)]` -/
def P13913380025692696917.Spec : Prop :=
  ∀ n, (P13913380025692696917.a n : ℤ) = A237810 (n + 1)

theorem P13913380025692696917.correct : P13913380025692696917.Spec := by
  intro n
  simp only [A237810, Nat.add_sub_cancel]

end A237810

/-! ## A237810.P8731674639347393448

`∩[A023206(n+1), A246857(n+1)]`
-/

namespace A237810.P8731674639347393448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P8731674639347393448

namespace A237810

/-- `∩[A023206(n+1), A246857(n+1)]` -/
def P8731674639347393448.Spec : Prop :=
  ∀ n, (P8731674639347393448.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P3514077119542030104

`∩[A023206(n+1), A348511(n+1)]`
-/

namespace A237810.P3514077119542030104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P3514077119542030104

namespace A237810

/-- `∩[A023206(n+1), A348511(n+1)]` -/
def P3514077119542030104.Spec : Prop :=
  ∀ n, (P3514077119542030104.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P11975022738892876807

`∩[A023206(n+1), A364926(n+1)]`
-/

namespace A237810.P11975022738892876807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P11975022738892876807

namespace A237810

/-- `∩[A023206(n+1), A364926(n+1)]` -/
def P11975022738892876807.Spec : Prop :=
  ∀ n, (P11975022738892876807.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P4852678945678250054

`∩[A023206(n+1), A350230(n+1)]`
-/

namespace A237810.P4852678945678250054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P4852678945678250054

namespace A237810

/-- `∩[A023206(n+1), A350230(n+1)]` -/
def P4852678945678250054.Spec : Prop :=
  ∀ n, (P4852678945678250054.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P540203511893113805

`p?[A088763(n+1)-2]`
-/

namespace A237810.P540203511893113805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237810.P540203511893113805

namespace A237810

/-- `p?[A088763(n+1)-2]` -/
def P540203511893113805.Spec : Prop :=
  ∀ n, P540203511893113805.a n = A237810 (n + 1)

end A237810

/-! ## A237810.P5878563892662912416

`∩[A023206(n+1), A259973(n+1)]`
-/

namespace A237810.P5878563892662912416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P5878563892662912416

namespace A237810

/-- `∩[A023206(n+1), A259973(n+1)]` -/
def P5878563892662912416.Spec : Prop :=
  ∀ n, (P5878563892662912416.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P16715493076453352761

`∩[A042986(n+1), A088763(n+1)-2]`
-/

namespace A237810.P16715493076453352761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P16715493076453352761

namespace A237810

/-- `∩[A042986(n+1), A088763(n+1)-2]` -/
def P16715493076453352761.Spec : Prop :=
  ∀ n, (P16715493076453352761.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P8866406356571030111

`∩[A080191(n+1), A088763(n+1)-2]`
-/

namespace A237810.P8866406356571030111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P8866406356571030111

namespace A237810

/-- `∩[A080191(n+1), A088763(n+1)-2]` -/
def P8866406356571030111.Spec : Prop :=
  ∀ n, (P8866406356571030111.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P5650339735780401500

`∩[A023206(n+1), A078762(n+1)]`
-/

namespace A237810.P5650339735780401500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P5650339735780401500

namespace A237810

/-- `∩[A023206(n+1), A078762(n+1)]` -/
def P5650339735780401500.Spec : Prop :=
  ∀ n, (P5650339735780401500.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P4418635337941704997

`∩[A023206(n+1), A054639(n+1)]`
-/

namespace A237810.P4418635337941704997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P4418635337941704997

namespace A237810

/-- `∩[A023206(n+1), A054639(n+1)]` -/
def P4418635337941704997.Spec : Prop :=
  ∀ n, (P4418635337941704997.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P17675850737304502874

`∩[A014109(n+1), A023206(n+1)]`
-/

namespace A237810.P17675850737304502874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P17675850737304502874

namespace A237810

/-- `∩[A014109(n+1), A023206(n+1)]` -/
def P17675850737304502874.Spec : Prop :=
  ∀ n, (P17675850737304502874.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P1674943883270391117

`∩[A023206(n+1), A156541(n+1)]`
-/

namespace A237810.P1674943883270391117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P1674943883270391117

namespace A237810

/-- `∩[A023206(n+1), A156541(n+1)]` -/
def P1674943883270391117.Spec : Prop :=
  ∀ n, (P1674943883270391117.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P918259671904091002

`∩[A023206(n+1), A087634(n+1)]`
-/

namespace A237810.P918259671904091002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P918259671904091002

namespace A237810

/-- `∩[A023206(n+1), A087634(n+1)]` -/
def P918259671904091002.Spec : Prop :=
  ∀ n, (P918259671904091002.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P8873215739245874779

`∩[A023206(n+1), A074821(n+1)]`
-/

namespace A237810.P8873215739245874779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P8873215739245874779

namespace A237810

/-- `∩[A023206(n+1), A074821(n+1)]` -/
def P8873215739245874779.Spec : Prop :=
  ∀ n, (P8873215739245874779.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P750142285108639568

`∩[A023206(n+1), A117360(n+1)]`
-/

namespace A237810.P750142285108639568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P750142285108639568

namespace A237810

/-- `∩[A023206(n+1), A117360(n+1)]` -/
def P750142285108639568.Spec : Prop :=
  ∀ n, (P750142285108639568.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P16892317947807716302

`∩[A005097(n+1), A023206(n+1)]`
-/

namespace A237810.P16892317947807716302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P16892317947807716302

namespace A237810

/-- `∩[A005097(n+1), A023206(n+1)]` -/
def P16892317947807716302.Spec : Prop :=
  ∀ n, (P16892317947807716302.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P183980148822316549

`∩[A005384(n+1), A105760(n+1)]`
-/

namespace A237810.P183980148822316549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P183980148822316549

namespace A237810

/-- `∩[A005384(n+1), A105760(n+1)]` -/
def P183980148822316549.Spec : Prop :=
  ∀ n, (P183980148822316549.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P15156843584157309512

`∩[A023206(n+1), A102781(n+1)]`
-/

namespace A237810.P15156843584157309512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P15156843584157309512

namespace A237810

/-- `∩[A023206(n+1), A102781(n+1)]` -/
def P15156843584157309512.Spec : Prop :=
  ∀ n, (P15156843584157309512.a n : ℤ) = A237810 (n + 1)

end A237810

/-! ## A237810.P5924696272738726419

`∩[A087634(n+1), A105760(n+1)]`
-/

namespace A237810.P5924696272738726419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237810.P5924696272738726419

namespace A237810

/-- `∩[A087634(n+1), A105760(n+1)]` -/
def P5924696272738726419.Spec : Prop :=
  ∀ n, (P5924696272738726419.a n : ℤ) = A237810 (n + 1)

end A237810

/-!
# A237811: Primes p such that 2*p+1 and 2*p+9 are also prime.

The programs for A237811, the canonical program `A237811.P5036255404154694542` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237811 has offset 1).

The definition of A237811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 897 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237811.P5036255404154694542

`p?[A088764(n+1)-2]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A237811

/-- `p?[A088764(n+1)-2]` -/
def P5036255404154694542.Spec : Prop :=
  ∀ n, P5036255404154694542.a n = A237811 (n + 1)

theorem P5036255404154694542.correct : P5036255404154694542.Spec := by
  intro n
  simp only [A237811, Nat.add_sub_cancel]

end A237811

/-! ## A237811.P876902212143262388

`p?[floor(A023202(n+1)/2)]`
-/

namespace A237811.P876902212143262388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023202 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237811.P876902212143262388

namespace A237811

/-- `p?[floor(A023202(n+1)/2)]` -/
def P876902212143262388.Spec : Prop :=
  ∀ n, P876902212143262388.a n = A237811 (n + 1)

end A237811

/-! ## A237811.P1869489563231675190

`∩[A005384(n+1), A023207(n+1)]`
-/

namespace A237811.P1869489563231675190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P1869489563231675190

namespace A237811

/-- `∩[A005384(n+1), A023207(n+1)]` -/
def P1869489563231675190.Spec : Prop :=
  ∀ n, (P1869489563231675190.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P4474955784887019885

`∩[A023207(n+1), A246857(n+1)]`
-/

namespace A237811.P4474955784887019885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P4474955784887019885

namespace A237811

/-- `∩[A023207(n+1), A246857(n+1)]` -/
def P4474955784887019885.Spec : Prop :=
  ∀ n, (P4474955784887019885.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P9403206592401160575

`∩[A023207(n+1), A348511(n+1)]`
-/

namespace A237811.P9403206592401160575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P9403206592401160575

namespace A237811

/-- `∩[A023207(n+1), A348511(n+1)]` -/
def P9403206592401160575.Spec : Prop :=
  ∀ n, (P9403206592401160575.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P9556981169953633850

`∩[A023207(n+1), A350230(n+1)]`
-/

namespace A237811.P9556981169953633850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P9556981169953633850

namespace A237811

/-- `∩[A023207(n+1), A350230(n+1)]` -/
def P9556981169953633850.Spec : Prop :=
  ∀ n, (P9556981169953633850.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P2011669635705475032

`∩[A023207(n+1), A364926(n+1)]`
-/

namespace A237811.P2011669635705475032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P2011669635705475032

namespace A237811

/-- `∩[A023207(n+1), A364926(n+1)]` -/
def P2011669635705475032.Spec : Prop :=
  ∀ n, (P2011669635705475032.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P6792192322947762967

`p?[floor(A262085(n+1)/2)]`
-/

namespace A237811.P6792192322947762967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262085 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237811.P6792192322947762967

namespace A237811

/-- `p?[floor(A262085(n+1)/2)]` -/
def P6792192322947762967.Spec : Prop :=
  ∀ n, P6792192322947762967.a n = A237811 (n + 1)

end A237811

/-! ## A237811.P3123618553025768134

`∩[A023207(n+1), A259973(n+1)]`
-/

namespace A237811.P3123618553025768134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P3123618553025768134

namespace A237811

/-- `∩[A023207(n+1), A259973(n+1)]` -/
def P3123618553025768134.Spec : Prop :=
  ∀ n, (P3123618553025768134.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P4451280796806136247

`∩[A023207(n+1), A078762(n+1)]`
-/

namespace A237811.P4451280796806136247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P4451280796806136247

namespace A237811

/-- `∩[A023207(n+1), A078762(n+1)]` -/
def P4451280796806136247.Spec : Prop :=
  ∀ n, (P4451280796806136247.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P9506957056261936682

`∩[A023207(n+1), A054639(n+1)]`
-/

namespace A237811.P9506957056261936682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P9506957056261936682

namespace A237811

/-- `∩[A023207(n+1), A054639(n+1)]` -/
def P9506957056261936682.Spec : Prop :=
  ∀ n, (P9506957056261936682.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P14539505445748589206

`∩[A014109(n+1), A023207(n+1)]`
-/

namespace A237811.P14539505445748589206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P14539505445748589206

namespace A237811

/-- `∩[A014109(n+1), A023207(n+1)]` -/
def P14539505445748589206.Spec : Prop :=
  ∀ n, (P14539505445748589206.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P1147443304972744050

`∩[A023207(n+1), A156541(n+1)]`
-/

namespace A237811.P1147443304972744050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P1147443304972744050

namespace A237811

/-- `∩[A023207(n+1), A156541(n+1)]` -/
def P1147443304972744050.Spec : Prop :=
  ∀ n, (P1147443304972744050.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P15781740128089893067

`∩[A023207(n+1), A177966(n+1)]`
-/

namespace A237811.P15781740128089893067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P15781740128089893067

namespace A237811

/-- `∩[A023207(n+1), A177966(n+1)]` -/
def P15781740128089893067.Spec : Prop :=
  ∀ n, (P15781740128089893067.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P949326846952088497

`∩[A023207(n+1), A074821(n+1)]`
-/

namespace A237811.P949326846952088497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P949326846952088497

namespace A237811

/-- `∩[A023207(n+1), A074821(n+1)]` -/
def P949326846952088497.Spec : Prop :=
  ∀ n, (P949326846952088497.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P658705196752556718

`∩[A023207(n+1), A117360(n+1)]`
-/

namespace A237811.P658705196752556718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P658705196752556718

namespace A237811

/-- `∩[A023207(n+1), A117360(n+1)]` -/
def P658705196752556718.Spec : Prop :=
  ∀ n, (P658705196752556718.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P4863566077006015824

`∩[A005097(n+1), A023207(n+1)]`
-/

namespace A237811.P4863566077006015824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P4863566077006015824

namespace A237811

/-- `∩[A005097(n+1), A023207(n+1)]` -/
def P4863566077006015824.Spec : Prop :=
  ∀ n, (P4863566077006015824.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P7682446153279920679

`∩[A023207(n+1), A102781(n+1)]`
-/

namespace A237811.P7682446153279920679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P7682446153279920679

namespace A237811

/-- `∩[A023207(n+1), A102781(n+1)]` -/
def P7682446153279920679.Spec : Prop :=
  ∀ n, (P7682446153279920679.a n : ℤ) = A237811 (n + 1)

end A237811

/-! ## A237811.P16798413123660787306

`∩[A005384(n+1), A155722(n+1)]`
-/

namespace A237811.P16798413123660787306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237811.P16798413123660787306

namespace A237811

/-- `∩[A005384(n+1), A155722(n+1)]` -/
def P16798413123660787306.Spec : Prop :=
  ∀ n, (P16798413123660787306.a n : ℤ) = A237811 (n + 1)

end A237811

/-!
# A237812: Primes p such that 2*p+1 and 2*p+13 are also prime.

The programs for A237812, the canonical program `A237812.P3160556385371461777` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237812 has offset 1).

The definition of A237812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237812.P3160556385371461777

`∩[A005384(n+1), A153081(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A237812

/-- `∩[A005384(n+1), A153081(n+1)]` -/
def P3160556385371461777.Spec : Prop :=
  ∀ n, (P3160556385371461777.a n : ℤ) = A237812 (n + 1)

theorem P3160556385371461777.correct : P3160556385371461777.Spec := by
  intro n
  simp only [A237812, Nat.add_sub_cancel]

end A237812

/-! ## A237812.P12287163298459382487

`∩[A087634(n+1), A153081(n+1)]`
-/

namespace A237812.P12287163298459382487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237812.P12287163298459382487

namespace A237812

/-- `∩[A087634(n+1), A153081(n+1)]` -/
def P12287163298459382487.Spec : Prop :=
  ∀ n, (P12287163298459382487.a n : ℤ) = A237812 (n + 1)

end A237812

/-! ## A237812.P8181695999462860863

`∩[A005384(n+1), A089559(n+1)+1]`
-/

namespace A237812.P8181695999462860863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237812.P8181695999462860863

namespace A237812

/-- `∩[A005384(n+1), A089559(n+1)+1]` -/
def P8181695999462860863.Spec : Prop :=
  ∀ n, (P8181695999462860863.a n : ℤ) = A237812 (n + 1)

end A237812

/-! ## A237812.P15151257367448735527

`∩[A005384(n+1), A155722(n+1)-2]`
-/

namespace A237812.P15151257367448735527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237812.P15151257367448735527

namespace A237812

/-- `∩[A005384(n+1), A155722(n+1)-2]` -/
def P15151257367448735527.Spec : Prop :=
  ∀ n, (P15151257367448735527.a n : ℤ) = A237812 (n + 1)

end A237812

/-! ## A237812.P6174173456777151137

`∩[A120628(n+1), A153081(n+1)]`
-/

namespace A237812.P6174173456777151137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237812.P6174173456777151137

namespace A237812

/-- `∩[A120628(n+1), A153081(n+1)]` -/
def P6174173456777151137.Spec : Prop :=
  ∀ n, (P6174173456777151137.a n : ℤ) = A237812 (n + 1)

end A237812

/-! ## A237812.P7642722861653162669

`filter[A153081(n+1), A156660(#)]`
-/

namespace A237812.P7642722861653162669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156660 (f1 j).toNat = 1) n)

end

end A237812.P7642722861653162669

namespace A237812

/-- `filter[A153081(n+1), A156660(#)]` -/
def P7642722861653162669.Spec : Prop :=
  ∀ n, P7642722861653162669.a n = A237812 (n + 1)

end A237812

/-!
# A237813: Primes p such that 2*p+1 and 2*p+15 are also prime.

The programs for A237813, there is no canonical definition to state claims against.
-/

/-! ## A237813.P7141497499695794379

`p?[floor(A140446(n+1)/2)]`
-/

namespace A237813.P7141497499695794379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140446 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237813.P7141497499695794379

/-! ## A237813.P3223856190557025686

`p?[A273943(A140446(n+1)-1)]`
-/

namespace A237813.P3223856190557025686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A140446 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237813.P3223856190557025686

/-! ## A237813.P15482852572134432117

`∩[A005384(n+1), A089559(n+1)]`
-/

namespace A237813.P15482852572134432117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237813.P15482852572134432117

/-! ## A237813.P14631109758883640415

`∩[A005384(n+1), A153081(n+1)-1]`
-/

namespace A237813.P14631109758883640415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237813.P14631109758883640415

/-! ## A237813.P12182751284734978173

`∩[A005384(n+1), A153143(n+1)+2]`
-/

namespace A237813.P12182751284734978173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237813.P12182751284734978173

/-! ## A237813.P765580204094025693

`record[A006530(A153417(n+1)-1)]`
-/

namespace A237813.P765580204094025693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153417 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237813.P765580204094025693

/-! ## A237813.P1182651318065411958

`record[A006530(A087697(n+1)-8)]`
-/

namespace A237813.P1182651318065411958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087697 (n + 1) - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237813.P1182651318065411958

/-! ## A237813.P12791140929843929937

`record[A006530(xor(1, A153417(n+1)))]`
-/

namespace A237813.P12791140929843929937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 1 (A153417 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237813.P12791140929843929937

/-! ## A237813.P6504307397114385241

`record[A006530(A140446(2*n+1)-1)]`
-/

namespace A237813.P6504307397114385241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A140446 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237813.P6504307397114385241

/-! ## A237813.P17410007261357217042

`record[A006530(A000010(A153417(n+1)))]`
-/

namespace A237813.P17410007261357217042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A153417 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237813.P17410007261357217042

/-! ## A237813.P666253281498660346

`p?[A273943(A000010(A140446(n+1)))]`
-/

namespace A237813.P666253281498660346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A000010 (A140446 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237813.P666253281498660346

/-! ## A237813.P4771878166766395599

`record[A006530(A000010(A140446(2*n+1)))]`
-/

namespace A237813.P4771878166766395599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A140446 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237813.P4771878166766395599

/-! ## A237813.P7113609035804452745

`filter[A089559(n+1), A156660(#)]`
-/

namespace A237813.P7113609035804452745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156660 (f1 j).toNat = 1) n)

end

end A237813.P7113609035804452745

/-!
# A237814: Primes p such that 2*p+1 and 2*p+19 are also prime.

The programs for A237814, the canonical program `A237814.P8527101259238323609` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237814 has offset 1).

The definition of A237814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237814.P8527101259238323609

`∩[A005384(n+1), A153145(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A237814

/-- `∩[A005384(n+1), A153145(n+1)]` -/
def P8527101259238323609.Spec : Prop :=
  ∀ n, (P8527101259238323609.a n : ℤ) = A237814 (n + 1)

theorem P8527101259238323609.correct : P8527101259238323609.Spec := by
  intro n
  simp only [A237814, Nat.add_sub_cancel]

end A237814

/-! ## A237814.P17895369033460124214

`∩[A153145(n+1), A246857(n+1)]`
-/

namespace A237814.P17895369033460124214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P17895369033460124214

namespace A237814

/-- `∩[A153145(n+1), A246857(n+1)]` -/
def P17895369033460124214.Spec : Prop :=
  ∀ n, (P17895369033460124214.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P7150309347045282869

`∩[A153145(n+1), A348511(n+1)]`
-/

namespace A237814.P7150309347045282869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P7150309347045282869

namespace A237814

/-- `∩[A153145(n+1), A348511(n+1)]` -/
def P7150309347045282869.Spec : Prop :=
  ∀ n, (P7150309347045282869.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P693966975484749642

`∩[A153145(n+1), A364926(n+1)]`
-/

namespace A237814.P693966975484749642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P693966975484749642

namespace A237814

/-- `∩[A153145(n+1), A364926(n+1)]` -/
def P693966975484749642.Spec : Prop :=
  ∀ n, (P693966975484749642.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P16471067262696169562

`∩[A153145(n+1), A350230(n+1)]`
-/

namespace A237814.P16471067262696169562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P16471067262696169562

namespace A237814

/-- `∩[A153145(n+1), A350230(n+1)]` -/
def P16471067262696169562.Spec : Prop :=
  ∀ n, (P16471067262696169562.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P16348783632273987719

`p?[A088769(n+1)-5]`
-/

namespace A237814.P16348783632273987719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088769 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237814.P16348783632273987719

namespace A237814

/-- `p?[A088769(n+1)-5]` -/
def P16348783632273987719.Spec : Prop :=
  ∀ n, P16348783632273987719.a n = A237814 (n + 1)

end A237814

/-! ## A237814.P637364283334865538

`∩[A153145(n+1), A259973(n+1)]`
-/

namespace A237814.P637364283334865538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P637364283334865538

namespace A237814

/-- `∩[A153145(n+1), A259973(n+1)]` -/
def P637364283334865538.Spec : Prop :=
  ∀ n, (P637364283334865538.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P16319749376067080886

`∩[A078762(n+1), A153145(n+1)]`
-/

namespace A237814.P16319749376067080886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P16319749376067080886

namespace A237814

/-- `∩[A078762(n+1), A153145(n+1)]` -/
def P16319749376067080886.Spec : Prop :=
  ∀ n, (P16319749376067080886.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P6540881420786630611

`record[A020639(A088769(n+1)-5)]`
-/

namespace A237814.P6540881420786630611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088769 (n + 1) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237814.P6540881420786630611

namespace A237814

/-- `record[A020639(A088769(n+1)-5)]` -/
def P6540881420786630611.Spec : Prop :=
  ∀ n, P6540881420786630611.a n = A237814 (n + 1)

end A237814

/-! ## A237814.P4473030980728878330

`record[A020639(floor(A153418(n+1)/2))]`
-/

namespace A237814.P4473030980728878330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A153418 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237814.P4473030980728878330

namespace A237814

/-- `record[A020639(floor(A153418(n+1)/2))]` -/
def P4473030980728878330.Spec : Prop :=
  ∀ n, P4473030980728878330.a n = A237814 (n + 1)

end A237814

/-! ## A237814.P1196136429910198517

`∩[A054639(n+1), A153145(n+1)]`
-/

namespace A237814.P1196136429910198517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P1196136429910198517

namespace A237814

/-- `∩[A054639(n+1), A153145(n+1)]` -/
def P1196136429910198517.Spec : Prop :=
  ∀ n, (P1196136429910198517.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P213954734940435924

`∩[A014109(n+1), A153145(n+1)]`
-/

namespace A237814.P213954734940435924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P213954734940435924

namespace A237814

/-- `∩[A014109(n+1), A153145(n+1)]` -/
def P213954734940435924.Spec : Prop :=
  ∀ n, (P213954734940435924.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P7808246602771844385

`∩[A153145(n+1), A156541(n+1)]`
-/

namespace A237814.P7808246602771844385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P7808246602771844385

namespace A237814

/-- `∩[A153145(n+1), A156541(n+1)]` -/
def P7808246602771844385.Spec : Prop :=
  ∀ n, (P7808246602771844385.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P17990240526573488652

`∩[A153145(n+1), A177966(n+1)]`
-/

namespace A237814.P17990240526573488652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P17990240526573488652

namespace A237814

/-- `∩[A153145(n+1), A177966(n+1)]` -/
def P17990240526573488652.Spec : Prop :=
  ∀ n, (P17990240526573488652.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P986073208068032579

`∩[A087634(n+1), A153145(n+1)]`
-/

namespace A237814.P986073208068032579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P986073208068032579

namespace A237814

/-- `∩[A087634(n+1), A153145(n+1)]` -/
def P986073208068032579.Spec : Prop :=
  ∀ n, (P986073208068032579.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P11643259376802275755

`∩[A074821(n+1), A153145(n+1)]`
-/

namespace A237814.P11643259376802275755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P11643259376802275755

namespace A237814

/-- `∩[A074821(n+1), A153145(n+1)]` -/
def P11643259376802275755.Spec : Prop :=
  ∀ n, (P11643259376802275755.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P13904573272199127274

`∩[A117360(n+1), A153145(n+1)]`
-/

namespace A237814.P13904573272199127274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P13904573272199127274

namespace A237814

/-- `∩[A117360(n+1), A153145(n+1)]` -/
def P13904573272199127274.Spec : Prop :=
  ∀ n, (P13904573272199127274.a n : ℤ) = A237814 (n + 1)

end A237814

/-! ## A237814.P16440683691917425385

`∩[A005097(n+1), A153145(n+1)]`
-/

namespace A237814.P16440683691917425385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P16440683691917425385

namespace A237814

/-- `∩[A005097(n+1), A153145(n+1)]` -/
def P16440683691917425385.Spec : Prop :=
  ∀ n, (P16440683691917425385.a n : ℤ) = A237814 (n + 1)

end A237814

/-!
# A237820: Number of partitions of n such that 2*(least part) < greatest part.

The programs for A237820, there is no canonical definition to state claims against.
-/

/-! ## A237820.P13313070080590204289

`Δ[A000070(n)]-A237824(n+1)`
-/

namespace A237820.P13313070080590204289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237824 (n + 1)

end

end A237820.P13313070080590204289

/-! ## A237820.P15325746444293973003

`record[A035363(n)]-A237824(n+1)`
-/

namespace A237820.P15325746444293973003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237824 (n + 1)

end

end A237820.P15325746444293973003

/-! ## A237820.P13227548002713944822

`record[A035377(n)]-A237824(n+1)`
-/

namespace A237820.P13227548002713944822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237824 (n + 1)

end

end A237820.P13227548002713944822

/-! ## A237820.P15798677612001421408

`record[A035444(n)]-A237824(n+1)`
-/

namespace A237820.P15798677612001421408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237824 (n + 1)

end

end A237820.P15798677612001421408

/-! ## A237820.P6813224301658800487

`A000041(n+1)-A237824(n+1)`
-/

namespace A237820.P6813224301658800487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237824 (n + 1)

end

end A237820.P6813224301658800487

/-! ## A237820.P9774922379764417206

`A237821(n+1)-A118096(n+1)`
-/

namespace A237820.P9774922379764417206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237821 (n + 1) - A118096 (n + 1)

end

end A237820.P9774922379764417206

/-! ## A237820.P9817142500719928463

`A237821(n+1)+A053263(n)-A237824(n+1)`
-/

namespace A237820.P9817142500719928463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237821 (n + 1) + A053263 n - A237824 (n + 1)

end

end A237820.P9817142500719928463

/-! ## A237820.P13371714597364932499

`A363211(n+1)+A393972(n+1)-A237824(n+1)`
-/

namespace A237820.P13371714597364932499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363211 (n + 1) + (A393972 (n + 1) - A237824 (n + 1))

end

end A237820.P13371714597364932499

/-! ## A237820.P17815961110757259825

`A393097(n+1)+A393973(n+1)-A237824(n+1)`
-/

namespace A237820.P17815961110757259825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393097 (n + 1) + (A393973 (n + 1) - A237824 (n + 1))

end

end A237820.P17815961110757259825

/-!
# A237821: Number of partitions of n such that 2*(least part) <= greatest part.

The programs for A237821, there is no canonical definition to state claims against.
-/

/-! ## A237821.P1986034465745220240

`Δ[A000070(n)]-A053263(n)`
-/

namespace A237821.P1986034465745220240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A053263 n

end

end A237821.P1986034465745220240

/-! ## A237821.P9605615272622321899

`record[A035363(n)]-A053263(n)`
-/

namespace A237821.P9605615272622321899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A053263 n

end

end A237821.P9605615272622321899

/-! ## A237821.P10248403323470726646

`record[A035377(n)]-A053263(n)`
-/

namespace A237821.P10248403323470726646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A053263 n

end

end A237821.P10248403323470726646

/-! ## A237821.P13481040735194723596

`record[A035444(n)]-A053263(n)`
-/

namespace A237821.P13481040735194723596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A053263 n

end

end A237821.P13481040735194723596

/-! ## A237821.P8520991327910158730

`A000041(n+1)-A053263(n)`
-/

namespace A237821.P8520991327910158730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A053263 n

end

end A237821.P8520991327910158730

/-! ## A237821.P1067352978502308367

`A237820(n+1)+A118096(n+1)`
-/

namespace A237821.P1067352978502308367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237820 (n + 1) + A118096 (n + 1)

end

end A237821.P1067352978502308367

/-! ## A237821.P6596981935613992402

`A240302(n+1)+A171979(n+1)-A053263(n)`
-/

namespace A237821.P6596981935613992402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240302 (n + 1) + A171979 (n + 1) - A053263 n

end

end A237821.P6596981935613992402

/-! ## A237821.P3448897944462251746

`A237800(n+1)+A237758(n+1)-A053263(n)`
-/

namespace A237821.P3448897944462251746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237800 (n + 1) + A237758 (n + 1) - A053263 n

end

end A237821.P3448897944462251746

/-! ## A237821.P1050530540351505831

`A237824(n+1)+A237820(n+1)-A053263(n)`
-/

namespace A237821.P1050530540351505831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237824 (n + 1) + A237820 (n + 1) - A053263 n

end

end A237821.P1050530540351505831

/-! ## A237821.P14651263179975764931

`A237799(n+1)+A118084(n+1)-A053263(n)`
-/

namespace A237821.P14651263179975764931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237799 (n + 1) + A118084 (n + 1) - A053263 n

end

end A237821.P14651263179975764931

/-!
# A237822: Number of partitions of n such that (greatest part) + (least part) < number of parts.

The programs for A237822, there is no canonical definition to state claims against.
-/

/-! ## A237822.P8165031935663438942

`Δ[A000070(n)]-A237871(n+1)`
-/

namespace A237822.P8165031935663438942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237871 (n + 1)

end

end A237822.P8165031935663438942

/-! ## A237822.P2200903826739110749

`record[A035363(n)]-A237871(n+1)`
-/

namespace A237822.P2200903826739110749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237871 (n + 1)

end

end A237822.P2200903826739110749

/-! ## A237822.P8412338494033188427

`record[A035377(n)]-A237871(n+1)`
-/

namespace A237822.P8412338494033188427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237871 (n + 1)

end

end A237822.P8412338494033188427

/-! ## A237822.P2590802411386649179

`A237823(n+1)-A237869(n+1)`
-/

namespace A237822.P2590802411386649179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237823 (n + 1) - A237869 (n + 1)

end

end A237822.P2590802411386649179

/-! ## A237822.P7764186149223440468

`A237823(n+1)+A057428(n)*A237869(n+1)`
-/

namespace A237822.P7764186149223440468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237823 (n + 1) + A057428 n * A237869 (n + 1)

end

end A237822.P7764186149223440468

/-! ## A237822.P1732518732867179212

`A237870(n+1)+A237823(n+1)-A237871(n+1)`
-/

namespace A237822.P1732518732867179212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237870 (n + 1) + A237823 (n + 1) - A237871 (n + 1)

end

end A237822.P1732518732867179212

/-!
# A237823: Number of partitions of n such that (greatest part) + (least part) <= number of parts.

The programs for A237823, there is no canonical definition to state claims against.
-/

/-! ## A237823.P10176098949921112428

`Δ[A000070(n)]-A237870(n+1)`
-/

namespace A237823.P10176098949921112428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237870 (n + 1)

end

end A237823.P10176098949921112428

/-! ## A237823.P14300531696861993729

`record[A035363(n)]-A237870(n+1)`
-/

namespace A237823.P14300531696861993729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237870 (n + 1)

end

end A237823.P14300531696861993729

/-! ## A237823.P437410443437672020

`record[A035377(n)]-A237870(n+1)`
-/

namespace A237823.P437410443437672020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237870 (n + 1)

end

end A237823.P437410443437672020

/-! ## A237823.P2481869762213477988

`record[A035444(n)]-A237870(n+1)`
-/

namespace A237823.P2481869762213477988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237870 (n + 1)

end

end A237823.P2481869762213477988

/-! ## A237823.P3176000113932855487

`A237869(n+1)+A237822(n+1)`
-/

namespace A237823.P3176000113932855487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237869 (n + 1) + A237822 (n + 1)

end

end A237823.P3176000113932855487

/-! ## A237823.P11765514277487231754

`A237871(n+1)+A237822(n+1)-A237870(n+1)`
-/

namespace A237823.P11765514277487231754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237871 (n + 1) + A237822 (n + 1) - A237870 (n + 1)

end

end A237823.P11765514277487231754

/-!
# A237824: Number of partitions of n such that 2*(least part) >= greatest part.

The programs for A237824, there is no canonical definition to state claims against.
-/

/-! ## A237824.P5594276869158076982

`A118096(n+1)+A053263(n)`
-/

namespace A237824.P5594276869158076982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118096 (n + 1) + A053263 n

end

end A237824.P5594276869158076982

/-! ## A237824.P16271295665015232731

`A118096(n+1)+A053265(n)-A053257(2*n+1)`
-/

namespace A237824.P16271295665015232731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118096 (n + 1) + (A053265 n - A053257 (2 * n + 1))

end

end A237824.P16271295665015232731

/-! ## A237824.P16469279681935134483

`A118096(n+1)+A053261(2*n+1)-A053257(2*n+1)`
-/

namespace A237824.P16469279681935134483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118096 (n + 1) + (A053261 (2 * n + 1) - A053257 (2 * n + 1))

end

end A237824.P16469279681935134483

/-! ## A237824.P11753435684750601286

`Δ[A000070(n)]-A237820(n+1)`
-/

namespace A237824.P11753435684750601286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237820 (n + 1)

end

end A237824.P11753435684750601286

/-! ## A237824.P8514701046677293455

`record[A035363(n)]-A237820(n+1)`
-/

namespace A237824.P8514701046677293455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237820 (n + 1)

end

end A237824.P8514701046677293455

/-! ## A237824.P8216190598575092322

`A237821(n+1)+A053263(n)-A237820(n+1)`
-/

namespace A237824.P8216190598575092322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237821 (n + 1) + A053263 n - A237820 (n + 1)

end

end A237824.P8216190598575092322

/-! ## A237824.P5669254322353150509

`A363211(n+1)+A393972(n+1)-A237820(n+1)`
-/

namespace A237824.P5669254322353150509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363211 (n + 1) + (A393972 (n + 1) - A237820 (n + 1))

end

end A237824.P5669254322353150509

/-! ## A237824.P9615903722824554631

`A393097(n+1)+A393973(n+1)-A237820(n+1)`
-/

namespace A237824.P9615903722824554631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393097 (n + 1) + (A393973 (n + 1) - A237820 (n + 1))

end

end A237824.P9615903722824554631

/-!
# A237825: Number of partitions of n such that 3*(least part) = greatest part.

The programs for A237825, there is no canonical definition to state claims against.
-/

/-! ## A237825.P3134987302207159549

`A393973(n+1)-A393972(n+1)`
-/

namespace A237825.P3134987302207159549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393973 (n + 1) - A393972 (n + 1)

end

end A237825.P3134987302207159549

/-! ## A237825.P3761197085220903630

`A363211(n+1)-A393097(n+1)`
-/

namespace A237825.P3761197085220903630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363211 (n + 1) - A393097 (n + 1)

end

end A237825.P3761197085220903630

/-! ## A237825.P7896477910697232730

`A000041(n+1)-A393972(n+1)-A393097(n+1)`
-/

namespace A237825.P7896477910697232730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A393972 (n + 1) - A393097 (n + 1)

end

end A237825.P7896477910697232730

/-! ## A237825.P11597814733007361989

`∑[A037901(A294640(n)²)]`
-/

namespace A237825.P11597814733007361989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037901 (A294640 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237825.P11597814733007361989

/-! ## A237825.P15669908817307511103

`∑[A087436(A286378(n)!)]`
-/

namespace A237825.P15669908817307511103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (Nat.factorial (A286378 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237825.P15669908817307511103

/-!
# A237826: Number of partitions of n such that 4*(least part) = greatest part.

The programs for A237826, there is no canonical definition to state claims against.
-/

/-! ## A237826.P13381138759124298700

`floor((A330640(n)-A061395(A000079(n)))/4)`
-/

namespace A237826.P13381138759124298700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330640 n - A061395 (A000079 n).toNat : ℚ) / 4⌋

end

end A237826.P13381138759124298700

/-! ## A237826.P11986455383238815477

`A002265(A330640(n)-A061395(A000079(n)))`
-/

namespace A237826.P11986455383238815477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A330640 n - A061395 (A000079 n).toNat).toNat

end

end A237826.P11986455383238815477

/-! ## A237826.P6536262349938235702

`A002265(A330640(n)-A173557(A000079(n)))`
-/

namespace A237826.P6536262349938235702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A330640 n - A173557 (A000079 n).toNat).toNat

end

end A237826.P6536262349938235702

/-! ## A237826.P11431676421439325816

`∑[A004524(A303399(A285263(n)))]`
-/

namespace A237826.P11431676421439325816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A303399 (A285263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237826.P11431676421439325816

/-! ## A237826.P14534684991435247286

`A118759(A001401(n))-A020702(n)`
-/

namespace A237826.P14534684991435247286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A001401 n).toNat - A020702 n

end

end A237826.P14534684991435247286

/-!
# A237827: Number of partitions of n such that 5*(least part) = greatest part.

The programs for A237827, there is no canonical definition to state claims against.
-/

/-! ## A237827.P6852586856692832132

`round(A045996(n+1)/A165455(A273707(n)))`
-/

namespace A237827.P6852586856692832132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045996 (n + 1) : ℚ) / (A165455 (A273707 n).toNat : ℚ))

end

end A237827.P6852586856692832132

/-!
# A237828: Number of partitions of n such that 2*(least part) + 1 = greatest part.

The programs for A237828, there is no canonical definition to state claims against.
-/

/-! ## A237828.P11111080163418658233

`A124760(A129339(n+1))+A008133(n)`
-/

namespace A237828.P11111080163418658233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A129339 (n + 1)).toNat + A008133 n

end

end A237828.P11111080163418658233

/-! ## A237828.P1658345484516946525

`A048766(n*A029300(n²))`
-/

namespace A237828.P1658345484516946525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((n : ℤ) * A029300 (n ^ 2)).toNat

end

end A237828.P1658345484516946525

/-!
# A237829: Number of partitions of n such that 2*(least part) - 1 = greatest part.

The programs for A237829, there is no canonical definition to state claims against.
-/

/-! ## A237829.P13978319513881000872

`A053263(floor(acot(n)+n))-A053262(n)`
-/

namespace A237829.P13978319513881000872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053263 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - A053262 n

end

end A237829.P13978319513881000872

/-! ## A237829.P4273022911443918403

`A053263(round(acot(n)+n))-A053262(n)`
-/

namespace A237829.P4273022911443918403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053263 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - A053262 n

end

end A237829.P4273022911443918403

/-! ## A237829.P13832875183150830098

`A053263(abs(1-n)+1)-A053262(n)`
-/

namespace A237829.P13832875183150830098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053263 (|1 - (n : ℤ)| + 1).toNat - A053262 n

end

end A237829.P13832875183150830098

/-! ## A237829.P4098816112771441966

`floor(sqrt((A053262(n)-A053263(n))²+1))`
-/

namespace A237829.P4098816112771441966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A053262 n - A053263 n) ^ 2 + 1)

end

end A237829.P4098816112771441966

/-! ## A237829.P8140500417393606486

`A000007(n)+A053263(n)-A053262(n)`
-/

namespace A237829.P8140500417393606486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A053263 n - A053262 n)

end

end A237829.P8140500417393606486

/-! ## A237829.P16014194129464501581

`val(A000040(n+1), 2)+A053263(n)-A053262(n)`
-/

namespace A237829.P16014194129464501581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (A053263 n - A053262 n)

end

end A237829.P16014194129464501581

/-! ## A237829.P14026805583149638966

`A008683(9*a(n-1))+A053263(n)-A053262(n)` with `a(0)=1`
-/

namespace A237829.P14026805583149638966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (9 * a (n - 1)).toNat + (A053263 n - A053262 n)

end

end A237829.P14026805583149638966

/-! ## A237829.P2613262586269952234

`∏{d}[A053262(n)-A053263(n), A014963(#)]`
-/

namespace A237829.P2613262586269952234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053262 n - A053263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A237829.P2613262586269952234

/-! ## A237829.P3118266957649895959

`A254667(A053263(n))-A053262(n)`
-/

namespace A237829.P3118266957649895959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A053263 n).toNat - A053262 n

end

end A237829.P3118266957649895959

/-! ## A237829.P94225337412893216

`A239456(n+1)+1`
-/

namespace A237829.P94225337412893216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239456 (n + 1) + 1

end

end A237829.P94225337412893216

/-!
# A237830: Number of partitions of n such that (greatest part) - (least part) < number of parts.

The programs for A237830, there is no canonical definition to state claims against.
-/

/-! ## A237830.P13409488245270903468

`A237831(n+1)-A237832(n+1)`
-/

namespace A237830.P13409488245270903468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237831 (n + 1) - A237832 (n + 1)

end

end A237830.P13409488245270903468

/-! ## A237830.P3660217971242635474

`A000041(n+1)-(A237833(n+1)+A237832(n+1))`
-/

namespace A237830.P3660217971242635474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A237833 (n + 1) + A237832 (n + 1))

end

end A237830.P3660217971242635474

/-! ## A237830.P11067333059489045726

`∑[A129528(n)]`
-/

namespace A237830.P11067333059489045726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237830.P11067333059489045726

/-! ## A237830.P15178225467789334731

`A129528(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A237830.P15178225467789334731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129528 n + a (A023443 n).toNat

end

end A237830.P15178225467789334731

/-! ## A237830.P15337184420777072037

`Δ[A000070(n)]-A237834(n+1)`
-/

namespace A237830.P15337184420777072037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237834 (n + 1)

end

end A237830.P15337184420777072037

/-! ## A237830.P1527555252147131807

`record[A035363(n)]-A237834(n+1)`
-/

namespace A237830.P1527555252147131807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237834 (n + 1)

end

end A237830.P1527555252147131807

/-! ## A237830.P3133898571780802325

`record[A035377(n)]-A237834(n+1)`
-/

namespace A237830.P3133898571780802325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237834 (n + 1)

end

end A237830.P3133898571780802325

/-! ## A237830.P8866253978127185057

`record[A035444(n)]-A237834(n+1)`
-/

namespace A237830.P8866253978127185057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237834 (n + 1)

end

end A237830.P8866253978127185057

/-! ## A237830.P8302571721320342542

`record[A114099(n)]-A237834(n+1)`
-/

namespace A237830.P8302571721320342542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237834 (n + 1)

end

end A237830.P8302571721320342542

/-! ## A237830.P15943848099534562595

`A000041(n+1)-A237834(n+1)`
-/

namespace A237830.P15943848099534562595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237834 (n + 1)

end

end A237830.P15943848099534562595

/-!
# A237831: Number of partitions of n such that (greatest part) - (least part) <= number of parts.

The programs for A237831, there is no canonical definition to state claims against.
-/

/-! ## A237831.P3622567806598112428

`A237832(n+1)+A237830(n+1)`
-/

namespace A237831.P3622567806598112428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237832 (n + 1) + A237830 (n + 1)

end

end A237831.P3622567806598112428

/-! ## A237831.P2745167541844331259

`A000041(n+1)-A237833(n+1)`
-/

namespace A237831.P2745167541844331259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237833 (n + 1)

end

end A237831.P2745167541844331259

/-! ## A237831.P14016088075119461347

`A000065(n+1)+1-A237833(n+1)`
-/

namespace A237831.P14016088075119461347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A237833 (n + 1))

end

end A237831.P14016088075119461347

/-! ## A237831.P11287252063900711585

`Δ[A000070(n)]-A237833(n+1)`
-/

namespace A237831.P11287252063900711585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237833 (n + 1)

end

end A237831.P11287252063900711585

/-! ## A237831.P7081079913779826242

`A000070(n+1)-(A237833(n+1)+A000070(n))`
-/

namespace A237831.P7081079913779826242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A237833 (n + 1) + A000070 n)

end

end A237831.P7081079913779826242

/-! ## A237831.P2337508056935713385

`record[A035363(n)]-A237833(n+1)`
-/

namespace A237831.P2337508056935713385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237833 (n + 1)

end

end A237831.P2337508056935713385

/-! ## A237831.P14171814195635084361

`A035363(2*(n+1))-A237833(n+1)`
-/

namespace A237831.P14171814195635084361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A237833 (n + 1)

end

end A237831.P14171814195635084361

/-! ## A237831.P18015034976439688905

`record[A035444(n)]-A237833(n+1)`
-/

namespace A237831.P18015034976439688905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237833 (n + 1)

end

end A237831.P18015034976439688905

/-! ## A237831.P12780936785243663273

`record[A035377(n)]-A237833(n+1)`
-/

namespace A237831.P12780936785243663273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237833 (n + 1)

end

end A237831.P12780936785243663273

/-! ## A237831.P10452184473677885680

`record[A114099(n)]-A237833(n+1)`
-/

namespace A237831.P10452184473677885680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237833 (n + 1)

end

end A237831.P10452184473677885680

/-! ## A237831.P11015470131476934859

`A237832(n+1)+∑[A129528(n)]`
-/

namespace A237831.P11015470131476934859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237832 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237831.P11015470131476934859

/-!
# A237832: Number of partitions of n such that (greatest part) - (least part) = number of parts.

The programs for A237832, there is no canonical definition to state claims against.
-/

/-! ## A237832.P9136936662927910454

`A237831(n+1)-A237830(n+1)`
-/

namespace A237832.P9136936662927910454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237831 (n + 1) - A237830 (n + 1)

end

end A237832.P9136936662927910454

/-! ## A237832.P4639890159725087174

`A000041(n+1)-(A237833(n+1)+A237830(n+1))`
-/

namespace A237832.P4639890159725087174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A237833 (n + 1) + A237830 (n + 1))

end

end A237832.P4639890159725087174

/-! ## A237832.P1638860851994344920

`A000065(n+1)+1-A237833(n+1)-A237830(n+1)`
-/

namespace A237832.P1638860851994344920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A237833 (n + 1)) - A237830 (n + 1)

end

end A237832.P1638860851994344920

/-! ## A237832.P12319873178784496399

`Δ[A000070(n)]-(A237833(n+1)+A237830(n+1))`
-/

namespace A237832.P12319873178784496399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A237833 (n + 1) + A237830 (n + 1))

end

end A237832.P12319873178784496399

/-! ## A237832.P1679705641039005861

`record[A035363(n)]-(A237833(n+1)+A237830(n+1))`
-/

namespace A237832.P1679705641039005861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A237833 (n + 1) + A237830 (n + 1))

end

end A237832.P1679705641039005861

/-! ## A237832.P397856184986430654

`record[A035444(n)]-(A237833(n+1)+A237830(n+1))`
-/

namespace A237832.P397856184986430654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A237833 (n + 1) + A237830 (n + 1))

end

end A237832.P397856184986430654

/-! ## A237832.P1977160366698498609

`record[A114099(n)]-(A237833(n+1)+A237830(n+1))`
-/

namespace A237832.P1977160366698498609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A237833 (n + 1) + A237830 (n + 1))

end

end A237832.P1977160366698498609

/-! ## A237832.P12401725720334954993

`A000041(n+1)-A237833(n+1)-∑[A129528(n)]`
-/

namespace A237832.P12401725720334954993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237833 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237832.P12401725720334954993

/-! ## A237832.P10672709973781286454

`A000065(n+1)+1-A237833(n+1)-∑[A129528(n)]`
-/

namespace A237832.P10672709973781286454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A237833 (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237832.P10672709973781286454

/-! ## A237832.P9122043909302276118

`A035363(2*(n+1))-A237833(n+1)-∑[A129528(n)]`
-/

namespace A237832.P9122043909302276118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A237833 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237832.P9122043909302276118

/-!
# A237833: Number of partitions of n such that (greatest part) - (least part) > number of parts.

The programs for A237833, there is no canonical definition to state claims against.
-/

/-! ## A237833.P17460336961785446632

`A000041(n+1)-A237831(n+1)`
-/

namespace A237833.P17460336961785446632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237831 (n + 1)

end

end A237833.P17460336961785446632

/-! ## A237833.P14642436677639491733

`A000041(n+1)-(A237832(n+1)+A237830(n+1))`
-/

namespace A237833.P14642436677639491733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A237832 (n + 1) + A237830 (n + 1))

end

end A237833.P14642436677639491733

/-! ## A237833.P11963324443065502250

`∑[A187219(n+1)]-(A237832(n+1)+A237830(n+1))`
-/

namespace A237833.P11963324443065502250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A237832 (n + 1) + A237830 (n + 1))

end

end A237833.P11963324443065502250

/-! ## A237833.P12674715602785064720

`A000041(A000027(n+1))%(A237832(n+1)+A237830(n+1))`
-/

namespace A237833.P12674715602785064720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A000027 (n + 1)).toNat) (A237832 (n + 1) + A237830 (n + 1))

end

end A237833.P12674715602785064720

/-! ## A237833.P5344127848414629549

`A000070(n+1)-(A237831(n+1)+A000070(n))`
-/

namespace A237833.P5344127848414629549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A237831 (n + 1) + A000070 n)

end

end A237833.P5344127848414629549

/-! ## A237833.P9971988657938770422

`Δ[A000070(n)]-(A237832(n+1)+A237830(n+1))`
-/

namespace A237833.P9971988657938770422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A237832 (n + 1) + A237830 (n + 1))

end

end A237833.P9971988657938770422

/-! ## A237833.P3774479090663125356

`record[A035363(n)]-(A237832(n+1)+A237830(n+1))`
-/

namespace A237833.P3774479090663125356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A237832 (n + 1) + A237830 (n + 1))

end

end A237833.P3774479090663125356

/-! ## A237833.P10459542499122014712

`record[A035444(n)]-(A237832(n+1)+A237830(n+1))`
-/

namespace A237833.P10459542499122014712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A237832 (n + 1) + A237830 (n + 1))

end

end A237833.P10459542499122014712

/-! ## A237833.P7152978139817689118

`record[A035377(n)]-(A237832(n+1)+A237830(n+1))`
-/

namespace A237833.P7152978139817689118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A237832 (n + 1) + A237830 (n + 1))

end

end A237833.P7152978139817689118

/-! ## A237833.P17316212715132674337

`record[A114099(n)]-(A237832(n+1)+A237830(n+1))`
-/

namespace A237833.P17316212715132674337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A237832 (n + 1) + A237830 (n + 1))

end

end A237833.P17316212715132674337

/-! ## A237833.P12542936602945953632

`A000041(n+1)-(A237832(n+1)+∑[A129528(n)])`
-/

namespace A237833.P12542936602945953632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A237832 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237833.P12542936602945953632

/-!
# A237834: Number of partitions of n such that (greatest part) - (least part) >= number of parts.

The programs for A237834, there is no canonical definition to state claims against.
-/

/-! ## A237834.P6736608300884354157

`Δ[A000070(n)]-∑[A129528(n)]`
-/

namespace A237834.P6736608300884354157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A237834.P6736608300884354157

/-! ## A237834.P8458561271726556542

`record[A035363(n)]-∑[A129528(n)]`
-/

namespace A237834.P8458561271726556542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A237834.P8458561271726556542

/-! ## A237834.P9573933822853497193

`record[A035377(n)]-∑[A129528(n)]`
-/

namespace A237834.P9573933822853497193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A237834.P9573933822853497193

/-! ## A237834.P1354467883048610029

`record[A035444(n)]-∑[A129528(n)]`
-/

namespace A237834.P1354467883048610029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A237834.P1354467883048610029

/-! ## A237834.P11702643965877401952

`record[A114099(n)]-∑[A129528(n)]`
-/

namespace A237834.P11702643965877401952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A237834.P11702643965877401952

/-! ## A237834.P2548933641777015449

`A000041(n+1)-∑[A129528(n)]`
-/

namespace A237834.P2548933641777015449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237834.P2548933641777015449

/-! ## A237834.P9680171310689921019

`Δ[A000070(n)]-A237830(n+1)`
-/

namespace A237834.P9680171310689921019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237830 (n + 1)

end

end A237834.P9680171310689921019

/-! ## A237834.P12086516992905509602

`record[A035363(n)]-A237830(n+1)`
-/

namespace A237834.P12086516992905509602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237830 (n + 1)

end

end A237834.P12086516992905509602

/-! ## A237834.P18168557005982231519

`record[A035377(n)]-A237830(n+1)`
-/

namespace A237834.P18168557005982231519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237830 (n + 1)

end

end A237834.P18168557005982231519

/-! ## A237834.P1932666220176412472

`record[A035444(n)]-A237830(n+1)`
-/

namespace A237834.P1932666220176412472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237830 (n + 1)

end

end A237834.P1932666220176412472

/-!
# A237835: a(n) = n*(Pisano period of n) divided by (Pisano period of n^2).

The programs for A237835, there is no canonical definition to state claims against.
-/

/-! ## A237835.P5232092653373819030

`(n+1)/A237517(n+1)`
-/

namespace A237835.P5232092653373819030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A237517 (n + 1) : ℚ)

end

end A237835.P5232092653373819030

/-! ## A237835.P9079517646864754272

`(n+1)*A001175(n+1)/A237836(n+1)`
-/

namespace A237835.P9079517646864754272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A001175 (n + 1) : ℚ) / (A237836 (n + 1) : ℚ)

end

end A237835.P9079517646864754272

/-! ## A237835.P6532972755313607875

`(n+1)/floor(A237836(n+1)/(A001176(n+1)*A001177(n+1)))`
-/

namespace A237835.P6532972755313607875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊(A237836 (n + 1) : ℚ) / (A001176 (n + 1) * A001177 (n + 1) : ℚ)⌋ : ℚ)

end

end A237835.P6532972755313607875

/-! ## A237835.P4154413194229993057

`(n+1)*A237517(n+1)^A008683(A031933(n))`
-/

namespace A237835.P4154413194229993057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A237517 (n + 1) : ℚ) ^ (A008683 (A031933 n).toNat : ℤ)

end

end A237835.P4154413194229993057

/-! ## A237835.P17750937279978876283

`A234575(A237517(n+1)+A000217(n))`
-/

namespace A237835.P17750937279978876283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A237517 (n + 1) + A000217 n).toNat

end

end A237835.P17750937279978876283

/-! ## A237835.P3724503797447660243

`A234575(A000217(n)+A237836(n+1)/A001175(n+1))`
-/

namespace A237835.P3724503797447660243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (A237836 (n + 1) : ℚ) / (A001175 (n + 1) : ℚ))).toNat

end

end A237835.P3724503797447660243

/-! ## A237835.P5885747965096753667

`A051537(A237517(n+1)+∑[n])`
-/

namespace A237835.P5885747965096753667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A237517 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A237835.P5885747965096753667

/-! ## A237835.P17041207805225796883

`A010766(A237517(n+1)+A000217(n))`
-/

namespace A237835.P17041207805225796883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A237517 (n + 1) + A000217 n).toNat

end

end A237835.P17041207805225796883

/-! ## A237835.P1730866168242274308

`A054531(A237517(n+1)+A000217(n))`
-/

namespace A237835.P1730866168242274308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A237517 (n + 1) + A000217 n).toNat

end

end A237835.P1730866168242274308

/-! ## A237835.P5111396368155437355

`(n+1)/A001175((n+1)²)*A001175(n+1)`
-/

namespace A237835.P5111396368155437355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001175 ((n + 1) ^ 2) : ℚ) * (A001175 (n + 1) : ℚ)

end

end A237835.P5111396368155437355

/-! ## A237835.P9141262533209282323

`(n+1)*A001175(n+1)/A001175(A005563(n)+1)`
-/

namespace A237835.P9141262533209282323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A001175 (n + 1) : ℚ) / (A001175 (A005563 n + 1).toNat : ℚ))

end

end A237835.P9141262533209282323

/-!
# A237836: Pisano period of n^2.

The programs for A237836, there is no canonical definition to state claims against.
-/

/-! ## A237836.P11032369369013900500

`A001175((n+1)²)`
-/

namespace A237836.P11032369369013900500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 ((n + 1) ^ 2)

end

end A237836.P11032369369013900500

/-! ## A237836.P8996018987403584837

`A001175(n+1)*A237517(n+1)`
-/

namespace A237836.P8996018987403584837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1) * A237517 (n + 1)

end

end A237836.P8996018987403584837

/-! ## A237836.P17610938006845196268

`(n+1)*A001175(n+1)/A237835(n+1)`
-/

namespace A237836.P17610938006845196268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A001175 (n + 1) : ℚ) / (A237835 (n + 1) : ℚ))

end

end A237836.P17610938006845196268

/-! ## A237836.P11663531970825876951

`(A153881(n+1)+A096982(n+1))*A237517(n+1)`
-/

namespace A237836.P11663531970825876951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153881 (n + 1) + A096982 (n + 1)) * A237517 (n + 1)

end

end A237836.P11663531970825876951

/-! ## A237836.P3950137772922461999

`A001176(n+1)*A001177(n+1)*A237517(n+1)`
-/

namespace A237836.P3950137772922461999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1) * A001177 (n + 1) * A237517 (n + 1)

end

end A237836.P3950137772922461999

/-! ## A237836.P14275915700756192369

`lcm(A001177(n+1), A106291(n+1))*A237517(n+1)`
-/

namespace A237836.P14275915700756192369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001177 (n + 1)) (A106291 (n + 1)) : ℤ) * A237517 (n + 1)

end

end A237836.P14275915700756192369

/-! ## A237836.P15808111385340274773

`A060632(A060632(n))*A281230(n+1)*A237517(n+1)`
-/

namespace A237836.P15808111385340274773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A060632 n).toNat * A281230 (n + 1) * A237517 (n + 1)

end

end A237836.P15808111385340274773

/-! ## A237836.P16647081249677955357

`A020639(A000010(n+1))*A281230(n+1)*A237517(n+1)`
-/

namespace A237836.P16647081249677955357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A281230 (n + 1) * A237517 (n + 1)

end

end A237836.P16647081249677955357

/-! ## A237836.P15128365214316208423

`A020639(A008330(n+1))*A281230(n+1)*A237517(n+1)`
-/

namespace A237836.P15128365214316208423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008330 (n + 1)).toNat * A281230 (n + 1) * A237517 (n + 1)

end

end A237836.P15128365214316208423

/-! ## A237836.P8084208027728676145

`A060632(A060632(n))*A281230(n+1)*(n+1)/A237835(n+1)`
-/

namespace A237836.P8084208027728676145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060632 (A060632 n).toNat * A281230 (n + 1) : ℚ) * ((n + 1 : ℚ) / (A237835 (n + 1) : ℚ))

end

end A237836.P8084208027728676145

/-! ## A237836.P4408597606020594826

`A020639(A008330(n+1))*A281230(n+1)*(n+1)/A237835(n+1)`
-/

namespace A237836.P4408597606020594826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A008330 (n + 1)).toNat * A281230 (n + 1) : ℚ) * ((n + 1 : ℚ) / (A237835 (n + 1) : ℚ))

end

end A237836.P4408597606020594826

/-! ## A237836.P8853155516077000166

`A237517(n+1)*A376082(A022998(n+1))`
-/

namespace A237836.P8853155516077000166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237517 (n + 1) * A376082 (A022998 (n + 1)).toNat

end

end A237836.P8853155516077000166

/-! ## A237836.P8615334276449725760

`xor(1, xor(1, A001175((n+1)^2)))`
-/

namespace A237836.P8615334276449725760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A001175 ((n + 1) ^ 2)))

end

end A237836.P8615334276449725760

/-! ## A237836.P13386790931880331725

`lcm(n+1, A001175(A000290(n+1)))`
-/

namespace A237836.P13386790931880331725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001175 (A000290 (n + 1)).toNat)

end

end A237836.P13386790931880331725

/-! ## A237836.P17790550183089088834

`lcm(A001175(∑[2*n+1]), A079882(n))`
-/

namespace A237836.P17790550183089088834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001175 (∑ j ∈ Finset.range (n + 1), f1 j)) (A079882 n)

end

end A237836.P17790550183089088834

/-! ## A237836.P12023059172601661169

`A010059(A001316(n))+A001175(A000290(n+1))`
-/

namespace A237836.P12023059172601661169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A001316 n).toNat + A001175 (A000290 (n + 1)).toNat

end

end A237836.P12023059172601661169

/-!
# A237838: a(n) = |{0 < k <= n: the number of Sophie Germain primes among 1, ..., k*n is a Sophie Germain prime}|.

The programs for A237838, there is no canonical definition to state claims against.
-/

/-! ## A237838.P11890438870024911767

`A063962(A080854(n+1)-A339905(n+1))`
-/

namespace A237838.P11890438870024911767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A080854 (n + 1) - A339905 (n + 1)).toNat

end

end A237838.P11890438870024911767

/-! ## A237838.P6926885187326575444

`A165053(A072376(n)*A358373(3*n+4))`
-/

namespace A237838.P6926885187326575444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 (A072376 n * A358373 (3 * n + 4)).toNat

end

end A237838.P6926885187326575444

/-!
# A237839: a(n) = |{0 < k <= n: q = |{p <= k*n: p and p + 2 are both prime}| and q + 2 are both prime}|.

The programs for A237839, there is no canonical definition to state claims against.
-/

/-! ## A237839.P17099963865958437641

`A060128(floor(n/3)*A276076(3*n+2))`
-/

namespace A237839.P17099963865958437641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (⌊(n : ℚ) / 3⌋ * A276076 (3 * n + 2)).toNat

end

end A237839.P17099963865958437641

/-! ## A237839.P3130840739625716767

`A067029(A008486(Δ[A098576(n)]))`
-/

namespace A237839.P3130840739625716767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A008486 (f1 (n + 1) - f1 n).toNat).toNat

end

end A237839.P3130840739625716767

/-! ## A237839.P203769797659485231

`xor(A000120(n), A266666(A276087(n)))`
-/

namespace A237839.P203769797659485231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000120 n) (A266666 (A276087 n).toNat)

end

end A237839.P203769797659485231

/-! ## A237839.P7296378992090838362

`xor(A000120(n), A347579(A017017(n)))`
-/

namespace A237839.P7296378992090838362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000120 n) (A347579 (A017017 n).toNat)

end

end A237839.P7296378992090838362

/-! ## A237839.P3049205161536575679

`A001222(Δ[A327066(n)%A155398(n+6)])`
-/

namespace A237839.P3049205161536575679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327066 n) (A155398 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A237839.P3049205161536575679

/-!
# A237840: a(n) = |{0 < k <= n: the number of twin prime pairs not exceeding k*n is a square}|.

The programs for A237840, there is no canonical definition to state claims against.
-/

/-! ## A237840.P12752154927860715291

`A005361(A010846(2*n+5)*A059675(n+1))`
-/

namespace A237840.P12752154927860715291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A010846 (2 * n + 5) * A059675 (n + 1)).toNat

end

end A237840.P12752154927860715291

/-! ## A237840.P320594216975631906

`A030336(A358403(3*n+4)+A141303(3*n+1))`
-/

namespace A237840.P320594216975631906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030336 (A358403 (3 * n + 4) + A141303 (3 * n + 1)).toNat

end

end A237840.P320594216975631906

/-! ## A237840.P4645908832119596584

`A228351(A280451(n)+A209365(n+1))`
-/

namespace A237840.P4645908832119596584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A280451 n + A209365 (n + 1)).toNat

end

end A237840.P4645908832119596584

/-! ## A237840.P331946195042007780

`A156352(A269494(n+1)+A003056(2*n))`
-/

namespace A237840.P331946195042007780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156352 (A269494 (n + 1) + A003056 (2 * n)).toNat

end

end A237840.P331946195042007780

/-! ## A237840.P13385957873877798287

`A239001(A107802(n+1)+n)`
-/

namespace A237840.P13385957873877798287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239001 (A107802 (n + 1) + (n : ℤ)).toNat

end

end A237840.P13385957873877798287

/-!
# A237842: Number of (n+1)X(n+1) 0..2 arrays with the maximum minus the lower median of every 2X2 subblock equal.

The programs for A237842, there is no canonical definition to state claims against.
-/

/-! ## A237842.P5326025933978801940

`A237850((n+1)²+n²)`
-/

namespace A237842.P5326025933978801940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 ((n + 1) ^ 2 + n ^ 2)

end

end A237842.P5326025933978801940

/-!
# A237843: Number of (n+1) X (1+1) 0..2 arrays with the maximum minus the lower median of every 2 X 2 subblock equal.

The programs for A237843, there is no canonical definition to state claims against.
-/

/-! ## A237843.P6583234530410699960

`A237850(∑[n]+1)`
-/

namespace A237843.P6583234530410699960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237843.P6583234530410699960

/-! ## A237843.P6684468148606620362

`or(1, A237850(A000124(n)))`
-/

namespace A237843.P6684468148606620362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237850 (A000124 n).toNat)

end

end A237843.P6684468148606620362

/-! ## A237843.P12441419599579260800

`record[A010054(n)*A237850(n+1)]`
-/

namespace A237843.P12441419599579260800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237843.P12441419599579260800

/-! ## A237843.P4850570970338103992

`record[root(A237850(n+1), A013612(n))]`
-/

namespace A237843.P4850570970338103992
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237850 (n + 1) : ℝ) ^ (1 / (A013612 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237843.P4850570970338103992

/-! ## A237843.P6363245305221011913

`record[root(A237850(n+1), A026780(n))]`
-/

namespace A237843.P6363245305221011913
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237850 (n + 1) : ℝ) ^ (1 / (A026780 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237843.P6363245305221011913

/-!
# A237844: Number of (n+1)X(2+1) 0..2 arrays with the maximum minus the lower median of every 2X2 subblock equal.

The programs for A237844, there is no canonical definition to state claims against.
-/

/-! ## A237844.P18354530313614840264

`A237850(∑[n+1]+2)`
-/

namespace A237844.P18354530313614840264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237844.P18354530313614840264

/-! ## A237844.P17127704586646617080

`or(1, A237850(A133263(n+1)))`
-/

namespace A237844.P17127704586646617080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237850 (A133263 (n + 1)).toNat)

end

end A237844.P17127704586646617080

/-! ## A237844.P9928705105738428016

`record[A010054(n)*A237850(n+2)]`
-/

namespace A237844.P9928705105738428016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237850 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237844.P9928705105738428016

/-! ## A237844.P2691213486034500284

`record[root(A237850(n+2), A013612(n))]`
-/

namespace A237844.P2691213486034500284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237850 (n + 2) : ℝ) ^ (1 / (A013612 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237844.P2691213486034500284

/-! ## A237844.P7184123000468280876

`record[A237850(A133263(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A237844.P7184123000468280876
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A133263 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237844.P7184123000468280876

/-!
# A237845: Number of (n+1)X(3+1) 0..2 arrays with the maximum minus the lower median of every 2X2 subblock equal.

The programs for A237845, there is no canonical definition to state claims against.
-/

/-! ## A237845.P15755390549252588800

`A237850(∑[n+2]+4)`
-/

namespace A237845.P15755390549252588800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237845.P15755390549252588800

/-! ## A237845.P13750927570533814959

`record[A237850(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A237845.P13750927570533814959
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237845.P13750927570533814959

/-! ## A237845.P16528114804452200789

`A237850(A167614(n+1))+A185246(n)`
-/

namespace A237845.P16528114804452200789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A167614 (n + 1)).toNat + A185246 n

end

end A237845.P16528114804452200789

/-! ## A237845.P2510843539987069556

`A237850(A167614(n+1))+A185284(n)`
-/

namespace A237845.P2510843539987069556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A167614 (n + 1)).toNat + A185284 n

end

end A237845.P2510843539987069556

/-! ## A237845.P14835117990520771797

`A014963(4*n+6)*A237850(A152950(n+3))`
-/

namespace A237845.P14835117990520771797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A237850 (A152950 (n + 3)).toNat

end

end A237845.P14835117990520771797

/-!
# A237846: Number of (n+1)X(4+1) 0..2 arrays with the maximum minus the lower median of every 2X2 subblock equal.

The programs for A237846, there is no canonical definition to state claims against.
-/

/-! ## A237846.P12462803289446737530

`A237850(A374004(n+1))`
-/

namespace A237846.P12462803289446737530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A374004 (n + 1)).toNat

end

end A237846.P12462803289446737530

/-! ## A237846.P10278840824325521261

`A237850(A052905(n)+9)`
-/

namespace A237846.P10278840824325521261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A052905 n + 9).toNat

end

end A237846.P10278840824325521261

/-! ## A237846.P15645401656751931525

`A237850(A055999(n)+10)`
-/

namespace A237846.P15645401656751931525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A055999 n + 10).toNat

end

end A237846.P15645401656751931525

/-! ## A237846.P9446268491736615801

`A237850(A167614(n+2)+1)`
-/

namespace A237846.P9446268491736615801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A167614 (n + 2) + 1).toNat

end

end A237846.P9446268491736615801

/-! ## A237846.P1798907716068474633

`A237850(A141214(n+1))`
-/

namespace A237846.P1798907716068474633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A141214 (n + 1)).toNat

end

end A237846.P1798907716068474633

/-!
# A237847: Number of (n+1) X (5+1) 0..2 arrays with the maximum minus the lower median of every 2 X 2 subblock equal.

The programs for A237847, there is no canonical definition to state claims against.
-/

/-! ## A237847.P10717864103671994615

`A237850(A374005(n+1))`
-/

namespace A237847.P10717864103671994615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A374005 (n + 1)).toNat

end

end A237847.P10717864103671994615

/-! ## A237847.P4813518839620122748

`A237850(A155212(n)+13)`
-/

namespace A237847.P4813518839620122748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A155212 n + 13).toNat

end

end A237847.P4813518839620122748

/-! ## A237847.P222460354647673636

`A237850(A051936(n+4)+14)`
-/

namespace A237847.P222460354647673636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A051936 (n + 4) + 14).toNat

end

end A237847.P222460354647673636

/-! ## A237847.P16131246739702903114

`A237850(eq[6, A131818(n+1)])`
-/

namespace A237847.P16131246739702903114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237847.P16131246739702903114

/-! ## A237847.P17066989721531897706

`A237850(A056115(n)+11)`
-/

namespace A237847.P17066989721531897706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A056115 n + 11).toNat

end

end A237847.P17066989721531897706

/-!
# A237848: Number of (n+1) X (6+1) 0..2 arrays with the maximum minus the lower median of every 2 X 2 subblock equal.

The programs for A237848, there is no canonical definition to state claims against.
-/

/-! ## A237848.P11976826134813891794

`A237850(A374007(n+1))`
-/

namespace A237848.P11976826134813891794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A374007 (n + 1)).toNat

end

end A237848.P11976826134813891794

/-! ## A237848.P8925053068273107337

`A237850(A056115(n)+21)`
-/

namespace A237848.P8925053068273107337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (A056115 n + 21).toNat

end

end A237848.P8925053068273107337

/-! ## A237848.P6391348206113277639

`A237850(eq[5, A193592(n)])`
-/

namespace A237848.P6391348206113277639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237848.P6391348206113277639

/-!
# A237849: Number of (n+1) X (7+1) 0..2 arrays with the maximum minus the lower median of every 2 X 2 subblock equal.

The programs for A237849, there is no canonical definition to state claims against.
-/

/-! ## A237849.P12251055306834567708

`A237850(eq[6, A193592(n)])`
-/

namespace A237849.P12251055306834567708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237849.P12251055306834567708

/-!
# A237851: a(1)=1; a(n) is the smallest integer not yet in the sequence divisible by all nonzero digits of a(n-1).

The programs for A237851, there is no canonical definition to state claims against.
-/

/-! ## A237851.P4095925499900024397

`A390054(n+1)+A030201(A061561(n))`
-/

namespace A237851.P4095925499900024397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390054 (n + 1) + A030201 (A061561 n).toNat

end

end A237851.P4095925499900024397

/-! ## A237851.P2947277795563436588

`A390054(A180410(A007088(n+1))+n)`
-/

namespace A237851.P2947277795563436588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390054 (A180410 (A007088 (n + 1)).toNat + (n : ℤ)).toNat

end

end A237851.P2947277795563436588

/-! ## A237851.P13713406587174520122

`A329900(A001045(n+2))*A390054(n+1)`
-/

namespace A237851.P13713406587174520122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A001045 (n + 2)).toNat * A390054 (n + 1)

end

end A237851.P13713406587174520122

/-! ## A237851.P8073637204243202010

`lcm(A051953(A200924(n+1)), A390054(n+1))`
-/

namespace A237851.P8073637204243202010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051953 (A200924 (n + 1)).toNat) (A390054 (n + 1))

end

end A237851.P8073637204243202010

/-! ## A237851.P6726077453202000266

`A390054(n+1)+A333487(A253249(2*(n+2)))`
-/

namespace A237851.P6726077453202000266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390054 (n + 1) + A333487 (A253249 (2 * (n + 2))).toNat

end

end A237851.P6726077453202000266

/-!
# A237852: Number of (n+1)X(n+1) 0..1 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A237852, there is no canonical definition to state claims against.
-/

/-! ## A237852.P16613588645682428329

`A237859(∑[4*n]+1)`
-/

namespace A237852.P16613588645682428329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237852.P16613588645682428329

/-! ## A237852.P2010041715262638632

`lcm(2, A237859(A001844(n)))`
-/

namespace A237852.P2010041715262638632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237859 (A001844 n).toNat)

end

end A237852.P2010041715262638632

/-! ## A237852.P1919985905244312871

`record[A003982(n)*A237859(n+1)]`
-/

namespace A237852.P1919985905244312871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A237859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237852.P1919985905244312871

/-! ## A237852.P8211833951978172507

`record[gcd(A114327(n), A237859(n+1))]`
-/

namespace A237852.P8211833951978172507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A237859 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237852.P8211833951978172507

/-! ## A237852.P16692146469459652071

`record[root(A237859(n+1), A089913(n+1))]`
-/

namespace A237852.P16692146469459652071
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237859 (n + 1) : ℝ) ^ (1 / (A089913 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237852.P16692146469459652071

/-!
# A237853: Number of (n+1) X (2+1) 0..1 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A237853, the canonical program `A237853.P9952752129430845637` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237853 has offset 1).

The definition of A237853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237853.P206673922582933300

`ogf((4+2x+7x^2+3x^3+x^4)/(1-3x+2x^2-4x^3-2x^4-x^5))`
-/

namespace A237853.P206673922582933300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 7, 3, 1] [1, -3, 2, -4, -2, -1] n

end

end A237853.P206673922582933300

namespace A237853

/-- `ogf((4+2x+7x^2+3x^3+x^4)/(1-3x+2x^2-4x^3-2x^4-x^5))` -/
def P206673922582933300.Spec : Prop :=
  ∀ n, P206673922582933300.a n = A237853 (n + 1)

end A237853

/-! ## A237853.P9952752129430845637

`3*a(n-1)-2*a(n-2)+4*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=4, a(1)=14, a(2)=41, a(3)=114, a(4)=325`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A237853

/-- `3*a(n-1)-2*a(n-2)+4*a(n-3)+2*a(n-4)+a(n-5)` -/
def P9952752129430845637.Spec : Prop :=
  ∀ n, P9952752129430845637.a n = A237853 (n + 1)

theorem P9952752129430845637.correct : P9952752129430845637.Spec := by
  intro n
  simp only [A237853, Nat.add_sub_cancel]

end A237853

/-! ## A237853.P4403704897035727848

`A237859(∑[n+1]+2)`
-/

namespace A237853.P4403704897035727848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237853.P4403704897035727848

namespace A237853

/-- `A237859(∑[n+1]+2)` -/
def P4403704897035727848.Spec : Prop :=
  ∀ n, P4403704897035727848.a n = A237853 (n + 1)

end A237853

/-! ## A237853.P10964535123640870783

`record[A237859(A133263(abs(1-n)))]`
-/

namespace A237853.P10964535123640870783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237853.P10964535123640870783

namespace A237853

/-- `record[A237859(A133263(abs(1-n)))]` -/
def P10964535123640870783.Spec : Prop :=
  ∀ n, P10964535123640870783.a n = A237853 (n + 1)

end A237853

/-! ## A237853.P3738111933625783363

`gcd(A000038(n)², A237859(A000096(n+1)))`
-/

namespace A237853.P3738111933625783363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A237859 (A000096 (n + 1)).toNat)

end

end A237853.P3738111933625783363

namespace A237853

/-- `gcd(A000038(n)², A237859(A000096(n+1)))` -/
def P3738111933625783363.Spec : Prop :=
  ∀ n, (P3738111933625783363.a n : ℤ) = A237853 (n + 1)

end A237853

/-!
# A237854: Number of (n+1)X(3+1) 0..1 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A237854, there is no canonical definition to state claims against.
-/

/-! ## A237854.P6665138916983364162

`A237859(∑[n+2]+4)`
-/

namespace A237854.P6665138916983364162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237854.P6665138916983364162

/-! ## A237854.P5461327644816774048

`A237859(A046691(n)+7)+char[27]`
-/

namespace A237854.P5461327644816774048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237854.P5461327644816774048

/-! ## A237854.P11259995945798594974

`A237859(A055998(n)+6)+char[47]`
-/

namespace A237854.P11259995945798594974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237854.P11259995945798594974

/-! ## A237854.P10798846349466472850

`or(A000007(n), A237859(A046691(n)+7))`
-/

namespace A237854.P10798846349466472850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A237859 (A046691 n + 7).toNat)

end

end A237854.P10798846349466472850

/-! ## A237854.P11044928628153425333

`A003415(A020639(n+2))*A237859(A046691(n)+7)`
-/

namespace A237854.P11044928628153425333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A020639 (n + 2)).toNat * A237859 (A046691 n + 7).toNat

end

end A237854.P11044928628153425333

/-!
# A237855: Number of (n+1)X(4+1) 0..1 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A237855, there is no canonical definition to state claims against.
-/

/-! ## A237855.P6382078539095737391

`A237859(A141214(n)+7)`
-/

namespace A237855.P6382078539095737391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A141214 n + 7).toNat

end

end A237855.P6382078539095737391

/-! ## A237855.P6432201511683046891

`A237859(A052905(n)+9)`
-/

namespace A237855.P6432201511683046891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A052905 n + 9).toNat

end

end A237855.P6432201511683046891

/-! ## A237855.P15389156582941943942

`A237859(A167614(n+2)+1)`
-/

namespace A237855.P15389156582941943942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A167614 (n + 2) + 1).toNat

end

end A237855.P15389156582941943942

/-! ## A237855.P8073663098104478128

`A237859(A112355(n+1)+4)`
-/

namespace A237855.P8073663098104478128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A112355 (n + 1) + 4).toNat

end

end A237855.P8073663098104478128

/-! ## A237855.P233393814915153118

`A237859(eq[5, A131818(n+1)])`
-/

namespace A237855.P233393814915153118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237855.P233393814915153118

/-!
# A237856: Number of (n+1)X(5+1) 0..1 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A237856, there is no canonical definition to state claims against.
-/

/-! ## A237856.P1900569350607095352

`A237859(A167499(n+3))`
-/

namespace A237856.P1900569350607095352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A167499 (n + 3)).toNat

end

end A237856.P1900569350607095352

/-! ## A237856.P3640704082392717337

`A237859(A155212(n)+13)`
-/

namespace A237856.P3640704082392717337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A155212 n + 13).toNat

end

end A237856.P3640704082392717337

/-! ## A237856.P2856108652697127874

`A237859(A056000(n)+15)`
-/

namespace A237856.P2856108652697127874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A056000 n + 15).toNat

end

end A237856.P2856108652697127874

/-! ## A237856.P10418408234042314268

`A237859(eq[6, A131818(n+1)])`
-/

namespace A237856.P10418408234042314268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237856.P10418408234042314268

/-! ## A237856.P6819274583506688484

`A237859(A374005(n+1))`
-/

namespace A237856.P6819274583506688484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A374005 (n + 1)).toNat

end

end A237856.P6819274583506688484

/-!
# A237857: Number of (n+1)X(6+1) 0..1 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A237857, there is no canonical definition to state claims against.
-/

/-! ## A237857.P11390171847028316585

`A237859(eq[7, A131818(n+1)])`
-/

namespace A237857.P11390171847028316585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237857.P11390171847028316585

/-! ## A237857.P2354778401787467452

`A237859(A374007(n+1))`
-/

namespace A237857.P2354778401787467452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A374007 (n + 1)).toNat

end

end A237857.P2354778401787467452

/-! ## A237857.P6652917350615413230

`A237859(A052905(n+3))`
-/

namespace A237857.P6652917350615413230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A052905 (n + 3)).toNat

end

end A237857.P6652917350615413230

/-! ## A237857.P15377164417116353544

`A237859(eq[3, A219347(n)])`
-/

namespace A237857.P15377164417116353544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237857.P15377164417116353544

/-! ## A237857.P14105982210031409685

`A237859(eq[5, A193592(n)])`
-/

namespace A237857.P14105982210031409685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237857.P14105982210031409685

/-!
# A237858: Number of (n+1)X(7+1) 0..1 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A237858, there is no canonical definition to state claims against.
-/

/-! ## A237858.P14871392193964223382

`A237859(A000124(n+6)+6)`
-/

namespace A237858.P14871392193964223382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A000124 (n + 6) + 6).toNat

end

end A237858.P14871392193964223382

/-! ## A237858.P296980762302674703

`A237859(A000096(n+5)+8)`
-/

namespace A237858.P296980762302674703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A000096 (n + 5) + 8).toNat

end

end A237858.P296980762302674703

/-! ## A237858.P6420757591045689184

`A237859(eq[8, A131818(n+1)])`
-/

namespace A237858.P6420757591045689184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237858.P6420757591045689184

/-! ## A237858.P17535257934052691911

`A237859(A374008(n+1))`
-/

namespace A237858.P17535257934052691911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A374008 (n + 1)).toNat

end

end A237858.P17535257934052691911

/-! ## A237858.P4254691172400724300

`A237859(A055999(n+4))`
-/

namespace A237858.P4254691172400724300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A055999 (n + 4)).toNat

end

end A237858.P4254691172400724300

/-!
# A237859: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A237859, there is no canonical definition to state claims against.
-/

/-! ## A237859.P4790869579714292524

`A189650(A219324(n+1))+1+n`
-/

namespace A237859.P4790869579714292524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A219324 (n + 1)).toNat + 1 + (n : ℤ)

end

end A237859.P4790869579714292524

/-! ## A237859.P10505964571310273277

`A231829(n+1)+A006928(A000244(n))`
-/

namespace A237859.P10505964571310273277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (n + 1) + A006928 (A000244 n).toNat

end

end A237859.P10505964571310273277

/-! ## A237859.P2265538811698510793

`A287151(n+1)+A005361(A002135(n))`
-/

namespace A237859.P2265538811698510793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287151 (n + 1) + A005361 (A002135 n).toNat

end

end A237859.P2265538811698510793

/-! ## A237859.P7998403605892136414

`A293630(A001835(n))+A287151(n+1)`
-/

namespace A237859.P7998403605892136414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293630 (A001835 n).toNat + A287151 (n + 1)

end

end A237859.P7998403605892136414

/-! ## A237859.P9265660238986117494

`A287151(n+1)+A244226(A062272(n))`
-/

namespace A237859.P9265660238986117494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287151 (n + 1) + A244226 (A062272 n).toNat

end

end A237859.P9265660238986117494

/-!
# A237861: Number of (n+1)X(1+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237861, there is no canonical definition to state claims against.
-/

/-! ## A237861.P17553159495250594807

`A237868(∑[n]+1)`
-/

namespace A237861.P17553159495250594807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237861.P17553159495250594807

/-! ## A237861.P9938857404660912860

`record[A237868(n+1)/A168551(n)]`
-/

namespace A237861.P9938857404660912860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237868 (n + 1) : ℚ) / (A168551 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237861.P9938857404660912860

/-! ## A237861.P2412561506258022353

`record[root(A237868(n+1), A124927(n))]`
-/

namespace A237861.P2412561506258022353
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237868 (n + 1) : ℝ) ^ (1 / (A124927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237861.P2412561506258022353

/-! ## A237861.P11803096967044655550

`record[gcd(A004247(n), A237868(n+1))]`
-/

namespace A237861.P11803096967044655550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A237868 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237861.P11803096967044655550

/-! ## A237861.P2787210546853973258

`record[A237868(n+1)/A241171(n+1)]`
-/

namespace A237861.P2787210546853973258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237868 (n + 1) : ℚ) / (A241171 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237861.P2787210546853973258

/-!
# A237862: Number of (n+1)X(2+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237862, there is no canonical definition to state claims against.
-/

/-! ## A237862.P3575894095377462016

`A237868(∑[n+1]+2)`
-/

namespace A237862.P3575894095377462016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237862.P3575894095377462016

/-! ## A237862.P10736833855888782303

`lcm(2, A237868(A133263(n+1)))`
-/

namespace A237862.P10736833855888782303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237868 (A133263 (n + 1)).toNat)

end

end A237862.P10736833855888782303

/-! ## A237862.P13162485183540187334

`record[A237868(A114091(n+1)+1)]`
-/

namespace A237862.P13162485183540187334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237862.P13162485183540187334

/-! ## A237862.P10678776921989163131

`record[A237868(A257504(n+1)+1)]`
-/

namespace A237862.P10678776921989163131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237862.P10678776921989163131

/-! ## A237862.P7635215496514209905

`record[root(A237868(n+2), A124927(n))]`
-/

namespace A237862.P7635215496514209905
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237868 (n + 2) : ℝ) ^ (1 / (A124927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237862.P7635215496514209905

/-!
# A237863: Number of (n+1)X(3+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237863, there is no canonical definition to state claims against.
-/

/-! ## A237863.P7998792424560854613

`A237868(∑[n+2]+4)`
-/

namespace A237863.P7998792424560854613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237863.P7998792424560854613

/-! ## A237863.P13107048161237669436

`A117358(n+1)*A237868(A167614(n+1))`
-/

namespace A237863.P13107048161237669436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1) * A237868 (A167614 (n + 1)).toNat

end

end A237863.P13107048161237669436

/-! ## A237863.P12702641422328350092

`A237868(A167614(n+1))%A237900(n+1)`
-/

namespace A237863.P12702641422328350092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237868 (A167614 (n + 1)).toNat) (A237900 (n + 1))

end

end A237863.P12702641422328350092

/-! ## A237863.P12590306736579025613

`lcm(A237868(A167614(n+1)), A333516(n+1))`
-/

namespace A237863.P12590306736579025613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A237868 (A167614 (n + 1)).toNat) (A333516 (n + 1))

end

end A237863.P12590306736579025613

/-! ## A237863.P17031545794654548141

`A237868(A167499(n)+n)%A237864(n+1)`
-/

namespace A237863.P17031545794654548141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237868 (A167499 n + (n : ℤ)).toNat) (A237864 (n + 1))

end

end A237863.P17031545794654548141

/-!
# A237864: Number of (n+1)X(4+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237864, there is no canonical definition to state claims against.
-/

/-! ## A237864.P17904808104778066765

`A237868(A374004(n+1))`
-/

namespace A237864.P17904808104778066765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A374004 (n + 1)).toNat

end

end A237864.P17904808104778066765

/-! ## A237864.P17321832842889076391

`A237868(A141214(n)+7)`
-/

namespace A237864.P17321832842889076391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A141214 n + 7).toNat

end

end A237864.P17321832842889076391

/-! ## A237864.P1698584358254505434

`A237868(A052905(n)+9)`
-/

namespace A237864.P1698584358254505434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A052905 n + 9).toNat

end

end A237864.P1698584358254505434

/-! ## A237864.P15510921840423429722

`A237868(A055999(n)+10)`
-/

namespace A237864.P15510921840423429722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A055999 n + 10).toNat

end

end A237864.P15510921840423429722

/-! ## A237864.P14675467336497592616

`A237868(A167614(n+2)+1)`
-/

namespace A237864.P14675467336497592616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A167614 (n + 2) + 1).toNat

end

end A237864.P14675467336497592616

/-!
# A237865: Number of (n+1)X(5+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237865, there is no canonical definition to state claims against.
-/

/-! ## A237865.P11098851008833882931

`A237868(A374005(n+1))`
-/

namespace A237865.P11098851008833882931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A374005 (n + 1)).toNat

end

end A237865.P11098851008833882931

/-! ## A237865.P10021258262649281821

`A237868(A155212(n)+13)`
-/

namespace A237865.P10021258262649281821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A155212 n + 13).toNat

end

end A237865.P10021258262649281821

/-! ## A237865.P101792487224559353

`A237868(A056000(n)+15)`
-/

namespace A237865.P101792487224559353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A056000 n + 15).toNat

end

end A237865.P101792487224559353

/-! ## A237865.P15964499849424385872

`A237868(eq[7, A066657(n)])`
-/

namespace A237865.P15964499849424385872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237865.P15964499849424385872

/-! ## A237865.P11021806980102366101

`A237868(eq[6, A131818(n+1)])`
-/

namespace A237865.P11021806980102366101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237865.P11021806980102366101

/-!
# A237866: Number of (n+1)X(6+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237866, there is no canonical definition to state claims against.
-/

/-! ## A237866.P9003603852113021338

`A237868(A374007(n+1))`
-/

namespace A237866.P9003603852113021338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A374007 (n + 1)).toNat

end

end A237866.P9003603852113021338

/-! ## A237866.P8819642777095853942

`A237868(A166136(n+4))`
-/

namespace A237866.P8819642777095853942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A166136 (n + 4)).toNat

end

end A237866.P8819642777095853942

/-! ## A237866.P2242385409552385711

`A237868(eq[7, A131818(n+1)])`
-/

namespace A237866.P2242385409552385711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237866.P2242385409552385711

/-! ## A237866.P11688823591676173455

`A237868(A052905(n+3))`
-/

namespace A237866.P11688823591676173455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A052905 (n + 3)).toNat

end

end A237866.P11688823591676173455

/-! ## A237866.P13339316759848653044

`A237868(eq[5, A193592(n)])`
-/

namespace A237866.P13339316759848653044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237866.P13339316759848653044

/-!
# A237867: Number of (n+1)X(7+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237867, there is no canonical definition to state claims against.
-/

/-! ## A237867.P18296558616375825303

`A237868(A374008(n+1))`
-/

namespace A237867.P18296558616375825303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A374008 (n + 1)).toNat

end

end A237867.P18296558616375825303

/-! ## A237867.P12273678862054695562

`A237868(A056119(n)+28)`
-/

namespace A237867.P12273678862054695562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A056119 n + 28).toNat

end

end A237867.P12273678862054695562

/-! ## A237867.P10289650942980289693

`A237868(eq[11, A066657(n)])`
-/

namespace A237867.P10289650942980289693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237867.P10289650942980289693

/-! ## A237867.P16288757981965920887

`A237868(A167499(n+5)+2)`
-/

namespace A237867.P16288757981965920887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (A167499 (n + 5) + 2).toNat

end

end A237867.P16288757981965920887

/-! ## A237867.P12242788138219836124

`A237868(eq[8, A131818(n+1)])`
-/

namespace A237867.P12242788138219836124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237867.P12242788138219836124

/-!
# A237869: Number of partitions of n such that (greatest part) + (least part) = number of parts.

The programs for A237869, there is no canonical definition to state claims against.
-/

/-! ## A237869.P1414820970028910389

`A237823(n+1)-A237822(n+1)`
-/

namespace A237869.P1414820970028910389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237823 (n + 1) - A237822 (n + 1)

end

end A237869.P1414820970028910389

/-! ## A237869.P7428934990907849244

`A237871(n+1)-A237870(n+1)`
-/

namespace A237869.P7428934990907849244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237871 (n + 1) - A237870 (n + 1)

end

end A237869.P7428934990907849244

/-! ## A237869.P9930884742297719100

`A237823(n+1)+A057428(n)*A237822(n+1)`
-/

namespace A237869.P9930884742297719100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237823 (n + 1) + A057428 n * A237822 (n + 1)

end

end A237869.P9930884742297719100

/-! ## A237869.P10655458368475417188

`Δ[A000070(n)]-(A237870(n+1)+A237822(n+1))`
-/

namespace A237869.P10655458368475417188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A237870 (n + 1) + A237822 (n + 1))

end

end A237869.P10655458368475417188

/-! ## A237869.P13013818657998033249

`A237823(n+1)+A237871(n+1)-Δ[A000070(n)]`
-/

namespace A237869.P13013818657998033249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237823 (n + 1) + (A237871 (n + 1) - (f1 (n + 1) - f1 n))

end

end A237869.P13013818657998033249

/-!
# A237870: Number of partitions of n such that (greatest part) + (least part) > number of parts.

The programs for A237870, there is no canonical definition to state claims against.
-/

/-! ## A237870.P6010231337949775003

`Δ[A000070(n)]-A237823(n+1)`
-/

namespace A237870.P6010231337949775003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237823 (n + 1)

end

end A237870.P6010231337949775003

/-! ## A237870.P7161480510929954005

`record[A035363(n)]-A237823(n+1)`
-/

namespace A237870.P7161480510929954005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237823 (n + 1)

end

end A237870.P7161480510929954005

/-! ## A237870.P6478374114312065113

`record[A035377(n)]-A237823(n+1)`
-/

namespace A237870.P6478374114312065113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237823 (n + 1)

end

end A237870.P6478374114312065113

/-! ## A237870.P15416603813629677759

`record[A035444(n)]-A237823(n+1)`
-/

namespace A237870.P15416603813629677759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237823 (n + 1)

end

end A237870.P15416603813629677759

/-! ## A237870.P15154166904585853704

`A000041(n+1)-A237823(n+1)`
-/

namespace A237870.P15154166904585853704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237823 (n + 1)

end

end A237870.P15154166904585853704

/-! ## A237870.P2623287728154822629

`A237871(n+1)-A237869(n+1)`
-/

namespace A237870.P2623287728154822629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237871 (n + 1) - A237869 (n + 1)

end

end A237870.P2623287728154822629

/-! ## A237870.P16327761443743842369

`A237871(n+1)+A237822(n+1)-A237823(n+1)`
-/

namespace A237870.P16327761443743842369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237871 (n + 1) + A237822 (n + 1) - A237823 (n + 1)

end

end A237870.P16327761443743842369

/-!
# A237871: Number of partitions of n such that (greatest part) + (least part) >= number of parts.

The programs for A237871, there is no canonical definition to state claims against.
-/

/-! ## A237871.P10490562352037283545

`Δ[A000070(n)]-A237822(n+1)`
-/

namespace A237871.P10490562352037283545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237822 (n + 1)

end

end A237871.P10490562352037283545

/-! ## A237871.P486650506029264965

`record[A035363(n)]-A237822(n+1)`
-/

namespace A237871.P486650506029264965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237822 (n + 1)

end

end A237871.P486650506029264965

/-! ## A237871.P18039082817733203396

`record[A035377(n)]-A237822(n+1)`
-/

namespace A237871.P18039082817733203396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237822 (n + 1)

end

end A237871.P18039082817733203396

/-! ## A237871.P9876776853903064762

`record[A035444(n)]-A237822(n+1)`
-/

namespace A237871.P9876776853903064762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237822 (n + 1)

end

end A237871.P9876776853903064762

/-! ## A237871.P8297362944978886317

`A237870(n+1)+A237869(n+1)`
-/

namespace A237871.P8297362944978886317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237870 (n + 1) + A237869 (n + 1)

end

end A237871.P8297362944978886317

/-! ## A237871.P14587513956984206581

`A237870(n+1)+A237823(n+1)-A237822(n+1)`
-/

namespace A237871.P14587513956984206581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237870 (n + 1) + A237823 (n + 1) - A237822 (n + 1)

end

end A237871.P14587513956984206581

/-!
# A237873: Denominator of Sum_{i=1..n} n^i/i.

The programs for A237873, there is no canonical definition to state claims against.
-/

/-! ## A237873.P11507794102666668792

`floor(A237872(n+1)/A236772(n+1))`
-/

namespace A237873.P11507794102666668792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A237872 (n + 1) : ℚ) / (A236772 (n + 1) : ℚ)⌋

end

end A237873.P11507794102666668792

/-! ## A237873.P9262844966499910983

`A069220(n+1)/gcd(5, A227429(n+1))`
-/

namespace A237873.P9262844966499910983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069220 (n + 1) : ℚ) / (Int.gcd 5 (A227429 (n + 1)) : ℚ)

end

end A237873.P9262844966499910983

/-! ## A237873.P9209819326350545383

`A000027(A069220(n+1)/A220054(n))`
-/

namespace A237873.P9209819326350545383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A069220 (n + 1) : ℚ) / (A220054 n : ℚ))).toNat

end

end A237873.P9209819326350545383

/-! ## A237873.P7555300633091148082

`A069220(n+1)%A256651(A065392(n+1))`
-/

namespace A237873.P7555300633091148082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069220 (n + 1)) (A256651 (A065392 (n + 1)).toNat)

end

end A237873.P7555300633091148082

/-!
# A237874: Number of (n+2)X(1+2) 0..3 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A237874, there is no canonical definition to state claims against.
-/

/-! ## A237874.P17254380978964075565

`A237875(∑[n+1])`
-/

namespace A237874.P17254380978964075565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237875 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237874.P17254380978964075565

/-!
# A237876: Number of (1+2)X(n+2) 0..3 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A237876, there is no canonical definition to state claims against.
-/

/-! ## A237876.P15109530418725320461

`A237875(∑[n]+1)`
-/

namespace A237876.P15109530418725320461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237875 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237876.P15109530418725320461

/-! ## A237876.P6255457045206390641

`lcm(2, A237875(A000124(n)))`
-/

namespace A237876.P6255457045206390641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237875 (A000124 n).toNat)

end

end A237876.P6255457045206390641

/-!
# A237878: Composite numbers n such that n | A072514 (n).

The programs for A237878, there is no canonical definition to state claims against.
-/

/-! ## A237878.P13496939376447616663

`A091389(n^3)+A052217(n+1)`
-/

namespace A237878.P13496939376447616663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091389 (n ^ 3) + A052217 (n + 1)

end

end A237878.P13496939376447616663

/-!
# A237880: Conjectured number of distinct integers < 10^n that are Sierpiński or Riesel or simultaneously Sierpiński and Riesel numbers.

The programs for A237880, there is no canonical definition to state claims against.
-/

/-! ## A237880.P17460856607461170045

`A236320(n+1)+A236321(n+1)`
-/

namespace A237880.P17460856607461170045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236320 (n + 1) + A236321 (n + 1)

end

end A237880.P17460856607461170045

/-! ## A237880.P8007202836046889376

`A236321(A081408(n))+A236320(n+1)`
-/

namespace A237880.P8007202836046889376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236321 (A081408 n).toNat + A236320 (n + 1)

end

end A237880.P8007202836046889376

/-! ## A237880.P14489445497849154072

`A236321(n+1)+A236320(A082743(n))`
-/

namespace A237880.P14489445497849154072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236321 (n + 1) + A236320 (A082743 n).toNat

end

end A237880.P14489445497849154072

/-! ## A237880.P1498577432402157869

`A236321(n+1)+A195177(A340021(n))-A271325(n+1)`
-/

namespace A237880.P1498577432402157869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236321 (n + 1) + (A195177 (A340021 n).toNat - A271325 (n + 1))

end

end A237880.P1498577432402157869

/-!
# A237881: a(n) = 2-adic valuation of prime(n)+prime(n+1).

The programs for A237881, the canonical program `A237881.P9527050307391810079` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237881 has offset 1).

The definition of A237881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237881.P9527050307391810079

`A007814(A001043(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A237881

/-- `A007814(A001043(n+1))` -/
def P9527050307391810079.Spec : Prop :=
  ∀ n, P9527050307391810079.a n = A237881 (n + 1)

theorem P9527050307391810079.correct : P9527050307391810079.Spec := by
  intro n
  simp only [A237881, Nat.add_sub_cancel]

end A237881

/-! ## A237881.P16345207362817268487

`val(Δ[A061802(n)], 2)`
-/

namespace A237881.P16345207362817268487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A237881.P16345207362817268487

namespace A237881

/-- `val(Δ[A061802(n)], 2)` -/
def P16345207362817268487.Spec : Prop :=
  ∀ n, (P16345207362817268487.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P1603610957909973951

`val(A001043(n+1), 2)`
-/

namespace A237881.P1603610957909973951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001043 (n + 1)).toNat 2

end

end A237881.P1603610957909973951

namespace A237881

/-- `val(A001043(n+1), 2)` -/
def P1603610957909973951.Spec : Prop :=
  ∀ n, (P1603610957909973951.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P15245312829146655907

`val(A133534(n+1), 2)`
-/

namespace A237881.P15245312829146655907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133534 (n + 1)).toNat 2

end

end A237881.P15245312829146655907

namespace A237881

/-- `val(A133534(n+1), 2)` -/
def P15245312829146655907.Spec : Prop :=
  ∀ n, (P15245312829146655907.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P134070975952889473

`val(A133536(n+1), 2)`
-/

namespace A237881.P134070975952889473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133536 (n + 1)).toNat 2

end

end A237881.P134070975952889473

namespace A237881

/-- `val(A133536(n+1), 2)` -/
def P134070975952889473.Spec : Prop :=
  ∀ n, (P134070975952889473.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P5571427331246424994

`val(A133538(n+1), 2)`
-/

namespace A237881.P5571427331246424994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133538 (n + 1)).toNat 2

end

end A237881.P5571427331246424994

namespace A237881

/-- `val(A133538(n+1), 2)` -/
def P5571427331246424994.Spec : Prop :=
  ∀ n, (P5571427331246424994.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P4806321769844905260

`val(A011974(n+2), 2)`
-/

namespace A237881.P4806321769844905260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A011974 (n + 2)).toNat 2

end

end A237881.P4806321769844905260

namespace A237881

/-- `val(A011974(n+2), 2)` -/
def P4806321769844905260.Spec : Prop :=
  ∀ n, (P4806321769844905260.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P1866025800465361485

`val(A045533(n+1)%A001748(n+1), 2)`
-/

namespace A237881.P1866025800465361485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (A045533 (n + 1)) (A001748 (n + 1))).toNat 2

end

end A237881.P1866025800465361485

namespace A237881

/-- `val(A045533(n+1)%A001748(n+1), 2)` -/
def P1866025800465361485.Spec : Prop :=
  ∀ n, (P1866025800465361485.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P2905619609059629080

`val(A000040(n+1)+A000040(n+2), 2)`
-/

namespace A237881.P2905619609059629080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) + A000040 (n + 2)).toNat 2

end

end A237881.P2905619609059629080

namespace A237881

/-- `val(A000040(n+1)+A000040(n+2), 2)` -/
def P2905619609059629080.Spec : Prop :=
  ∀ n, (P2905619609059629080.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P13798175240171106791

`val(A028815(n+1)+A006093(n+2), 2)`
-/

namespace A237881.P13798175240171106791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028815 (n + 1) + A006093 (n + 2)).toNat 2

end

end A237881.P13798175240171106791

namespace A237881

/-- `val(A028815(n+1)+A006093(n+2), 2)` -/
def P13798175240171106791.Spec : Prop :=
  ∀ n, (P13798175240171106791.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P2898471961416797284

`val(A030078(n+1)+A030078(n+2), 2)`
-/

namespace A237881.P2898471961416797284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030078 (n + 1) + A030078 (n + 2)).toNat 2

end

end A237881.P2898471961416797284

namespace A237881

/-- `val(A030078(n+1)+A030078(n+2), 2)` -/
def P2898471961416797284.Spec : Prop :=
  ∀ n, (P2898471961416797284.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P17834982483745691948

`val(A050997(n+1)+A050997(n+2), 2)`
-/

namespace A237881.P17834982483745691948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050997 (n + 1) + A050997 (n + 2)).toNat 2

end

end A237881.P17834982483745691948

namespace A237881

/-- `val(A050997(n+1)+A050997(n+2), 2)` -/
def P17834982483745691948.Spec : Prop :=
  ∀ n, (P17834982483745691948.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P11032133861256142426

`val(A069102(n+3), 2)`
-/

namespace A237881.P11032133861256142426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A069102 (n + 3)).toNat 2

end

end A237881.P11032133861256142426

namespace A237881

/-- `val(A069102(n+3), 2)` -/
def P11032133861256142426.Spec : Prop :=
  ∀ n, (P11032133861256142426.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P949704613362897815

`val(A164653(n+3), 2)`
-/

namespace A237881.P949704613362897815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A164653 (n + 3)).toNat 2

end

end A237881.P949704613362897815

namespace A237881

/-- `val(A164653(n+3), 2)` -/
def P949704613362897815.Spec : Prop :=
  ∀ n, (P949704613362897815.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P9112365950339232741

`val(A347136(A000040(n+1)), 2)`
-/

namespace A237881.P9112365950339232741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A347136 (A000040 (n + 1)).toNat).toNat 2

end

end A237881.P9112365950339232741

namespace A237881

/-- `val(A347136(A000040(n+1)), 2)` -/
def P9112365950339232741.Spec : Prop :=
  ∀ n, (P9112365950339232741.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P10451264049477045584

`val(p?[A352844(n)]+A000040(n+2), 2)`
-/

namespace A237881.P10451264049477045584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000040 (n + 2)).toNat 2

end

end A237881.P10451264049477045584

namespace A237881

/-- `val(p?[A352844(n)]+A000040(n+2), 2)` -/
def P10451264049477045584.Spec : Prop :=
  ∀ n, (P10451264049477045584.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P18396163656097562615

`val(A112591(n+1)+2, 2)`
-/

namespace A237881.P18396163656097562615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112591 (n + 1) + 2).toNat 2

end

end A237881.P18396163656097562615

namespace A237881

/-- `val(A112591(n+1)+2, 2)` -/
def P18396163656097562615.Spec : Prop :=
  ∀ n, (P18396163656097562615.a n : ℤ) = A237881 (n + 1)

end A237881

/-! ## A237881.P13203630668286947540

`A007814(A112591(n+1)+2)`
-/

namespace A237881.P13203630668286947540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A112591 (n + 1) + 2).toNat

end

end A237881.P13203630668286947540

namespace A237881

/-- `A007814(A112591(n+1)+2)` -/
def P13203630668286947540.Spec : Prop :=
  ∀ n, P13203630668286947540.a n = A237881 (n + 1)

end A237881

/-! ## A237881.P16159075435250803169

`A085058(A112591(n+1)+1)-2`
-/

namespace A237881.P16159075435250803169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A112591 (n + 1) + 1).toNat - 2

end

end A237881.P16159075435250803169

namespace A237881

/-- `A085058(A112591(n+1)+1)-2` -/
def P16159075435250803169.Spec : Prop :=
  ∀ n, P16159075435250803169.a n = A237881 (n + 1)

end A237881

/-! ## A237881.P14790518465354787029

`A007814(A011974(n+2))`
-/

namespace A237881.P14790518465354787029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A011974 (n + 2)).toNat

end

end A237881.P14790518465354787029

namespace A237881

/-- `A007814(A011974(n+2))` -/
def P14790518465354787029.Spec : Prop :=
  ∀ n, P14790518465354787029.a n = A237881 (n + 1)

end A237881

/-!
# A237882: Numbers k such that LR0(k) > LR1(k), where LR0(k) = A087117(k) is the length of the longest run of zeros in the binary representation of k, LR1(k) = A038374(k) is the length of the longest run of ones.

The programs for A237882, the canonical program `A237882.P9717676700873481569` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237882 has offset 1).

The definition of A237882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237882.P9717676700873481569

`lt[A330036(n), 2*A087117(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A237882

/-- `lt[A330036(n), 2*A087117(n)]` -/
def P9717676700873481569.Spec : Prop :=
  ∀ n, (P9717676700873481569.a n : ℤ) = A237882 (n + 1)

theorem P9717676700873481569.correct : P9717676700873481569.Spec := by
  intro n
  simp only [A237882, Nat.add_sub_cancel]

end A237882

/-! ## A237882.P1108791659921180651

`lt[val(A278222(n), 2), A087117(n)]`
-/

namespace A237882.P1108791659921180651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237882.P1108791659921180651

namespace A237882

/-- `lt[val(A278222(n), 2), A087117(n)]` -/
def P1108791659921180651.Spec : Prop :=
  ∀ n, (P1108791659921180651.a n : ℤ) = A237882 (n + 1)

end A237882

/-! ## A237882.P15072047750359099485

`lt[A061395(A246029(n)), A087117(n)]`
-/

namespace A237882.P15072047750359099485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A246029 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237882.P15072047750359099485

namespace A237882

/-- `lt[A061395(A246029(n)), A087117(n)]` -/
def P15072047750359099485.Spec : Prop :=
  ∀ n, (P15072047750359099485.a n : ℤ) = A237882 (n + 1)

end A237882

/-! ## A237882.P17586807873917372075

`lt[A330036(n), A005843(A087117(n))]`
-/

namespace A237882.P17586807873917372075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A087117 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237882.P17586807873917372075

namespace A237882

/-- `lt[A330036(n), A005843(A087117(n))]` -/
def P17586807873917372075.Spec : Prop :=
  ∀ n, (P17586807873917372075.a n : ℤ) = A237882 (n + 1)

end A237882

/-! ## A237882.P2764277906252697953

`lt[A087117(A010078(n+1)), A087117(n)]`
-/

namespace A237882.P2764277906252697953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A010078 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237882.P2764277906252697953

namespace A237882

/-- `lt[A087117(A010078(n+1)), A087117(n)]` -/
def P2764277906252697953.Spec : Prop :=
  ∀ n, (P2764277906252697953.a n : ℤ) = A237882 (n + 1)

end A237882

/-! ## A237882.P6486538116806795792

`lt[A007814(A278222(n)), A087117(n)]`
-/

namespace A237882.P6486538116806795792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237882.P6486538116806795792

namespace A237882

/-- `lt[A007814(A278222(n)), A087117(n)]` -/
def P6486538116806795792.Spec : Prop :=
  ∀ n, (P6486538116806795792.a n : ℤ) = A237882 (n + 1)

end A237882

/-! ## A237882.P7416497889622106157

`lt[A051903(A005940(n+1)), A087117(n)]`
-/

namespace A237882.P7416497889622106157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237882.P7416497889622106157

namespace A237882

/-- `lt[A051903(A005940(n+1)), A087117(n)]` -/
def P7416497889622106157.Spec : Prop :=
  ∀ n, (P7416497889622106157.a n : ℤ) = A237882 (n + 1)

end A237882

/-!
# A237883: Numbers k such that LR0(k) < LR1(k), where LR0(k) = A087117(k) is the length of the longest run of zeros in the binary representation of k, LR1(k) = A038374(k) is the length of the longest run of ones.

The programs for A237883, there is no canonical definition to state claims against.
-/

/-! ## A237883.P16527136749496667594

`lt[A087117(n), A284569(n)]`
-/

namespace A237883.P16527136749496667594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237883.P16527136749496667594

/-! ## A237883.P3827771721279897266

`lt[A087117(n)², A246596(n)]`
-/

namespace A237883.P3827771721279897266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237883.P3827771721279897266

/-! ## A237883.P16483831173227702601

`lt[A087117(n)², A246660(n)]`
-/

namespace A237883.P16483831173227702601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237883.P16483831173227702601

/-! ## A237883.P14895238824625548040

`lt[2*A087117(n), A330036(n)]`
-/

namespace A237883.P14895238824625548040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237883.P14895238824625548040

/-! ## A237883.P7901577780115782854

`lt[A087117(n), val(A278222(n), 2)]`
-/

namespace A237883.P7901577780115782854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A237883.P7901577780115782854

/-! ## A237883.P4249999317192605363

`lt[A087117(n+1), A038374(n+1)]+1`
-/

namespace A237883.P4249999317192605363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A237883.P4249999317192605363

/-! ## A237883.P16074640161394358148

`lt[A087117(n), A038374(A028310(n))]`
-/

namespace A237883.P16074640161394358148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237883.P16074640161394358148

/-! ## A237883.P4552627144531711928

`lt[A087117(n), A007814(A278222(n))]`
-/

namespace A237883.P4552627144531711928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237883.P4552627144531711928

/-! ## A237883.P6856532947420153899

`lt[A087117(n), A061395(A246029(n))]`
-/

namespace A237883.P6856532947420153899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237883.P6856532947420153899

/-! ## A237883.P9239898432553863269

`lt[A005843(A087117(n)), A330036(n)]`
-/

namespace A237883.P9239898432553863269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A087117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A237883.P9239898432553863269

/-!
# A237884: a(n) = (n!*m)/(m!*(m+1)!) where m = floor(n/2).

The programs for A237884, the canonical program `A237884.P1196767609388771144` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237884 has offset 0).

The definition of A237884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237884.P1196767609388771144

`A056040(n)*floor(n/2)/(floor(n/2)+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A237884

/-- `A056040(n)*floor(n/2)/(floor(n/2)+1)` -/
def P1196767609388771144.Spec : Prop :=
  ∀ n, P1196767609388771144.a n = (A237884 n : ℚ)

end A237884

/-! ## A237884.P6435761248651330707

`gcd(1-n, floor(n/2))*Δ[(∏[2*or(1, n)/(n+1)]-2)/2]`
-/

namespace A237884.P6435761248651330707
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j - 2) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℚ) * (f1 (n + 1) - f1 n)

end

end A237884.P6435761248651330707

namespace A237884

/-- `gcd(1-n, floor(n/2))*Δ[(∏[2*or(1, n)/(n+1)]-2)/2]` -/
def P6435761248651330707.Spec : Prop :=
  ∀ n, P6435761248651330707.a n = (A237884 n : ℚ)

end A237884

/-! ## A237884.P9045378876865781319

`floor((n/2)^(n%2))*Δ[-(a(n-1)/(floor(n/2)/n-1))]` with `a(0)=1`
-/

namespace A237884.P9045378876865781319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -(f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((n : ℚ) / 2) ^ (n % 2)⌋ : ℚ) * (f1 (n + 1) - f1 n)

end

end A237884.P9045378876865781319

namespace A237884

/-- `floor((n/2)^(n%2))*Δ[-(a(n-1)/(floor(n/2)/n-1))]` -/
def P9045378876865781319.Spec : Prop :=
  ∀ n, P9045378876865781319.a n = (A237884 n : ℚ)

end A237884

/-! ## A237884.P10109659667738862329

`floor(n/2)*A057977(n)`
-/

namespace A237884.P10109659667738862329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A057977 n

end

end A237884.P10109659667738862329

namespace A237884

/-- `floor(n/2)*A057977(n)` -/
def P10109659667738862329.Spec : Prop :=
  ∀ n, P10109659667738862329.a n = A237884 n

end A237884

/-! ## A237884.P16320556948213331270

`gcd(C(n, 2), xor(1, n))*A037952(n)`
-/

namespace A237884.P16320556948213331270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (Nat.choose n 2) (Nat.xor 1 n) : ℤ) * A037952 n

end

end A237884.P16320556948213331270

namespace A237884

/-- `gcd(C(n, 2), xor(1, n))*A037952(n)` -/
def P16320556948213331270.Spec : Prop :=
  ∀ n, P16320556948213331270.a n = A237884 n

end A237884

/-! ## A237884.P17853482644200892220

`gcd(1-n, floor(n/2))*Δ[A001405(n)]`
-/

namespace A237884.P17853482644200892220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℤ) * (f1 (n + 1) - f1 n)

end

end A237884.P17853482644200892220

namespace A237884

/-- `gcd(1-n, floor(n/2))*Δ[A001405(n)]` -/
def P17853482644200892220.Spec : Prop :=
  ∀ n, P17853482644200892220.a n = A237884 n

end A237884

/-! ## A237884.P16955699187147550524

`A232500(n)+A057977(n)`
-/

namespace A237884.P16955699187147550524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232500 n + A057977 n

end

end A237884.P16955699187147550524

namespace A237884

/-- `A232500(n)+A057977(n)` -/
def P16955699187147550524.Spec : Prop :=
  ∀ n, P16955699187147550524.a n = A237884 n

end A237884

/-! ## A237884.P4913178485475395433

`A056040(n)-A057977(n)`
-/

namespace A237884.P4913178485475395433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - A057977 n

end

end A237884.P4913178485475395433

namespace A237884

/-- `A056040(n)-A057977(n)` -/
def P4913178485475395433.Spec : Prop :=
  ∀ n, P4913178485475395433.a n = A237884 n

end A237884

/-! ## A237884.P667594625023739688

`A037952(n)*A057979(n)`
-/

namespace A237884.P667594625023739688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n * A057979 n

end

end A237884.P667594625023739688

namespace A237884

/-- `A037952(n)*A057979(n)` -/
def P667594625023739688.Spec : Prop :=
  ∀ n, P667594625023739688.a n = A237884 n

end A237884

/-! ## A237884.P7280938073602167506

`A274707(n+1)-A138364(n)`
-/

namespace A237884.P7280938073602167506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 1) - A138364 n

end

end A237884.P7280938073602167506

namespace A237884

/-- `A274707(n+1)-A138364(n)` -/
def P7280938073602167506.Spec : Prop :=
  ∀ n, P7280938073602167506.a n = A237884 n

end A237884

/-! ## A237884.P16185346616067238085

`A037955(n)*A133622(n+1)`
-/

namespace A237884.P16185346616067238085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n * A133622 (n + 1)

end

end A237884.P16185346616067238085

namespace A237884

/-- `A037955(n)*A133622(n+1)` -/
def P16185346616067238085.Spec : Prop :=
  ∀ n, P16185346616067238085.a n = A237884 n

end A237884

/-! ## A237884.P9180195712660200266

`A275329(n)-2*A057977(n)`
-/

namespace A237884.P9180195712660200266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275329 n - 2 * A057977 n

end

end A237884.P9180195712660200266

namespace A237884

/-- `A275329(n)-2*A057977(n)` -/
def P9180195712660200266.Spec : Prop :=
  ∀ n, P9180195712660200266.a n = A237884 n

end A237884

/-! ## A237884.P12931269979329527515

`A056040(n)+A056040(n)-A275329(n)`
-/

namespace A237884.P12931269979329527515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n + (A056040 n - A275329 n)

end

end A237884.P12931269979329527515

namespace A237884

/-- `A056040(n)+A056040(n)-A275329(n)` -/
def P12931269979329527515.Spec : Prop :=
  ∀ n, P12931269979329527515.a n = A237884 n

end A237884

/-! ## A237884.P16894892765278797854

`A008619(n)*A057977(n)-A057977(n)`
-/

namespace A237884.P16894892765278797854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A057977 n - A057977 n

end

end A237884.P16894892765278797854

namespace A237884

/-- `A008619(n)*A057977(n)-A057977(n)` -/
def P16894892765278797854.Spec : Prop :=
  ∀ n, P16894892765278797854.a n = A237884 n

end A237884

/-! ## A237884.P2515846783608849971

`A009001(n)*A128057(n)-A057977(n)`
-/

namespace A237884.P2515846783608849971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A128057 n - A057977 n

end

end A237884.P2515846783608849971

namespace A237884

/-- `A009001(n)*A128057(n)-A057977(n)` -/
def P2515846783608849971.Spec : Prop :=
  ∀ n, P2515846783608849971.a n = A237884 n

end A237884

/-! ## A237884.P3898271564418939564

`A001405(n)*A152271(n)-A057977(n)`
-/

namespace A237884.P3898271564418939564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A152271 n - A057977 n

end

end A237884.P3898271564418939564

namespace A237884

/-- `A001405(n)*A152271(n)-A057977(n)` -/
def P3898271564418939564.Spec : Prop :=
  ∀ n, P3898271564418939564.a n = A237884 n

end A237884

/-! ## A237884.P5445426352606730223

`A093178(n)*A128014(n)-A057977(n)`
-/

namespace A237884.P5445426352606730223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A128014 n - A057977 n

end

end A237884.P5445426352606730223

namespace A237884

/-- `A093178(n)*A128014(n)-A057977(n)` -/
def P5445426352606730223.Spec : Prop :=
  ∀ n, P5445426352606730223.a n = A237884 n

end A237884

/-! ## A237884.P526315541732434867

`A056040(n)-A056040(n)/A008619(n)`
-/

namespace A237884.P526315541732434867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) - (A056040 n : ℚ) / (A008619 n : ℚ)

end

end A237884.P526315541732434867

namespace A237884

/-- `A056040(n)-A056040(n)/A008619(n)` -/
def P526315541732434867.Spec : Prop :=
  ∀ n, P526315541732434867.a n = (A237884 n : ℚ)

end A237884

/-! ## A237884.P17837047084452509880

`lcm(A037952(n)-A056040(n), A037952(n))`
-/

namespace A237884.P17837047084452509880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037952 n - A056040 n) (A037952 n)

end

end A237884.P17837047084452509880

namespace A237884

/-- `lcm(A037952(n)-A056040(n), A037952(n))` -/
def P17837047084452509880.Spec : Prop :=
  ∀ n, (P17837047084452509880.a n : ℤ) = A237884 n

end A237884

/-! ## A237884.P15918019255918493796

`(A001405(n+1)-A001405(n))*A057979(n)`
-/

namespace A237884.P15918019255918493796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) - A001405 n) * A057979 n

end

end A237884.P15918019255918493796

namespace A237884

/-- `(A001405(n+1)-A001405(n))*A057979(n)` -/
def P15918019255918493796.Spec : Prop :=
  ∀ n, P15918019255918493796.a n = A237884 n

end A237884

/-!
# A237885: a(n) is the number of ways that 4n can be written as p+q (p>q) with p, q, (p-q)/2, 4n-(p-q)/2 all prime numbers.

The programs for A237885, there is no canonical definition to state claims against.
-/

/-! ## A237885.P12287829231032724425

`and(A008615(A006355(n)), A284950(n+1))`
-/

namespace A237885.P12287829231032724425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008615 (A006355 n).toNat) (A284950 (n + 1))

end

end A237885.P12287829231032724425

/-! ## A237885.P1752501896125125352

`A307597(A052430(n+1)*A260438(n+1))`
-/

namespace A237885.P1752501896125125352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (A052430 (n + 1) * A260438 (n + 1)).toNat

end

end A237885.P1752501896125125352

/-! ## A237885.P7929829002241539088

`A343676(n+1)%A000196(A343721(n+1))`
-/

namespace A237885.P7929829002241539088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343676 (n + 1)) (A000196 (A343721 (n + 1)).toNat)

end

end A237885.P7929829002241539088

/-! ## A237885.P9020807009245953486

`A335622(A308925(n)+A050216(n))`
-/

namespace A237885.P9020807009245953486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335622 (A308925 n + A050216 n).toNat

end

end A237885.P9020807009245953486

/-! ## A237885.P15384532951135130017

`and(A005100(A006261(n)), A067099(n+3))`
-/

namespace A237885.P15384532951135130017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005100 (A006261 n).toNat) (A067099 (n + 3))

end

end A237885.P15384532951135130017

/-!
# A237886: Side length of smallest square containing n dominoes with short side lengths 1, 2, ..., n.

The programs for A237886, there is no canonical definition to state claims against.
-/

/-! ## A237886.P17516121528542883472

`floor(∑[sqrt(3/(2*acot(n)))])`
-/

namespace A237886.P17516121528542883472
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 / (2 * SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A237886.P17516121528542883472

/-! ## A237886.P4803474205895608280

`ceil(sqrt(∑[2*n/acot(n)]))`
-/

namespace A237886.P4803474205895608280
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A237886.P4803474205895608280

/-! ## A237886.P15447116890980392842

`ceil(sqrt(2*(∑[n²]+sqrt(n))))`
-/

namespace A237886.P15447116890980392842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (n : ℝ)))⌉

end

end A237886.P15447116890980392842

/-! ## A237886.P3039585014260408546

`sqrt(A238259(n))`
-/

namespace A237886.P3039585014260408546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A238259 n : ℝ)

end

end A237886.P3039585014260408546

/-! ## A237886.P8647101182411211918

`round(sqrt(A332698(n)/2))`
-/

namespace A237886.P8647101182411211918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A332698 n : ℚ) / 2 : ℝ))

end

end A237886.P8647101182411211918

/-!
# A237887: Numerator of a(n) where a(0) = a(1) = a(2) = 1, a(n) * (a(n) + a(n+3)) = (a(n) + 2*a(n+2)) * (a(n) + a(n+2)).

The programs for A237887, there is no canonical definition to state claims against.
-/

/-! ## A237887.P2431501861166146792

`ratio[ratio[A237914(n)]]`
-/

namespace A237887.P2431501861166146792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237914 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A237887.P2431501861166146792

/-! ## A237887.P108187383067638257

`A284459(A243757(n²))`
-/

namespace A237887.P108187383067638257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284459 (A243757 (n ^ 2)).toNat

end

end A237887.P108187383067638257

/-!
# A237890: Primes p such that p^2 + 4 and p^2 + 10 are also primes.

The programs for A237890, there is no canonical definition to state claims against.
-/

/-! ## A237890.P11910826799765685636

`∩[A062324(n+1), A243367(n+1)]`
-/

namespace A237890.P11910826799765685636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237890.P11910826799765685636

/-! ## A237890.P9809477008163255009

`∩[A062324(n+1), A114273(n+1)]`
-/

namespace A237890.P9809477008163255009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237890.P9809477008163255009

/-! ## A237890.P14213491074577396833

`∩[A007591(n+1), A243367(n+1)]`
-/

namespace A237890.P14213491074577396833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237890.P14213491074577396833

/-! ## A237890.P13327320525319972582

`p?[∩[A007591(n+1), A114273(n+1)]]`
-/

namespace A237890.P13327320525319972582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A237890.P13327320525319972582

/-!
# A237891: Number of (n+1)X(1+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237891, there is no canonical definition to state claims against.
-/

/-! ## A237891.P15950602933092710859

`A237898(∑[n]+1)`
-/

namespace A237891.P15950602933092710859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237891.P15950602933092710859

/-! ## A237891.P13092185485846738988

`lcm(2, A237898(A000124(n)))`
-/

namespace A237891.P13092185485846738988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237898 (A000124 n).toNat)

end

end A237891.P13092185485846738988

/-! ## A237891.P3879207371244517839

`record[root(A237898(n+1), A019538(n+1))]`
-/

namespace A237891.P3879207371244517839
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237898 (n + 1) : ℝ) ^ (1 / (A019538 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237891.P3879207371244517839

/-! ## A237891.P8132672316115458377

`record[root(A237898(n+1), A057728(n+1))]`
-/

namespace A237891.P8132672316115458377
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237898 (n + 1) : ℝ) ^ (1 / (A057728 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237891.P8132672316115458377

/-! ## A237891.P12813899775031594132

`A237898(A000124(n))+A034423(n+1)`
-/

namespace A237891.P12813899775031594132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (A000124 n).toNat + A034423 (n + 1)

end

end A237891.P12813899775031594132

/-!
# A237892: Number of (n+1)X(2+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237892, there is no canonical definition to state claims against.
-/

/-! ## A237892.P1853862366359245079

`A237898(∑[n+1]+2)`
-/

namespace A237892.P1853862366359245079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237892.P1853862366359245079

/-! ## A237892.P5713284877612242152

`record[root(A237898(n+2), A019538(n+1))]`
-/

namespace A237892.P5713284877612242152
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237898 (n + 2) : ℝ) ^ (1 / (A019538 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237892.P5713284877612242152

/-! ## A237892.P10721183005871279244

`record[A237898(n+3)^A132382(n)]`
-/

namespace A237892.P10721183005871279244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237898 (n + 3) : ℚ) ^ (A132382 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237892.P10721183005871279244

/-!
# A237893: Number of (n+1)X(3+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237893, there is no canonical definition to state claims against.
-/

/-! ## A237893.P4369313776106551310

`A237898(∑[n+2]+4)`
-/

namespace A237893.P4369313776106551310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237893.P4369313776106551310

/-! ## A237893.P16190824372799012122

`A237898(A167614(n+1))%A237894(n+1)`
-/

namespace A237893.P16190824372799012122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237898 (A167614 (n + 1)).toNat) (A237894 (n + 1))

end

end A237893.P16190824372799012122

/-! ## A237893.P9729907791427210230

`lcm(A033273(n+1), A237898(A167614(n+1)))`
-/

namespace A237893.P9729907791427210230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033273 (n + 1)) (A237898 (A167614 (n + 1)).toNat)

end

end A237893.P9729907791427210230

/-! ## A237893.P16121220801620272177

`A237898(A167614(n+1))+A142150(2*n+1)`
-/

namespace A237893.P16121220801620272177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (A167614 (n + 1)).toNat + A142150 (2 * n + 1)

end

end A237893.P16121220801620272177

/-! ## A237893.P11135855370002588575

`lcm(2, A237898(Δ[A008778(n)]))`
-/

namespace A237893.P11135855370002588575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237898 (f1 (n + 1) - f1 n).toNat)

end

end A237893.P11135855370002588575

/-!
# A237894: Number of (n+1)X(4+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237894, there is no canonical definition to state claims against.
-/

/-! ## A237894.P2381100424507307201

`A237898(A167614(n+2)+1)`
-/

namespace A237894.P2381100424507307201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (A167614 (n + 2) + 1).toNat

end

end A237894.P2381100424507307201

/-! ## A237894.P4361456914450146470

`A237898(Δ[A008778(n+1)]-1)`
-/

namespace A237894.P4361456914450146470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (f1 (n + 1) - f1 n - 1).toNat

end

end A237894.P4361456914450146470

/-!
# A237895: Number of (n+1) X (5+1) 0..3 arrays with the maximum minus the upper median of every 2 X 2 subblock equal.

The programs for A237895, there is no canonical definition to state claims against.
-/

/-! ## A237895.P6339386978538169487

`A237898(A374005(n+1))`
-/

namespace A237895.P6339386978538169487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (A374005 (n + 1)).toNat

end

end A237895.P6339386978538169487

/-! ## A237895.P11639800796669246718

`A237898(A056000(n)+15)`
-/

namespace A237895.P11639800796669246718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (A056000 n + 15).toNat

end

end A237895.P11639800796669246718

/-!
# A237897: Number of (n+1)X(7+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237897, there is no canonical definition to state claims against.
-/

/-! ## A237897.P7111259530378786829

`A237898(A000124(n+7)-(n+1))`
-/

namespace A237897.P7111259530378786829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237898 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A237897.P7111259530378786829

/-!
# A237899: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237899, there is no canonical definition to state claims against.
-/

/-! ## A237899.P13955432350123612859

`A237904(∑[n]+1)`
-/

namespace A237899.P13955432350123612859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237899.P13955432350123612859

/-! ## A237899.P12428298068557626872

`record[A237904(A249742(n+1))]`
-/

namespace A237899.P12428298068557626872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237899.P12428298068557626872

/-! ## A237899.P12123040655369451855

`record[A237904(A286234(n+1))]`
-/

namespace A237899.P12123040655369451855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237899.P12123040655369451855

/-! ## A237899.P7257956490760411910

`record[A237904(A286244(n+1))]`
-/

namespace A237899.P7257956490760411910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237899.P7257956490760411910

/-! ## A237899.P18167102561301817635

`record[A237904(A000124(∑{digits}[n, #]))]`
-/

namespace A237899.P18167102561301817635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A000124 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237899.P18167102561301817635

