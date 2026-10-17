import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A379100: Triangle read by rows: T(n, k) = binomial(2*k, k) * binomial(2*n, n) / (n + 1).

The programs for A379100, the canonical program `A379100.P14159065626236665285` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379100 has offset 0).

The definition of A379100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379100.P14159065626236665285

`A000984(A002262(n))*A168256(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A379100

/-- `A000984(A002262(n))*A168256(n)` -/
def P14159065626236665285.Spec : Prop :=
  ∀ n, P14159065626236665285.a n = A379100 n

theorem P14159065626236665285.correct : P14159065626236665285.Spec := by
  intro n
  simp only [A379100]

end A379100

/-! ## A379100.P8836406660274253126

`A145890(A245300(n))`
-/

namespace A379100.P8836406660274253126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145890 (A245300 n).toNat

end

end A379100.P8836406660274253126

namespace A379100

/-- `A145890(A245300(n))` -/
def P8836406660274253126.Spec : Prop :=
  ∀ n, P8836406660274253126.a n = A379100 n

end A379100

/-!
# A379103: Expansion of (1-3*x-sqrt(9*x^2-14*x+1))/4.

The programs for A379103, there is no canonical definition to state claims against.
-/

/-! ## A379103.P7720762507058936539

`5*A345917(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A379103.P7720762507058936539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * A345917 (a (n - 1)).toNat

end

end A379103.P7720762507058936539

/-!
# A379105: Triangular array read by rows. T(n,k) is the number of n X n matrices T over GF(2) such that there are exactly 2^k vectors v in GF(2)^n with Tv=v, n>=0, 0<=k<=n.

The programs for A379105, there is no canonical definition to state claims against.
-/

/-! ## A379105.P9788847975117374715

`A286331(∑[2*n]%comp[∑[n]])`
-/

namespace A379105.P9788847975117374715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286331 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A379105.P9788847975117374715

/-! ## A379105.P4098711051413112422

`A286331(∑[char[∑[n]]]²-n-1)`
-/

namespace A379105.P4098711051413112422
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286331 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A379105.P4098711051413112422

/-! ## A379105.P9555776892137052306

`A157963(n)*A259876(n)`
-/

namespace A379105.P9555776892137052306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 n * A259876 n

end

end A379105.P9555776892137052306

/-!
# A379106: Dirichlet convolution of A000120 and A323910, where A323910 is the Dirichlet inverse of the deficiency of n, and A000120 is the binary weight of n.

The programs for A379106, there is no canonical definition to state claims against.
-/

/-! ## A379106.P8305719835172974850

`∑{d}[n+1, A093653(#)*A378432((n+1)/#)]`
-/

namespace A379106.P8305719835172974850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093653 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379106.P8305719835172974850

/-! ## A379106.P18442736773608198426

`∑{d}[n+1, A297115(#)*A323912((n+1)/#)]`
-/

namespace A379106.P18442736773608198426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297115 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379106.P18442736773608198426

/-! ## A379106.P12358933651107090741

`A000122(A046762(n+1))-A379107(n+1)`
-/

namespace A379106.P12358933651107090741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A046762 (n + 1)).toNat - A379107 (n + 1)

end

end A379106.P12358933651107090741

/-! ## A379106.P12825513897895965692

`A168532(A056220(3*(n+1)))-A379107(n+1)`
-/

namespace A379106.P12825513897895965692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (A056220 (3 * (n + 1))).toNat - A379107 (n + 1)

end

end A379106.P12825513897895965692

/-! ## A379106.P927291162769273426

`A000122(A000292(2*n+1))-A379107(n+1)`
-/

namespace A379106.P927291162769273426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000292 (2 * n + 1)).toNat - A379107 (n + 1)

end

end A379106.P927291162769273426

/-!
# A379107: Dirichlet convolution of A033879 and A378990, where A033879 is the deficiency of n, and A378990 is the Dirichlet inverse of the binary weight of n.

The programs for A379107, there is no canonical definition to state claims against.
-/

/-! ## A379107.P15652848497089951056

`∑{d}[n+1, A033879(#)*A378990((n+1)/#)]`
-/

namespace A379107.P15652848497089951056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A378990 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379107.P15652848497089951056

/-! ## A379107.P14093970751038751281

`∑{d}[n+1, A083254(#)*A378989((n+1)/#)]`
-/

namespace A379107.P14093970751038751281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A378989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379107.P14093970751038751281

/-! ## A379107.P12273445466011652454

`A297114(n+1)+A000035(A000079(n))`
-/

namespace A379107.P12273445466011652454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (n + 1) + A000035 (A000079 n).toNat

end

end A379107.P12273445466011652454

/-! ## A379107.P12728945977604883531

`A297114(n+1)+A000007(A000537(n))`
-/

namespace A379107.P12728945977604883531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (n + 1) + A000007 (A000537 n).toNat

end

end A379107.P12728945977604883531

/-! ## A379107.P13200684174725696883

`A297114(n+1)+A007814(A000051(n))`
-/

namespace A379107.P13200684174725696883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (n + 1) + A007814 (A000051 n).toNat

end

end A379107.P13200684174725696883

/-!
# A379108: Dirichlet convolution of sigma with A359579.

The programs for A379108, the canonical program `A379108.P285787528398136253` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379108 has offset 1).

The definition of A379108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379108.P14582937770101178048

`∑{d}[n+1, A379218(#)]`
-/

namespace A379108.P14582937770101178048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A379218 d

end

end A379108.P14582937770101178048

namespace A379108

/-- `∑{d}[n+1, A379218(#)]` -/
def P14582937770101178048.Spec : Prop :=
  ∀ n, P14582937770101178048.a n = A379108 (n + 1)

end A379108

/-! ## A379108.P285787528398136253

`∑{d}[n+1, A000203(#)*A359579((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A379108

/-- `∑{d}[n+1, A000203(#)*A359579((n+1)/#)]` -/
def P285787528398136253.Spec : Prop :=
  ∀ n, P285787528398136253.a n = A379108 (n + 1)

theorem P285787528398136253.correct : P285787528398136253.Spec := by
  intro n
  simp only [A379108, Nat.add_sub_cancel]

end A379108

/-! ## A379108.P14899405752468524098

`A121373(A163932(n+5))+A050460(n+1)`
-/

namespace A379108.P14899405752468524098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A163932 (n + 5)).toNat + A050460 (n + 1)

end

end A379108.P14899405752468524098

namespace A379108

/-- `A121373(A163932(n+5))+A050460(n+1)` -/
def P14899405752468524098.Spec : Prop :=
  ∀ n, P14899405752468524098.a n = A379108 (n + 1)

end A379108

/-! ## A379108.P10455117840981647942

`A050460(n+1)+A025469(A055609(n+1))`
-/

namespace A379108.P10455117840981647942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (n + 1) + A025469 (A055609 (n + 1)).toNat

end

end A379108.P10455117840981647942

namespace A379108

/-- `A050460(n+1)+A025469(A055609(n+1))` -/
def P10455117840981647942.Spec : Prop :=
  ∀ n, P10455117840981647942.a n = A379108 (n + 1)

end A379108

/-!
# A379109: Dirichlet convolution of A046692 (inverse of sigma) with A336923, where A336923(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

The programs for A379109, the canonical program `A379109.P7269606756069471216` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379109 has offset 1).

The definition of A379109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379109.P7269606756069471216

`∑{d}[n+1, A046692(#)*A336923((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379109

/-- `∑{d}[n+1, A046692(#)*A336923((n+1)/#)]` -/
def P7269606756069471216.Spec : Prop :=
  ∀ n, P7269606756069471216.a n = A379109 (n + 1)

theorem P7269606756069471216.correct : P7269606756069471216.Spec := by
  intro n
  simp only [A379109, Nat.add_sub_cancel]

end A379109

/-! ## A379109.P6491778358770370496

`∑{d}[n+1, A008683(#)*A379219((n+1)/#)]`
-/

namespace A379109.P6491778358770370496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A379219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379109.P6491778358770370496

namespace A379109

/-- `∑{d}[n+1, A008683(#)*A379219((n+1)/#)]` -/
def P6491778358770370496.Spec : Prop :=
  ∀ n, P6491778358770370496.a n = A379109 (n + 1)

end A379109

/-!
# A379111: a(n) = 1 if bigomega(sigma(n)) is equal to omega(n), otherwise 0.

The programs for A379111, there is no canonical definition to state claims against.
-/

/-! ## A379111.P3674178801821297436

`char[A324892(n+1)-1]`
-/

namespace A379111.P3674178801821297436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324892 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379111.P3674178801821297436

/-! ## A379111.P6615462868833869984

`char[A379112(n+1)-1]`
-/

namespace A379111.P6615462868833869984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379112 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379111.P6615462868833869984

/-! ## A379111.P822460477073368641

`A019590(A324894(n+1))`
-/

namespace A379111.P822460477073368641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A324894 (n + 1)).toNat

end

end A379111.P822460477073368641

/-! ## A379111.P17743212865446505793

`A000007(A324894(n+1)-1)`
-/

namespace A379111.P17743212865446505793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A324894 (n + 1) - 1).toNat

end

end A379111.P17743212865446505793

/-! ## A379111.P13686933097240765245

`A010051(2*A324894(n+1))`
-/

namespace A379111.P13686933097240765245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A324894 (n + 1)).toNat

end

end A379111.P13686933097240765245

/-! ## A379111.P3199623806282687737

`A010051(A324894(n+1)+A324894(n+1))`
-/

namespace A379111.P3199623806282687737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A324894 (n + 1) + A324894 (n + 1)).toNat

end

end A379111.P3199623806282687737

/-! ## A379111.P11259781810838595563

`A361019(A324894(n+1)²)`
-/

namespace A379111.P11259781810838595563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361019 (A324894 (n + 1) ^ 2).toNat

end

end A379111.P11259781810838595563

/-! ## A379111.P12904143716260506963

`A359484(A324894(n+1)²)`
-/

namespace A379111.P12904143716260506963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359484 (A324894 (n + 1) ^ 2).toNat

end

end A379111.P12904143716260506963

/-! ## A379111.P2814435248862449455

`A373993(A126851(n+1))`
-/

namespace A379111.P2814435248862449455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373993 (A126851 (n + 1)).toNat

end

end A379111.P2814435248862449455

/-! ## A379111.P4095354488922143286

`A336546(A033286(2*(n+1))/2)`
-/

namespace A379111.P4095354488922143286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (SequenceMachineLib.roundAway ((A033286 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A379111.P4095354488922143286

/-!
# A379112: Kalita-Saikia numbers: Numbers k such that the number of prime factors (with multiplicity) of sigma(k) is equal to the number of distinct prime factors of k.

The programs for A379112, there is no canonical definition to state claims against.
-/

/-! ## A379112.P3751087825687494791

`filter[A028982(n+1), A379111(#)]`
-/

namespace A379112.P3751087825687494791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379111 (f1 j).toNat = 1) n)

end

end A379112.P3751087825687494791

/-! ## A379112.P11752747760945159768

`filter[A083854(n+1), A379111(#)]`
-/

namespace A379112.P11752747760945159768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379111 (f1 j).toNat = 1) n)

end

end A379112.P11752747760945159768

/-! ## A379112.P17163305256629849632

`filter[A318083(n+1), A379111(#)]`
-/

namespace A379112.P17163305256629849632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379111 (f1 j).toNat = 1) n)

end

end A379112.P17163305256629849632

/-! ## A379112.P12349850286262265224

`filter[A335851(n+1), A379111(#)]`
-/

namespace A379112.P12349850286262265224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379111 (f1 j).toNat = 1) n)

end

end A379112.P12349850286262265224

/-! ## A379112.P15704470522855981927

`filter[A372894(n+1), A379111(#)]`
-/

namespace A379112.P15704470522855981927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379111 (f1 j).toNat = 1) n)

end

end A379112.P15704470522855981927

/-! ## A379112.P8920558877194562369

`filter[A155562(n+2), A379111(#)]`
-/

namespace A379112.P8920558877194562369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379111 (f1 j).toNat = 1) n)

end

end A379112.P8920558877194562369

/-! ## A379112.P3586445349802646755

`record[(n+1)*A379111(n+1)]`
-/

namespace A379112.P3586445349802646755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A379111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379112.P3586445349802646755

/-! ## A379112.P15603773365837000871

`record[A324892(n+1)]`
-/

namespace A379112.P15603773365837000871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379112.P15603773365837000871

/-! ## A379112.P7133474167647792769

`eq[1, A379111(n+1)]+1`
-/

namespace A379112.P7133474167647792769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379112.P7133474167647792769

/-! ## A379112.P4950351880717216125

`filter[A035258(n+1), A379111(#)]`
-/

namespace A379112.P4950351880717216125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379111 (f1 j).toNat = 1) n)

end

end A379112.P4950351880717216125

/-!
# A379113: a(1) = 1; for n > 1, a(n) is the greatest proper unitary divisor d of n such that A048720(A065621(sigma(d)),sigma(n/d)) is equal to sigma(n).

The programs for A379113, there is no canonical definition to state claims against.
-/

/-! ## A379113.P15353598531833132795

`(n+1)/A379119(n+1)`
-/

namespace A379113.P15353598531833132795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A379119 (n + 1) : ℚ)

end

end A379113.P15353598531833132795

/-! ## A379113.P1010637841447471978

`val(A000079(n+1), A000079(A379119(n+1)))`
-/

namespace A379113.P1010637841447471978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 1)).toNat (A000079 (A379119 (n + 1)).toNat).toNat

end

end A379113.P1010637841447471978

/-! ## A379113.P4379488283905324103

`A048798(A048798(n+1)*A379119(n+1))`
-/

namespace A379113.P4379488283905324103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A048798 (n + 1) * A379119 (n + 1)).toNat

end

end A379113.P4379488283905324103

/-! ## A379113.P14132915040404745255

`A381639(n+1)-A000122(A333221(3*(n+1)))`
-/

namespace A379113.P14132915040404745255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381639 (n + 1) - A000122 (A333221 (3 * (n + 1))).toNat

end

end A379113.P14132915040404745255

/-! ## A379113.P15744073571823164818

`gcd(n+1, A004281(A125199(3*(n+1))))`
-/

namespace A379113.P15744073571823164818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A004281 (A125199 (3 * (n + 1))).toNat)

end

end A379113.P15744073571823164818

/-!
# A379114: Numbers k for which A379113(k) > 1, i.e., k that have a proper unitary divisor d > 1 such that A048720(A065621(sigma(d)),sigma(k/d)) is equal to sigma(k).

The programs for A379114, there is no canonical definition to state claims against.
-/

/-! ## A379114.P3048336497533065106

`lt[1, A379113(n+1)]+1`
-/

namespace A379114.P3048336497533065106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379114.P3048336497533065106

/-! ## A379114.P11926653065592142844

`lt[A379119(n+1), n]+1`
-/

namespace A379114.P11926653065592142844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379119 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A379114.P11926653065592142844

/-! ## A379114.P13995881131970256810

`filter[A024619(n+1), A379118(#)]`
-/

namespace A379114.P13995881131970256810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P13995881131970256810

/-! ## A379114.P18244864423045434978

`filter[A361102(n+1), A379118(#)]`
-/

namespace A379114.P18244864423045434978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P18244864423045434978

/-! ## A379114.P18162189686444296048

`filter[A387335(n+1), A379118(#)]`
-/

namespace A379114.P18162189686444296048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P18162189686444296048

/-! ## A379114.P2036983663954861076

`filter[A139118(n+1), A379118(#)]`
-/

namespace A379114.P2036983663954861076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P2036983663954861076

/-! ## A379114.P8901622862229222421

`filter[A268388(n+1), A379118(#)]`
-/

namespace A379114.P8901622862229222421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P8901622862229222421

/-! ## A379114.P1266591064391275742

`filter[A080257(n+1), A379118(#)]`
-/

namespace A379114.P1266591064391275742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P1266591064391275742

/-! ## A379114.P13591626114416061903

`filter[A343311(n+1), A379118(#)]`
-/

namespace A379114.P13591626114416061903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P13591626114416061903

/-! ## A379114.P13056023336615880134

`filter[A176423(n+1), A379118(#)]`
-/

namespace A379114.P13056023336615880134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P13056023336615880134

/-! ## A379114.P17895973035923121559

`filter[A002808(n+2), A379118(#)]`
-/

namespace A379114.P17895973035923121559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P17895973035923121559

/-! ## A379114.P14654883727524731456

`filter[A018252(n+3), A379118(#)]`
-/

namespace A379114.P14654883727524731456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P14654883727524731456

/-! ## A379114.P6412124700433667470

`filter[A056653(n+1), A379118(#)]`
-/

namespace A379114.P6412124700433667470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P6412124700433667470

/-! ## A379114.P13782397311666457498

`filter[A141468(n+3), A379118(#)]`
-/

namespace A379114.P13782397311666457498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P13782397311666457498

/-! ## A379114.P2171519771529141632

`filter[A222307(2*n+1), A379118(#)]`
-/

namespace A379114.P2171519771529141632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P2171519771529141632

/-! ## A379114.P16774592711807098884

`filter[A065090(n+1), A379118(#)]`
-/

namespace A379114.P16774592711807098884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P16774592711807098884

/-! ## A379114.P12795959266660933564

`filter[A171581(n+1), A379118(#)]`
-/

namespace A379114.P12795959266660933564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P12795959266660933564

/-! ## A379114.P175318975725882057

`filter[A173905(n+2), A379118(#)]`
-/

namespace A379114.P175318975725882057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P175318975725882057

/-! ## A379114.P11113462723597119784

`filter[A338924(n+1), A379118(#)]`
-/

namespace A379114.P11113462723597119784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P11113462723597119784

/-! ## A379114.P8782789205794229699

`filter[A073900(n+1), A379118(#)]`
-/

namespace A379114.P8782789205794229699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A379114.P8782789205794229699

/-!
# A379115: a(n) = A328845(n) mod 5, where A328845 is the first Fibonacci based variant of arithmetic derivative.

The programs for A379115, there is no canonical definition to state claims against.
-/

/-! ## A379115.P1931211196417599466

`A010874(A374125(n))`
-/

namespace A379115.P1931211196417599466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A374125 n).toNat

end

end A379115.P1931211196417599466

/-! ## A379115.P430950365116637663

`A010874(A328845(n))`
-/

namespace A379115.P430950365116637663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A328845 n).toNat

end

end A379115.P430950365116637663

/-! ## A379115.P2426966569533698579

`A374125(n)%A168092(n)`
-/

namespace A379115.P2426966569533698579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374125 n) (A168092 n)

end

end A379115.P2426966569533698579

/-! ## A379115.P7739000572214912867

`A328845(n)%A168092(n)`
-/

namespace A379115.P7739000572214912867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328845 n) (A168092 n)

end

end A379115.P7739000572214912867

/-! ## A379115.P1099296674522215949

`A328845(A000007(n)+n)%5`
-/

namespace A379115.P1099296674522215949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328845 (A000007 n + (n : ℤ)).toNat) 5

end

end A379115.P1099296674522215949

/-!
# A379116: Numbers k for which A328845(k) is a multiple of 5, where A328845 is the first Fibonacci based variant of arithmetic derivative.

The programs for A379116, there is no canonical definition to state claims against.
-/

/-! ## A379116.P15715278311061745102

`eq[0, A379115(n)]`
-/

namespace A379116.P15715278311061745102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379115 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379116.P15715278311061745102

/-! ## A379116.P344079062651049510

`lt[0, A379117(n)]`
-/

namespace A379116.P344079062651049510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A379116.P344079062651049510

/-! ## A379116.P2829480891223126558

`lt[A379115(n), A063524(n)+1]`
-/

namespace A379116.P2829480891223126558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379116.P2829480891223126558

/-! ## A379116.P11710060464104380500

`eq[0, A374125(n)%5]`
-/

namespace A379116.P11710060464104380500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374125 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379116.P11710060464104380500

/-! ## A379116.P8416649335347684989

`eq[A329684(n), A379117(n)]`
-/

namespace A379116.P8416649335347684989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379116.P8416649335347684989

/-! ## A379116.P3350717342048725136

`lt[A379115(n), A010684(2*n)]`
-/

namespace A379116.P3350717342048725136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379116.P3350717342048725136

/-! ## A379116.P9450362971721240085

`filter[A179005(n+1), A379117(#)]`
-/

namespace A379116.P9450362971721240085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379117 (f1 j).toNat = 1) n)

end

end A379116.P9450362971721240085

/-!
# A379117: a(n) = 1 if A328845(n) is a multiple of 5, otherwise 0, where A328845 is the first Fibonacci based variant of arithmetic derivative.

The programs for A379117, there is no canonical definition to state claims against.
-/

/-! ## A379117.P5229360713938474959

`char[A379116(n+1)]`
-/

namespace A379117.P5229360713938474959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379117.P5229360713938474959

/-! ## A379117.P8734576294221872738

`char[eq[0, A379115(n)]]`
-/

namespace A379117.P8734576294221872738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379115 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379117.P8734576294221872738

/-! ## A379117.P3324940743487564482

`A079998(A374125(n))`
-/

namespace A379117.P3324940743487564482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A374125 n).toNat

end

end A379117.P3324940743487564482

/-! ## A379117.P3494577358983040863

`A033324(2*n+3)^A379115(n)`
-/

namespace A379117.P3494577358983040863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033324 (2 * n + 3) : ℚ) ^ (A379115 n : ℤ)

end

end A379117.P3494577358983040863

/-! ## A379117.P9346394255363046197

`A000007(lcm(n, A379115(n)))`
-/

namespace A379117.P9346394255363046197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lcm (n : ℤ) (A379115 n))

end

end A379117.P9346394255363046197

/-! ## A379117.P6160632733082558386

`A000007(n*A379115(n))`
-/

namespace A379117.P6160632733082558386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A379115 n).toNat

end

end A379117.P6160632733082558386

/-! ## A379117.P5860209741928709088

`A328308(A324297(n+1)*A379115(n))`
-/

namespace A379117.P5860209741928709088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A324297 (n + 1) * A379115 n).toNat

end

end A379117.P5860209741928709088

/-!
# A379118: Characteristic function of A379114, numbers k that have a proper unitary divisor d > 1 such that A048720(A065621(sigma(d)),sigma(k/d)) is equal to sigma(k).

The programs for A379118, there is no canonical definition to state claims against.
-/

/-! ## A379118.P7734482005522000242

`char[A379114(n+1)-1]`
-/

namespace A379118.P7734482005522000242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379114 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379118.P7734482005522000242

/-! ## A379118.P18118621494307905726

`n²%A379113(n+1)`
-/

namespace A379118.P18118621494307905726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A379113 (n + 1))

end

end A379118.P18118621494307905726

/-! ## A379118.P2782937273072980067

`or(1, ∑[8*n])%((n+1)/A379119(n+1))`
-/

namespace A379118.P2782937273072980067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A379119 (n + 1) : ℚ)))

end

end A379118.P2782937273072980067

/-! ## A379118.P2044863411415493078

`1-A000007(A379129(n+1))`
-/

namespace A379118.P2044863411415493078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A379129 (n + 1)).toNat

end

end A379118.P2044863411415493078

/-! ## A379118.P5247170144899227450

`A185114(A379113(n+1)+2)`
-/

namespace A379118.P5247170144899227450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (A379113 (n + 1) + 2).toNat

end

end A379118.P5247170144899227450

/-! ## A379118.P12158770489527484740

`A215282(A379129(n+1)+1)%2`
-/

namespace A379118.P12158770489527484740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215282 (A379129 (n + 1) + 1).toNat) 2

end

end A379118.P12158770489527484740

/-! ## A379118.P13012488030487761616

`A055396(2^A379129(n+1))`
-/

namespace A379118.P13012488030487761616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A379129 (n + 1) : ℤ))).toNat

end

end A379118.P13012488030487761616

/-! ## A379118.P12025206387620925640

`A379117(gcd(A228520(n+1), A379129(n+1)))`
-/

namespace A379118.P12025206387620925640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379117 (Int.gcd (A228520 (n + 1)) (A379129 (n + 1)))

end

end A379118.P12025206387620925640

/-! ## A379118.P17833593090949975272

`A136565(A379113(n+1))^A000041(n)`
-/

namespace A379118.P17833593090949975272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136565 (A379113 (n + 1)).toNat : ℚ) ^ (A000041 n : ℤ)

end

end A379118.P17833593090949975272

/-! ## A379118.P10182173565279462423

`A136565(A379113(n+1))^A027865(n)`
-/

namespace A379118.P10182173565279462423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136565 (A379113 (n + 1)).toNat : ℚ) ^ (A027865 n : ℤ)

end

end A379118.P10182173565279462423

/-!
# A379119: a(1) = 1; for n > 1, a(n) is the smallest unitary divisor d > 1 of n such that A048720(A065621(sigma(n/d)),sigma(d)) is equal to sigma(n).

The programs for A379119, there is no canonical definition to state claims against.
-/

/-! ## A379119.P10977735759544042587

`(n+1)/A379113(n+1)`
-/

namespace A379119.P10977735759544042587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A379113 (n + 1) : ℚ)

end

end A379119.P10977735759544042587

/-! ## A379119.P1452683306316032844

`(n+1)/(A381639(n+1)-A000122(A333221(3*(n+1))))`
-/

namespace A379119.P1452683306316032844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A381639 (n + 1) - A000122 (A333221 (3 * (n + 1))).toNat : ℚ)

end

end A379119.P1452683306316032844

/-! ## A379119.P18299823829234075309

`(n+1)/gcd(n+1, A054055(A000230(n)))`
-/

namespace A379119.P18299823829234075309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A054055 (A000230 n).toNat) : ℚ)

end

end A379119.P18299823829234075309

/-! ## A379119.P11463935692205253177

`A182093(A064084(n+1))`
-/

namespace A379119.P11463935692205253177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (A064084 (n + 1)).toNat

end

end A379119.P11463935692205253177

/-! ## A379119.P8850611218775592413

`A345931(A130479(n+1))`
-/

namespace A379119.P8850611218775592413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (A130479 (n + 1)).toNat

end

end A379119.P8850611218775592413

/-!
# A379120: a(1) = 1; and for n > 1, a(n) is the smallest divisor d > 1 of n such that A048720(A065621(n/d),d) is equal to n.

The programs for A379120, there is no canonical definition to state claims against.
-/

/-! ## A379120.P2515485831957183351

`(n+1)/A325567(n+1)`
-/

namespace A379120.P2515485831957183351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A325567 (n + 1) : ℚ)

end

end A379120.P2515485831957183351

/-! ## A379120.P900883250278279214

`A325566(A379126(n+1)/A325566(n+1))`
-/

namespace A379120.P900883250278279214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (SequenceMachineLib.roundAway ((A379126 (n + 1) : ℚ) / (A325566 (n + 1) : ℚ))).toNat

end

end A379120.P900883250278279214

/-!
# A379121: Odd squares k for which A379113(k) > 1, i.e., k that have a proper unitary divisor d > 1 such that A048720(A065621(sigma(d)),sigma(k/d)) is equal to sigma(k).

The programs for A379121, there is no canonical definition to state claims against.
-/

/-! ## A379121.P10242688137144250763

`A379122(n+1)²`
-/

namespace A379121.P10242688137144250763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379122 (n + 1) ^ 2

end

end A379121.P10242688137144250763

/-! ## A379121.P11780415625727503425

`A379123(n+1)*A379124(n+1)`
-/

namespace A379121.P11780415625727503425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379123 (n + 1) * A379124 (n + 1)

end

end A379121.P11780415625727503425

/-! ## A379121.P17561811153951914332

`A379122(A000027(n+1))*A379122(n+1)`
-/

namespace A379121.P17561811153951914332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379122 (A000027 (n + 1)).toNat * A379122 (n + 1)

end

end A379121.P17561811153951914332

/-! ## A379121.P34170921528176508

`A379122(n+1)^A077805(A065338(2*(n+1)))`
-/

namespace A379121.P34170921528176508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379122 (n + 1) : ℚ) ^ (A077805 (A065338 (2 * (n + 1))).toNat : ℤ)

end

end A379121.P34170921528176508

/-! ## A379121.P13420298660784082076

`A379122(n+1)^A077805(A046523(3*(n+1)))`
-/

namespace A379121.P13420298660784082076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379122 (n + 1) : ℚ) ^ (A077805 (A046523 (3 * (n + 1))).toNat : ℤ)

end

end A379121.P13420298660784082076

/-! ## A379121.P6290241434691770118

`A379122(n+1)^A046523(A000040(n+1))`
-/

namespace A379121.P6290241434691770118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379122 (n + 1) : ℚ) ^ (A046523 (A000040 (n + 1)).toNat : ℤ)

end

end A379121.P6290241434691770118

/-!
# A379122: Odd numbers m for which A379113(m^2) > 1, i.e., k = m^2 has a proper unitary divisor d > 1 such that A048720(A065621(sigma(d)),sigma(k/d)) is equal to sigma(k).

The programs for A379122, there is no canonical definition to state claims against.
-/

/-! ## A379122.P8237941467540263443

`sqrt(A379121(n+1))`
-/

namespace A379122.P8237941467540263443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379121 (n + 1) : ℝ)

end

end A379122.P8237941467540263443

/-! ## A379122.P11682211755417103080

`sqrt(A379123(n+1)*A379124(n+1))`
-/

namespace A379122.P11682211755417103080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379123 (n + 1) * A379124 (n + 1) : ℝ)

end

end A379122.P11682211755417103080

/-! ## A379122.P4847885325112970764

`A000027(root(A379121(n+1), 2))`
-/

namespace A379122.P4847885325112970764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A379121 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A379122.P4847885325112970764

/-!
# A379123: a(n) = A379113(A379121(n)), where A379121 gives those odd squares k for which A379113(k) > 1.

The programs for A379123, there is no canonical definition to state claims against.
-/

/-! ## A379123.P8766363354154341306

`A379121(n+1)/A379124(n+1)`
-/

namespace A379123.P8766363354154341306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379121 (n + 1) : ℚ) / (A379124 (n + 1) : ℚ)

end

end A379123.P8766363354154341306

/-! ## A379123.P9368972388791864903

`A379122(n+1)²/A379124(n+1)`
-/

namespace A379123.P9368972388791864903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379122 (n + 1) ^ 2 : ℚ) / (A379124 (n + 1) : ℚ)

end

end A379123.P9368972388791864903

/-!
# A379124: a(n) = A379119(A379121(n)), where A379121 gives those odd squares k for which A379113(k) > 1 and A379119(n) = n/A379113(n).

The programs for A379124, there is no canonical definition to state claims against.
-/

/-! ## A379124.P12273336102492111097

`A379121(n+1)/A379123(n+1)`
-/

namespace A379124.P12273336102492111097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379121 (n + 1) : ℚ) / (A379123 (n + 1) : ℚ)

end

end A379124.P12273336102492111097

/-! ## A379124.P5179722822489305973

`A379122(n+1)²/A379123(n+1)`
-/

namespace A379124.P5179722822489305973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379122 (n + 1) ^ 2 : ℚ) / (A379123 (n + 1) : ℚ)

end

end A379124.P5179722822489305973

/-! ## A379124.P14860622550527566466

`A086844(A228549(n+1)²)²`
-/

namespace A379124.P14860622550527566466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086844 (A228549 (n + 1) ^ 2).toNat ^ 2

end

end A379124.P14860622550527566466

/-!
# A379125: Sum of divisors of those odd squares k for which A379113(k) > 1, i.e., k that have a proper unitary divisor d > 1 such that A048720(A065621(sigma(d)),sigma(k/d)) is equal to sigma(k).

The programs for A379125, there is no canonical definition to state claims against.
-/

/-! ## A379125.P6891623271974843378

`A065764(A379122(n+1))`
-/

namespace A379125.P6891623271974843378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (A379122 (n + 1)).toNat

end

end A379125.P6891623271974843378

/-! ## A379125.P5095354351064170606

`∑{d}[A379121(n+1), #]`
-/

namespace A379125.P5095354351064170606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A379125.P5095354351064170606

/-! ## A379125.P15932842832753127332

`∑{d}[A324832(2*n+1)+A379122(n+1)², #]`
-/

namespace A379125.P15932842832753127332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324832 (2 * n + 1) + A379122 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A379125.P15932842832753127332

/-! ## A379125.P3308598043012549071

`∑{d}[A379122(n+1)^A046523(A000040(n+1)), #]`
-/

namespace A379125.P3308598043012549071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379122 (n + 1) : ℚ) ^ (A046523 (A000040 (n + 1)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A379125.P3308598043012549071

/-! ## A379125.P4583362362198503667

`∑{d}[A379122(n+1)^A051903(A171641(n+1)), #]`
-/

namespace A379125.P4583362362198503667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379122 (n + 1) : ℚ) ^ (A051903 (A171641 (n + 1)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A379125.P4583362362198503667

/-!
# A379126: a(1) = 1; for n > 1, a(n) is the least number k such that A325567(k) = n, or 0 if no such number exists.

The programs for A379126, there is no canonical definition to state claims against.
-/

/-! ## A379126.P14009188129830580585

`(n+1)*A379228(n+1)`
-/

namespace A379126.P14009188129830580585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A379228 (n + 1)

end

end A379126.P14009188129830580585

/-!
# A379127: a(1) = 1; for n > 1, a(n) is the largest proper divisor d of 2n-1 such that A048720(A065621(d),(2n-1)/d) is equal to 2n-1.

The programs for A379127, there is no canonical definition to state claims against.
-/

/-! ## A379127.P7106729998051316266

`A325567(2*n+1)`
-/

namespace A379127.P7106729998051316266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (2 * n + 1)

end

end A379127.P7106729998051316266

/-! ## A379127.P14991779696244325037

`(2*n+1)/A379120(2*n+1)`
-/

namespace A379127.P14991779696244325037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A379120 (2 * n + 1) : ℚ)

end

end A379127.P14991779696244325037

/-! ## A379127.P2924304991359538867

`A325566(Δ[n²])`
-/

namespace A379127.P2924304991359538867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A379127.P2924304991359538867

/-! ## A379127.P4723232757570144186

`gcd(2*n+1, A325566(2*n+1))`
-/

namespace A379127.P4723232757570144186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A325566 (2 * n + 1))

end

end A379127.P4723232757570144186

/-! ## A379127.P15243379748529611776

`filter[A325566(2*n+1), A000035(#)]`
-/

namespace A379127.P15243379748529611776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A379127.P15243379748529611776

/-! ## A379127.P10371192571256076275

`filter[A325566(2*n+1), A035263(#)]`
-/

namespace A379127.P10371192571256076275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A379127.P10371192571256076275

/-! ## A379127.P2358168862739680650

`filter[A325566(2*n+1), A039982(#)]`
-/

namespace A379127.P2358168862739680650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A379127.P2358168862739680650

/-! ## A379127.P9661141244519981397

`A325566(2*n+1)%record[A083237(n)]`
-/

namespace A379127.P9661141244519981397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325566 (2 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A379127.P9661141244519981397

/-! ## A379127.P14569101907158469590

`filter[A325567(n+2), A000035(#)]`
-/

namespace A379127.P14569101907158469590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A379127.P14569101907158469590

/-! ## A379127.P4838672801106854328

`filter[A325567(n+2), A374134(#)]`
-/

namespace A379127.P4838672801106854328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A379127.P4838672801106854328

/-! ## A379127.P5211129796480530057

`A093178(2*n)*A325567(A004442(2*n))`
-/

namespace A379127.P5211129796480530057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A325567 (A004442 (2 * n)).toNat

end

end A379127.P5211129796480530057

/-! ## A379127.P8427186864562100103

`filter[A325566(n+1), A374134(#)]`
-/

namespace A379127.P8427186864562100103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A379127.P8427186864562100103

/-! ## A379127.P3971719282829800777

`A325642(A325566(2*(2*n+1)))`
-/

namespace A379127.P3971719282829800777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A325566 (2 * (2 * n + 1))).toNat

end

end A379127.P3971719282829800777

/-!
# A379128: a(1) = 1; for n > 1, a(n) is the least odd number k such that A325567(k) = 2*n-1, or 0 if no such number exists.

The programs for A379128, there is no canonical definition to state claims against.
-/

/-! ## A379128.P17669138898855068630

`A379126(2*n+1)`
-/

namespace A379128.P17669138898855068630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379126 (2 * n + 1)

end

end A379128.P17669138898855068630

/-! ## A379128.P2224387159779308424

`A379126(Δ[n²])^ceil(n/98)`
-/

namespace A379128.P2224387159779308424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A379128.P2224387159779308424

/-! ## A379128.P8324601030214711083

`(2*n+1)*A379228(2*n+1)`
-/

namespace A379128.P8324601030214711083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A379228 (2 * n + 1)

end

end A379128.P8324601030214711083

/-! ## A379128.P12493252527817254995

`A000027(A379126(n+1+n))`
-/

namespace A379128.P12493252527817254995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A379126 (n + 1 + n)).toNat

end

end A379128.P12493252527817254995

/-! ## A379128.P2455873497140135569

`A379126(Δ[n²])+A000007(A006489(n+1))`
-/

namespace A379128.P2455873497140135569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000007 (A006489 (n + 1)).toNat

end

end A379128.P2455873497140135569

/-! ## A379128.P13658852395364904557

`A379126(Δ[n²])+A194591(A204553(n+1))`
-/

namespace A379128.P13658852395364904557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A194591 (A204553 (n + 1)).toNat

end

end A379128.P13658852395364904557

/-! ## A379128.P14557250906375586932

`A379126(Δ[n²])+A323162(A291284(n+1))`
-/

namespace A379128.P14557250906375586932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A323162 (A291284 (n + 1)).toNat

end

end A379128.P14557250906375586932

/-!
# A379129: a(n) is the number of unitary proper divisors d > 1 of n for which A048720(A065621(sigma(d)),sigma(n/d)) is equal to sigma(n).

The programs for A379129, there is no canonical definition to state claims against.
-/

/-! ## A379129.P15507247270065821045

`A379130(n+1)-A379130(A379119(n+1))`
-/

namespace A379129.P15507247270065821045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379130 (n + 1) - A379130 (A379119 (n + 1)).toNat

end

end A379129.P15507247270065821045

/-! ## A379129.P2773093454957058832

`A075833(n+1)%A379130(n+1)`
-/

namespace A379129.P2773093454957058832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075833 (n + 1)) (A379130 (n + 1))

end

end A379129.P2773093454957058832

/-! ## A379129.P11845202635920618773

`A031687(n+1)%A379130(n+1)`
-/

namespace A379129.P11845202635920618773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031687 (n + 1)) (A379130 (n + 1))

end

end A379129.P11845202635920618773

/-! ## A379129.P10405946888702430829

`A175632(A000040(n+2))*A379118(n+1)`
-/

namespace A379129.P10405946888702430829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175632 (A000040 (n + 2)).toNat * A379118 (n + 1)

end

end A379129.P10405946888702430829

/-! ## A379129.P3890609296706521849

`A333784(n+1)%A020639(A179480(3*(n+1)))`
-/

namespace A379129.P3890609296706521849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333784 (n + 1)) (A020639 (A179480 (3 * (n + 1))).toNat)

end

end A379129.P3890609296706521849

/-!
# A379130: a(n) is the number of unitary divisors d of n for which A048720(A065621(sigma(d)),sigma(n/d)) is equal to sigma(n).

The programs for A379130, there is no canonical definition to state claims against.
-/

/-! ## A379130.P9169258843950622580

`gcd(A181340(A350840(n)), A323023(n+1))`
-/

namespace A379130.P9169258843950622580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181340 (A350840 n).toNat) (A323023 (n + 1))

end

end A379130.P9169258843950622580

/-! ## A379130.P4070742095453152010

`A244227(A321417(n+1))`
-/

namespace A379130.P4070742095453152010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 (A321417 (n + 1)).toNat

end

end A379130.P4070742095453152010

/-! ## A379130.P18153220241317176726

`A384915(lt[A007690(n), A126885(2*n)])`
-/

namespace A379130.P18153220241317176726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126885 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384915 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379130.P18153220241317176726

/-! ## A379130.P14903648192243993177

`A000005(gcd(A023893(n), A054235(2*n+5)))`
-/

namespace A379130.P14903648192243993177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A023893 n) (A054235 (2 * n + 5)))

end

end A379130.P14903648192243993177

/-! ## A379130.P9326371489386225860

`A250068(A250068(n+1)+A143494(2*(n+1)))`
-/

namespace A379130.P9326371489386225860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A250068 (n + 1) + A143494 (2 * (n + 1))).toNat

end

end A379130.P9326371489386225860

/-!
# A379139: G.f. A(x) satisfies A(x) = ( (1 + x*A(x)^(1/3)) * (1 + x*A(x)^(2/3)) )^3.

The programs for A379139, there is no canonical definition to state claims against.
-/

/-! ## A379139.P10141207226334323755

`A193589(∑[n+3])`
-/

namespace A379139.P10141207226334323755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193589 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379139.P10141207226334323755

/-! ## A379139.P869927709380994387

`A011274(A167614(n+1))`
-/

namespace A379139.P869927709380994387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (A167614 (n + 1)).toNat

end

end A379139.P869927709380994387

/-! ## A379139.P12698210484291709371

`A011272(n+2)-A007863(n+1)`
-/

namespace A379139.P12698210484291709371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011272 (n + 2) - A007863 (n + 1)

end

end A379139.P12698210484291709371

/-!
# A379141: If n = Product (p_j^k_j) then a(n) = numerator of Sum 1/k_j.

The programs for A379141, there is no canonical definition to state claims against.
-/

/-! ## A379141.P13398580900512999759

`A318573(A181819(n+1))`
-/

namespace A379141.P13398580900512999759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A181819 (n + 1)).toNat

end

end A379141.P13398580900512999759

/-! ## A379141.P15505796033589590151

`A214949(A320390(n+1))`
-/

namespace A379141.P15505796033589590151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (A320390 (n + 1)).toNat

end

end A379141.P15505796033589590151

/-! ## A379141.P17152614669166499164

`A285572(n+1)%A084558(A213553(n+1))`
-/

namespace A379141.P17152614669166499164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285572 (n + 1)) (A084558 (A213553 (n + 1)).toNat)

end

end A379141.P17152614669166499164

/-! ## A379141.P3185123251136767669

`and(A267504(n+1), A351414(n+1))`
-/

namespace A379141.P3185123251136767669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267504 (n + 1)) (A351414 (n + 1))

end

end A379141.P3185123251136767669

/-! ## A379141.P4217412355045307656

`and(A213893(n+1), A351414(n+1))`
-/

namespace A379141.P4217412355045307656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213893 (n + 1)) (A351414 (n + 1))

end

end A379141.P4217412355045307656

/-!
# A379144: a(n) is the number of iterations of the function x --> 2*x - 1 such that x remains prime, starting from A005382(n).

The programs for A379144, there is no canonical definition to state claims against.
-/

/-! ## A379144.P11245387127882563167

`A285700(A005383(n+1))`
-/

namespace A379144.P11245387127882563167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (A005383 (n + 1)).toNat

end

end A379144.P11245387127882563167

/-! ## A379144.P6648723750345375327

`A181715(A174801(n+2))`
-/

namespace A379144.P6648723750345375327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181715 (A174801 (n + 2)).toNat

end

end A379144.P6648723750345375327

/-! ## A379144.P3218249827533522315

`A285700(A079147(n+2))`
-/

namespace A379144.P3218249827533522315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (A079147 (n + 2)).toNat

end

end A379144.P3218249827533522315

/-! ## A379144.P4528285054611805636

`A285700(A005382(n+1))-1`
-/

namespace A379144.P4528285054611805636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (A005382 (n + 1)).toNat - 1

end

end A379144.P4528285054611805636

/-! ## A379144.P13257395787828409207

`A181715(A137288(n+1))-1`
-/

namespace A379144.P13257395787828409207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181715 (A137288 (n + 1)).toNat - 1

end

end A379144.P13257395787828409207

/-!
# A379146: Numbers k that are not in A378930 (i.e., are never the value of f(n) = n * d(n) / gcd(n, d(n))^2, where d = A000005).

The programs for A379146, there is no canonical definition to state claims against.
-/

/-! ## A379146.P10869983530163091597

`∩[A036763(n+1), A353355(n+1)]`
-/

namespace A379146.P10869983530163091597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379146.P10869983530163091597

/-! ## A379146.P4939892250509730296

`A036763(lt[1, A111820(3*n+1)])`
-/

namespace A379146.P4939892250509730296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111820 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379146.P4939892250509730296

/-! ## A379146.P11081669904500021958

`∩[A036763(n+1), A050675(n+1)]`
-/

namespace A379146.P11081669904500021958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379146.P11081669904500021958

/-! ## A379146.P15380548511259307754

`∩[A036763(n+1), A161186(n+1)]`
-/

namespace A379146.P15380548511259307754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379146.P15380548511259307754

/-! ## A379146.P15180633444374328835

`∩[A036763(n+1), A236403(n+1)]`
-/

namespace A379146.P15180633444374328835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379146.P15180633444374328835

/-!
# A379148: a(n) is the number of iterations of the function x --> 2*x + 1 such that x remains prime, starting from A005384(n).

The programs for A379148, there is no canonical definition to state claims against.
-/

/-! ## A379148.P9106723079475683762

`A111145(n+1)-1`
-/

namespace A379148.P9106723079475683762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111145 (n + 1) - 1

end

end A379148.P9106723079475683762

/-! ## A379148.P12768219610325873539

`A063377(A005385(n+1))`
-/

namespace A379148.P12768219610325873539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A005385 (n + 1)).toNat

end

end A379148.P12768219610325873539

/-! ## A379148.P5100488349694194911

`A067849(A005384(n+1))`
-/

namespace A379148.P5100488349694194911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067849 (A005384 (n + 1)).toNat

end

end A379148.P5100488349694194911

/-! ## A379148.P2595713517947454593

`A063377(p?[A072055(n+1)])`
-/

namespace A379148.P2595713517947454593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A379148.P2595713517947454593

/-! ## A379148.P833139085071816129

`A063377(p?[n*A156659(n)])`
-/

namespace A379148.P833139085071816129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A156659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A379148.P833139085071816129

/-! ## A379148.P7314813396719432080

`A181697(A072192(n+1))-1`
-/

namespace A379148.P7314813396719432080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181697 (A072192 (n + 1)).toNat - 1

end

end A379148.P7314813396719432080

/-! ## A379148.P2935699169111819336

`A339579(A176045(n+1))-1`
-/

namespace A379148.P2935699169111819336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A176045 (n + 1)).toNat - 1

end

end A379148.P2935699169111819336

/-! ## A379148.P13877385145865407315

`A339579(2*A176045(n+1))`
-/

namespace A379148.P13877385145865407315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * A176045 (n + 1)).toNat

end

end A379148.P13877385145865407315

/-! ## A379148.P16903983394465672650

`A196305(n)%A111145(n+1)`
-/

namespace A379148.P16903983394465672650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A111145 (n + 1))

end

end A379148.P16903983394465672650

/-! ## A379148.P18300508126101704850

`A063377(p?[A005097(n+1)])-1`
-/

namespace A379148.P18300508126101704850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A379148.P18300508126101704850

/-!
# A379152: The binary weights of the odd Catalan numbers.

The programs for A379152, there is no canonical definition to state claims against.
-/

/-! ## A379152.P11564205074874640974

`A379151(2^n-1)`
-/

namespace A379152.P11564205074874640974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379151 (2 ^ n - 1)

end

end A379152.P11564205074874640974

/-! ## A379152.P1376105177351203360

`A082481(2^n-1)`
-/

namespace A379152.P1376105177351203360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082481 (2 ^ n - 1)

end

end A379152.P1376105177351203360

/-! ## A379152.P12949343789438776212

`or(floor(1/(n+1)), A082481(A000225(n)))`
-/

namespace A379152.P12949343789438776212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A082481 (A000225 n).toNat)

end

end A379152.P12949343789438776212

/-! ## A379152.P3453605995526627811

`A379151(A000225(n))+A308975(n)`
-/

namespace A379152.P3453605995526627811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379151 (A000225 n).toNat + A308975 n

end

end A379152.P3453605995526627811

/-! ## A379152.P17995029669736986640

`A082481(A000225(n))%A003500(n)`
-/

namespace A379152.P17995029669736986640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082481 (A000225 n).toNat) (A003500 n)

end

end A379152.P17995029669736986640

/-!
# A379154: Prime numbers p such that the interval from p to the next prime number contains a unique perfect power.

The programs for A379154, there is no canonical definition to state claims against.
-/

/-! ## A379154.P905918198489265177

`A000040(A377434(n+1))`
-/

namespace A379154.P905918198489265177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377434 (n + 1)).toNat

end

end A379154.P905918198489265177

/-! ## A379154.P15041298861176646020

`A008578(A377434(n+1)+1)`
-/

namespace A379154.P15041298861176646020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A377434 (n + 1) + 1).toNat

end

end A379154.P15041298861176646020

/-! ## A379154.P670072296666637429

`A075643(A377434(n+1)+1)`
-/

namespace A379154.P670072296666637429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (A377434 (n + 1) + 1).toNat

end

end A379154.P670072296666637429

/-! ## A379154.P3929423019951528333

`A182986(A377434(n+1)+1)`
-/

namespace A379154.P3929423019951528333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A377434 (n + 1) + 1).toNat

end

end A379154.P3929423019951528333

/-! ## A379154.P16152436291707441937

`A065091(A377434(n+1)-1)`
-/

namespace A379154.P16152436291707441937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A377434 (n + 1) - 1).toNat

end

end A379154.P16152436291707441937

/-!
# A379155: Numbers k such that there is a unique prime between the k-th and (k+1)-th prime powers (A246655).

The programs for A379155, the canonical program `A379155.P15562892955624155800` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379155 has offset 1).

The definition of A379155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379155.P15562892955624155800

`eq[1, A366835(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A379155

/-- `eq[1, A366835(n+1)]+1` -/
def P15562892955624155800.Spec : Prop :=
  ∀ n, (P15562892955624155800.a n : ℤ) = A379155 (n + 1)

theorem P15562892955624155800.correct : P15562892955624155800.Spec := by
  intro n
  simp only [A379155, Nat.add_sub_cancel]

end A379155

/-! ## A379155.P15802043693859940474

`eq[1, A366835(A028310(n))]`
-/

namespace A379155.P15802043693859940474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366835 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379155.P15802043693859940474

namespace A379155

/-- `eq[1, A366835(A028310(n))]` -/
def P15802043693859940474.Spec : Prop :=
  ∀ n, (P15802043693859940474.a n : ℤ) = A379155 (n + 1)

end A379155

/-! ## A379155.P4602901219648687634

`eq[1, A366835(A000007(n)+n)]`
-/

namespace A379155.P4602901219648687634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366835 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379155.P4602901219648687634

namespace A379155

/-- `eq[1, A366835(A000007(n)+n)]` -/
def P4602901219648687634.Spec : Prop :=
  ∀ n, (P4602901219648687634.a n : ℤ) = A379155 (n + 1)

end A379155

/-! ## A379155.P9251203424215985799

`eq[1, A366835(gcd(n, A008706(n)))]`
-/

namespace A379155.P9251203424215985799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366835 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379155.P9251203424215985799

namespace A379155

/-- `eq[1, A366835(gcd(n, A008706(n)))]` -/
def P9251203424215985799.Spec : Prop :=
  ∀ n, (P9251203424215985799.a n : ℤ) = A379155 (n + 1)

end A379155

/-! ## A379155.P1816874545189386967

`A025528(A379157(n+1))`
-/

namespace A379155.P1816874545189386967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A379157 (n + 1)).toNat

end

end A379155.P1816874545189386967

namespace A379155

/-- `A025528(A379157(n+1))` -/
def P1816874545189386967.Spec : Prop :=
  ∀ n, P1816874545189386967.a n = A379155 (n + 1)

end A379155

/-!
# A379156: Positions in A246655 (prime powers) of terms q such that there is no prime between q and the next prime power.

The programs for A379156, there is no canonical definition to state claims against.
-/

/-! ## A379156.P587962023348423237

`A024620(A377288(n+1))`
-/

namespace A379156.P587962023348423237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (A377288 (n + 1)).toNat

end

end A379156.P587962023348423237

/-!
# A379157: Prime powers p such that the interval from p to the next prime power contains a unique prime number.

The programs for A379157, there is no canonical definition to state claims against.
-/

/-! ## A379157.P13098418372485706245

`A246655(A379155(n+1))`
-/

namespace A379157.P13098418372485706245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A379155 (n + 1)).toNat

end

end A379157.P13098418372485706245

/-! ## A379157.P3442369630223013613

`A000961(A379155(n+1)+1)`
-/

namespace A379157.P3442369630223013613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A379155 (n + 1) + 1).toNat

end

end A379157.P3442369630223013613

/-! ## A379157.P16828154574784681475

`A088243(A345430(n+1))`
-/

namespace A379157.P16828154574784681475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088243 (A345430 (n + 1)).toNat

end

end A379157.P16828154574784681475

/-! ## A379157.P1766678060064024916

`A132983(Δ[A229093(n+1)^3]+1)`
-/

namespace A379157.P1766678060064024916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229093 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (f1 (n + 1) - f1 n + 1).toNat

end

end A379157.P1766678060064024916

/-!
# A379158: Numbers m such that the consecutive prime powers A246655(m) and A246655(m+1) are both prime.

The programs for A379158, there is no canonical definition to state claims against.
-/

/-! ## A379158.P14391012239613219078

`lt[1, A366835(n+1)]+1`
-/

namespace A379158.P14391012239613219078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379158.P14391012239613219078

/-! ## A379158.P12580254184292679298

`eq[2, A366835(abs(1-n)+1)]`
-/

namespace A379158.P12580254184292679298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366835 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379158.P12580254184292679298

/-! ## A379158.P6855435653035179364

`A027883(A377286(n+1))`
-/

namespace A379158.P6855435653035179364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027883 (A377286 (n + 1)).toNat

end

end A379158.P6855435653035179364

/-! ## A379158.P6171924840217069283

`eq[A025474(n+1), A025474(n+2)]`
-/

namespace A379158.P6171924840217069283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379158.P6171924840217069283

/-! ## A379158.P11696585274112991320

`eq[A082950(n+1), A082950(n+2)]`
-/

namespace A379158.P11696585274112991320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379158.P11696585274112991320

/-! ## A379158.P12443904474316520893

`eq[A086454(n+1), A086454(n+2)]`
-/

namespace A379158.P12443904474316520893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379158.P12443904474316520893

/-! ## A379158.P14202392959518926023

`eq[A192015(n+1), A192015(n+2)]`
-/

namespace A379158.P14202392959518926023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379158.P14202392959518926023

/-! ## A379158.P14306009261874901894

`eq[A010697(2*n), A366835(n+1)]+1`
-/

namespace A379158.P14306009261874901894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010697 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A379158.P14306009261874901894

/-! ## A379158.P8842077338411722670

`∩[A027883(n+1)-1, A027883(n+1)]`
-/

namespace A379158.P8842077338411722670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027883 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379158.P8842077338411722670

/-! ## A379158.P6351492519470096557

`eq[0, A088234(n+1)]`
-/

namespace A379158.P6351492519470096557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379158.P6351492519470096557

/-!
# A379159: G.f. A(x) satisfies A(x) = (1 + x^3) * (1 + x*A(x)^3).

The programs for A379159, there is no canonical definition to state claims against.
-/

/-! ## A379159.P4227617938007531076

`A367057(n)-A188009(A088716(n))`
-/

namespace A379159.P4227617938007531076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367057 n - A188009 (A088716 n).toNat

end

end A379159.P4227617938007531076

/-! ## A379159.P7829426169097033187

`A367057(n)-A319660(A006013(n))`
-/

namespace A379159.P7829426169097033187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367057 n - A319660 (A006013 n).toNat

end

end A379159.P7829426169097033187

/-! ## A379159.P3497585193861311026

`A367057(n)-A316863(A088714(n))`
-/

namespace A379159.P3497585193861311026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367057 n - A316863 (A088714 n).toNat

end

end A379159.P3497585193861311026

/-!
# A379160: G.f. A(x) satisfies A(x) = (1 + x^4) * (1 + x*A(x)^3).

The programs for A379160, there is no canonical definition to state claims against.
-/

/-! ## A379160.P14414360459513119805

`A359897(A358588(n+1))+A001764(n)`
-/

namespace A379160.P14414360459513119805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359897 (A358588 (n + 1)).toNat + A001764 n

end

end A379160.P14414360459513119805

/-! ## A379160.P1958780132811887162

`A330003(a(n-1))-n` with `a(0)=1, a(1)=1`
-/

namespace A379160.P1958780132811887162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A330003 (a (n - 1)).toNat - (n : ℤ)

end

end A379160.P1958780132811887162

/-!
# A379162: Ulam numbers that are sphenics.

The programs for A379162, there is no canonical definition to state claims against.
-/

/-! ## A379162.P10886858715549591517

`filter[A002858(n+1), A354926(#)]`
-/

namespace A379162.P10886858715549591517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A379162.P10886858715549591517

/-! ## A379162.P7128022096079454421

`∩[A002858(n+1), A007304(n+1)]`
-/

namespace A379162.P7128022096079454421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379162.P7128022096079454421

/-! ## A379162.P7093655855937126731

`∩[A007304(n+1), A001281(A048951(n+1))]`
-/

namespace A379162.P7093655855937126731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048951 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379162.P7093655855937126731

/-! ## A379162.P7515687503147701095

`∩[A007304(n+1), A110654(A048951(n+1)-1)]`
-/

namespace A379162.P7515687503147701095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A048951 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379162.P7515687503147701095

/-! ## A379162.P15430194389236506477

`∩[A007304(n+1), A115384(A048951(n+1)-1)]`
-/

namespace A379162.P15430194389236506477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A048951 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379162.P15430194389236506477

/-!
# A379163: Number of fixed site animals with n nodes on the nodes of the tetrakis square tiling.

The programs for A379163, there is no canonical definition to state claims against.
-/

/-! ## A379163.P16483503187390759881

`A213172(A052534(n+1))`
-/

namespace A379163.P16483503187390759881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213172 (A052534 (n + 1)).toNat

end

end A379163.P16483503187390759881

/-!
# A379164: Achilles numbers that are deficient.

The programs for A379164, there is no canonical definition to state claims against.
-/

/-! ## A379164.P7484223122532660030

`∩[A386434(n+1), A387420(n+1)]`
-/

namespace A379164.P7484223122532660030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379164.P7484223122532660030

/-! ## A379164.P596040172940583957

`∩[A387420(n+1), A387958(n+1)]`
-/

namespace A379164.P596040172940583957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379164.P596040172940583957

/-! ## A379164.P17842066904989305826

`∩[A052486(n+1), A387420(n+1)]`
-/

namespace A379164.P17842066904989305826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379164.P17842066904989305826

/-! ## A379164.P8918921709030295367

`∩[A387420(n+1), A389753(n+1)]`
-/

namespace A379164.P8918921709030295367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379164.P8918921709030295367

/-! ## A379164.P6541162398567757003

`∩[A072412(n+1), A387420(n+1)]`
-/

namespace A379164.P6541162398567757003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379164.P6541162398567757003

/-! ## A379164.P605343140550783842

`filter[A052486(n+1), A294934(#)]`
-/

namespace A379164.P605343140550783842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A379164.P605343140550783842

/-! ## A379164.P3761455160282702185

`filter[A052486(n+1), A294935(#)]`
-/

namespace A379164.P3761455160282702185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A379164.P3761455160282702185

/-! ## A379164.P6101809428384396000

`filter[A052486(n+1), A341612(#)]`
-/

namespace A379164.P6101809428384396000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A379164.P6101809428384396000

/-! ## A379164.P7465526202904583564

`filter[A052486(n+1), A341613(#)]`
-/

namespace A379164.P7465526202904583564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A379164.P7465526202904583564

/-! ## A379164.P17046925073132070665

`filter[A386434(n+1), A294934(#)]`
-/

namespace A379164.P17046925073132070665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A379164.P17046925073132070665

/-!
# A379168: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A140049.

The programs for A379168, there is no canonical definition to state claims against.
-/

/-! ## A379168.P15831778888955544428

`A072088(A384721(n))`
-/

namespace A379168.P15831778888955544428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A384721 n).toNat

end

end A379168.P15831778888955544428

/-! ## A379168.P1939390703682884937

`A396973(n+1)-A010051(A349155(3*(n+1)))`
-/

namespace A379168.P1939390703682884937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396973 (n + 1) - A010051 (A349155 (3 * (n + 1))).toNat

end

end A379168.P1939390703682884937

/-! ## A379168.P3312681034286940401

`A381592(n)+A007093(A185213(n))`
-/

namespace A379168.P3312681034286940401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381592 n + A007093 (A185213 n).toNat

end

end A379168.P3312681034286940401

/-! ## A379168.P5429265239079175039

`A055570(A118349(n))`
-/

namespace A379168.P5429265239079175039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A118349 n).toNat

end

end A379168.P5429265239079175039

/-! ## A379168.P18421691410523877204

`A055570(A381592(n))`
-/

namespace A379168.P18421691410523877204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A381592 n).toNat

end

end A379168.P18421691410523877204

/-!
# A379169: Let m be the concatenation, in ascending order, of the divisors of k written in base 2 and then converted to base 10. Sequence lists k which divide m.

The programs for A379169, there is no canonical definition to state claims against.
-/

/-! ## A379169.P16871926456922657201

`A062821(A094255(n+1))`
-/

namespace A379169.P16871926456922657201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A094255 (n + 1)).toNat

end

end A379169.P16871926456922657201

/-! ## A379169.P12130273496938247188

`record[A000005(A062200(n)+A001222(n+1))]`
-/

namespace A379169.P12130273496938247188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062200 n + A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379169.P12130273496938247188

/-!
# A379171: G.f. A(x) satisfies A(x) = (1 + x)/(1 - x*A(x))^3.

The programs for A379171, there is no canonical definition to state claims against.
-/

/-! ## A379171.P9802106610603049237

`∑[A151664(A001396(n))]+1`
-/

namespace A379171.P9802106610603049237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151664 (A001396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A379171.P9802106610603049237

/-!
# A379173: G.f. A(x) satisfies A(x) = (1 + x)/(1 - x*A(x))^2.

The programs for A379173, there is no canonical definition to state claims against.
-/

/-! ## A379173.P8510678771865524598

`A004526(A029848(n)+A000045(n))`
-/

namespace A379173.P8510678771865524598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A029848 n + A000045 n).toNat

end

end A379173.P8510678771865524598

/-! ## A379173.P6008924797858917882

`A004526(A050407(n)+A029848(n))`
-/

namespace A379173.P6008924797858917882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050407 n + A029848 n).toNat

end

end A379173.P6008924797858917882

/-!
# A379174: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3)/(1 - x*A(x))^2.

The programs for A379174, there is no canonical definition to state claims against.
-/

/-! ## A379174.P3583174380739816070

`A336118(A007018(n))+A000891(n)`
-/

namespace A379174.P3583174380739816070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336118 (A007018 n).toNat + A000891 n

end

end A379174.P3583174380739816070

/-!
# A379175: Irregular triangle T(n, k), n >= 0, k = 1..ceiling(2^(A007895(n)-1)); the n-th row lists the nonnegative integers m such that A184617(m) = A003714(n).

The programs for A379175, there is no canonical definition to state claims against.
-/

/-! ## A379175.P17530385430701101082

`A379147(lt[A087204(3*(n+1)), A379147(n)])`
-/

namespace A379175.P17530385430701101082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379175.P17530385430701101082

/-! ## A379175.P8287053226953747537

`A379147(lt[A280193(3*(n+1)), A379147(n)])`
-/

namespace A379175.P8287053226953747537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379175.P8287053226953747537

/-!
# A379182: Number of minimal edge covers in the n-double cone graph.

The programs for A379182, there is no canonical definition to state claims against.
-/

/-! ## A379182.P12543559034134823836

`A349298(A361028(n))+n`
-/

namespace A379182.P12543559034134823836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349298 (A361028 n).toNat + (n : ℤ)

end

end A379182.P12543559034134823836

/-!
# A379183: a(1)=0, a(2)=a(3)=1; a(n) = n - a(a(n-2)) for n>3.

The programs for A379183, the canonical program `A379183.P11540673399341238337` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379183 has offset 1).

The definition of A379183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379183.P11540673399341238337

`1-a(a(n-2)-1)+n` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A379183

/-- `1-a(a(n-2)-1)+n` -/
def P11540673399341238337.Spec : Prop :=
  ∀ n, P11540673399341238337.a n = A379183 (n + 1)

theorem P11540673399341238337.correct : P11540673399341238337.Spec := by
  intro n
  simp only [A379183, Nat.add_sub_cancel]

end A379183

/-! ## A379183.P5326696084128902428

`1-(a(a(n-2)-1)-n)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A379183.P5326696084128902428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  1 - (a (a (n - 2) - 1).toNat - (n : ℤ))

end

end A379183.P5326696084128902428

namespace A379183

/-- `1-(a(a(n-2)-1)-n)` -/
def P5326696084128902428.Spec : Prop :=
  ∀ n, P5326696084128902428.a n = A379183 (n + 1)

theorem P5326696084128902428.correct : P5326696084128902428.Spec := by
  intro n
  simp only [A379183, Nat.add_sub_cancel, A379183.P5326696084128902428.a, A379183.P11540673399341238337.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A379183

/-!
# A379184: a(n) = A379183(n) mod 2.

The programs for A379184, the canonical program `A379184.P17108702326998689864` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379184 has offset 1).

The definition of A379184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379184.P17108702326998689864

`A379183(n+1)%2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A379184

/-- `A379183(n+1)%2` -/
def P17108702326998689864.Spec : Prop :=
  ∀ n, P17108702326998689864.a n = A379184 (n + 1)

theorem P17108702326998689864.correct : P17108702326998689864.Spec := by
  intro n
  simp only [A379184, Nat.add_sub_cancel]

end A379184

/-! ## A379184.P890879113900929783

`A000035(A379183(n+1))`
-/

namespace A379184.P890879113900929783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A379183 (n + 1)).toNat

end

end A379184.P890879113900929783

namespace A379184

/-- `A000035(A379183(n+1))` -/
def P890879113900929783.Spec : Prop :=
  ∀ n, P890879113900929783.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P18234746149900063813

`and(A054977(n), A379183(n+1))`
-/

namespace A379184.P18234746149900063813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A379183 (n + 1))

end

end A379184.P18234746149900063813

namespace A379184

/-- `and(A054977(n), A379183(n+1))` -/
def P18234746149900063813.Spec : Prop :=
  ∀ n, P18234746149900063813.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P47641556477624276

`and(A057427(n), A379183(n+1))`
-/

namespace A379184.P47641556477624276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A379183 (n + 1))

end

end A379184.P47641556477624276

namespace A379184

/-- `and(A057427(n), A379183(n+1))` -/
def P47641556477624276.Spec : Prop :=
  ∀ n, P47641556477624276.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P5142908624806313838

`and(A000051(n), A379183(n+1))`
-/

namespace A379184.P5142908624806313838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A379183 (n + 1))

end

end A379184.P5142908624806313838

namespace A379184

/-- `and(A000051(n), A379183(n+1))` -/
def P5142908624806313838.Spec : Prop :=
  ∀ n, P5142908624806313838.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P4151402128801739615

`and(A082605(n), A379183(n+1))`
-/

namespace A379184.P4151402128801739615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082605 n) (A379183 (n + 1))

end

end A379184.P4151402128801739615

namespace A379184

/-- `and(A082605(n), A379183(n+1))` -/
def P4151402128801739615.Spec : Prop :=
  ∀ n, P4151402128801739615.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P13620422110231780042

`and(A083318(n), A379183(n+1))`
-/

namespace A379184.P13620422110231780042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A379183 (n + 1))

end

end A379184.P13620422110231780042

namespace A379184

/-- `and(A083318(n), A379183(n+1))` -/
def P13620422110231780042.Spec : Prop :=
  ∀ n, P13620422110231780042.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P12224797649651820624

`and(A048578(n), A379183(n+1))`
-/

namespace A379184.P12224797649651820624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A379183 (n + 1))

end

end A379184.P12224797649651820624

namespace A379184

/-- `and(A048578(n), A379183(n+1))` -/
def P12224797649651820624.Spec : Prop :=
  ∀ n, P12224797649651820624.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P17579395302950381691

`and(A114001(n), A379183(n+1))`
-/

namespace A379184.P17579395302950381691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114001 n) (A379183 (n + 1))

end

end A379184.P17579395302950381691

namespace A379184

/-- `and(A114001(n), A379183(n+1))` -/
def P17579395302950381691.Spec : Prop :=
  ∀ n, P17579395302950381691.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P7800347698475836464

`and(A020737(n), A379183(n+1))`
-/

namespace A379184.P7800347698475836464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A379183 (n + 1))

end

end A379184.P7800347698475836464

namespace A379184

/-- `and(A020737(n), A379183(n+1))` -/
def P7800347698475836464.Spec : Prop :=
  ∀ n, P7800347698475836464.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P774475082449137844

`and(A083575(n), A379183(n+1))`
-/

namespace A379184.P774475082449137844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083575 n) (A379183 (n + 1))

end

end A379184.P774475082449137844

namespace A379184

/-- `and(A083575(n), A379183(n+1))` -/
def P774475082449137844.Spec : Prop :=
  ∀ n, P774475082449137844.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P16582553062652734092

`and(A083686(n), A379183(n+1))`
-/

namespace A379184.P16582553062652734092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083686 n) (A379183 (n + 1))

end

end A379184.P16582553062652734092

namespace A379184

/-- `and(A083686(n), A379183(n+1))` -/
def P16582553062652734092.Spec : Prop :=
  ∀ n, P16582553062652734092.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P5772960179733311826

`and(A083705(n), A379183(n+1))`
-/

namespace A379184.P5772960179733311826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083705 n) (A379183 (n + 1))

end

end A379184.P5772960179733311826

namespace A379184

/-- `and(A083705(n), A379183(n+1))` -/
def P5772960179733311826.Spec : Prop :=
  ∀ n, P5772960179733311826.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P654471752671617450

`and(A083683(n), A379183(n+1))`
-/

namespace A379184.P654471752671617450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083683 n) (A379183 (n + 1))

end

end A379184.P654471752671617450

namespace A379184

/-- `and(A083683(n), A379183(n+1))` -/
def P654471752671617450.Spec : Prop :=
  ∀ n, P654471752671617450.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P6378480455056537962

`and(A035089(n), A379183(n+1))`
-/

namespace A379184.P6378480455056537962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035089 n) (A379183 (n + 1))

end

end A379184.P6378480455056537962

namespace A379184

/-- `and(A035089(n), A379183(n+1))` -/
def P6378480455056537962.Spec : Prop :=
  ∀ n, P6378480455056537962.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P14830954933936392783

`and(A195744(n), A379183(n+1))`
-/

namespace A379184.P14830954933936392783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A379183 (n + 1))

end

end A379184.P14830954933936392783

namespace A379184

/-- `and(A195744(n), A379183(n+1))` -/
def P14830954933936392783.Spec : Prop :=
  ∀ n, P14830954933936392783.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P2162156875705893167

`and(A206371(n), A379183(n+1))`
-/

namespace A379184.P2162156875705893167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206371 n) (A379183 (n + 1))

end

end A379184.P2162156875705893167

namespace A379184

/-- `and(A206371(n), A379183(n+1))` -/
def P2162156875705893167.Spec : Prop :=
  ∀ n, P2162156875705893167.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P8503612296652245814

`and(A122041(n+1), A379183(n+1))`
-/

namespace A379184.P8503612296652245814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A379183 (n + 1))

end

end A379184.P8503612296652245814

namespace A379184

/-- `and(A122041(n+1), A379183(n+1))` -/
def P8503612296652245814.Spec : Prop :=
  ∀ n, P8503612296652245814.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P15963895372518442970

`and(A196657(n), A379183(n+1))`
-/

namespace A379184.P15963895372518442970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A379183 (n + 1))

end

end A379184.P15963895372518442970

namespace A379184

/-- `and(A196657(n), A379183(n+1))` -/
def P15963895372518442970.Spec : Prop :=
  ∀ n, P15963895372518442970.a n = A379184 (n + 1)

end A379184

/-! ## A379184.P8235479911286985767

`and(A057775(n), A379183(n+1))`
-/

namespace A379184.P8235479911286985767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057775 n) (A379183 (n + 1))

end

end A379184.P8235479911286985767

namespace A379184

/-- `and(A057775(n), A379183(n+1))` -/
def P8235479911286985767.Spec : Prop :=
  ∀ n, P8235479911286985767.a n = A379184 (n + 1)

end A379184

/-!
# A379185: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^2) * (1 - x*A(x))^2).

The programs for A379185, there is no canonical definition to state claims against.
-/

/-! ## A379185.P9474124527903753359

`A156077(A257887(n+1)+n)`
-/

namespace A379185.P9474124527903753359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A257887 (n + 1) + (n : ℤ)).toNat

end

end A379185.P9474124527903753359

/-!
# A379186: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^3) * (1 - x*A(x))^2).

The programs for A379186, there is no canonical definition to state claims against.
-/

/-! ## A379186.P8014905500435915868

`A190430(A051027(a(n-1)))` with `a(0)=1`
-/

namespace A379186.P8014905500435915868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A190430 (A051027 (a (n - 1)).toNat).toNat

end

end A379186.P8014905500435915868

/-!
# A379187: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^2) * (1 - x*A(x))^3).

The programs for A379187, there is no canonical definition to state claims against.
-/

/-! ## A379187.P6540711492868785912

`A192407(n+1)-A328544(A333129(n))`
-/

namespace A379187.P6540711492868785912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192407 (n + 1) - A328544 (A333129 n).toNat

end

end A379187.P6540711492868785912

/-!
# A379188: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^3) * (1 - x*A(x))^3).

The programs for A379188, there is no canonical definition to state claims against.
-/

/-! ## A379188.P3705175680981555379

`A283998(A000041(n)*A073513(n+1)+4)`
-/

namespace A379188.P3705175680981555379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283998 (A000041 n * A073513 (n + 1) + 4).toNat

end

end A379188.P3705175680981555379

/-!
# A379189: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^3) * (1 - x*A(x))).

The programs for A379189, there is no canonical definition to state claims against.
-/

/-! ## A379189.P6287219621509365068

`∑[A245901(n+1)-floor(sqrt(n))]`
-/

namespace A379189.P6287219621509365068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245901 (n + 1) - (Nat.sqrt n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379189.P6287219621509365068

/-!
# A379190: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3) * (1 + x*A(x))^3.

The programs for A379190, there is no canonical definition to state claims against.
-/

/-! ## A379190.P2019557165881590039

`∑[A329825(A233832(n))]`
-/

namespace A379190.P2019557165881590039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329825 (A233832 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379190.P2019557165881590039

/-!
# A379191: G.f. A(x) satisfies A(x) = (1 + x*A(x))^3/(1 - x*A(x)^3).

The programs for A379191, there is no canonical definition to state claims against.
-/

/-! ## A379191.P16140056689867981970

`A156351(A000364(n))+A000245(2*n)`
-/

namespace A379191.P16140056689867981970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (A000364 n).toNat + A000245 (2 * n)

end

end A379191.P16140056689867981970

/-!
# A379192: G.f. A(x) satisfies A(x) = (1 + x*A(x))^3/(1 - x*A(x)^2).

The programs for A379192, there is no canonical definition to state claims against.
-/

/-! ## A379192.P3111529762563526684

`A007094(A382886(n)+n)`
-/

namespace A379192.P3111529762563526684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A382886 n + (n : ℤ)).toNat

end

end A379192.P3111529762563526684

/-!
# A379193: G.f. A(x) satisfies A(x) = (1 + x*A(x))^2/(1 - x*A(x)^2).

The programs for A379193, there is no canonical definition to state claims against.
-/

/-! ## A379193.P17030272224425190610

`∑[A098294(A361375(n))]`
-/

namespace A379193.P17030272224425190610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (A361375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379193.P17030272224425190610

/-!
# A379196: G.f. A(x) satisfies 2 = Sum_{n=-oo..+oo} x^(4*n) * (1 - x^n)^(4*n) * A(x)^n.

The programs for A379196, there is no canonical definition to state claims against.
-/

/-! ## A379196.P10571334868237332624

`∑[∑[A275581(A052382(n+1))]]`
-/

namespace A379196.P10571334868237332624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275581 (A052382 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379196.P10571334868237332624

/-! ## A379196.P7910012864255047767

`∑[A089870(∑[A359754(n+1)])]`
-/

namespace A379196.P7910012864255047767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359754 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379196.P7910012864255047767

/-!
# A379197: G.f. A(x) satisfies 2 = Sum_{n=-oo..+oo} x^n * (1 + x^n)^n * A(x)^n.

The programs for A379197, there is no canonical definition to state claims against.
-/

/-! ## A379197.P17839298317435376699

`A353367(A281831(n+2))`
-/

namespace A379197.P17839298317435376699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (A281831 (n + 2)).toNat

end

end A379197.P17839298317435376699

/-! ## A379197.P363547313002271247

`A345167(A072233(n)+A002426(n))`
-/

namespace A379197.P363547313002271247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A072233 n + A002426 n).toNat

end

end A379197.P363547313002271247

/-!
# A379198: G.f. A(x) satisfies 2 = Sum_{n=-oo..+oo} x^n * (1 + x^n)^n * (1+x)^(n^2) * A(x)^n.

The programs for A379198, there is no canonical definition to state claims against.
-/

/-! ## A379198.P3309387608859146228

`A384066(n)-∑[∑[n]]`
-/

namespace A379198.P3309387608859146228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384066 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A379198.P3309387608859146228

