import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A073138.P4418127481005985757

`A038573(n)*A080100(n)`
-/

namespace A073138.P4418127481005985757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n * A080100 n

end

end A073138.P4418127481005985757

noncomputable section

/-- A073138: Largest number having in its binary representation the same number of 0's and 1's as n.

Offset 0, canonical program `A073138.P4418127481005985757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073138 (n : ℕ) : ℤ :=
  A073138.P4418127481005985757.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010994.P7395743998519894559

`∑[A010993(n)]`
-/

namespace A010994.P7395743998519894559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010993 (n + 40)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010994.P7395743998519894559

noncomputable section

/-- A010994: a(n) = binomial coefficient C(n,41).

Offset 41, canonical program `A010994.P7395743998519894559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4415 terms. -/
def A010994 (n : ℕ) : ℤ :=
  A010994.P7395743998519894559.a (n - 41)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4415 terms. -/
def A010994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024506.P12226791947137119566

`floor(A024505(n)/2)`
-/

namespace A024506.P12226791947137119566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024505 n : ℚ) / 2⌋

end

end A024506.P12226791947137119566

noncomputable section

/-- A024506: a(n) = [ C(2n,n)/2^(n+3) ].

Offset 0, canonical program `A024506.P12226791947137119566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A024506 (n : ℕ) : ℤ :=
  A024506.P12226791947137119566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A024506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029238.P16766028808299643663

`A029129(n)-a(n-1)` with `a(0)=1`
-/

namespace A029238.P16766028808299643663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029129 n - a (n - 1)

end

end A029238.P16766028808299643663

noncomputable section

/-- A029238: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029238.P16766028808299643663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029238 (n : ℕ) : ℤ :=
  A029238.P16766028808299643663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029298.P4835252118331130321

`A029254(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A029298.P4835252118331130321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A029254 n - a (n - 4)

end

end A029298.P4835252118331130321

noncomputable section

/-- A029298: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A029298.P4835252118331130321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029298 (n : ℕ) : ℤ :=
  A029298.P4835252118331130321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029342.P10735621688491322017

`A029209(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029342.P10735621688491322017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029209 n - a (n - 2)

end

end A029342.P10735621688491322017

noncomputable section

/-- A029342: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029342.P10735621688491322017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029342 (n : ℕ) : ℤ :=
  A029342.P10735621688491322017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029352.P1393725205556291625

`A029219(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029352.P1393725205556291625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029219 n - a (n - 2)

end

end A029352.P1393725205556291625

noncomputable section

/-- A029352: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029352.P1393725205556291625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029352 (n : ℕ) : ℤ :=
  A029352.P1393725205556291625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029355.P10567033194552355608

`A029222(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029355.P10567033194552355608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029222 n - a (n - 2)

end

end A029355.P10567033194552355608

noncomputable section

/-- A029355: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029355.P10567033194552355608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029355 (n : ℕ) : ℤ :=
  A029355.P10567033194552355608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029425.P9386777479452355456

`A029318(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029425.P9386777479452355456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029318 n - a (n - 3)

end

end A029425.P9386777479452355456

noncomputable section

/-- A029425: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^12)).

Offset 0, canonical program `A029425.P9386777479452355456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029425 (n : ℕ) : ℤ :=
  A029425.P9386777479452355456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035707.P923925604679129048

`∑[2*A035706(n)]-A035706(n)`
-/

namespace A035707.P923925604679129048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035706 n

end

end A035707.P923925604679129048

noncomputable section

/-- A035707: Coordination sequence for 12-dimensional cubic lattice.

Offset 0, canonical program `A035707.P923925604679129048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035707 (n : ℕ) : ℤ :=
  A035707.P923925604679129048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035708.P6521280316452753711

`A035706(n)+2*A035606(n)`
-/

namespace A035708.P6521280316452753711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 n + 2 * A035606 n

end

end A035708.P6521280316452753711

noncomputable section

/-- A035708: Coordination sequence for 13-dimensional cubic lattice.

Offset 0, canonical program `A035708.P6521280316452753711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035708 (n : ℕ) : ℤ :=
  A035708.P6521280316452753711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035748.P7453906693344743949

`A035706(2*n)`
-/

namespace A035748.P7453906693344743949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 (2 * n)

end

end A035748.P7453906693344743949

noncomputable section

/-- A035748: Coordination sequence for C_11 lattice.

Offset 0, canonical program `A035748.P7453906693344743949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035748 (n : ℕ) : ℤ :=
  A035748.P7453906693344743949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036582.P18337015569781502361

`A036579(n)+1`
-/

namespace A036582.P18337015569781502361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 n + 1

end

end A036582.P18337015569781502361

noncomputable section

/-- A036582: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036582.P18337015569781502361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036582 (n : ℕ) : ℤ :=
  A036582.P18337015569781502361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038996.P3767443640505695253

`∑{d}[n+1, #*A038995(#)]`
-/

namespace A038996.P3767443640505695253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038995 d

end

end A038996.P3767443640505695253

noncomputable section

/-- A038996: Number of sublattices of index n in generic 9-dimensional lattice.

Offset 1, canonical program `A038996.P3767443640505695253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038996 (n : ℕ) : ℤ :=
  A038996.P3767443640505695253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045724.P14771865039815941813

`2*A020918(n)-A042941(n)`
-/

namespace A045724.P14771865039815941813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020918 n - A042941 n

end

end A045724.P14771865039815941813

noncomputable section

/-- A045724: Convolution of Catalan numbers A000108 with A020918.

Offset 0, canonical program `A045724.P14771865039815941813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A045724 (n : ℕ) : ℤ :=
  A045724.P14771865039815941813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A045724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049763.P4860550349703159937

`A004202(n+1)²%A140756(n+1)`
-/

namespace A049763.P4860550349703159937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004202 (n + 1) ^ 2) (A140756 (n + 1))

end

end A049763.P4860550349703159937

noncomputable section

/-- A049763: Triangular array T, read by rows: T(n,k) = n^4 mod k, for k = 1..n and n >= 1.

Offset 1, canonical program `A049763.P4860550349703159937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049763 (n : ℕ) : ℤ :=
  A049763.P4860550349703159937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056978.P3482370841281889433

`A056973(n+1)-A056974(n+1)`
-/

namespace A056978.P3482370841281889433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (n + 1) - A056974 (n + 1)

end

end A056978.P3482370841281889433

noncomputable section

/-- A056978: Number of blocks of {1, 0, 0} in binary expansion of n.

Offset 1, canonical program `A056978.P3482370841281889433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056978 (n : ℕ) : ℤ :=
  A056978.P3482370841281889433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059151.P2977374088639099994

`C(2, n%3)*A059149(floor(n/3))`
-/

namespace A059151.P2977374088639099994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n % 3) : ℤ) * A059149 ⌊(n : ℚ) / 3⌋.toNat

end

end A059151.P2977374088639099994

noncomputable section

/-- A059151: A hierarchical sequence (W'3{2,2}* - see A059126).

Offset 0, canonical program `A059151.P2977374088639099994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059151 (n : ℕ) : ℤ :=
  A059151.P2977374088639099994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059156.P7671134672404718204

`(2*A059146(n))²`
-/

namespace A059156.P7671134672404718204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A059146 n) ^ 2

end

end A059156.P7671134672404718204

noncomputable section

/-- A059156: A hierarchical sequence (W'3{2,2}c - see A059126).

Offset 0, canonical program `A059156.P7671134672404718204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059156 (n : ℕ) : ℤ :=
  A059156.P7671134672404718204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062283.P13738707114894275720

`floor(A060155(n+1)/A009999(n))`
-/

namespace A062283.P13738707114894275720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060155 (n + 1) : ℚ) / (A009999 n : ℚ)⌋

end

end A062283.P13738707114894275720

noncomputable section

/-- A062283: Square array read by descending antidiagonals: T(n,k) = floor(n^k/k^n).

Offset 1, canonical program `A062283.P13738707114894275720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A062283 (n : ℕ) : ℤ :=
  A062283.P13738707114894275720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A062283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063574.P12688561250002116024

`val((A085062(n)+1)*(n+1), 2)`
-/

namespace A063574.P12688561250002116024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A085062 n + 1) * (n + 1 : ℤ)).toNat 2

end

end A063574.P12688561250002116024

noncomputable section

/-- A063574: Number of steps to reach an integer == 1 (mod 4) when iterating the map n -> 3n/2 if n even or (3n+1)/2 if n odd.

Offset 1, canonical program `A063574.P12688561250002116024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063574 (n : ℕ) : ℤ :=
  (A063574.P12688561250002116024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064801.P16911737620259658980

`A004202(n+1)-1`
-/

namespace A064801.P16911737620259658980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - 1

end

end A064801.P16911737620259658980

noncomputable section

/-- A064801: Take 1, skip 2, take 2, skip 3, take 3, etc.

Offset 1, canonical program `A064801.P16911737620259658980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064801 (n : ℕ) : ℤ :=
  A064801.P16911737620259658980.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067985.P13103454842817456950

`A067984(n)+A067983(n)`
-/

namespace A067985.P13103454842817456950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067984 n + A067983 n

end

end A067985.P13103454842817456950

noncomputable section

/-- A067985: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+7), n>=0.

Offset 0, canonical program `A067985.P13103454842817456950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A067985 (n : ℕ) : ℤ :=
  A067985.P13103454842817456950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A067985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068915.P12383817215753924052

`A020986(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A068915.P12383817215753924052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020986 (n - 1) - a (n - 1)

end

end A068915.P12383817215753924052

noncomputable section

/-- A068915: a(n) = n if n

Offset 0, canonical program `A068915.P12383817215753924052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068915 (n : ℕ) : ℤ :=
  A068915.P12383817215753924052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072581.P13999376890829246694

`A000040(A072578(n+1))`
-/

namespace A072581.P13999376890829246694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072578 (n + 1)).toNat

end

end A072581.P13999376890829246694

noncomputable section

/-- A072581: a(n) = A000040(A072578(n)).

Offset 1, canonical program `A072581.P13999376890829246694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A072581 (n : ℕ) : ℤ :=
  A072581.P13999376890829246694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A072581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073061.P18389542243932935425

`A006046(A048896(n))*A080100(n+1)`
-/

namespace A073061.P18389542243932935425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A048896 n).toNat * A080100 (n + 1)

end

end A073061.P18389542243932935425

noncomputable section

/-- A073061: a(1)=1, a(2k)=2*a(k), a(2k+1)=3*a(k).

Offset 1, canonical program `A073061.P18389542243932935425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073061 (n : ℕ) : ℤ :=
  A073061.P18389542243932935425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076110.P10148523856418061428

`A069011(n)+1-A073254(n)`
-/

namespace A076110.P10148523856418061428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + (1 - A073254 n)

end

end A076110.P10148523856418061428

noncomputable section

/-- A076110: Triangle (read by rows) in which the n-th row contains first n terms of an arithmetic progression with first term 1 and common difference (n-1).

Offset 1, canonical program `A076110.P10148523856418061428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076110 (n : ℕ) : ℤ :=
  A076110.P10148523856418061428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083173.P701774359917477188

`A005145(n+1)*A080511(n+1)`
-/

namespace A083173.P701774359917477188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) * A080511 (n + 1)

end

end A083173.P701774359917477188

noncomputable section

/-- A083173: Triangle read by rows: the n-th row contains the first n-1 multiples of prime(n) followed by the next multiple that will make the row sum a multiple of n.

Offset 1, canonical program `A083173.P701774359917477188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083173 (n : ℕ) : ℤ :=
  A083173.P701774359917477188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095729.P4795337716615768616

`A002260(n+1)*A049777(n+1)`
-/

namespace A095729.P4795337716615768616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A049777 (n + 1)

end

end A095729.P4795337716615768616

noncomputable section

/-- A095729: A002260 squared, as an infinite lower triangular matrix, read by rows.

Offset 1, canonical program `A095729.P4795337716615768616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095729 (n : ℕ) : ℤ :=
  A095729.P4795337716615768616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095871.P12080170565042940400

`2*A094728(n+1)-A049777(n+1)`
-/

namespace A095871.P12080170565042940400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094728 (n + 1) - A049777 (n + 1)

end

end A095871.P12080170565042940400

noncomputable section

/-- A095871: Triangle read by rows: T(n,k)=(n+1)*(3*(n+1)-1)/2-k*(3*k-1)/2.

Offset 1, canonical program `A095871.P12080170565042940400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095871 (n : ℕ) : ℤ :=
  A095871.P12080170565042940400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097932.P11808137079334481808

`A097480(n+1)+2`
-/

namespace A097932.P11808137079334481808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) + 2

end

end A097932.P11808137079334481808

noncomputable section

/-- A097932: Positive integers n such that 2n-19 is prime.

Offset 1, canonical program `A097932.P11808137079334481808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097932 (n : ℕ) : ℤ :=
  A097932.P11808137079334481808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098046.P1023201019138157329

`A085062(A032766(n+1))`
-/

namespace A098046.P1023201019138157329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A032766 (n + 1)).toNat

end

end A098046.P1023201019138157329

noncomputable section

/-- A098046: Inverse permutation to A098003.

Offset 1, canonical program `A098046.P1023201019138157329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A098046 (n : ℕ) : ℤ :=
  A098046.P1023201019138157329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A098046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098605.P7733621595314557542

`A097480(n+1)+1`
-/

namespace A098605.P7733621595314557542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) + 1

end

end A098605.P7733621595314557542

noncomputable section

/-- A098605: Positive integers n such that 2n - 17 is prime.

Offset 1, canonical program `A098605.P7733621595314557542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098605 (n : ℕ) : ℤ :=
  A098605.P7733621595314557542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099097.P598840586196083363

`A000244(A049581(n))*A026729(n)`
-/

namespace A099097.P598840586196083363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A049581 n).toNat * A026729 n

end

end A099097.P598840586196083363

noncomputable section

/-- A099097: Riordan array (1, 3+x).

Offset 0, canonical program `A099097.P598840586196083363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099097 (n : ℕ) : ℤ :=
  A099097.P598840586196083363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101037.P18398048409852730149

`A057427(n)+A028310(A049581(n))`
-/

namespace A101037.P18398048409852730149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A028310 (A049581 n).toNat

end

end A101037.P18398048409852730149

noncomputable section

/-- A101037: Triangle read by rows: T(n,1) = T(n,n) = n and for 1

Offset 1, canonical program `A101037.P18398048409852730149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101037 (n : ℕ) : ℤ :=
  A101037.P18398048409852730149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101468.P16882463436611646516

`2*n+1-(A004247(n)+A049581(n)²)`
-/

namespace A101468.P16882463436611646516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (A004247 n + A049581 n ^ 2)

end

end A101468.P16882463436611646516

noncomputable section

/-- A101468: Triangle read by rows: T(n,k)=(n+1-k)*(3*k+1).

Offset 0, canonical program `A101468.P16882463436611646516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101468 (n : ℕ) : ℤ :=
  A101468.P16882463436611646516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103589.P9320291138281548847

`1-A103583(n)`
-/

namespace A103589.P9320291138281548847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103583 n

end

end A103589.P9320291138281548847

noncomputable section

/-- A103589: 1's complement of A103583.

Offset 0, canonical program `A103589.P9320291138281548847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103589 (n : ℕ) : ℤ :=
  A103589.P9320291138281548847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104633.P12323607776174508310

`A062707(n)+A049777(n+1)`
-/

namespace A104633.P12323607776174508310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A049777 (n + 1)

end

end A104633.P12323607776174508310

noncomputable section

/-- A104633: Triangle T(n,k) = k*(k-n-1)*(k-n-2)/2 read by rows, 1<=k<=n.

Offset 1, canonical program `A104633.P12323607776174508310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104633 (n : ℕ) : ℤ :=
  A104633.P12323607776174508310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105125.P5189080346245451037

`A051162(n)*A073254(n)`
-/

namespace A105125.P5189080346245451037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n * A073254 n

end

end A105125.P5189080346245451037

noncomputable section

/-- A105125: Triangle read by rows: T(n,k) = n^3 + k^3, n >= 0, 0 <= k <= n.

Offset 0, canonical program `A105125.P5189080346245451037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105125 (n : ℕ) : ℤ :=
  A105125.P5189080346245451037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106566.P15038054948988524136

`2*A100100(n)-A092392(n)`
-/

namespace A106566.P15038054948988524136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100100 n - A092392 n

end

end A106566.P15038054948988524136

noncomputable section

/-- A106566: Triangle T(n,k), 0 <= k <= n, read by rows, given by [0, 1, 1, 1, 1, 1, 1, 1, ... ] DELTA [1, 0, 0, 0, 0, 0, 0, 0, ... ] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A106566.P15038054948988524136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106566 (n : ℕ) : ℤ :=
  A106566.P15038054948988524136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107984.P10600243444609299589

`A057103(A061579(n)+2)/24`
-/

namespace A107984.P10600243444609299589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057103 (A061579 n + 2).toNat : ℚ) / 24

end

end A107984.P10600243444609299589

noncomputable section

/-- A107984: Triangle read by rows: T(n,k) = (k+1)*(n+2)*(2n-k+3)*(n-k+1)/6 for 0 <= k <= n.

Offset 0, canonical program `A107984.P10600243444609299589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A107984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107984.P10600243444609299589.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A107984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110770.P1014689969941647037

`C(A049777(n+1), A002260(n+1))`
-/

namespace A110770.P1014689969941647037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049777 (n + 1)).toNat (A002260 (n + 1)).toNat

end

end A110770.P1014689969941647037

noncomputable section

/-- A110770: Triangle read by rows: T(n,k) = binomial(t(n) - t(k-1),k), where t(j) = j*(j+1)/2; 1<=k<=n.

Offset 1, canonical program `A110770.P1014689969941647037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110770 (n : ℕ) : ℤ :=
  (A110770.P1014689969941647037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112544.P10572173355111095997

`A112543(A038722(n+1))`
-/

namespace A112544.P10572173355111095997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A038722 (n + 1)).toNat

end

end A112544.P10572173355111095997

noncomputable section

/-- A112544: Denominators of fractions n/k in array by antidiagonals.

Offset 1, canonical program `A112544.P10572173355111095997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A112544 (n : ℕ) : ℤ :=
  A112544.P10572173355111095997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A112544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113126.P12357649058000027626

`and(1, C(3, A004202(n+1)%(n+1)))*A002260(n+1)`
-/

namespace A113126.P12357649058000027626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (Nat.choose 3 (Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)).toNat) : ℤ) * A002260 (n + 1)

end

end A113126.P12357649058000027626

noncomputable section

/-- A113126: A simple 4-diagonal matrix.

Offset 0, canonical program `A113126.P12357649058000027626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113126 (n : ℕ) : ℤ :=
  A113126.P12357649058000027626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113953.P2089151965416812933

`abs(A110509(n))`
-/

namespace A113953.P2089151965416812933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110509 n|

end

end A113953.P2089151965416812933

noncomputable section

/-- A113953: A Jacobsthal triangle.

Offset 0, canonical program `A113953.P2089151965416812933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113953 (n : ℕ) : ℤ :=
  A113953.P2089151965416812933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115150.P14078774331538153993

`record[A115138(n)]`
-/

namespace A115150.P14078774331538153993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115150.P14078774331538153993

noncomputable section

/-- A115150: Third diagonal (M=3) sequence of triangle A113647, called Y(2,1).

Offset 0, canonical program `A115150.P14078774331538153993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115150 (n : ℕ) : ℤ :=
  A115150.P14078774331538153993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115216.P6610770942830742809

`A001045(A003057(n+2))-A001045(A049581(n))`
-/

namespace A115216.P6610770942830742809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A003057 (n + 2)).toNat - A001045 (A049581 n).toNat

end

end A115216.P6610770942830742809

noncomputable section

/-- A115216: "Correlation triangle" for 2^n.

Offset 0, canonical program `A115216.P6610770942830742809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115216 (n : ℕ) : ℤ :=
  A115216.P6610770942830742809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116588.P244719125391708686

`A000079(A049581(n))`
-/

namespace A116588.P244719125391708686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A049581 n).toNat

end

end A116588.P244719125391708686

noncomputable section

/-- A116588: Array read by antidiagonals: T(n,k) = max(2^(n - k), 2^(k - n)).

Offset 0, canonical program `A116588.P244719125391708686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116588 (n : ℕ) : ℤ :=
  A116588.P244719125391708686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117377.P1485208591140608451

`2*A117362(n)-A109466(n)`
-/

namespace A117377.P1485208591140608451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117362 n - A109466 n

end

end A117377.P1485208591140608451

noncomputable section

/-- A117377: Riordan array (1-4x,x(1-x)).

Offset 0, canonical program `A117377.P1485208591140608451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117377 (n : ℕ) : ℤ :=
  A117377.P1485208591140608451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117904.P18293457615269671848

`2-A117898(n)`
-/

namespace A117904.P18293457615269671848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A117898 n

end

end A117904.P18293457615269671848

noncomputable section

/-- A117904: Number triangle [k<=n]*0^abs(L(C(n,2)/3) - L(C(k,2)/3)) where L(j/p) is the Legendre symbol of j and p.

Offset 0, canonical program `A117904.P18293457615269671848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117904 (n : ℕ) : ℤ :=
  A117904.P18293457615269671848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120476.P16713608828303402629

`A049777(n+1)*A165747(A002262(n))`
-/

namespace A120476.P16713608828303402629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) * A165747 (A002262 n).toNat

end

end A120476.P16713608828303402629

noncomputable section

/-- A120476: Triangle read by rows: a(n,m)=(2*n-1)*(n-m)*(n+m+1)/2, where n is the column and m the row index.

Offset 0, canonical program `A120476.P16713608828303402629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120476 (n : ℕ) : ℤ :=
  A120476.P16713608828303402629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122415.P16839992297758686135

`val(A077478(comp[∑[n]]+1)+1, 3)`
-/

namespace A122415.P16839992297758686135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1).toNat 3

end

end A122415.P16839992297758686135

noncomputable section

/-- A122415: Triangle T(n,k) for 1 < k < n read by rows, where T(n,k) = 1 if gcd(n,k) is prime, 0 otherwise.

Offset 3, canonical program `A122415.P16839992297758686135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A122415 (n : ℕ) : ℤ :=
  (A122415.P16839992297758686135.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A122415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123002.P14889783976054553407

`A118416(n+1)-A118413(n+1)`
-/

namespace A123002.P14889783976054553407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118416 (n + 1) - A118413 (n + 1)

end

end A123002.P14889783976054553407

noncomputable section

/-- A123002: Triangle read by rows: T(n, k) = 2^(n-1)*(2*k - 1) - 2^(k-1)*(2*n - 1).

Offset 1, canonical program `A123002.P14889783976054553407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123002 (n : ℕ) : ℤ :=
  A123002.P14889783976054553407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123225.P10747356342280397472

`A094587(n)*A100100(A007401(n+1))`
-/

namespace A123225.P10747356342280397472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A100100 (A007401 (n + 1)).toNat

end

end A123225.P10747356342280397472

noncomputable section

/-- A123225: Triangle read by rows: T(n,d) = (n!/d!)*(n+1)*binomial(2n-d+1,n+1)/(n-d+1) (0 <= d <= n).

Offset 0, canonical program `A123225.P10747356342280397472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A123225 (n : ℕ) : ℤ :=
  A123225.P10747356342280397472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A123225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123725.P18364777639140857701

`A094267(A130824(n)+A073089(n+1))`
-/

namespace A123725.P18364777639140857701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A130824 n + A073089 (n + 1)).toNat

end

end A123725.P18364777639140857701

noncomputable section

/-- A123725: Numerators of fractional partial quotients appearing in a continued fraction for the power series Sum_{n>=0} x^(2^n - 1)/(n+1)^s.

Offset 0, canonical program `A123725.P18364777639140857701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A123725 (n : ℕ) : ℤ :=
  A123725.P18364777639140857701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A123725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125925.P2259033093901940848

`A036579(and(7, n-2))`
-/

namespace A125925.P2259033093901940848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 (Int.land 7 ((n : ℤ) - 2)).toNat

end

end A125925.P2259033093901940848

noncomputable section

/-- A125925: Sprague-Grundy values for octal game .351.

Offset 1, canonical program `A125925.P2259033093901940848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125925 (n : ℕ) : ℤ :=
  A125925.P2259033093901940848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128307.P14549488108935088319

`Δ[floor((A089633(n)+1)/2)]`
-/

namespace A128307.P14549488108935088319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089633 n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128307.P14549488108935088319

noncomputable section

/-- A128307: Triangle, (1, 0, 1, 2, 4, 8, ...) in every column.

Offset 1, canonical program `A128307.P14549488108935088319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128307 (n : ℕ) : ℤ :=
  A128307.P14549488108935088319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129189.P9043071951226767298

`A129188(n+1)-2*(n+1)`
-/

namespace A129189.P9043071951226767298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129188 (n + 1) - (2 * (n + 1) : ℤ)

end

end A129189.P9043071951226767298

noncomputable section

/-- A129189: n-th prime + n-th composite - n.

Offset 1, canonical program `A129189.P9043071951226767298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129189 (n : ℕ) : ℤ :=
  A129189.P9043071951226767298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130493.P8627485629605810220

`∏[A130296(n+1)]`
-/

namespace A130493.P8627485629605810220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130493.P8627485629605810220

noncomputable section

/-- A130493: Triangle read by rows in which row n contains n! repeated n times.

Offset 1, canonical program `A130493.P8627485629605810220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A130493 (n : ℕ) : ℤ :=
  A130493.P8627485629605810220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A130493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130836.P4611661305239200028

`∑{e}[A089913(n+1), #]`
-/

namespace A130836.P4611661305239200028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A130836.P4611661305239200028

noncomputable section

/-- A130836: Square array d(m,n) = multiplicative distance between m>=1 and n>=1, read by antidiagonals.

Offset 1, canonical program `A130836.P4611661305239200028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A130836 (n : ℕ) : ℤ :=
  (A130836.P4611661305239200028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A130836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131033.P4849263893902669054

`A130296(n+1)+A023532(n)`
-/

namespace A131033.P4849263893902669054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + A023532 n

end

end A131033.P4849263893902669054

noncomputable section

/-- A131033: A130296 * A097806.

Offset 1, canonical program `A131033.P4849263893902669054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131033 (n : ℕ) : ℤ :=
  A131033.P4849263893902669054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131230.P12113415605304049017

`2*A130296(n+1)-A128174(n+1)`
-/

namespace A131230.P12113415605304049017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130296 (n + 1) - A128174 (n + 1)

end

end A131230.P12113415605304049017

noncomputable section

/-- A131230: Triangle read by rows: 2*A130296 - A128174.

Offset 1, canonical program `A131230.P12113415605304049017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131230 (n : ℕ) : ℤ :=
  A131230.P12113415605304049017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131783.P16711198060458241591

`A049777(n+1)+A025581(n)`
-/

namespace A131783.P16711198060458241591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A025581 n

end

end A131783.P16711198060458241591

noncomputable section

/-- A131783: A000012 * (A004736 + A002260 - I).

Offset 1, canonical program `A131783.P16711198060458241591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131783 (n : ℕ) : ℤ :=
  A131783.P16711198060458241591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131819.P2025527271162077959

`A049777(n+1)+A130296(n+1)-1`
-/

namespace A131819.P2025527271162077959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A130296 (n + 1) - 1)

end

end A131819.P2025527271162077959

noncomputable section

/-- A131819: A131818 * A000012 as infinite lower triangular matrices. Triangle read by rows, partial sums starting from the right of A131818.

Offset 1, canonical program `A131819.P2025527271162077959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131819 (n : ℕ) : ℤ :=
  A131819.P2025527271162077959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131843.P9084898771744653632

`2*A131821(n+1)-1`
-/

namespace A131843.P9084898771744653632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131821 (n + 1) - 1

end

end A131843.P9084898771744653632

noncomputable section

/-- A131843: Triangle read by rows: 2*A131821 - A000012.

Offset 0, canonical program `A131843.P9084898771744653632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131843 (n : ℕ) : ℤ :=
  A131843.P9084898771744653632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131896.P2691452553355634035

`A094727(n+1)*A130296(n+1)`
-/

namespace A131896.P2691452553355634035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) * A130296 (n + 1)

end

end A131896.P2691452553355634035

noncomputable section

/-- A131896: A000012 * A131843.

Offset 1, canonical program `A131896.P2691452553355634035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131896 (n : ℕ) : ℤ :=
  A131896.P2691452553355634035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131897.P15038392300665076693

`or(Δ[A056942(n)], A131817(n))`
-/

namespace A131897.P15038392300665076693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A131817 n)

end

end A131897.P15038392300665076693

noncomputable section

/-- A131897: A130321 + A131821 - A000012.

Offset 0, canonical program `A131897.P15038392300665076693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131897 (n : ℕ) : ℤ :=
  A131897.P15038392300665076693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131899.P5613504993565283858

`A131821(n+1)+A002262(n)`
-/

namespace A131899.P5613504993565283858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + A002262 n

end

end A131899.P5613504993565283858

noncomputable section

/-- A131899: A002260 + A131821 - A000012.

Offset 0, canonical program `A131899.P5613504993565283858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131899 (n : ℕ) : ℤ :=
  A131899.P5613504993565283858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131900.P2968770492461010124

`A131821(n+1)-A025581(n)%2`
-/

namespace A131900.P2968770492461010124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) - Int.tmod (A025581 n) 2

end

end A131900.P2968770492461010124

noncomputable section

/-- A131900: A131821 + A128174 - A000012.

Offset 0, canonical program `A131900.P2968770492461010124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131900 (n : ℕ) : ℤ :=
  A131900.P2968770492461010124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131901.P10361417805036822121

`A111650(n+1)-A131821(n+1)`
-/

namespace A131901.P10361417805036822121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A131821 (n + 1)

end

end A131901.P10361417805036822121

noncomputable section

/-- A131901: 2*A002024 - A131821.

Offset 1, canonical program `A131901.P10361417805036822121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131901 (n : ℕ) : ℤ :=
  A131901.P10361417805036822121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132119.P14999219633576669522

`A000027(A130296(n+1)+n)`
-/

namespace A132119.P14999219633576669522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A130296 (n + 1) + (n : ℤ)).toNat

end

end A132119.P14999219633576669522

noncomputable section

/-- A132119: A002260 + A000027 - A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A132119.P14999219633576669522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132119 (n : ℕ) : ℤ :=
  A132119.P14999219633576669522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133728.P16225906611356734824

`A092092(A131226(n+1))`
-/

namespace A133728.P16225906611356734824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A131226 (n + 1)).toNat

end

end A133728.P16225906611356734824

noncomputable section

/-- A133728: A128174 * A127775.

Offset 1, canonical program `A133728.P16225906611356734824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133728 (n : ℕ) : ℤ :=
  A133728.P16225906611356734824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134224.P9579061537419719941

`A134199(n)+A114327(n)`
-/

namespace A134224.P9579061537419719941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 n + A114327 n

end

end A134224.P9579061537419719941

noncomputable section

/-- A134224: A004736 + A134082 - I as infinite lower triangular matrices; I = Identity matrix.

Offset 0, canonical program `A134224.P9579061537419719941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134224 (n : ℕ) : ℤ :=
  A134224.P9579061537419719941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134226.P18145775604649246008

`A134199(n)-A129184(n+1)`
-/

namespace A134226.P18145775604649246008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 n - A129184 (n + 1)

end

end A134226.P18145775604649246008

noncomputable section

/-- A134226: Triangle T(n, k) = 3*n - 4 if k = n-1 otherwise k, read by rows.

Offset 1, canonical program `A134226.P18145775604649246008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134226 (n : ℕ) : ℤ :=
  A134226.P18145775604649246008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134309.P6504127793321082185

`ceil(A130123(n)/2)`
-/

namespace A134309.P6504127793321082185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130123 n : ℚ) / 2⌉

end

end A134309.P6504127793321082185

noncomputable section

/-- A134309: Triangle read by rows, where row n consists of n zeros followed by 2^(n-1).

Offset 0, canonical program `A134309.P6504127793321082185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134309 (n : ℕ) : ℤ :=
  A134309.P6504127793321082185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138459.P17480034057079694095

`2*A138458(n+1)`
-/

namespace A138459.P17480034057079694095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138458 (n + 1)

end

end A138459.P17480034057079694095

noncomputable section

/-- A138459: a(n) = ((n-th prime)^6-(n-th prime)^4)/12.

Offset 1, canonical program `A138459.P17480034057079694095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138459 (n : ℕ) : ℤ :=
  A138459.P17480034057079694095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141387.P11943354151265943845

`A129312(n+1)-1`
-/

namespace A141387.P11943354151265943845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (n + 1) - 1

end

end A141387.P11943354151265943845

noncomputable section

/-- A141387: Triangle read by rows: T(n,m) = n + 2*m*(n - m) (0 <= m <= n).

Offset 0, canonical program `A141387.P11943354151265943845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141387 (n : ℕ) : ℤ :=
  A141387.P11943354151265943845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141616.P13865560224781549027

`A120070(∑[char[n²]+2])`
-/

namespace A141616.P13865560224781549027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141616.P13865560224781549027

noncomputable section

/-- A141616: Even terms in A120070.

Offset 1, canonical program `A141616.P13865560224781549027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141616 (n : ℕ) : ℤ :=
  A141616.P13865560224781549027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141620.P10826181863323884884

`Δ[A120070(n+2)]`
-/

namespace A141620.P10826181863323884884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141620.P10826181863323884884

noncomputable section

/-- A141620: First differences of A120070.

Offset 0, canonical program `A141620.P10826181863323884884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141620 (n : ℕ) : ℤ :=
  A141620.P10826181863323884884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142882.P13423732587579757471

`A120070(3*n+2)`
-/

namespace A142882.P13423732587579757471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (3 * n + 2)

end

end A142882.P13423732587579757471

noncomputable section

/-- A142882: First trisection of A120070.

Offset 1, canonical program `A142882.P13423732587579757471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142882 (n : ℕ) : ℤ :=
  A142882.P13423732587579757471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143072.P10725626790880993755

`∩[A143070(n+1), A143071(n+1)]`
-/

namespace A143072.P10725626790880993755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143072.P10725626790880993755

noncomputable section

/-- A143072: A positive integer n is included if both the number of 0's and the number of 1's in the binary representation of n are powers of 2 (including being possibly 1).

Offset 1, canonical program `A143072.P10725626790880993755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2019 terms. -/
def A143072 (n : ℕ) : ℤ :=
  (A143072.P10725626790880993755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2019 terms. -/
def A143072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143182.P3036559641912956689

`and(A049581(n)+1, -1)`
-/

namespace A143182.P3036559641912956689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049581 n + 1) (-1)

end

end A143182.P3036559641912956689

noncomputable section

/-- A143182: Triangle T(n,m) = 1 + abs(n-2*m), read by rows, 0<=m<=n.

Offset 0, canonical program `A143182.P3036559641912956689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143182 (n : ℕ) : ℤ :=
  A143182.P3036559641912956689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143814.P4129932359816056538

`A120070(3-A127648(n)+n)`
-/

namespace A143814.P4129932359816056538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (3 - A127648 n + (n : ℤ)).toNat

end

end A143814.P4129932359816056538

noncomputable section

/-- A143814: Triangle T(n,m) read along rows: T(n,m) = n^2 - (m+1)^2 for 1<=m

Offset 2, canonical program `A143814.P4129932359816056538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143814 (n : ℕ) : ℤ :=
  A143814.P4129932359816056538.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143858.P1918811544124645960

`abs(A129818(∑[A035214(n)]))`
-/

namespace A143858.P1918811544124645960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129818 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A143858.P1918811544124645960

noncomputable section

/-- A143858: Number of pairwise disjoint unions of m integer-to-integer subintervals of [0,n]; a rectangular array by antidiagonals, n>=2m-1, m>=1.

Offset 1, canonical program `A143858.P1918811544124645960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A143858 (n : ℕ) : ℤ :=
  A143858.P1918811544124645960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A143858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143996.P13382186350544876179

`floor(A143902(n+1)/2)`
-/

namespace A143996.P13382186350544876179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143902 (n + 1) : ℚ) / 2⌋

end

end A143996.P13382186350544876179

noncomputable section

/-- A143996: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which (x,y) is congruent mod 4 to one of the following: (1,4), (2,2), (3,3), (4,1); then R(m,n) is the number of marked squares in the rectangle [0,m]x[0,n].

Offset 1, canonical program `A143996.P13382186350544876179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A143996 (n : ℕ) : ℤ :=
  A143996.P13382186350544876179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A143996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143999.P17929209227279405618

`ceil(A143901(n+1)/2)`
-/

namespace A143999.P17929209227279405618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143901 (n + 1) : ℚ) / 2⌉

end

end A143999.P17929209227279405618

noncomputable section

/-- A143999: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which (x,y) is congruent mod 4 to one of the following: (1,1), (2,3), (3,2), (4,0); then R(m,n) is the number of UNmarked squares in the rectangle [0,m]x[0,n].

Offset 1, canonical program `A143999.P17929209227279405618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A143999 (n : ℕ) : ℤ :=
  A143999.P17929209227279405618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A143999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144001.P7449045138667428568

`A003991(n+1)-A144000(n+1)`
-/

namespace A144001.P7449045138667428568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A144000 (n + 1)

end

end A144001.P7449045138667428568

noncomputable section

/-- A144001: Rectangular array read by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which x + y == 0 (mod 3); then R(m,n) is the number of unmarked squares in the rectangle [0,m] X [0,n].

Offset 1, canonical program `A144001.P7449045138667428568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144001 (n : ℕ) : ℤ :=
  A144001.P7449045138667428568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144329.P4597072197910217241

`A066182(n+1)-A144216(n+1)`
-/

namespace A144329.P4597072197910217241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - A144216 (n + 1)

end

end A144329.P4597072197910217241

noncomputable section

/-- A144329: Triangle read by rows, A000012 * A144328.

Offset 1, canonical program `A144329.P4597072197910217241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144329 (n : ℕ) : ℤ :=
  A144329.P4597072197910217241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154685.P3732548200043120087

`A154684(n+1)+7`
-/

namespace A154685.P3732548200043120087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 7

end

end A154685.P3732548200043120087

noncomputable section

/-- A154685: Triangle read by rows: T(n, k) = 2*n*k + n + k + 4.

Offset 1, canonical program `A154685.P3732548200043120087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154685 (n : ℕ) : ℤ :=
  A154685.P3732548200043120087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155494.P8927190747223662045

`gcd(A103452(n), A141611(n))`
-/

namespace A155494.P8927190747223662045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A141611 n)

end

end A155494.P8927190747223662045

noncomputable section

/-- A155494: Triangle T(n, k) = (k+1)*(n-k+1)*binomial(n,k) with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A155494.P8927190747223662045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155494 (n : ℕ) : ℤ :=
  (A155494.P8927190747223662045.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155546.P2386952917106834247

`A154684(n+1)-2`
-/

namespace A155546.P2386952917106834247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) - 2

end

end A155546.P2386952917106834247

noncomputable section

/-- A155546: Triangle read by rows where T(m,n)=2mn + m + n - 5, 1<=n<=m.

Offset 1, canonical program `A155546.P2386952917106834247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155546 (n : ℕ) : ℤ :=
  A155546.P2386952917106834247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156005.P13671127207021849420

`p?[A246425(A105133(n+1))-3]`
-/

namespace A156005.P13671127207021849420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A105133 (n + 1)).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156005.P13671127207021849420

noncomputable section

/-- A156005: Primes p such that 16*p+45 is prime.

Offset 1, canonical program `A156005.P13671127207021849420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. -/
def A156005 (n : ℕ) : ℤ :=
  A156005.P13671127207021849420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. -/
def A156005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156578.P4649527317743523446

`Δ[-A145677(n+2)]`
-/

namespace A156578.P4649527317743523446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145677 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P4649527317743523446

noncomputable section

/-- A156578: Triangle of coefficients of 1 - (n+1)*x^n + n*x^(n+1), read by rows.

Offset 0, canonical program `A156578.P4649527317743523446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A156578 (n : ℕ) : ℤ :=
  A156578.P4649527317743523446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A156578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157454.P17958483760181188644

`A002024(n+1)-A049581(n)`
-/

namespace A157454.P17958483760181188644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A049581 n

end

end A157454.P17958483760181188644

noncomputable section

/-- A157454: Triangle read by rows: T(n, m) = min(2*m - 1, 2*(n - m) + 1).

Offset 1, canonical program `A157454.P17958483760181188644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157454 (n : ℕ) : ℤ :=
  A157454.P17958483760181188644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157654.P18153573598594551310

`gcd(2*A049581(n), A103452(n))`
-/

namespace A157654.P18153573598594551310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A049581 n) (A103452 n)

end

end A157654.P18153573598594551310

noncomputable section

/-- A157654: Triangle T(n, k, m) = 1 if k = 0 or k = n, otherwise m*abs( (n-k)^(m-1) - k^(m-1) ), with m = 2, read by rows.

Offset 0, canonical program `A157654.P18153573598594551310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157654 (n : ℕ) : ℤ :=
  (A157654.P18153573598594551310.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158233.P11105572687020683918

`(A120070(n+3)*A120070(n+2))%9`
-/

namespace A158233.P11105572687020683918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120070 (n + 3) * A120070 (n + 2)) 9

end

end A158233.P11105572687020683918

noncomputable section

/-- A158233: a(n) = A120070(n+1)*A120070(n+2) mod 9.

Offset 1, canonical program `A158233.P11105572687020683918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A158233 (n : ℕ) : ℤ :=
  A158233.P11105572687020683918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A158233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158315.P7807818137616395365

`A158280(n)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158315.P7807818137616395365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158280 n : ℚ) / 7

end

end A158315.P7807818137616395365

noncomputable section

/-- A158315: A158280(n)/7.

Offset 0, canonical program `A158315.P7807818137616395365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158315.P7807818137616395365.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163676.P4041084556409764895

`2*A154684(n+1)+5`
-/

namespace A163676.P4041084556409764895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154684 (n + 1) + 5

end

end A163676.P4041084556409764895

noncomputable section

/-- A163676: Triangle T(n,m) = 4mn + 2m + 2n - 1 read by rows.

Offset 1, canonical program `A163676.P4041084556409764895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163676 (n : ℕ) : ℤ :=
  A163676.P4041084556409764895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165191.P13618219544817875924

`Δ[A008619(A004202(a(n-1)))]%2` with `a(0)=1, a(1)=1`
-/

namespace A165191.P13618219544817875924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A008619 (A004202 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A165191.P13618219544817875924

noncomputable section

/-- A165191: Irregular triangle B(n,i) = i-th significant bit of Gray code of n.

Offset 0, canonical program `A165191.P13618219544817875924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A165191 (n : ℕ) : ℤ :=
  A165191.P13618219544817875924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A165191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165257.P5279491284380606187

`A046899(A132128(n+1))`
-/

namespace A165257.P5279491284380606187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A132128 (n + 1)).toNat

end

end A165257.P5279491284380606187

noncomputable section

/-- A165257: Triangle in which n-th row is binomial(n+k-1,k), for column k=1..n.

Offset 1, canonical program `A165257.P5279491284380606187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165257 (n : ℕ) : ℤ :=
  A165257.P5279491284380606187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165447.P1997826371557217924

`A120070(n+2)²`
-/

namespace A165447.P1997826371557217924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) ^ 2

end

end A165447.P1997826371557217924

noncomputable section

/-- A165447: T(n,k) = n^4 - 2*k^2*n^2 + k^4 = A120070(n, k)^2.

Offset 2, canonical program `A165447.P1997826371557217924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165447 (n : ℕ) : ℤ :=
  A165447.P1997826371557217924.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166527.P3407768485719253100

`eq[1, A077478(n+1)]+1`
-/

namespace A166527.P3407768485719253100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166527.P3407768485719253100

noncomputable section

/-- A166527: Complement of A076537.

Offset 1, canonical program `A166527.P3407768485719253100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A166527 (n : ℕ) : ℤ :=
  (A166527.P3407768485719253100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A166527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167431.P17184880898173799906

`A110509(lt[1, A002262(n)])`
-/

namespace A167431.P17184880898173799906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167431.P17184880898173799906

noncomputable section

/-- A167431: Riordan array (1-4x+4x^2, x(1-2x)).

Offset 0, canonical program `A167431.P17184880898173799906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. -/
def A167431 (n : ℕ) : ℤ :=
  A167431.P17184880898173799906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. -/
def A167431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167557.P8750965983372641011

`A059268(n)*A098361(n)*A123519(n)`
-/

namespace A167557.P8750965983372641011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A098361 n * A123519 n

end

end A167557.P8750965983372641011

noncomputable section

/-- A167557: The lower left triangle of the ED1 array A167546.

Offset 1, canonical program `A167557.P8750965983372641011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A167557 (n : ℕ) : ℤ :=
  A167557.P8750965983372641011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A167557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169590.P4055382450017512449

`(A089633(n*A023532(n))+1)%3`
-/

namespace A169590.P4055382450017512449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089633 ((n : ℤ) * A023532 n).toNat + 1) 3

end

end A169590.P4055382450017512449

noncomputable section

/-- A169590: Triangle T(n,k) with : column n = A000034 if n even and column n = A000007 if n odd.

Offset 0, canonical program `A169590.P4055382450017512449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A169590 (n : ℕ) : ℤ :=
  A169590.P4055382450017512449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A169590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001498.P13887111069766710405

`A001497(A061579(n))`
-/

namespace A001498.P13887111069766710405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (A061579 n).toNat

end

end A001498.P13887111069766710405

noncomputable section

/-- A001498: Triangle a(n,k) (n >= 0, 0 <= k <= n) of coefficients of Bessel polynomials y_n(x) (exponents in increasing order).

Offset 0, canonical program `A001498.P13887111069766710405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A001498 (n : ℕ) : ℤ :=
  A001498.P13887111069766710405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A001498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003796.P430726989961333611

`eq[0, A056974(2*n+1)]`
-/

namespace A003796.P430726989961333611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003796.P430726989961333611

noncomputable section

/-- A003796: Numbers with no 3 adjacent 0's in binary expansion.

Offset 1, canonical program `A003796.P430726989961333611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003796 (n : ℕ) : ℤ :=
  (A003796.P430726989961333611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003984.P8615453586607429040

`(A003056(n)+A049581(n))/2`
-/

namespace A003984.P8615453586607429040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n + A049581 n : ℚ) / 2

end

end A003984.P8615453586607429040

noncomputable section

/-- A003984: Table of max(x,y), where (x,y) = (0,0),(0,1),(1,0),(0,2),(1,1),(2,0),...

Offset 0, canonical program `A003984.P8615453586607429040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003984.P8615453586607429040.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004201.P3444704990256805059

`A004202(n+1)-A002024(n+1)`
-/

namespace A004201.P3444704990256805059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - A002024 (n + 1)

end

end A004201.P3444704990256805059

noncomputable section

/-- A004201: Accept one, reject one, accept two, reject two, ...

Offset 1, canonical program `A004201.P3444704990256805059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004201 (n : ℕ) : ℤ :=
  A004201.P3444704990256805059.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004201.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004439.P13435589376260114249

`comp[A055096(n+2)-1]+1`
-/

namespace A004439.P13435589376260114249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004439.P13435589376260114249

noncomputable section

/-- A004439: Numbers that are not the sum of 2 distinct nonzero squares.

Offset 1, canonical program `A004439.P13435589376260114249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004439 (n : ℕ) : ℤ :=
  (A004439.P13435589376260114249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004779.P9139681296805846934

`lt[A000007(A056974(n+1)), 1]+1`
-/

namespace A004779.P9139681296805846934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A056974 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004779.P9139681296805846934

noncomputable section

/-- A004779: Binary expansion contains 3 adjacent 0's.

Offset 0, canonical program `A004779.P9139681296805846934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004779 (n : ℕ) : ℤ :=
  (A004779.P9139681296805846934.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005680.P13585271873868182678

`A135764(a(A316826(n)))` with `a(0)=1, a(1)=2`
-/

namespace A005680.P13585271873868182678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A135764 (a (A316826 n).toNat).toNat

end

end A005680.P13585271873868182678

noncomputable section

/-- A005680: A squarefree ternary sequence.

Offset 1, canonical program `A005680.P13585271873868182678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005680 (n : ℕ) : ℤ :=
  A005680.P13585271873868182678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008377.P16559859115335658880

`∑[A008376(n)]`
-/

namespace A008377.P16559859115335658880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008377.P16559859115335658880

noncomputable section

/-- A008377: Crystal ball sequence for D_9 lattice.

Offset 0, canonical program `A008377.P16559859115335658880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008377 (n : ℕ) : ℤ :=
  A008377.P16559859115335658880.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008378.P205600606006481001

`A035747(n)-10*A035603(n)`
-/

namespace A008378.P205600606006481001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035747 n - 10 * A035603 n

end

end A008378.P205600606006481001

noncomputable section

/-- A008378: Coordination sequence for D_10 lattice.

Offset 0, canonical program `A008378.P205600606006481001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008378 (n : ℕ) : ℤ :=
  A008378.P205600606006481001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013611.P15972288200952015443

`A013609(n)*A059268(n)`
-/

namespace A013611.P15972288200952015443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A059268 n

end

end A013611.P15972288200952015443

noncomputable section

/-- A013611: Triangle of coefficients in expansion of (1+4*x)^n.

Offset 0, canonical program `A013611.P15972288200952015443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013611 (n : ℕ) : ℤ :=
  A013611.P15972288200952015443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013613.P7409468563020744688

`A013610(n)*A059268(n)`
-/

namespace A013613.P7409468563020744688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A059268 n

end

end A013613.P7409468563020744688

noncomputable section

/-- A013613: Triangle of coefficients in expansion of (1+6x)^n.

Offset 0, canonical program `A013613.P7409468563020744688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7358 terms. -/
def A013613 (n : ℕ) : ℤ :=
  A013613.P7409468563020744688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7358 terms. -/
def A013613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013621.P15224404741451774442

`A013612(n)*A130321(n)`
-/

namespace A013621.P15224404741451774442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A130321 n

end

end A013621.P15224404741451774442

noncomputable section

/-- A013621: Triangle of coefficients in expansion of (2+5x)^n.

Offset 0, canonical program `A013621.P15224404741451774442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7340 terms. -/
def A013621 (n : ℕ) : ℤ :=
  A013621.P15224404741451774442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7340 terms. -/
def A013621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013623.P10183538247220725976

`A013614(n)*A130321(n)`
-/

namespace A013623.P10183538247220725976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 n * A130321 n

end

end A013623.P10183538247220725976

noncomputable section

/-- A013623: Triangle of coefficients in expansion of (2 + 7*x)^n.

Offset 0, canonical program `A013623.P10183538247220725976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A013623 (n : ℕ) : ℤ :=
  A013623.P10183538247220725976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A013623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013624.P5198726075486126688

`A013614(n)*A140303(n)`
-/

namespace A013624.P5198726075486126688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 n * A140303 n

end

end A013624.P5198726075486126688

noncomputable section

/-- A013624: Triangle of coefficients in expansion of (3+7x)^n.

Offset 0, canonical program `A013624.P5198726075486126688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5315 terms. -/
def A013624 (n : ℕ) : ℤ :=
  A013624.P5198726075486126688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5315 terms. -/
def A013624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014721.P14394062809074516665

`A014413(n+1)²`
-/

namespace A014721.P14394062809074516665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) ^ 2

end

end A014721.P14394062809074516665

noncomputable section

/-- A014721: Squares of elements to left of the central element in Pascal triangle (by row).

Offset 1, canonical program `A014721.P14394062809074516665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014721 (n : ℕ) : ℤ :=
  A014721.P14394062809074516665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014726.P17215168887441712385

`A014421(n)²`
-/

namespace A014726.P17215168887441712385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 n ^ 2

end

end A014726.P17215168887441712385

noncomputable section

/-- A014726: Squares of odd elements in Pascal triangle.

Offset 0, canonical program `A014726.P17215168887441712385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014726 (n : ℕ) : ℤ :=
  A014726.P17215168887441712385.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014727.P2848132402637456183

`A014428(n+1)²`
-/

namespace A014727.P2848132402637456183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014428 (n + 1) ^ 2

end

end A014727.P2848132402637456183

noncomputable section

/-- A014727: Squares of even elements in Pascal's triangle A007318.

Offset 0, canonical program `A014727.P2848132402637456183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014727 (n : ℕ) : ℤ :=
  A014727.P2848132402637456183.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014727.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020912.P13580009353026341439

`ceil(A020909(n+1)/2)`
-/

namespace A020912.P13580009353026341439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020909 (n + 1) : ℚ) / 2⌉

end

end A020912.P13580009353026341439

noncomputable section

/-- A020912: Number of terms in base 4 representation of n-th Fibonacci number.

Offset 1, canonical program `A020912.P13580009353026341439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020912 (n : ℕ) : ℤ :=
  A020912.P13580009353026341439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022887.P6127104275096827440

`A000040(A022886(n+1))`
-/

namespace A022887.P6127104275096827440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022886 (n + 1)).toNat

end

end A022887.P6127104275096827440

noncomputable section

/-- A022887: n-th prime p(k) such that p(k) + p(k+4) = p(k+1) + p(k+3).

Offset 1, canonical program `A022887.P6127104275096827440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A022887 (n : ℕ) : ℤ :=
  A022887.P6127104275096827440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A022887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024449.P16431338297242596881

`∑[A000040(n+4)*A024448(n+1)]`
-/

namespace A024449.P16431338297242596881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) * A024448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024449.P16431338297242596881

noncomputable section

/-- A024449: 4th elementary symmetric function of the first n+3 primes.

Offset 1, canonical program `A024449.P16431338297242596881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024449 (n : ℕ) : ℤ :=
  A024449.P16431338297242596881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024455.P11382679767047507144

`floor(A024448(n+1)/A024447(n+3))`
-/

namespace A024455.P11382679767047507144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024448 (n + 1) : ℚ) / (A024447 (n + 3) : ℚ)⌋

end

end A024455.P11382679767047507144

noncomputable section

/-- A024455: [ (3rd elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

Offset 1, canonical program `A024455.P11382679767047507144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024455 (n : ℕ) : ℤ :=
  A024455.P11382679767047507144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024523.P15062515241422550493

`∑[A024522(n+2)*A065091(n+1)]`
-/

namespace A024523.P15062515241422550493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024522 (n + 2) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024523.P15062515241422550493

noncomputable section

/-- A024523: a(n) = 3rd elementary symmetric function of {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 3, canonical program `A024523.P15062515241422550493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2724 terms. -/
def A024523 (n : ℕ) : ℤ :=
  A024523.P15062515241422550493.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2724 terms. -/
def A024523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025083.P14741746701760172126

`A213768(Δ[A173154(n)])`
-/

namespace A025083.P14741746701760172126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (f1 (n + 1) - f1 n).toNat

end

end A025083.P14741746701760172126

noncomputable section

/-- A025083: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = (odd natural numbers).

Offset 1, canonical program `A025083.P14741746701760172126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A025083 (n : ℕ) : ℤ :=
  A025083.P14741746701760172126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A025083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025824.P2015568668118323390

`A029166(n)+A029222(n)-A029154(n)`
-/

namespace A025824.P2015568668118323390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 n + (A029222 n - A029154 n)

end

end A025824.P2015568668118323390

noncomputable section

/-- A025824: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025824.P2015568668118323390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025824 (n : ℕ) : ℤ :=
  A025824.P2015568668118323390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027170.P895611629998342497

`2*A014430(n)+A014473(n)-1`
-/

namespace A027170.P895611629998342497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014430 n + (A014473 n - 1)

end

end A027170.P895611629998342497

noncomputable section

/-- A027170: Triangular array T read by rows (4-diamondization of Pascal's triangle). Step 1: t(n,k) = C(n+2,k+1) + C(n+1,k) + C(n+1,k+1) + C(n,k). Step 2: T(n,k) = t(n,k) - t(0,0) + 1. Domain: 0 <= k <= n, n >= 0.

Offset 0, canonical program `A027170.P895611629998342497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027170 (n : ℕ) : ℤ :=
  A027170.P895611629998342497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027466.P7234331509965649852

`A013614(A061579(n))`
-/

namespace A027466.P7234331509965649852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (A061579 n).toNat

end

end A027466.P7234331509965649852

noncomputable section

/-- A027466: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j).

Offset 0, canonical program `A027466.P7234331509965649852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6328 terms. -/
def A027466 (n : ℕ) : ℤ :=
  A027466.P7234331509965649852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6328 terms. -/
def A027466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027555.P8297131878136320084

`A033999(A002262(n))*A100100(A061579(n))`
-/

namespace A027555.P8297131878136320084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A100100 (A061579 n).toNat

end

end A027555.P8297131878136320084

noncomputable section

/-- A027555: Triangle of binomial coefficients C(-n,k).

Offset 0, canonical program `A027555.P8297131878136320084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A027555 (n : ℕ) : ℤ :=
  A027555.P8297131878136320084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A027555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028263.P3177418721069471964

`A007318(n)+A014430(n)+1`
-/

namespace A028263.P3177418721069471964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A014430 n + 1)

end

end A028263.P3177418721069471964

noncomputable section

/-- A028263: Elements in 3-Pascal triangle A028262 (by row) that are not 1.

Offset 0, canonical program `A028263.P3177418721069471964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028263 (n : ℕ) : ℤ :=
  A028263.P3177418721069471964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028327.P9835590816428302231

`2*(A014430(n)+1)`
-/

namespace A028327.P9835590816428302231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014430 n + 1)

end

end A028327.P9835590816428302231

noncomputable section

/-- A028327: Elements in the even-Pascal triangle A028326 that are not 2.

Offset 0, canonical program `A028327.P9835590816428302231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028327 (n : ℕ) : ℤ :=
  A028327.P9835590816428302231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028330.P6625420377303343371

`2*A014413(n+1)`
-/

namespace A028330.P6625420377303343371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014413 (n + 1)

end

end A028330.P6625420377303343371

noncomputable section

/-- A028330: Elements to the right of the central elements of the even-Pascal triangle A028326.

Offset 0, canonical program `A028330.P6625420377303343371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028330 (n : ℕ) : ℤ :=
  A028330.P6625420377303343371.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A029077.P9366082050140688059

`∑[A025871(n)]`
-/

namespace A029077.P9366082050140688059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029077.P9366082050140688059

noncomputable section

/-- A029077: Expansion of 1/((1-x)*(1-x^4)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029077.P9366082050140688059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029077 (n : ℕ) : ℤ :=
  A029077.P9366082050140688059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029101.P11302684764065804664

`A029209(abs(1-n))+A029209(n)`
-/

namespace A029101.P11302684764065804664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029209 |1 - (n : ℤ)|.toNat + A029209 n

end

end A029101.P11302684764065804664

noncomputable section

/-- A029101: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029101.P11302684764065804664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029101 (n : ℕ) : ℤ :=
  A029101.P11302684764065804664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029117.P8702314831021357971

`∑[A025908(n)]`
-/

namespace A029117.P8702314831021357971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029117.P8702314831021357971

noncomputable section

/-- A029117: Expansion of 1/((1-x)(1-x^7)(1-x^8)(1-x^9)).

Offset 0, canonical program `A029117.P8702314831021357971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029117 (n : ℕ) : ℤ :=
  A029117.P8702314831021357971.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029121.P9286238857012295137

`∑[A025912(n)]`
-/

namespace A029121.P9286238857012295137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029121.P9286238857012295137

noncomputable section

/-- A029121: Expansion of 1/((1-x)(1-x^7)(1-x^9)(1-x^10)).

Offset 0, canonical program `A029121.P9286238857012295137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029121 (n : ℕ) : ℤ :=
  A029121.P9286238857012295137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029123.P5153650302212498034

`∑[A025914(n)]`
-/

namespace A029123.P5153650302212498034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029123.P5153650302212498034

noncomputable section

/-- A029123: Expansion of 1/((1-x)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029123.P5153650302212498034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029123 (n : ℕ) : ℤ :=
  A029123.P5153650302212498034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029182.P11771640333311739023

`A029074(n)-a(n-1)` with `a(0)=1`
-/

namespace A029182.P11771640333311739023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029074 n - a (n - 1)

end

end A029182.P11771640333311739023

noncomputable section

/-- A029182: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029182.P11771640333311739023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029182 (n : ℕ) : ℤ :=
  A029182.P11771640333311739023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029200.P2626083790197974324

`A029092(n)-a(n-1)` with `a(0)=1`
-/

namespace A029200.P2626083790197974324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029092 n - a (n - 1)

end

end A029200.P2626083790197974324

noncomputable section

/-- A029200: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029200.P2626083790197974324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029200 (n : ℕ) : ℤ :=
  A029200.P2626083790197974324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029215.P3457639798535096955

`A029107(n)-a(n-1)` with `a(0)=1`
-/

namespace A029215.P3457639798535096955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029107 n - a (n - 1)

end

end A029215.P3457639798535096955

noncomputable section

/-- A029215: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029215.P3457639798535096955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029215 (n : ℕ) : ℤ :=
  A029215.P3457639798535096955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029258.P10291896197430943763

`A029157(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029258.P10291896197430943763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029157 n - a (n - 2)

end

end A029258.P10291896197430943763

noncomputable section

/-- A029258: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029258.P10291896197430943763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029258 (n : ℕ) : ℤ :=
  A029258.P10291896197430943763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029261.P4054791991548591235

`A025871(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029261.P4054791991548591235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025871 n + a (n - 3)

end

end A029261.P4054791991548591235

noncomputable section

/-- A029261: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029261.P4054791991548591235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029261 (n : ℕ) : ℤ :=
  A029261.P4054791991548591235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029271.P4727093851708620107

`A029170(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029271.P4727093851708620107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029170 n - a (n - 2)

end

end A029271.P4727093851708620107

noncomputable section

/-- A029271: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029271.P4727093851708620107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029271 (n : ℕ) : ℤ :=
  A029271.P4727093851708620107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029274.P14876788138236783754

`A008681(n)-A288165(n)`
-/

namespace A029274.P14876788138236783754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 n - A288165 n

end

end A029274.P14876788138236783754

noncomputable section

/-- A029274: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A029274.P14876788138236783754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029274 (n : ℕ) : ℤ :=
  A029274.P14876788138236783754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029306.P7411619528741633283

`A025908(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029306.P7411619528741633283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025908 n + a (n - 3)

end

end A029306.P7411619528741633283

noncomputable section

/-- A029306: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029306.P7411619528741633283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029306 (n : ℕ) : ℤ :=
  A029306.P7411619528741633283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029310.P14462968750972825055

`A025912(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029310.P14462968750972825055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025912 n + a (n - 3)

end

end A029310.P14462968750972825055

noncomputable section

/-- A029310: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029310.P14462968750972825055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029310 (n : ℕ) : ℤ :=
  A029310.P14462968750972825055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029312.P7128779910836162524

`A025914(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029312.P7128779910836162524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025914 n + a (n - 3)

end

end A029312.P7128779910836162524

noncomputable section

/-- A029312: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029312.P7128779910836162524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029312 (n : ℕ) : ℤ :=
  A029312.P7128779910836162524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029345.P12851957201810485159

`A029212(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029345.P12851957201810485159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029212 n - a (n - 2)

end

end A029345.P12851957201810485159

noncomputable section

/-- A029345: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029345.P12851957201810485159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029345 (n : ℕ) : ℤ :=
  A029345.P12851957201810485159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029393.P17295125386475700853

`A025883(n)+A029091(n)-A029092(n)`
-/

namespace A029393.P17295125386475700853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n + (A029091 n - A029092 n)

end

end A029393.P17295125386475700853

noncomputable section

/-- A029393: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029393.P17295125386475700853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029393 (n : ℕ) : ℤ :=
  A029393.P17295125386475700853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029397.P14796845233603817795

`A025912(n)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=0`
-/

namespace A029397.P14796845233603817795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1, 0] fun n a =>
  A025912 n + a (n - 5)

end

end A029397.P14796845233603817795

noncomputable section

/-- A029397: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029397.P14796845233603817795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029397 (n : ℕ) : ℤ :=
  A029397.P14796845233603817795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029641.P5309606783761197821

`A029638(A268232(n+1)+1)`
-/

namespace A029641.P5309606783761197821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (A268232 (n + 1) + 1).toNat

end

end A029641.P5309606783761197821

noncomputable section

/-- A029641: Even numbers in the (1,2)-Pascal triangle A029635 that are different from 2.

Offset 0, canonical program `A029641.P5309606783761197821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A029641 (n : ℕ) : ℤ :=
  A029641.P5309606783761197821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A029641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029669.P12114681955380181384

`A029655(eq[1, A029655(n)%2])`
-/

namespace A029669.P12114681955380181384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029655 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029669.P12114681955380181384

noncomputable section

/-- A029669: Odd numbers in the (2,1)-Pascal triangle A029653.

Offset 0, canonical program `A029669.P12114681955380181384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A029669 (n : ℕ) : ℤ :=
  A029669.P12114681955380181384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A029669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029715.P4140309927833293615

`∑[A007843(n)]`
-/

namespace A029715.P4140309927833293615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029715.P4140309927833293615

noncomputable section

/-- A029715: a(n) = Sum_{k divides 2^n} S(k), where S is the Kempner function A002034.

Offset 0, canonical program `A029715.P4140309927833293615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029715 (n : ℕ) : ℤ :=
  A029715.P4140309927833293615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030054.P3919008431183714172

`2*A172066(n)-A172065(n)`
-/

namespace A030054.P3919008431183714172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172066 n - A172065 n

end

end A030054.P3919008431183714172

noncomputable section

/-- A030054: a(n) = binomial(2n+1,n-4).

Offset 4, canonical program `A030054.P3919008431183714172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A030054 (n : ℕ) : ℤ :=
  A030054.P3919008431183714172.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A030054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030237.P12249412304419150663

`gcd(A009766(A007401(n+1)), A010816(n))`
-/

namespace A030237.P12249412304419150663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009766 (A007401 (n + 1)).toNat) (A010816 n)

end

end A030237.P12249412304419150663

noncomputable section

/-- A030237: Catalan's triangle with right border removed (n > 0, 0 <= k < n).

Offset 1, canonical program `A030237.P12249412304419150663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A030237 (n : ℕ) : ℤ :=
  (A030237.P12249412304419150663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A030237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034020.P14532094965484365911

`comp[A073254(n)]`
-/

namespace A034020.P14532094965484365911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034020.P14532094965484365911

noncomputable section

/-- A034020: Not of the form x^2 + x*y + y^2.

Offset 1, canonical program `A034020.P14532094965484365911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034020 (n : ℕ) : ℤ :=
  (A034020.P14532094965484365911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036267.P15431299486698039371

`Δ[A036266(n+1)]`
-/

namespace A036267.P15431299486698039371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036267.P15431299486698039371

noncomputable section

/-- A036267: 6th differences of primes.

Offset 1, canonical program `A036267.P15431299486698039371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036267 (n : ℕ) : ℤ :=
  A036267.P15431299486698039371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038208.P14603430842903697550

`A038207(n)*A059268(n)`
-/

namespace A038208.P14603430842903697550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A059268 n

end

end A038208.P14603430842903697550

noncomputable section

/-- A038208: Triangle whose (i,j)-th entry is binomial(i,j)*2^i.

Offset 0, canonical program `A038208.P14603430842903697550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038208 (n : ℕ) : ℤ :=
  A038208.P14603430842903697550.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038212.P16599495353890336006

`A013609(n)*A036561(n)`
-/

namespace A038212.P16599495353890336006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A036561 n

end

end A038212.P16599495353890336006

noncomputable section

/-- A038212: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*6^j.

Offset 0, canonical program `A038212.P16599495353890336006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6410 terms. -/
def A038212 (n : ℕ) : ℤ :=
  A038212.P16599495353890336006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6410 terms. -/
def A038212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038215.P9598806509330154798

`A013610(n)*A036561(n)`
-/

namespace A038215.P9598806509330154798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A036561 n

end

end A038215.P9598806509330154798

noncomputable section

/-- A038215: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*9^j.

Offset 0, canonical program `A038215.P9598806509330154798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A038215 (n : ℕ) : ℤ :=
  A038215.P9598806509330154798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A038215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038216.P16300750487479131636

`A013617(n)*A130321(n)`
-/

namespace A038216.P16300750487479131636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 n * A130321 n

end

end A038216.P16300750487479131636

noncomputable section

/-- A038216: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*10^j.

Offset 0, canonical program `A038216.P16300750487479131636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A038216 (n : ℕ) : ℤ :=
  A038216.P16300750487479131636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A038216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038217.P11166805108262565731

`A013618(n)*A130321(n)`
-/

namespace A038217.P11166805108262565731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 n * A130321 n

end

end A038217.P11166805108262565731

noncomputable section

/-- A038217: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*11^j.

Offset 0, canonical program `A038217.P11166805108262565731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A038217 (n : ℕ) : ℤ :=
  A038217.P11166805108262565731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A038217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038220.P15527430409596485937

`A027465(n)*A059268(n)`
-/

namespace A038220.P15527430409596485937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A059268 n

end

end A038220.P15527430409596485937

noncomputable section

/-- A038220: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*2^j.

Offset 0, canonical program `A038220.P15527430409596485937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038220 (n : ℕ) : ℤ :=
  A038220.P15527430409596485937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038224.P6799813587480874502

`A038221(n)*A059268(n)`
-/

namespace A038224.P6799813587480874502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A059268 n

end

end A038224.P6799813587480874502

noncomputable section

/-- A038224: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*6^j.

Offset 0, canonical program `A038224.P6799813587480874502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5740 terms. -/
def A038224 (n : ℕ) : ℤ :=
  A038224.P6799813587480874502.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5740 terms. -/
def A038224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038227.P14834822881474033912

`A013610(n)*A098355(n)`
-/

namespace A038227.P14834822881474033912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A098355 n

end

end A038227.P14834822881474033912

noncomputable section

/-- A038227: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*9^j.

Offset 0, canonical program `A038227.P14834822881474033912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4530 terms. -/
def A038227 (n : ℕ) : ℤ :=
  A038227.P14834822881474033912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4530 terms. -/
def A038227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038228.P4054419155064048625

`A013622(n)*A059268(n)`
-/

namespace A038228.P4054419155064048625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 n * A059268 n

end

end A038228.P4054419155064048625

noncomputable section

/-- A038228: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*10^j.

Offset 0, canonical program `A038228.P4054419155064048625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4251 terms. -/
def A038228 (n : ℕ) : ℤ :=
  A038228.P4054419155064048625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4251 terms. -/
def A038228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038229.P16179588272599030162

`A013618(n)*A140303(n)`
-/

namespace A038229.P16179588272599030162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 n * A140303 n

end

end A038229.P16179588272599030162

noncomputable section

/-- A038229: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*11^j.

Offset 0, canonical program `A038229.P16179588272599030162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4067 terms. -/
def A038229 (n : ℕ) : ℤ :=
  A038229.P16179588272599030162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4067 terms. -/
def A038229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038231.P6491995258535975940

`A038207(n)*A130321(n)`
-/

namespace A038231.P6491995258535975940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A130321 n

end

end A038231.P6491995258535975940

noncomputable section

/-- A038231: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j).

Offset 0, canonical program `A038231.P6491995258535975940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038231 (n : ℕ) : ℤ :=
  A038231.P6491995258535975940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038233.P11336662556546498361

`A036561(n)*A038207(n)`
-/

namespace A038233.P11336662556546498361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038207 n

end

end A038233.P11336662556546498361

noncomputable section

/-- A038233: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*3^j.

Offset 0, canonical program `A038233.P11336662556546498361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7306 terms. -/
def A038233 (n : ℕ) : ℤ :=
  A038233.P11336662556546498361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7306 terms. -/
def A038233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038239.P16420463137512601868

`A013620(n)*A036561(n)`
-/

namespace A038239.P16420463137512601868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A036561 n

end

end A038239.P16420463137512601868

noncomputable section

/-- A038239: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*9^j.

Offset 0, canonical program `A038239.P16420463137512601868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4244 terms. -/
def A038239 (n : ℕ) : ℤ :=
  A038239.P16420463137512601868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4244 terms. -/
def A038239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038243.P17559097150477924643

`A013612(A061579(n))`
-/

namespace A038243.P17559097150477924643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A061579 n).toNat

end

end A038243.P17559097150477924643

noncomputable section

/-- A038243: Triangle whose (i,j)-th entry is 5^(i-j)*binomial(i,j).

Offset 0, canonical program `A038243.P17559097150477924643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8515 terms. -/
def A038243 (n : ℕ) : ℤ :=
  A038243.P17559097150477924643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8515 terms. -/
def A038243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038244.P8625253642017748950

`A000351(A025581(n))*A013609(n)`
-/

namespace A038244.P8625253642017748950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A013609 n

end

end A038244.P8625253642017748950

noncomputable section

/-- A038244: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*2^j.

Offset 0, canonical program `A038244.P8625253642017748950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7289 terms. -/
def A038244 (n : ℕ) : ℤ :=
  A038244.P8625253642017748950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7289 terms. -/
def A038244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038251.P17483344904607417422

`A000351(A025581(n))*A013616(n)`
-/

namespace A038251.P17483344904607417422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A013616 n

end

end A038251.P17483344904607417422

noncomputable section

/-- A038251: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*9^j.

Offset 0, canonical program `A038251.P17483344904607417422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4053 terms. -/
def A038251 (n : ℕ) : ℤ :=
  A038251.P17483344904607417422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4053 terms. -/
def A038251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038252.P12906081018445517339

`A038247(n)*A059268(n)`
-/

namespace A038252.P12906081018445517339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038247 n * A059268 n

end

end A038252.P12906081018445517339

noncomputable section

/-- A038252: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*10^j.

Offset 0, canonical program `A038252.P12906081018445517339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3796 terms. -/
def A038252 (n : ℕ) : ℤ :=
  A038252.P12906081018445517339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3796 terms. -/
def A038252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038253.P3757305968337782990

`A000351(A025581(n))*A013618(n)`
-/

namespace A038253.P3757305968337782990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A013618 n

end

end A038253.P3757305968337782990

noncomputable section

/-- A038253: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*11^j.

Offset 0, canonical program `A038253.P3757305968337782990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3625 terms. -/
def A038253 (n : ℕ) : ℤ :=
  A038253.P3757305968337782990.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3625 terms. -/
def A038253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038255.P9618650369920174651

`A027465(n)*A130321(n)`
-/

namespace A038255.P9618650369920174651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A130321 n

end

end A038255.P9618650369920174651

noncomputable section

/-- A038255: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j).

Offset 0, canonical program `A038255.P9618650369920174651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7272 terms. -/
def A038255 (n : ℕ) : ℤ :=
  A038255.P9618650369920174651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7272 terms. -/
def A038255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038257.P13466949147217766730

`A027465(n)*A036561(n)`
-/

namespace A038257.P13466949147217766730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A036561 n

end

end A038257.P13466949147217766730

noncomputable section

/-- A038257: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*3^j.

Offset 0, canonical program `A038257.P13466949147217766730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5704 terms. -/
def A038257 (n : ℕ) : ℤ :=
  A038257.P13466949147217766730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5704 terms. -/
def A038257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038259.P4605552606477946905

`A013622(n)*A130321(n)`
-/

namespace A038259.P4605552606477946905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 n * A130321 n

end

end A038259.P4605552606477946905

noncomputable section

/-- A038259: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*5^j.

Offset 0, canonical program `A038259.P4605552606477946905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4886 terms. -/
def A038259 (n : ℕ) : ℤ :=
  A038259.P4605552606477946905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4886 terms. -/
def A038259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038263.P7438079468923778165

`A036561(n)*A038221(n)`
-/

namespace A038263.P7438079468923778165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038221 n

end

end A038263.P7438079468923778165

noncomputable section

/-- A038263: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*9^j.

Offset 0, canonical program `A038263.P7438079468923778165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A038263 (n : ℕ) : ℤ :=
  A038263.P7438079468923778165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A038263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038291.P18226427610410447064

`A027465(n)*A140303(n)`
-/

namespace A038291.P18226427610410447064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A140303 n

end

end A038291.P18226427610410447064

noncomputable section

/-- A038291: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*1^j.

Offset 0, canonical program `A038291.P18226427610410447064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5159 terms. -/
def A038291 (n : ℕ) : ℤ :=
  A038291.P18226427610410447064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5159 terms. -/
def A038291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038293.P2198873287583605851

`A027465(n)*A098355(n)`
-/

namespace A038293.P2198873287583605851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A098355 n

end

end A038293.P2198873287583605851

noncomputable section

/-- A038293: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*3^j.

Offset 0, canonical program `A038293.P2198873287583605851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4483 terms. -/
def A038293 (n : ℕ) : ℤ :=
  A038293.P2198873287583605851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4483 terms. -/
def A038293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038295.P4887945260608104514

`A027465(n)*A120027(n)`
-/

namespace A038295.P4887945260608104514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A120027 n

end

end A038295.P4887945260608104514

noncomputable section

/-- A038295: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*5^j.

Offset 0, canonical program `A038295.P4887945260608104514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A038295 (n : ℕ) : ℤ :=
  A038295.P4887945260608104514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A038295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038299.P15220395769486791881

`A038221(n)*A098355(n)`
-/

namespace A038299.P15220395769486791881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A098355 n

end

end A038299.P15220395769486791881

noncomputable section

/-- A038299: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*9^j.

Offset 0, canonical program `A038299.P15220395769486791881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3354 terms. -/
def A038299 (n : ℕ) : ℤ :=
  A038299.P15220395769486791881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3354 terms. -/
def A038299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038307.P4193007568946257475

`A038247(n)*A130321(n)`
-/

namespace A038307.P4193007568946257475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038247 n * A130321 n

end

end A038307.P4193007568946257475

noncomputable section

/-- A038307: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*5^j.

Offset 0, canonical program `A038307.P4193007568946257475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3767 terms. -/
def A038307 (n : ℕ) : ℤ :=
  A038307.P4193007568946257475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3767 terms. -/
def A038307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038316.P17113037635497531853

`A038315(n)*A059268(n)`
-/

namespace A038316.P17113037635497531853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 n * A059268 n

end

end A038316.P17113037635497531853

noncomputable section

/-- A038316: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*2^j.

Offset 0, canonical program `A038316.P17113037635497531853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A038316 (n : ℕ) : ℤ :=
  A038316.P17113037635497531853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A038316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038317.P3117406455626042156

`lcm(A013610(n), A038315(n))`
-/

namespace A038317.P3117406455626042156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038315 n)

end

end A038317.P3117406455626042156

noncomputable section

/-- A038317: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*3^j.

Offset 0, canonical program `A038317.P3117406455626042156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4016 terms. -/
def A038317 (n : ℕ) : ℤ :=
  (A038317.P3117406455626042156.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4016 terms. -/
def A038317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038319.P6713445332554745158

`A000351(A002262(n))*A038315(n)`
-/

namespace A038319.P6713445332554745158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A002262 n).toNat * A038315 n

end

end A038319.P6713445332554745158

noncomputable section

/-- A038319: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*5^j.

Offset 0, canonical program `A038319.P6713445332554745158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3593 terms. -/
def A038319 (n : ℕ) : ℤ :=
  A038319.P6713445332554745158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3593 terms. -/
def A038319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038321.P10357941656397293464

`lcm(A013614(n), A038315(n))`
-/

namespace A038321.P10357941656397293464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038315 n)

end

end A038321.P10357941656397293464

noncomputable section

/-- A038321: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*7^j.

Offset 0, canonical program `A038321.P10357941656397293464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3345 terms. -/
def A038321 (n : ℕ) : ℤ :=
  (A038321.P10357941656397293464.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3345 terms. -/
def A038321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038323.P3138295503608263290

`lcm(A013616(n), A038315(n))`
-/

namespace A038323.P3138295503608263290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013616 n) (A038315 n)

end

end A038323.P3138295503608263290

noncomputable section

/-- A038323: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*9^j.

Offset 0, canonical program `A038323.P3138295503608263290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3110 terms. -/
def A038323 (n : ℕ) : ℤ :=
  (A038323.P3138295503608263290.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3110 terms. -/
def A038323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041001.P7868168025577261724

`A042941(n+1)-A038845(n+1)`
-/

namespace A041001.P7868168025577261724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042941 (n + 1) - A038845 (n + 1)

end

end A041001.P7868168025577261724

noncomputable section

/-- A041001: Convolution of A000108(n+1), n >= 0, (Catalan numbers) with A038845 (3-fold convolution of powers of 4).

Offset 0, canonical program `A041001.P7868168025577261724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A041001 (n : ℕ) : ℤ :=
  A041001.P7868168025577261724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A041001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041005.P1067801707216124384

`A020918(n+1)-A042941(n+1)`
-/

namespace A041005.P1067801707216124384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020918 (n + 1) - A042941 (n + 1)

end

end A041005.P1067801707216124384

noncomputable section

/-- A041005: Convolution of Catalan numbers A000108(n+1), n >= 0, with A020918.

Offset 0, canonical program `A041005.P1067801707216124384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A041005 (n : ℕ) : ℤ :=
  A041005.P1067801707216124384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A041005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046207.P12178220823491989682

`(A000267(n)+1)*A014413(n+1)`
-/

namespace A046207.P12178220823491989682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000267 n + 1) * A014413 (n + 1)

end

end A046207.P12178220823491989682

noncomputable section

/-- A046207: Numbers to the right of the central elements in the triangle of denominators in Leibniz's Harmonic Triangle.

Offset 1, canonical program `A046207.P12178220823491989682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046207 (n : ℕ) : ℤ :=
  A046207.P12178220823491989682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046325.P13404196471714545955

`A000040(n+1)*A046324(n+2)`
-/

namespace A046325.P13404196471714545955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046324 (n + 2)

end

end A046325.P13404196471714545955

noncomputable section

/-- A046325: Product of 7 successive primes.

Offset 1, canonical program `A046325.P13404196471714545955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046325 (n : ℕ) : ℤ :=
  A046325.P13404196471714545955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047848.P15625844046926948221

`gcd(A000038(n), A123490(A014132(n+1)))`
-/

namespace A047848.P15625844046926948221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123490 (A014132 (n + 1)).toNat)

end

end A047848.P15625844046926948221

noncomputable section

/-- A047848: Array A read by diagonals; n-th difference of (A(k,n), A(k,n-1),..., A(k,0)) is (k+2)^(n-1), for n=1,2,3,...; k=0,1,2,...

Offset 0, canonical program `A047848.P15625844046926948221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4577 terms. -/
def A047848 (n : ℕ) : ℤ :=
  (A047848.P15625844046926948221.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4577 terms. -/
def A047848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047972.P12401252622405867247

`A049581(A130290(n+1))`
-/

namespace A047972.P12401252622405867247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A130290 (n + 1)).toNat

end

end A047972.P12401252622405867247

noncomputable section

/-- A047972: Distance of n-th prime to nearest square.

Offset 1, canonical program `A047972.P12401252622405867247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A047972 (n : ℕ) : ℤ :=
  A047972.P12401252622405867247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A047972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048700.P8855454458622307026

`A044918(A003817(n+1)+n)`
-/

namespace A048700.P8855454458622307026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (A003817 (n + 1) + (n : ℤ)).toNat

end

end A048700.P8855454458622307026

noncomputable section

/-- A048700: Binary palindromes of odd length (written in base 10).

Offset 1, canonical program `A048700.P8855454458622307026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A048700 (n : ℕ) : ℤ :=
  A048700.P8855454458622307026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A048700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049706.P17426073301630217516

`A101279(A049648(n))`
-/

namespace A049706.P17426073301630217516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A049648 n).toNat

end

end A049706.P17426073301630217516

noncomputable section

/-- A049706: a(n) = T(n,n+2), array T as in A049704.

Offset 0, canonical program `A049706.P17426073301630217516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A049706 (n : ℕ) : ℤ :=
  A049706.P17426073301630217516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A049706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050174.P6005188988390205809

`A014430(A007401(n+1))-A183110(A007401(n+1))`
-/

namespace A050174.P6005188988390205809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A007401 (n + 1)).toNat - A183110 (A007401 (n + 1)).toNat

end

end A050174.P6005188988390205809

noncomputable section

/-- A050174: T(n,k) = S(n,k,k-2), 1<=k<=n-2, n >= 3, array S as in A050157.

Offset 3, canonical program `A050174.P6005188988390205809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A050174 (n : ℕ) : ℤ :=
  A050174.P6005188988390205809.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A050174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050440.P1601807221353553865

`A002808(A050439(n+1))`
-/

namespace A050440.P1601807221353553865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A050439 (n + 1)).toNat

end

end A050440.P1601807221353553865

noncomputable section

/-- A050440: Sixth-order composites.

Offset 1, canonical program `A050440.P1601807221353553865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9456 terms. -/
def A050440 (n : ℕ) : ℤ :=
  A050440.P1601807221353553865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9456 terms. -/
def A050440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051194.P9904463876404786723

`∏{e}[A050873(n+1), #+1]`
-/

namespace A051194.P9904463876404786723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A051194.P9904463876404786723

noncomputable section

/-- A051194: Triangular array T read by rows: T(n,k) = number of positive integers that divide both n and k.

Offset 1, canonical program `A051194.P9904463876404786723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051194 (n : ℕ) : ℤ :=
  (A051194.P9904463876404786723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051537.P1281035452326378825

`A051173(n+1)/A050873(n+1)`
-/

namespace A051537.P1281035452326378825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A051537.P1281035452326378825

noncomputable section

/-- A051537: Triangle read by rows: T(i,j) = lcm(i,j)/gcd(i,j) for 1 <= j <= i.

Offset 1, canonical program `A051537.P1281035452326378825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051537.P1281035452326378825.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051597.P4383731425265306086

`A014430(n)-A014473(n)`
-/

namespace A051597.P4383731425265306086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n - A014473 n

end

end A051597.P4383731425265306086

noncomputable section

/-- A051597: Rows of triangle formed using Pascal's rule except begin and end n-th row with n+1.

Offset 0, canonical program `A051597.P4383731425265306086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051597 (n : ℕ) : ℤ :=
  A051597.P4383731425265306086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053202.P5490274948657399534

`A053201(2*A133196(n+1)+n)`
-/

namespace A053202.P5490274948657399534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053201 (2 * A133196 (n + 1) + (n : ℤ)).toNat

end

end A053202.P5490274948657399534

noncomputable section

/-- A053202: Pascal's triangle (excluding first, last two elements of each row) read by rows, row n read mod n.

Offset 4, canonical program `A053202.P5490274948657399534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A053202 (n : ℕ) : ℤ :=
  A053202.P5490274948657399534.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A053202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054521.P4283920493715643574

`A063524(A050873(n+1))`
-/

namespace A054521.P4283920493715643574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A050873 (n + 1)).toNat

end

end A054521.P4283920493715643574

noncomputable section

/-- A054521: Triangle read by rows: T(n,k) = 1 if gcd(n, k) = 1, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054521.P4283920493715643574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054521 (n : ℕ) : ℤ :=
  A054521.P4283920493715643574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054531.P17853687530783938553

`floor(A002024(n+1)/A050873(n+1))`
-/

namespace A054531.P17853687530783938553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)⌋

end

end A054531.P17853687530783938553

noncomputable section

/-- A054531: Triangular array T read by rows: T(n,k) = n/gcd(n,k) (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054531.P17853687530783938553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054531 (n : ℕ) : ℤ :=
  A054531.P17853687530783938553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055373.P16770464216453307596

`ceil(A038221(n)/3)`
-/

namespace A055373.P16770464216453307596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038221 n : ℚ) / 3⌉

end

end A055373.P16770464216453307596

noncomputable section

/-- A055373: Invert transform applied twice to Pascal's triangle A007318.

Offset 0, canonical program `A055373.P16770464216453307596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. -/
def A055373 (n : ℕ) : ℤ :=
  A055373.P16770464216453307596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. -/
def A055373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059026.P15748708878589759038

`floor(A094727(n+1)/A050873(n+1))`
-/

namespace A059026.P15748708878589759038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094727 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)⌋

end

end A059026.P15748708878589759038

noncomputable section

/-- A059026: Table B(n,m) read by rows: B(n,m) = LCM(n,m)/n + LCM(n,m)/m - 1 for all 1<=m<=n.

Offset 1, canonical program `A059026.P15748708878589759038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059026 (n : ℕ) : ℤ :=
  A059026.P15748708878589759038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060025.P9020648666092478282

`A026811(n+5)-A026812(n+5)`
-/

namespace A060025.P9020648666092478282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 5) - A026812 (n + 5)

end

end A060025.P9020648666092478282

noncomputable section

/-- A060025: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 6.

Offset 0, canonical program `A060025.P9020648666092478282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, A026812, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060025 (n : ℕ) : ℤ :=
  A060025.P9020648666092478282.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, A026812, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060325.P9919999057588717172

`A054265(n+1)-A065091(n+1)`
-/

namespace A060325.P9919999057588717172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) - A065091 (n + 1)

end

end A060325.P9919999057588717172

noncomputable section

/-- A060325: a(n) = n-th prime prime(n) subtracted from sum of all composites between prime(n) and prime(n-1).

Offset 2, canonical program `A060325.P9919999057588717172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060325 (n : ℕ) : ℤ :=
  A060325.P9919999057588717172.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062047.P9752423036722782838

`A054265(n+1)-A062046(n+1)`
-/

namespace A062047.P9752423036722782838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) - A062046 (n + 1)

end

end A062047.P9752423036722782838

noncomputable section

/-- A062047: Sum of odd numbers between consecutive primes.

Offset 1, canonical program `A062047.P9752423036722782838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062047 (n : ℕ) : ℤ :=
  A062047.P9752423036722782838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065109.P11561042240383310620

`A033999(A002262(n))*A038207(n)`
-/

namespace A065109.P11561042240383310620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A038207 n

end

end A065109.P11561042240383310620

noncomputable section

/-- A065109: Triangle T(n,k) of coefficients relating to Bezier curve continuity.

Offset 0, canonical program `A065109.P11561042240383310620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065109 (n : ℕ) : ℤ :=
  A065109.P11561042240383310620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066558.P16419562808163109231

`A060156(n+1)-A000007(A056968(n+1))`
-/

namespace A066558.P16419562808163109231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1) - A000007 (A056968 (n + 1)).toNat

end

end A066558.P16419562808163109231

noncomputable section

/-- A066558: a(n) = A066557(n)/n.

Offset 1, canonical program `A066558.P16419562808163109231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A066558 (n : ℕ) : ℤ :=
  A066558.P16419562808163109231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A066558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071018.P12734946586284091472

`∑{d}[n+1, A007306(A025480(#)+1)]`
-/

namespace A071018.P12734946586284091472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007306 (A025480 d + 1).toNat

end

end A071018.P12734946586284091472

noncomputable section

/-- A071018: Inverse Moebius transform of A002487.

Offset 0, canonical program `A071018.P12734946586284091472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071018 (n : ℕ) : ℤ :=
  A071018.P12734946586284091472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071050.P979392285191769002

`Δ[A267369(abs(1-n))]`
-/

namespace A071050.P979392285191769002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267369 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071050.P979392285191769002

noncomputable section

/-- A071050: Number of 0's in n-th row of triangle in A071035.

Offset 0, canonical program `A071050.P979392285191769002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071050 (n : ℕ) : ℤ :=
  A071050.P979392285191769002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073768.P11800436879270147310

`A063007(n)*A094587(n)`
-/

namespace A073768.P11800436879270147310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n * A094587 n

end

end A073768.P11800436879270147310

noncomputable section

/-- A073768: Triangle of coefficients of Bateman polynomial n!Z_n(-x).

Offset 0, canonical program `A073768.P11800436879270147310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. -/
def A073768 (n : ℕ) : ℤ :=
  A073768.P11800436879270147310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. -/
def A073768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075327.P15273917995873250238

`A075326(n+1)+A075325(n+1)`
-/

namespace A075327.P15273917995873250238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) + A075325 (n + 1)

end

end A075327.P15273917995873250238

noncomputable section

/-- A075327: Sum of n-th pair in A075325.

Offset 1, canonical program `A075327.P15273917995873250238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075327 (n : ℕ) : ℤ :=
  A075327.P15273917995873250238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075576.P16153847781406620441

`A027861(n+1)²`
-/

namespace A075576.P16153847781406620441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1) ^ 2

end

end A075576.P16153847781406620441

noncomputable section

/-- A075576: Smaller of two consecutive squares with a prime sum.

Offset 1, canonical program `A075576.P16153847781406620441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075576 (n : ℕ) : ℤ :=
  A075576.P16153847781406620441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076639.P966120493573351366

`comp[A063934(n+1)-1]+1`
-/

namespace A076639.P966120493573351366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A076639.P966120493573351366

noncomputable section

/-- A076639: Numbers that are neither primes nor interprimes.

Offset 1, canonical program `A076639.P966120493573351366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076639 (n : ℕ) : ℤ :=
  (A076639.P966120493573351366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076775.P6289463666385090008

`gcd(A000027(n+1), A355297(n+1))`
-/

namespace A076775.P6289463666385090008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A355297 (n + 1))

end

end A076775.P6289463666385090008

noncomputable section

/-- A076775: Greatest common divisor of n and the binary representation of n interpreted decimally.

Offset 1, canonical program `A076775.P6289463666385090008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076775 (n : ℕ) : ℤ :=
  (A076775.P6289463666385090008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078817.P13022866292399364478

`A068555(A007401(n+1))/2*A007318(n)`
-/

namespace A078817.P13022866292399364478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A007401 (n + 1)).toNat : ℚ) / 2 * (A007318 n : ℚ)

end

end A078817.P13022866292399364478

noncomputable section

/-- A078817: Table by antidiagonals giving variants on Catalan sequence: T(n,k)=C(2n,n)*C(2k,k)*(2k+1)/(n+k+1).

Offset 0, canonical program `A078817.P13022866292399364478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A078817 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078817.P13022866292399364478.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A078817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079091.P945160035338454758

`A001414(A079080(n+1))+A001414(A079081(n+1))`
-/

namespace A079091.P945160035338454758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A079080 (n + 1)).toNat + A001414 (A079081 (n + 1)).toNat

end

end A079091.P945160035338454758

noncomputable section

/-- A079091: Sum of all prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079091.P945160035338454758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A079091 (n : ℕ) : ℤ :=
  A079091.P945160035338454758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A079091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079621.P13592380189452857907

`A038207(n)*A173333(n+1)`
-/

namespace A079621.P13592380189452857907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A173333 (n + 1)

end

end A079621.P13592380189452857907

noncomputable section

/-- A079621: Matrix square of unsigned Lah triangle abs(A008297(n,k)) or A105278(n,k).

Offset 1, canonical program `A079621.P13592380189452857907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1771 terms. -/
def A079621 (n : ℕ) : ℤ :=
  A079621.P13592380189452857907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1771 terms. -/
def A079621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080027.P3131391736588176350

`A363228(A359794(n+1))`
-/

namespace A080027.P3131391736588176350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363228 (A359794 (n + 1)).toNat

end

end A080027.P3131391736588176350

noncomputable section

/-- A080027: Let s(1) = 1; let s(2m) = {s(2m-1),m+1,s(2m-1)}, s(2m+1) = {s(2m),s(2m)}; sequence gives limit of s(k) for large k.

Offset 1, canonical program `A080027.P3131391736588176350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A080027 (n : ℕ) : ℤ :=
  A080027.P3131391736588176350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A080027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080307.P12348856722776114523

`lt[0, A356241(n+1)]+1`
-/

namespace A080307.P12348856722776114523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080307.P12348856722776114523

noncomputable section

/-- A080307: Multiples of the Fermat numbers 2^(2^n)+1.

Offset 1, canonical program `A080307.P12348856722776114523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A080307 (n : ℕ) : ℤ :=
  (A080307.P12348856722776114523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A080307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080382.P15278126479239463729

`A210736(∑[char[∑[n]]])/A080381(n)`
-/

namespace A080382.P15278126479239463729
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A080381 n : ℚ)

end

end A080382.P15278126479239463729

noncomputable section

/-- A080382: Triangle read by rows: T(n,k) = C(n,floor(n/2))/gcd(C(n,floor(n/2)),C(n,k)), k=0..n; central binomial coefficient is divided by greatest common divisor of binomial coefficients and corresponding central binomial coefficient.

Offset 1, canonical program `A080382.P15278126479239463729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080382 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080382.P15278126479239463729.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082137.P12048545405797502236

`ceil(A013609(n)/2)`
-/

namespace A082137.P12048545405797502236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A013609 n : ℚ) / 2⌉

end

end A082137.P12048545405797502236

noncomputable section

/-- A082137: Square array of transforms of binomial coefficients, read by antidiagonals.

Offset 0, canonical program `A082137.P12048545405797502236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082137 (n : ℕ) : ℤ :=
  A082137.P12048545405797502236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082391.P4712612013818769208

`Δ[comp[A193739(n)+a(n-1)]]` with `a(0)=2, a(1)=2`
-/

namespace A082391.P4712612013818769208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A193739 n + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082391.P4712612013818769208

noncomputable section

/-- A082391: Start with the sequence a(1) to a(4) = 1, 3, 2, 3. Then in step s, append "1", "1,2", or "1,2,3", whichever ends with a(s+2).

Offset 1, canonical program `A082391.P4712612013818769208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082391 (n : ℕ) : ℤ :=
  A082391.P4712612013818769208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083118.P15455909415279761198

`lt[10, A227071(n+1)]`
-/

namespace A083118.P15455909415279761198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083118.P15455909415279761198

noncomputable section

/-- A083118: Index of zeros in A083116 and A083117.

Offset 1, canonical program `A083118.P15455909415279761198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. -/
def A083118 (n : ℕ) : ℤ :=
  (A083118.P15455909415279761198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. -/
def A083118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083487.P5442048011972979188

`A154684(n+1)+3`
-/

namespace A083487.P5442048011972979188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 3

end

end A083487.P5442048011972979188

noncomputable section

/-- A083487: Triangle read by rows: T(n,k) = 2*n*k + n + k (1 <= k <= n).

Offset 1, canonical program `A083487.P5442048011972979188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083487 (n : ℕ) : ℤ :=
  A083487.P5442048011972979188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085691.P17951583978947504204

`C(A185914(n+1), 2)+abs(A122432(n))`
-/

namespace A085691.P17951583978947504204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A185914 (n + 1)).toNat 2 : ℤ) + |A122432 n|

end

end A085691.P17951583978947504204

noncomputable section

/-- A085691: Triangle read by rows: T(n,k) is the number of triangles of side k in triangular matchstick arrangement of side n; n>=1 and k>=1.

Offset 1, canonical program `A085691.P17951583978947504204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085691 (n : ℕ) : ℤ :=
  A085691.P17951583978947504204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086915.P10852167916751905758

`A094587(n)*A276985(n+1)`
-/

namespace A086915.P10852167916751905758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A276985 (n + 1)

end

end A086915.P10852167916751905758

noncomputable section

/-- A086915: Triangle read by rows: T(n,k) = 2^k * (n!/k!)*binomial(n-1,k-1).

Offset 1, canonical program `A086915.P10852167916751905758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A086915 (n : ℕ) : ℤ :=
  A086915.P10852167916751905758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A086915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087012.P10846444027220297516

`eq[A087010(n+1), A087011(n+1)]+1`
-/

namespace A087012.P10846444027220297516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087012.P10846444027220297516

noncomputable section

/-- A087012: Numbers m such that the number of primes of form 4*k+1 between m and 2*m equals the number of primes of form 4*k+3 between m and 2*m (inclusive).

Offset 1, canonical program `A087012.P10846444027220297516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A087012 (n : ℕ) : ℤ :=
  (A087012.P10846444027220297516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A087012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087872.P6196615648730476235

`∩[A102083(2*n+1), A027862(n+2)]`
-/

namespace A087872.P6196615648730476235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087872.P6196615648730476235

noncomputable section

/-- A087872: Primes of the form (4*k + 3)^2 + (4*k + 2)^2 where k=0,1,2,3,...

Offset 1, canonical program `A087872.P6196615648730476235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A087872 (n : ℕ) : ℤ :=
  (A087872.P6196615648730476235.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A087872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088899.P5292124785369287953

`2*A105673(A050873(n+1)²)`
-/

namespace A088899.P5292124785369287953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105673 (A050873 (n + 1) ^ 2).toNat

end

end A088899.P5292124785369287953

noncomputable section

/-- A088899: T(n, k) = number of ordered pairs of integers (x,y) with x^2/n^2 + y^2/k^2 = 1, 1 <= k <= n; triangular array, read by rows.

Offset 1, canonical program `A088899.P5292124785369287953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A088899 (n : ℕ) : ℤ :=
  A088899.P5292124785369287953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A088899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088915.P15281990114647050217

`record[n*(char[A107985(n)]+1)]`
-/

namespace A088915.P15281990114647050217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088915.P15281990114647050217

noncomputable section

/-- A088915: Nonnegative numbers of the form mn(m+n) with integers m,n.

Offset 1, canonical program `A088915.P15281990114647050217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A088915 (n : ℕ) : ℤ :=
  (A088915.P15281990114647050217.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A088915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089581.P18062145640790323521

`A060191(n)*A060192(n)`
-/

namespace A089581.P18062145640790323521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n * A060192 n

end

end A089581.P18062145640790323521

noncomputable section

/-- A089581: a(n) = prime(2*n-1)*prime(2*n).

Offset 1, canonical program `A089581.P18062145640790323521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089581 (n : ℕ) : ℤ :=
  A089581.P18062145640790323521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090044.P6143622814753573684

`A028326(n)%3`
-/

namespace A090044.P6143622814753573684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028326 n) 3

end

end A090044.P6143622814753573684

noncomputable section

/-- A090044: Triangle read by rows: T(n,k) = A083093 with 1's and 2's interchanged.

Offset 0, canonical program `A090044.P6143622814753573684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090044 (n : ℕ) : ℤ :=
  A090044.P6143622814753573684.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091498.P8170491020747909582

`A026812(n)+∑[A008670(n)]`
-/

namespace A091498.P8170491020747909582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091498.P8170491020747909582

noncomputable section

/-- A091498: The sixth column of triangle A091492, excluding leading zeros.

Offset 0, canonical program `A091498.P8170491020747909582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091498 (n : ℕ) : ℤ :=
  A091498.P8170491020747909582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091869.P5949036612487565607

`A091187(A038722(n+1))`
-/

namespace A091869.P5949036612487565607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (A038722 (n + 1)).toNat

end

end A091869.P5949036612487565607

noncomputable section

/-- A091869: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k peaks at even height.

Offset 1, canonical program `A091869.P5949036612487565607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091869 (n : ℕ) : ℤ :=
  A091869.P5949036612487565607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091918.P5621193398962617937

`A007318(n)*A038207(n*A010054(n))`
-/

namespace A091918.P5621193398962617937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A038207 ((n : ℤ) * A010054 n).toNat

end

end A091918.P5621193398962617937

noncomputable section

/-- A091918: Inverse of number triangle A091917.

Offset 0, canonical program `A091918.P5621193398962617937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091918 (n : ℕ) : ℤ :=
  A091918.P5621193398962617937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092243.P77833294890424511

`∑[-A079054(abs(1-n)+2)]`
-/

namespace A092243.P77833294890424511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A079054 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092243.P77833294890424511

noncomputable section

/-- A092243: Score at stage n in "tug of war" between prime gap increases vs. prime gap decreases: start with score = 0 at n = 1 and at stage n = k > 1, increase (resp. decrease) the score by 1 if the k-th prime gap is greater (resp. less) than the previous prime gap.

Offset 1, canonical program `A092243.P77833294890424511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092243 (n : ℕ) : ℤ :=
  A092243.P77833294890424511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092370.P10746559551682177439

`floor(A063007(A014132(n+1))/2)`
-/

namespace A092370.P10746559551682177439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063007 (A014132 (n + 1)).toNat : ℚ) / 2⌋

end

end A092370.P10746559551682177439

noncomputable section

/-- A092370: Triangle read by rows: T(n,k)=(1/2)*C(n+k,k)*C(n,n-k).

Offset 1, canonical program `A092370.P10746559551682177439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9001 terms. -/
def A092370 (n : ℕ) : ℤ :=
  A092370.P10746559551682177439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9001 terms. -/
def A092370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093375.P10840461646579491391

`A028326(n)-A055137(n)`
-/

namespace A093375.P10840461646579491391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A055137 n

end

end A093375.P10840461646579491391

noncomputable section

/-- A093375: Array T(m,n) read by ascending antidiagonals: T(m,n) = m*binomial(n+m-2, n-1) for m, n >= 1.

Offset 1, canonical program `A093375.P10840461646579491391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093375 (n : ℕ) : ℤ :=
  A093375.P10840461646579491391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094112.P13916715946078502144

`A092582(C(2, n)+n)+Δ[A035214(n)]`
-/

namespace A094112.P13916715946078502144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092582 (Nat.choose 2 n + n) + (f1 (n + 1) - f1 n)

end

end A094112.P13916715946078502144

noncomputable section

/-- A094112: Triangle read by rows: T(n,k) is the number of permutations p of [n] in which the length of the longest initial segment avoiding the 123-, the 132- and the 231-pattern is equal to k.

Offset 1, canonical program `A094112.P13916715946078502144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A094112 (n : ℕ) : ℤ :=
  A094112.P13916715946078502144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A094112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094218.P957445581000040458

`(n+1)*A037958(2*(n+1))/2`
-/

namespace A094218.P957445581000040458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A037958 (2 * (n + 1)) : ℚ) / 2)

end

end A094218.P957445581000040458

noncomputable section

/-- A094218: Number of permutations of length n with exactly 2 occurrences of the pattern 2-13.

Offset 1, canonical program `A094218.P957445581000040458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A094218 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094218.P957445581000040458.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A094218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094438.P6192063394348362589

`A094437(n)+A094436(n)`
-/

namespace A094438.P6192063394348362589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094437 n + A094436 n

end

end A094438.P6192063394348362589

noncomputable section

/-- A094438: Triangular array T(n,k) = Fibonacci(k+3)*C(n,k), k=0..n, n>=0.

Offset 0, canonical program `A094438.P6192063394348362589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094438 (n : ℕ) : ℤ :=
  A094438.P6192063394348362589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094443.P15865139998827493558

`A094442(n)+A094441(n)`
-/

namespace A094443.P15865139998827493558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 n + A094441 n

end

end A094443.P15865139998827493558

noncomputable section

/-- A094443: Triangular array T(n,k) = Fibonacci(n+3-k)*C(n,k), k=0..n, n>=0.

Offset 0, canonical program `A094443.P15865139998827493558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094443 (n : ℕ) : ℤ :=
  A094443.P15865139998827493558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094495.P15303068755985020940

`(A028326(n)/2)%A028310(A003056(n))²`
-/

namespace A094495.P15303068755985020940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)) (A028310 (A003056 n).toNat ^ 2)

end

end A094495.P15303068755985020940

noncomputable section

/-- A094495: Table of binomial coefficients mod m^2, read by rows: T(m, n) = binomial(m, n) mod m^2.

Offset 0, canonical program `A094495.P15303068755985020940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094495 (n : ℕ) : ℤ :=
  A094495.P15303068755985020940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095276.P17420157782506279644

`Δ[record[A087960(A035614(n+1))+n]]`
-/

namespace A095276.P17420157782506279644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A035614 (n + 1)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095276.P17420157782506279644

noncomputable section

/-- A095276: Length of n-th run of identical symbols in A095076 and A095111.

Offset 1, canonical program `A095276.P17420157782506279644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5529 terms. -/
def A095276 (n : ℕ) : ℤ :=
  A095276.P17420157782506279644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5529 terms. -/
def A095276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096500.P11441751826480076457

`A166597(n+2)-A072680(n+2)`
-/

namespace A096500.P11441751826480076457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (n + 2) - A072680 (n + 2)

end

end A096500.P11441751826480076457

noncomputable section

/-- A096500: Let f(n) = smallest prime > n; a(n) = f(n+1) - f(n).

Offset 1, canonical program `A096500.P11441751826480076457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096500 (n : ℕ) : ℤ :=
  A096500.P11441751826480076457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098925.P12998610641323261996

`abs(A092865(n))`
-/

namespace A098925.P12998610641323261996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092865 n|

end

end A098925.P12998610641323261996

noncomputable section

/-- A098925: Distribution of the number of ways for a child to climb a staircase having r steps (one step or two steps at a time).

Offset 0, canonical program `A098925.P12998610641323261996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098925 (n : ℕ) : ℤ :=
  A098925.P12998610641323261996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100181.P3918827157118808602

`A120070(3*(n+1)-comp[n²]+1)`
-/

namespace A100181.P3918827157118808602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 ((3 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1).toNat

end

end A100181.P3918827157118808602

noncomputable section

/-- A100181: Odd terms in A120070.

Offset 1, canonical program `A100181.P3918827157118808602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100181 (n : ℕ) : ℤ :=
  A100181.P3918827157118808602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102625.P10186245155927190658

`A001497(n)*A166350(n+1)`
-/

namespace A102625.P10186245155927190658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A166350 (n + 1)

end

end A102625.P10186245155927190658

noncomputable section

/-- A102625: Triangle read by rows: T(n,k) is the sum of the weights of all vertices labeled k at depth n in the Catalan tree (1 <= k <= n+1, n >= 0).

Offset 0, canonical program `A102625.P10186245155927190658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A102625 (n : ℕ) : ℤ :=
  A102625.P10186245155927190658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A102625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103450.P15759975905584063005

`A007318(n)+A025581(n)*A097805(n)`
-/

namespace A103450.P15759975905584063005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A025581 n * A097805 n

end

end A103450.P15759975905584063005

noncomputable section

/-- A103450: A figurate number triangle read by rows.

Offset 0, canonical program `A103450.P15759975905584063005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A103450 (n : ℕ) : ℤ :=
  A103450.P15759975905584063005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A103450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103588.P7339551686273575280

`1-A103582(n)`
-/

namespace A103588.P7339551686273575280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103582 n

end

end A103588.P7339551686273575280

noncomputable section

/-- A103588: 1's complement of A103582.

Offset 0, canonical program `A103588.P7339551686273575280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103588 (n : ℕ) : ℤ :=
  A103588.P7339551686273575280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104626.P8849892008519993134

`record[A005248(A145677(n))+A004736(n+1)]`
-/

namespace A104626.P8849892008519993134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (A145677 n).toNat + A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104626.P8849892008519993134

noncomputable section

/-- A104626: Numbers having three 1's in their base-phi representation.

Offset 1, canonical program `A104626.P8849892008519993134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A104626 (n : ℕ) : ℤ :=
  A104626.P8849892008519993134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A104626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105868.P10539936422106588351

`A089627(A061579(n))`
-/

namespace A105868.P10539936422106588351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (A061579 n).toNat

end

end A105868.P10539936422106588351

noncomputable section

/-- A105868: Triangle read by rows, T(n,k) = C(n,k)*C(k,n-k).

Offset 0, canonical program `A105868.P10539936422106588351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A105868 (n : ℕ) : ℤ :=
  A105868.P10539936422106588351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A105868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107016.P14660521387021692450

`Δ[A179180(n)]-A107015(n+1)`
-/

namespace A107016.P14660521387021692450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107015 (n + 1)

end

end A107016.P14660521387021692450

noncomputable section

/-- A107016: Number of odd terms in Zeckendorf representation of n.

Offset 1, canonical program `A107016.P14660521387021692450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107016 (n : ℕ) : ℤ :=
  A107016.P14660521387021692450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107228.P2676299887391952317

`eq[0, A107015(n+1)]+1`
-/

namespace A107228.P2676299887391952317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107228.P2676299887391952317

noncomputable section

/-- A107228: Numbers having no even terms in their Zeckendorf representation.

Offset 1, canonical program `A107228.P2676299887391952317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. -/
def A107228 (n : ℕ) : ℤ :=
  (A107228.P2676299887391952317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. -/
def A107228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107599.P7799038033738361722

`1-A079054(n+2)`
-/

namespace A107599.P7799038033738361722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079054 (n + 2)

end

end A107599.P7799038033738361722

noncomputable section

/-- A107599: a(n) = 0,1,2 (resp.) if (1/2)[prime(n-1)+prime(n+1)] is less than, equal to or greater than prime(n) (resp.).

Offset 2, canonical program `A107599.P7799038033738361722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A107599 (n : ℕ) : ℤ :=
  A107599.P7799038033738361722.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A107599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107711.P18303887428430519513

`gcd(A014473(n)+1, A097805(n+1))`
-/

namespace A107711.P18303887428430519513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n + 1) (A097805 (n + 1))

end

end A107711.P18303887428430519513

noncomputable section

/-- A107711: Triangle read by rows: T(0,0)=1, T(n,m) = binomial(n,m) * gcd(n,m)/n.

Offset 0, canonical program `A107711.P18303887428430519513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107711 (n : ℕ) : ℤ :=
  (A107711.P18303887428430519513.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108415.P14242309755812235254

`A079054(n+2)+2`
-/

namespace A108415.P14242309755812235254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) + 2

end

end A108415.P14242309755812235254

noncomputable section

/-- A108415: a(n) = 1, 2 or 3 (resp.) if prime(n) is weak, balanced or strong (resp.).

Offset 2, canonical program `A108415.P14242309755812235254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108415 (n : ℕ) : ℤ :=
  A108415.P14242309755812235254.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109001.P9628727548173392022

`A091042(n)-A002262(n)*A028326(n)`
-/

namespace A109001.P9628727548173392022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 n - A002262 n * A028326 n

end

end A109001.P9628727548173392022

noncomputable section

/-- A109001: Triangle, read by rows, where g.f. of row n equals the product of (1-x)^n and the g.f. of the coordination sequence for root lattice B_n, for n >= 0.

Offset 0, canonical program `A109001.P9628727548173392022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109001 (n : ℕ) : ℤ :=
  A109001.P9628727548173392022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109128.P11896187039746255515

`A028326(n)-1`
-/

namespace A109128.P11896187039746255515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - 1

end

end A109128.P11896187039746255515

noncomputable section

/-- A109128: Triangle read by rows: T(n,k) = T(n-1,k-1) + T(n-1,k) + 1 for 0

Offset 0, canonical program `A109128.P11896187039746255515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109128 (n : ℕ) : ℤ :=
  A109128.P11896187039746255515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109187.P2341051230272957120

`A097610(n)*A115514(n+1)`
-/

namespace A109187.P2341051230272957120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A115514 (n + 1)

end

end A109187.P2341051230272957120

noncomputable section

/-- A109187: Triangle read by rows: T(n,k) is number of Grand Motzkin paths of length n having k (1,0)-steps.

Offset 0, canonical program `A109187.P2341051230272957120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109187 (n : ℕ) : ℤ :=
  A109187.P2341051230272957120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109264.P8993228771912653

`A117362(n)+A109466(n+1)`
-/

namespace A109264.P8993228771912653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117362 n + A109466 (n + 1)

end

end A109264.P8993228771912653

noncomputable section

/-- A109264: Riordan array (1-x-x^2,x(1-x)).

Offset 0, canonical program `A109264.P8993228771912653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109264 (n : ℕ) : ℤ :=
  A109264.P8993228771912653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109400.P14173974455887194416

`A082500(A001650(n+1)-A082375(n))`
-/

namespace A109400.P14173974455887194416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A001650 (n + 1) - A082375 n).toNat

end

end A109400.P14173974455887194416

noncomputable section

/-- A109400: For all k: the first k numbers followed by the first k primes.

Offset 1, canonical program `A109400.P14173974455887194416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109400 (n : ℕ) : ℤ :=
  A109400.P14173974455887194416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109954.P17595007560231921648

`A129818(comp[∑[n]])`
-/

namespace A109954.P17595007560231921648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A109954.P17595007560231921648

noncomputable section

/-- A109954: Riordan array (1/(1+x)^3,x/(1+x)^2).

Offset 0, canonical program `A109954.P17595007560231921648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A109954 (n : ℕ) : ℤ :=
  A109954.P17595007560231921648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A109954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110314.P17590807438528676276

`A094441(n)*A141679(n+1)`
-/

namespace A110314.P17590807438528676276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n * A141679 (n + 1)

end

end A110314.P17590807438528676276

noncomputable section

/-- A110314: Inverse of number triangle related to Fibonacci numbers.

Offset 0, canonical program `A110314.P17590807438528676276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110314 (n : ℕ) : ℤ :=
  A110314.P17590807438528676276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110552.P17093704478189528423

`A097805(n+1)+A097805(n)*A137688(n)`
-/

namespace A110552.P17093704478189528423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A097805 n * A137688 n

end

end A110552.P17093704478189528423

noncomputable section

/-- A110552: A triangular array related to A077028 and distributing the values of A007582.

Offset 1, canonical program `A110552.P17093704478189528423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110552 (n : ℕ) : ℤ :=
  A110552.P17093704478189528423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110555.P13250314358823884929

`A033999(A002262(n))*A071919(n)`
-/

namespace A110555.P13250314358823884929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A071919 n

end

end A110555.P13250314358823884929

noncomputable section

/-- A110555: Triangle of partial sums of alternating binomial coefficients: T(n, k) = Sum_{j=0..k} binomial(n, j)*(-1)^j, for n >= 0, 0 <= k <= n.

Offset 0, canonical program `A110555.P13250314358823884929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110555 (n : ℕ) : ℤ :=
  A110555.P13250314358823884929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110608.P11237977871126013509

`A007318(n)*A094527(n)`
-/

namespace A110608.P11237977871126013509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A094527 n

end

end A110608.P11237977871126013509

noncomputable section

/-- A110608: Number triangle T(n,k) = binomial(n,k)*binomial(2n,n-k).

Offset 0, canonical program `A110608.P11237977871126013509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A110608 (n : ℕ) : ℤ :=
  A110608.P11237977871126013509.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A110608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110814.P14618578239472963574

`A097807(n)*A104709(n)`
-/

namespace A110814.P14618578239472963574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A104709 n

end

end A110814.P14618578239472963574

noncomputable section

/-- A110814: Inverse of a triangle of pyramidal numbers.

Offset 0, canonical program `A110814.P14618578239472963574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110814 (n : ℕ) : ℤ :=
  A110814.P14618578239472963574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110952.P12434457606571142706

`A061928(n+1)+1-A144394(n+4)`
-/

namespace A110952.P12434457606571142706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061928 (n + 1) + (1 - A144394 (n + 4))

end

end A110952.P12434457606571142706

noncomputable section

/-- A110952: Triangle read by rows: T(n,k) = number of permutations of [n] where the first increasing run has length k and the last increasing run has length n-k-1, 0

Offset 3, canonical program `A110952.P12434457606571142706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A110952 (n : ℕ) : ℤ :=
  A110952.P12434457606571142706.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A110952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112466.P1070518038432677898

`(A097805(n)-A097805(n+1))*A097807(n)`
-/

namespace A112466.P1070518038432677898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 n - A097805 (n + 1)) * A097807 n

end

end A112466.P1070518038432677898

noncomputable section

/-- A112466: Riordan array ((1+2*x)/(1+x), x/(1+x)).

Offset 0, canonical program `A112466.P1070518038432677898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112466 (n : ℕ) : ℤ :=
  A112466.P1070518038432677898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112467.P7324981599467201497

`Δ[-A097805(n)]`
-/

namespace A112467.P7324981599467201497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112467.P7324981599467201497

noncomputable section

/-- A112467: Riordan array ((1-2x)/(1-x), x/(1-x)).

Offset 0, canonical program `A112467.P7324981599467201497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112467 (n : ℕ) : ℤ :=
  A112467.P7324981599467201497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113025.P3062274256341534460

`A063007(n)*A233543(n)`
-/

namespace A113025.P3062274256341534460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n * A233543 n

end

end A113025.P3062274256341534460

noncomputable section

/-- A113025: Triangle of integer coefficients of polynomials P(n,x) of degree n, and falling powers of x, arising in diagonal Padé approximation of exp(x).

Offset 0, canonical program `A113025.P3062274256341534460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1483 terms. -/
def A113025 (n : ℕ) : ℤ :=
  A113025.P3062274256341534460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1483 terms. -/
def A113025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113125.P11831813501655205056

`gcd(A127648(n), A153869(n+1))`
-/

namespace A113125.P11831813501655205056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127648 n) (A153869 (n + 1))

end

end A113125.P11831813501655205056

noncomputable section

/-- A113125: A simple tridiagonal matrix.

Offset 0, canonical program `A113125.P11831813501655205056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113125 (n : ℕ) : ℤ :=
  (A113125.P11831813501655205056.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113313.P6907104958604162947

`Δ[A097805(A083920(n))-A097805(n)]`
-/

namespace A113313.P6907104958604162947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A083920 n).toNat - A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113313.P6907104958604162947

noncomputable section

/-- A113313: Riordan array (1-2x,x/(1-x)).

Offset 0, canonical program `A113313.P6907104958604162947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113313 (n : ℕ) : ℤ :=
  A113313.P6907104958604162947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113429.P822979854111564575

`A197870(eq[1, A117898(n)])`
-/

namespace A113429.P822979854111564575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113429.P822979854111564575

noncomputable section

/-- A113429: Expansion of f(-x, -x^4) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A113429.P822979854111564575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. -/
def A113429 (n : ℕ) : ℤ :=
  A113429.P822979854111564575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. -/
def A113429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114251.P16907014934193643899

`A002054(n+1)*A004310(n+4)`
-/

namespace A114251.P16907014934193643899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) * A004310 (n + 4)

end

end A114251.P16907014934193643899

noncomputable section

/-- A114251: a(n) = C(3+2*n,3+n)*C(8+2*n,0+n).

Offset 0, canonical program `A114251.P16907014934193643899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002054, A004310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114251 (n : ℕ) : ℤ :=
  A114251.P16907014934193643899.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002054, A004310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114284.P2344535506956303237

`A118824(A158747(n))`
-/

namespace A114284.P2344535506956303237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A158747 n).toNat

end

end A114284.P2344535506956303237

noncomputable section

/-- A114284: Riordan array ((1-3*x)/(1-x), x).

Offset 0, canonical program `A114284.P2344535506956303237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114284 (n : ℕ) : ℤ :=
  A114284.P2344535506956303237.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115179.P13245908608680426097

`A098474(n)/A007318(n)*A109466(n)`
-/

namespace A115179.P13245908608680426097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098474 n : ℚ) / (A007318 n : ℚ) * (A109466 n : ℚ)

end

end A115179.P13245908608680426097

noncomputable section

/-- A115179: Expansion of c(x*y*(1-x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A115179.P13245908608680426097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A115179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115179.P13245908608680426097.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A115179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115241.P10239762916805987824

`A071919(n)-(A007318(n)-A074909(n+1))`
-/

namespace A115241.P10239762916805987824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n - (A007318 n - A074909 (n + 1))

end

end A115241.P10239762916805987824

noncomputable section

/-- A115241: Square array read by antidiagonals: T(n,p) is the number of linearly independent, homogeneous harmonic polynomials of degree n in p variables (n,p>=1).

Offset 1, canonical program `A115241.P10239762916805987824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115241 (n : ℕ) : ℤ :=
  A115241.P10239762916805987824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115359.P16582716396112812378

`A098157(n)*A115358(n)`
-/

namespace A115359.P16582716396112812378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098157 n * A115358 n

end

end A115359.P16582716396112812378

noncomputable section

/-- A115359: Matrix (1,x)-(x,x^2) in Riordan array notation.

Offset 0, canonical program `A115359.P16582716396112812378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115359 (n : ℕ) : ℤ :=
  A115359.P16582716396112812378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115361.P11540176887858945007

`abs(A115358(n))`
-/

namespace A115361.P11540176887858945007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115358 n|

end

end A115361.P11540176887858945007

noncomputable section

/-- A115361: Inverse of matrix (1,x)-(x,x^2) (expressed in Riordan array notation).

Offset 0, canonical program `A115361.P11540176887858945007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115361 (n : ℕ) : ℤ :=
  A115361.P11540176887858945007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115951.P6088595594853294034

`A068555(n)*A098158(n)`
-/

namespace A115951.P6088595594853294034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068555 n * A098158 n

end

end A115951.P6088595594853294034

noncomputable section

/-- A115951: Expansion of 1/sqrt(1-4*x*y-4*x^2*y).

Offset 0, canonical program `A115951.P6088595594853294034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115951 (n : ℕ) : ℤ :=
  A115951.P6088595594853294034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117184.P10036010839850409220

`gcd(A111527(A083920(n)), A111527(n))`
-/

namespace A117184.P10036010839850409220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111527 (A083920 n).toNat) (A111527 n)

end

end A117184.P10036010839850409220

noncomputable section

/-- A117184: Riordan array ((1+x)c(x^2)/sqrt(1-4x^2),xc(x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117184.P10036010839850409220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117184 (n : ℕ) : ℤ :=
  (A117184.P10036010839850409220.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117286.P13084081947061909868

`eq[1, A062137(A016035(n+1))]+1`
-/

namespace A117286.P13084081947061909868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062137 (A016035 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117286.P13084081947061909868

noncomputable section

/-- A117286: Numbers k for which the cototient k-phi(k) is a hexagonal number.

Offset 1, canonical program `A117286.P13084081947061909868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A117286 (n : ℕ) : ℤ :=
  (A117286.P13084081947061909868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A117286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117435.P11210057758145487531

`A038207(n)*A369736(n)`
-/

namespace A117435.P11210057758145487531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A369736 n

end

end A117435.P11210057758145487531

noncomputable section

/-- A117435: Triangle related to exp(x)*cos(2*x).

Offset 0, canonical program `A117435.P11210057758145487531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117435 (n : ℕ) : ℤ :=
  A117435.P11210057758145487531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117440.P10162529905256296957

`A097807(n)*A108086(n)`
-/

namespace A117440.P10162529905256296957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A108086 n

end

end A117440.P10162529905256296957

noncomputable section

/-- A117440: A cyclically signed version of Pascal's triangle.

Offset 0, canonical program `A117440.P10162529905256296957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117440 (n : ℕ) : ℤ :=
  A117440.P10162529905256296957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118963.P14007094119382325428

`A132813(n)+A103371(n)`
-/

namespace A118963.P14007094119382325428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 n + A103371 n

end

end A118963.P14007094119382325428

noncomputable section

/-- A118963: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n that have k double rises (n >= 1, k >= 0).

Offset 1, canonical program `A118963.P14007094119382325428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118963 (n : ℕ) : ℤ :=
  A118963.P14007094119382325428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119467.P13273136280324931710

`A108086(n)*A369736(n)`
-/

namespace A119467.P13273136280324931710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A369736 n

end

end A119467.P13273136280324931710

noncomputable section

/-- A119467: A masked Pascal triangle.

Offset 0, canonical program `A119467.P13273136280324931710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119467 (n : ℕ) : ℤ :=
  A119467.P13273136280324931710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119468.P2234626006278138456

`ceil(A038207(n)/2)`
-/

namespace A119468.P2234626006278138456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038207 n : ℚ) / 2⌉

end

end A119468.P2234626006278138456

noncomputable section

/-- A119468: Triangle read by rows: T(n,k) = Sum_{j=0..n-k} binomial(n,2j)*binomial(n-2j,k).

Offset 0, canonical program `A119468.P2234626006278138456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119468 (n : ℕ) : ℤ :=
  A119468.P2234626006278138456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119673.P14676430310363076738

`abs(2*a(n-1)-A013610(n))` with `a(0)=1`
-/

namespace A119673.P14676430310363076738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 * a (n - 1) - A013610 n|

end

end A119673.P14676430310363076738

noncomputable section

/-- A119673: T(n, k) = 3*T(n-1, k-1) + T(n-1, k) for k < n and T(n, n) = 1, T(n, k) = 0, if k < 0 or k > n; triangle read by rows.

Offset 0, canonical program `A119673.P14676430310363076738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119673 (n : ℕ) : ℤ :=
  A119673.P14676430310363076738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119921.P12501731158706764017

`2^(n+1)*A119917(n+1)`
-/

namespace A119921.P12501731158706764017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A119917 (n + 1)

end

end A119921.P12501731158706764017

noncomputable section

/-- A119921: Number of rationals in [0, 1) having at most n preperiodic bits, then at most n periodic bits.

Offset 1, canonical program `A119921.P12501731158706764017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A119921 (n : ℕ) : ℤ :=
  A119921.P12501731158706764017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A119921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120072.P10510853006635335626

`A120070(n+2)/gcd(A120070(n+2), A133821(n+1))`
-/

namespace A120072.P10510853006635335626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (Int.gcd (A120070 (n + 2)) (A133821 (n + 1)) : ℚ)

end

end A120072.P10510853006635335626

noncomputable section

/-- A120072: Numerator triangle for hydrogen spectrum rationals.

Offset 2, canonical program `A120072.P10510853006635335626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120072 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120072.P10510853006635335626.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120909.P4196849936456534046

`3*A013609(n)`
-/

namespace A120909.P4196849936456534046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A013609 n

end

end A120909.P4196849936456534046

noncomputable section

/-- A120909: Triangle read by rows: T(n,k) is the number of ternary words of length n having k runs (i.e., subwords of maximal length) of identical letters (1 <= k <= n).

Offset 1, canonical program `A120909.P4196849936456534046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013609, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120909 (n : ℕ) : ℤ :=
  A120909.P4196849936456534046.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013609, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120910.P7512489130627834766

`3*A038207(n)`
-/

namespace A120910.P7512489130627834766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038207 n

end

end A120910.P7512489130627834766

noncomputable section

/-- A120910: Triangle read by rows: T(n,k) is the number of ternary words of length n having k levels (n >= 1, 0 <= k <= n-1). A level is a pair of identical consecutive letters.

Offset 1, canonical program `A120910.P7512489130627834766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120910 (n : ℕ) : ℤ :=
  A120910.P7512489130627834766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121448.P24632900459623264

`A059268(n)*A097610(n)`
-/

namespace A121448.P24632900459623264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A097610 n

end

end A121448.P24632900459623264

noncomputable section

/-- A121448: Triangle read by rows: T(n,k) is the number of binary trees with n edges and having k vertices of outdegree 1 (n>=0, k>=0). A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

Offset 0, canonical program `A121448.P24632900459623264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121448 (n : ℕ) : ℤ :=
  A121448.P24632900459623264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121547.P13517221816394167788

`A000292(A003056(n))*A097805(n)`
-/

namespace A121547.P13517221816394167788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A003056 n).toNat * A097805 n

end

end A121547.P13517221816394167788

noncomputable section

/-- A121547: Fourth slice along the 1-2-plane in the cube a(m,n,o) = a(m-1,n,o) + a(m,n-1,o) + a(m,n,o-1) for which the first slice is Pascal's triangle (slice read by antidiagonals).

Offset 0, canonical program `A121547.P13517221816394167788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121547 (n : ℕ) : ℤ :=
  A121547.P13517221816394167788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122414.P2301085849404796156

`A010051(A050873(n+1))`
-/

namespace A122414.P2301085849404796156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A050873 (n + 1)).toNat

end

end A122414.P2301085849404796156

noncomputable section

/-- A122414: Triangle T(n,k) for 1 <= k <= n read by rows, where T(n,k) = 1 if gcd(n,k) is prime, 0 otherwise.

Offset 1, canonical program `A122414.P2301085849404796156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122414 (n : ℕ) : ℤ :=
  A122414.P2301085849404796156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123097.P13007430214341374216

`A097805(n+1)+A003506(n+1)`
-/

namespace A123097.P13007430214341374216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A003506 (n + 1)

end

end A123097.P13007430214341374216

noncomputable section

/-- A123097: Triangle read by rows: T(n,k) = binomial(n-2, k-1) + n*binomial(n-1, k-1), 1 <= k <= n, starting with T(1, 1) = 1.

Offset 1, canonical program `A123097.P13007430214341374216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123097 (n : ℕ) : ℤ :=
  A123097.P13007430214341374216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123513.P10972167970805802106

`A010027(A038722(n+1))`
-/

namespace A123513.P10972167970805802106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010027 (A038722 (n + 1)).toNat

end

end A123513.P10972167970805802106

noncomputable section

/-- A123513: Triangle read by rows: T(n,k) is the number of permutations of [n] having k small descents (n >= 1; 0 <= k <= n-1). A small descent in a permutation (x_1,x_2,...,x_n) is a position i such that x_i - x_(i+1) = 1.

Offset 1, canonical program `A123513.P10972167970805802106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A123513 (n : ℕ) : ℤ :=
  A123513.P10972167970805802106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A123513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124589.P1067034870965055436

`p?[A063934(n+1)-2]`
-/

namespace A124589.P1067034870965055436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124589.P1067034870965055436

noncomputable section

/-- A124589: Primes p such that q-p <= 4, where q is the next prime after p.

Offset 1, canonical program `A124589.P1067034870965055436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124589 (n : ℕ) : ℤ :=
  A124589.P1067034870965055436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124748.P5609394966842096316

`A000523(n+1)-A124737(n)`
-/

namespace A124748.P5609394966842096316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A124737 n

end

end A124748.P5609394966842096316

noncomputable section

/-- A124748: Table where row n has k C(n,k) times, in reverse order.

Offset 0, canonical program `A124748.P5609394966842096316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A124748 (n : ℕ) : ℤ :=
  A124748.P5609394966842096316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A124748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124845.P14093019755134807887

`gcd(A028326(n), A103406(n))`
-/

namespace A124845.P14093019755134807887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028326 n) (A103406 n)

end

end A124845.P14093019755134807887

noncomputable section

/-- A124845: Triangle read by rows: T(n,k) = (3 - (-1)^k)*binomial(n,k)/2 (0 <= k <= n).

Offset 0, canonical program `A124845.P14093019755134807887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124845 (n : ℕ) : ℤ :=
  (A124845.P14093019755134807887.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124926.P9374051233560020075

`A091867(A061579(n))`
-/

namespace A124926.P9374051233560020075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 (A061579 n).toNat

end

end A124926.P9374051233560020075

noncomputable section

/-- A124926: Triangle read by rows: T(n,k) = binomial(n,k)*r(k), where r(k) are the Riordan numbers (r(k) = A005043(k); 0 <= k <= n).

Offset 0, canonical program `A124926.P9374051233560020075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926 (n : ℕ) : ℤ :=
  A124926.P9374051233560020075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124929.P12332254111530473457

`2*A013609(n)-A007318(n)`
-/

namespace A124929.P12332254111530473457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - A007318 n

end

end A124929.P12332254111530473457

noncomputable section

/-- A124929: Triangle read by rows: T(n,k) = (2^k-1)*binomial(n-1,k-1) (1<=k<=n).

Offset 1, canonical program `A124929.P12332254111530473457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124929 (n : ℕ) : ℤ :=
  A124929.P12332254111530473457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125101.P2466795799174689552

`A094435(n+1)+A103406(n)-A094436(n)`
-/

namespace A125101.P2466795799174689552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (n + 1) + (A103406 n - A094436 n)

end

end A125101.P2466795799174689552

noncomputable section

/-- A125101: T(n,k) = k*binomial(n-1,k-1) + Fibonacci(k)*binomial(n-1,k) (1 <= k <= n).

Offset 1, canonical program `A125101.P2466795799174689552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125101 (n : ℕ) : ℤ :=
  A125101.P2466795799174689552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125103.P929349591085917062

`A007318(n)+A193862(n)-A013609(n)`
-/

namespace A125103.P929349591085917062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A193862 n - A013609 n)

end

end A125103.P929349591085917062

noncomputable section

/-- A125103: Triangle read by rows: T(n,k) = binomial(n,k) + 2^k*binomial(n,k+1) (0 <= k <= n).

Offset 0, canonical program `A125103.P929349591085917062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125103 (n : ℕ) : ℤ :=
  A125103.P929349591085917062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125165.P1719362185260033778

`2*A104712(n+2)-A135278(n)`
-/

namespace A125165.P1719362185260033778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104712 (n + 2) - A135278 n

end

end A125165.P1719362185260033778

noncomputable section

/-- A125165: Triangle read by rows: T(n,k) = C(n,k) + 3*C(n,k+1) + 2*C(n,k+2) (0<=k<=n).

Offset 0, canonical program `A125165.P1719362185260033778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125165 (n : ℕ) : ℤ :=
  A125165.P1719362185260033778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126179.P4171578271051059811

`A027465(n)*A126324(A002260(n+1))`
-/

namespace A126179.P4171578271051059811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A126324 (A002260 (n + 1)).toNat

end

end A126179.P4171578271051059811

noncomputable section

/-- A126179: Triangle read by rows: T(n,k) is number of hex trees with n edges and k branches (1 <= k <= n).

Offset 1, canonical program `A126179.P4171578271051059811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126179 (n : ℕ) : ℤ :=
  A126179.P4171578271051059811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127097.P14652974731368292289

`A001157(A010766(n+1))*A127093(n+1)`
-/

namespace A127097.P14652974731368292289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A010766 (n + 1)).toNat * A127093 (n + 1)

end

end A127097.P14652974731368292289

noncomputable section

/-- A127097: Triangle T(n,m) = A127093 * A126988 read by rows.

Offset 1, canonical program `A127097.P14652974731368292289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127097 (n : ℕ) : ℤ :=
  A127097.P14652974731368292289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127139.P9104165502177887580

`∑{d}[A126988(n+1), A046692(#)]`
-/

namespace A127139.P9104165502177887580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A046692 d

end

end A127139.P9104165502177887580

noncomputable section

/-- A127139: Inverse triangle of A126988.

Offset 1, canonical program `A127139.P9104165502177887580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127139 (n : ℕ) : ℤ :=
  A127139.P9104165502177887580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127170.P7991433110268517964

`∑{d}[A126988(n+1), A057427(#)]`
-/

namespace A127170.P7991433110268517964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A127170.P7991433110268517964

noncomputable section

/-- A127170: Triangle read by rows: T(n,k) is the number of divisors of n that are divisible by k, with 1 <= k <= n.

Offset 1, canonical program `A127170.P7991433110268517964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127170 (n : ℕ) : ℤ :=
  A127170.P7991433110268517964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127173.P17703908866789190861

`∑{d}[A126988(n+1), A007428(#)]`
-/

namespace A127173.P17703908866789190861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007428 d

end

end A127173.P17703908866789190861

noncomputable section

/-- A127173: T(n,k) = A007427(n/k) if k divides n, T(n,k) = 0 otherwise.

Offset 1, canonical program `A127173.P17703908866789190861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127173 (n : ℕ) : ℤ :=
  A127173.P17703908866789190861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127325.P362483209747612631

`A127323(n)-A127324(n)`
-/

namespace A127325.P362483209747612631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 n - A127324 n

end

end A127325.P362483209747612631

noncomputable section

/-- A127325: Hypertetrahedron with T(W,X,Y,Z) = Y - Z.

Offset 0, canonical program `A127325.P362483209747612631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127323, A127324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127325 (n : ℕ) : ℤ :=
  A127325.P362483209747612631.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127323, A127324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127326.P13116696764520975307

`A127322(n)-A127323(n)`
-/

namespace A127326.P13116696764520975307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n - A127323 n

end

end A127326.P13116696764520975307

noncomputable section

/-- A127326: Hypertetrahedron with T(W,X,Y,Z) = X - Y.

Offset 0, canonical program `A127326.P13116696764520975307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127322, A127323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127326 (n : ℕ) : ℤ :=
  A127326.P13116696764520975307.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127322, A127323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127335.P9630767717206448625

`A127334(n+2)+A000040(n+1)`
-/

namespace A127335.P9630767717206448625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 2) + A000040 (n + 1)

end

end A127335.P9630767717206448625

noncomputable section

/-- A127335: Numbers that are the sum of 8 successive primes.

Offset 1, canonical program `A127335.P9630767717206448625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127335 (n : ℕ) : ℤ :=
  A127335.P9630767717206448625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127446.P10925014091229566382

`lcm(∑[A010054(n)], A127093(n+1))`
-/

namespace A127446.P10925014091229566382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A127093 (n + 1))

end

end A127446.P10925014091229566382

noncomputable section

/-- A127446: Triangle T(n,k) = n*A051731(n,k) read by rows.

Offset 1, canonical program `A127446.P10925014091229566382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127446 (n : ℕ) : ℤ :=
  (A127446.P10925014091229566382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127570.P9814844039771858661

`∑{d}[A127093(n+1), #]`
-/

namespace A127570.P9814844039771858661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A127570.P9814844039771858661

noncomputable section

/-- A127570: Triangle T(n,k) = sigma(k) if k|n, otherwise T(n,k)=0; 1 <= k <= n.

Offset 1, canonical program `A127570.P9814844039771858661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127570 (n : ℕ) : ℤ :=
  (A127570.P9814844039771858661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127573.P3529417992283186712

`∑{d}[A127093(n+1), A069097(#)]`
-/

namespace A127573.P3529417992283186712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069097 d

end

end A127573.P3529417992283186712

noncomputable section

/-- A127573: Triangle T(n, k) = k*sigma(k) if k divides n, else 0.

Offset 1, canonical program `A127573.P3529417992283186712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127573 (n : ℕ) : ℤ :=
  A127573.P3529417992283186712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127574.P3677561878007637829

`∑{d}[A002024(n+1), #*A127093(n+1)]`
-/

namespace A127574.P3677561878007637829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A127093 (n + 1)

end

end A127574.P3677561878007637829

noncomputable section

/-- A127574: Triangle T(n,k) = k*sigma(n) if k divides n, else 0.

Offset 1, canonical program `A127574.P3677561878007637829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127574 (n : ℕ) : ℤ :=
  A127574.P3677561878007637829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127626.P10622249536812093687

`∑{d}[A127093(n+1), A029935(#)]`
-/

namespace A127626.P10622249536812093687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A029935 d

end

end A127626.P10622249536812093687

noncomputable section

/-- A127626: Triangle T(n,k) = A018804(k) if k|n, else T(n,k)=0.

Offset 1, canonical program `A127626.P10622249536812093687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127626 (n : ℕ) : ℤ :=
  A127626.P10622249536812093687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127639.P17637051659487995059

`A182986(A127093(n+1)+1)`
-/

namespace A127639.P17637051659487995059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A127093 (n + 1) + 1).toNat

end

end A127639.P17637051659487995059

noncomputable section

/-- A127639: A051731 * A127640, where A127640 = infinite lower triangular matrix with the sequence of primes in the main diagonal and the rest zeros.

Offset 1, canonical program `A127639.P17637051659487995059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127639 (n : ℕ) : ℤ :=
  A127639.P17637051659487995059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127717.P7695093500598814241

`A002260(n+1)*A104712(n+2)`
-/

namespace A127717.P7695093500598814241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A104712 (n + 2)

end

end A127717.P7695093500598814241

noncomputable section

/-- A127717: Triangle read by rows. T(n, k) = k * binomial(n + 1, k + 1), for 1 <= k <= n.

Offset 1, canonical program `A127717.P7695093500598814241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127717 (n : ℕ) : ℤ :=
  A127717.P7695093500598814241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127737.P11986191195381923134

`A128151(n+1)+2*A112367(n)`
-/

namespace A127737.P11986191195381923134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128151 (n + 1) + 2 * A112367 n

end

end A127737.P11986191195381923134

noncomputable section

/-- A127737: A002260 * A127701.

Offset 1, canonical program `A127737.P11986191195381923134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127737 (n : ℕ) : ℤ :=
  A127737.P11986191195381923134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127954.P6894505022089069342

`A002260(n+1)*A097805(n)`
-/

namespace A127954.P6894505022089069342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A097805 n

end

end A127954.P6894505022089069342

noncomputable section

/-- A127954: Triangle, A097805 * A127648.

Offset 1, canonical program `A127954.P6894505022089069342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127954 (n : ℕ) : ℤ :=
  A127954.P6894505022089069342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128134.P5581643378467905340

`A003506(n+1)-A097805(n+1)`
-/

namespace A128134.P5581643378467905340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - A097805 (n + 1)

end

end A128134.P5581643378467905340

noncomputable section

/-- A128134: A128132 * A007318.

Offset 1, canonical program `A128134.P5581643378467905340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128134 (n : ℕ) : ℤ :=
  A128134.P5581643378467905340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128175.P7586382992691236717

`A097805(n)+A137688(n)-∑[A097805(n)]`
-/

namespace A128175.P7586382992691236717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (A137688 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128175.P7586382992691236717

noncomputable section

/-- A128175: Binomial transform of A128174.

Offset 1, canonical program `A128175.P7586382992691236717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128175 (n : ℕ) : ℤ :=
  A128175.P7586382992691236717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128180.P1090560833171990757

`A001057(A131307(n+1))`
-/

namespace A128180.P1090560833171990757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A131307 (n + 1)).toNat

end

end A128180.P1090560833171990757

noncomputable section

/-- A128180: Triangle read by rows: A002260 * A097807 as infinite lower triangular matrices.

Offset 1, canonical program `A128180.P1090560833171990757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128180 (n : ℕ) : ℤ :=
  A128180.P1090560833171990757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128259.P12325578355127469057

`A127093(n+2)-Δ[A051731(n+1)]`
-/

namespace A128259.P12325578355127469057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 2) - (f1 (n + 1) - f1 n)

end

end A128259.P12325578355127469057

noncomputable section

/-- A128259: Inverse Moebius transform of A128229.

Offset 1, canonical program `A128259.P12325578355127469057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128259 (n : ℕ) : ℤ :=
  A128259.P12325578355127469057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128413.P14607196122930691021

`A011782(A193739(n))*A094527(n)`
-/

namespace A128413.P14607196122930691021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A193739 n).toNat * A094527 n

end

end A128413.P14607196122930691021

noncomputable section

/-- A128413: Inverse of number triangle A128412.

Offset 0, canonical program `A128413.P14607196122930691021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A128413 (n : ℕ) : ℤ :=
  A128413.P14607196122930691021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A128413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128417.P17674994192282063830

`A094527(n)*A130321(n)`
-/

namespace A128417.P17674994192282063830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A130321 n

end

end A128417.P17674994192282063830

noncomputable section

/-- A128417: Number triangle T(n,k) = 2^(n-k)*C(2*n,n-k).

Offset 0, canonical program `A128417.P17674994192282063830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A128417 (n : ℕ) : ℤ :=
  A128417.P17674994192282063830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A128417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128544.P3680955686172368637

`A094436(n)+A094436(n+1)%A094437(n+1)`
-/

namespace A128544.P3680955686172368637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n + Int.tmod (A094436 (n + 1)) (A094437 (n + 1))

end

end A128544.P3680955686172368637

noncomputable section

/-- A128544: A007318 * A128540.

Offset 0, canonical program `A128544.P3680955686172368637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128544 (n : ℕ) : ℤ :=
  A128544.P3680955686172368637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128589.P7421725673230309718

`A000045(A127093(n+1))`
-/

namespace A128589.P7421725673230309718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A127093 (n + 1)).toNat

end

end A128589.P7421725673230309718

noncomputable section

/-- A128589: Triangle read by rows: T(n,k) = Fibonacci(k) * A051731(n,k).

Offset 1, canonical program `A128589.P7421725673230309718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128589 (n : ℕ) : ℤ :=
  A128589.P7421725673230309718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128710.P3337549446234895823

`A103406(n)+A007318(n)`
-/

namespace A128710.P3337549446234895823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n + A007318 n

end

end A128710.P3337549446234895823

noncomputable section

/-- A128710: Triangle read by rows: T(n,k) = (k+2)*binomial(n,k) (0 <= k <= n).

Offset 0, canonical program `A128710.P3337549446234895823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128710 (n : ℕ) : ℤ :=
  A128710.P3337549446234895823.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128715.P7289910566905276765

`A103516(n)+A014473(n)`
-/

namespace A128715.P7289910566905276765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n + A014473 n

end

end A128715.P7289910566905276765

noncomputable section

/-- A128715: A131830 + A103451 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A128715.P7289910566905276765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128715 (n : ℕ) : ℤ :=
  A128715.P7289910566905276765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128908.P1795975994181905866

`A236376(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A128908.P1795975994181905866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236376 (n - 1) - a (n - 1)

end

end A128908.P1795975994181905866

noncomputable section

/-- A128908: Riordan array (1, x/(1-x)^2).

Offset 0, canonical program `A128908.P1795975994181905866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128908 (n : ℕ) : ℤ :=
  A128908.P1795975994181905866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129237.P13854613413185122732

`∑{d}[A126988(n+1), A002262(n)+#]`
-/

namespace A129237.P13854613413185122732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A002262 n + (d : ℤ))

end

end A129237.P13854613413185122732

noncomputable section

/-- A129237: A051731 * A129234.

Offset 1, canonical program `A129237.P13854613413185122732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129237 (n : ℕ) : ℤ :=
  A129237.P13854613413185122732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129307.P5188627455129156108

`A000217(A027861(n+1))`
-/

namespace A129307.P5188627455129156108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A027861 (n + 1)).toNat

end

end A129307.P5188627455129156108

noncomputable section

/-- A129307: Intersection of A000217 and A005098.

Offset 1, canonical program `A129307.P5188627455129156108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129307 (n : ℕ) : ℤ :=
  A129307.P5188627455129156108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129353.P12434210787401024625

`val(A004277(A126988(n+1)), 2)`
-/

namespace A129353.P12434210787401024625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (A126988 (n + 1)).toNat).toNat 2

end

end A129353.P12434210787401024625

noncomputable section

/-- A129353: Triangle read by rows: A051731 * A115361 as infinite lower triangular matrices.

Offset 1, canonical program `A129353.P12434210787401024625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129353 (n : ℕ) : ℤ :=
  (A129353.P12434210787401024625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129372.P9469683564325573279

`A085383(n+1)%2`
-/

namespace A129372.P9469683564325573279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085383 (n + 1)) 2

end

end A129372.P9469683564325573279

noncomputable section

/-- A129372: Triangle read by rows: T(n,k) = 1 if k divides n and n/k is odd, T(n,k) = 0 otherwise.

Offset 1, canonical program `A129372.P9469683564325573279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129372 (n : ℕ) : ℤ :=
  A129372.P9469683564325573279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129523.P10195343047113366737

`∪[A048645(n+1), A175332(n+1)]`
-/

namespace A129523.P10195343047113366737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129523.P10195343047113366737

noncomputable section

/-- A129523: Numbers of the form 2^j +- 2^i for 0 <= i < j, in ascending order.

Offset 1, canonical program `A129523.P10195343047113366737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129523 (n : ℕ) : ℤ :=
  (A129523.P10195343047113366737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129555.P480594090586041492

`A026741(A126988(n+1))`
-/

namespace A129555.P480594090586041492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A126988 (n + 1)).toNat

end

end A129555.P480594090586041492

noncomputable section

/-- A129555: A054523 * A129372.

Offset 0, canonical program `A129555.P480594090586041492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129555 (n : ℕ) : ℤ :=
  A129555.P480594090586041492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129636.P13019751396834659063

`A053735(A102363(n))`
-/

namespace A129636.P13019751396834659063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A102363 n).toNat

end

end A129636.P13019751396834659063

noncomputable section

/-- A129636: Triangle T(n,k): base-3 digit sum of the Pascal type triangle A102363(n,k).

Offset 0, canonical program `A129636.P13019751396834659063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129636 (n : ℕ) : ℤ :=
  A129636.P13019751396834659063.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129685.P4243944531495755914

`A106246(n)*A117568(n)`
-/

namespace A129685.P4243944531495755914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106246 n * A117568 n

end

end A129685.P4243944531495755914

noncomputable section

/-- A129685: Exponential Riordan array [1-x^2/2, x].

Offset 0, canonical program `A129685.P4243944531495755914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129685 (n : ℕ) : ℤ :=
  A129685.P4243944531495755914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129691.P5534431629163071465

`∑{d}[A126988(n+1), A055615(#)]`
-/

namespace A129691.P5534431629163071465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d

end

end A129691.P5534431629163071465

noncomputable section

/-- A129691: Inverse of A054523.

Offset 1, canonical program `A129691.P5534431629163071465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129691 (n : ℕ) : ℤ :=
  A129691.P5534431629163071465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129761.P10344994158848013744

`A005578(A035614(n))`
-/

namespace A129761.P10344994158848013744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A035614 n).toNat

end

end A129761.P10344994158848013744

noncomputable section

/-- A129761: First differences of Fibbinary numbers (A003714).

Offset 0, canonical program `A129761.P10344994158848013744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129761 (n : ℕ) : ℤ :=
  A129761.P10344994158848013744.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129994.P8909343354360901903

`A104795(n)+A014473(n)`
-/

namespace A129994.P8909343354360901903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104795 n + A014473 n

end

end A129994.P8909343354360901903

noncomputable section

/-- A129994: Triangle read by rows: 2*A007318 - I.

Offset 0, canonical program `A129994.P8909343354360901903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129994 (n : ℕ) : ℤ :=
  A129994.P8909343354360901903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130055.P931187158883398319

`A127093(n+1)*A130054(A010766(n+1))`
-/

namespace A130055.P931187158883398319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130054 (A010766 (n + 1)).toNat

end

end A130055.P931187158883398319

noncomputable section

/-- A130055: A129691 * A127093.

Offset 1, canonical program `A130055.P931187158883398319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130055 (n : ℕ) : ℤ :=
  A130055.P931187158883398319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130093.P16000771763530109019

`A098474(n)%2`
-/

namespace A130093.P16000771763530109019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098474 n) 2

end

end A130093.P16000771763530109019

noncomputable section

/-- A130093: A051731 * a lower triangular matrix with A036987 on the main diagonal and the rest zeros.

Offset 1, canonical program `A130093.P16000771763530109019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130093 (n : ℕ) : ℤ :=
  A130093.P16000771763530109019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130094.P893135603483082460

`∑{d}[A127093(n+1), A007428(#)]`
-/

namespace A130094.P893135603483082460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007428 d

end

end A130094.P893135603483082460

noncomputable section

/-- A130094: A051731 * an infinite lower triangular matrix with A007427 in the main diagonal.

Offset 1, canonical program `A130094.P893135603483082460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130094 (n : ℕ) : ℤ :=
  A130094.P893135603483082460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130210.P14281367747963938276

`∑{d}[A127093(n+1), A057427(#)]`
-/

namespace A130210.P14281367747963938276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A130210.P14281367747963938276

noncomputable section

/-- A130210: Triangle read by rows: T(n, k) = A000005(k) if k divides n, T(n, k) = 0 otherwise.

Offset 1, canonical program `A130210.P14281367747963938276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130210 (n : ℕ) : ℤ :=
  A130210.P14281367747963938276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130477.P15688843570063760663

`and(-1, A092582(A038722(n+1)))`
-/

namespace A130477.P15688843570063760663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A092582 (A038722 (n + 1)).toNat)

end

end A130477.P15688843570063760663

noncomputable section

/-- A130477: T(n,k) is the number of permutations of [n] with maximum descent k, T(n,k) for n >= 0 and 0 <= k <= n, triangle read by rows.

Offset 0, canonical program `A130477.P15688843570063760663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A130477 (n : ℕ) : ℤ :=
  A130477.P15688843570063760663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A130477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130540.P17651116764661145688

`∑{d}[A126988(n+1), #]`
-/

namespace A130540.P17651116764661145688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130540.P17651116764661145688

noncomputable section

/-- A130540: Triangle read by rows T(n,k) in which column k lists the terms of A000203 interspersed with (k-1) zeros, 1 <= k <= n.

Offset 1, canonical program `A130540.P17651116764661145688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130540 (n : ℕ) : ℤ :=
  (A130540.P17651116764661145688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130888.P7694398595024222231

`A000225(A127093(n+1))`
-/

namespace A130888.P7694398595024222231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A127093 (n + 1)).toNat

end

end A130888.P7694398595024222231

noncomputable section

/-- A130888: Triangle read by rows, A051731(n,k) dot (1, 3, 7, 15, ...) with like numbers of terms.

Offset 1, canonical program `A130888.P7694398595024222231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130888 (n : ℕ) : ℤ :=
  A130888.P7694398595024222231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130918.P18394397597512307276

`A072795(1-A082854(n)+n)-A082854(n)`
-/

namespace A130918.P18394397597512307276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072795 (1 - A082854 n + (n : ℤ)).toNat - A082854 n

end

end A130918.P18394397597512307276

noncomputable section

/-- A130918: Simple self-inverse permutation of natural numbers: List each block of A000108(n) numbers from A014137(n-1) to A014138(n-1) in reverse order.

Offset 0, canonical program `A130918.P18394397597512307276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130918 (n : ℕ) : ℤ :=
  A130918.P18394397597512307276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131060.P2958287434662447289

`abs(2-A124928(n))`
-/

namespace A131060.P2958287434662447289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A124928 n|

end

end A131060.P2958287434662447289

noncomputable section

/-- A131060: 3*A007318 - 2*A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A131060.P2958287434662447289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131060 (n : ℕ) : ℤ :=
  A131060.P2958287434662447289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131063.P17257853289505011625

`5*A014473(n)+1`
-/

namespace A131063.P17257853289505011625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014473 n + 1

end

end A131063.P17257853289505011625

noncomputable section

/-- A131063: Triangle read by rows: T(n,k) = 5*binomial(n,k) - 4 for 0 <= k <= n.

Offset 0, canonical program `A131063.P17257853289505011625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131063 (n : ℕ) : ℤ :=
  A131063.P17257853289505011625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131067.P2016640498183815083

`7*A014473(n)+1`
-/

namespace A131067.P2016640498183815083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A014473 n + 1

end

end A131067.P2016640498183815083

noncomputable section

/-- A131067: Triangle read by rows: T(n,k) = 7*binomial(n,k) - 6 for 0 <= k <= n.

Offset 0, canonical program `A131067.P2016640498183815083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131067 (n : ℕ) : ℤ :=
  A131067.P2016640498183815083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131085.P15158434548820626258

`2*A135278(n)-A104712(n+2)`
-/

namespace A131085.P15158434548820626258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - A104712 (n + 2)

end

end A131085.P15158434548820626258

noncomputable section

/-- A131085: Triangle T(n,k) (n>=0, 0<=k<=n-1) read by rows, A007318 * A129686.

Offset 0, canonical program `A131085.P15158434548820626258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131085 (n : ℕ) : ℤ :=
  A131085.P15158434548820626258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131086.P13862188484608817931

`abs(1-2*A130595(n))`
-/

namespace A131086.P13862188484608817931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A130595 n|

end

end A131086.P13862188484608817931

noncomputable section

/-- A131086: Triangle read by rows: T(n,k) = 2*binomial(n,k) - (-1)^(n-k) (0 <= k <= n).

Offset 0, canonical program `A131086.P13862188484608817931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131086 (n : ℕ) : ℤ :=
  A131086.P13862188484608817931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131087.P917226076007433997

`A028326(n)-A128174(n+1)`
-/

namespace A131087.P917226076007433997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A128174 (n + 1)

end

end A131087.P917226076007433997

noncomputable section

/-- A131087: Triangle read by rows: T(n,k) = 2*binomial(n,k) - (1 + (-1)^(n-k))/2 (0 <= k <= n).

Offset 0, canonical program `A131087.P917226076007433997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131087 (n : ℕ) : ℤ :=
  A131087.P917226076007433997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131095.P8508384860694033390

`A173786(lt[n+1, A013609(n+2)])`
-/

namespace A131095.P8508384860694033390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131095.P8508384860694033390

noncomputable section

/-- A131095: Triangle where n-th row contains the smallest n positive integers (listed in order) with exactly n nonleading 0's in their binary representations and where the smallest term in the n-th row is > that the largest term in the (n-1)th row.

Offset 1, canonical program `A131095.P8508384860694033390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A131095 (n : ℕ) : ℤ :=
  A131095.P8508384860694033390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A131095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131108.P4431672301133884722

`A028326(n)-A097806(n)`
-/

namespace A131108.P4431672301133884722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A097806 n

end

end A131108.P4431672301133884722

noncomputable section

/-- A131108: T(n,k) = 2*A007318(n,k) - A097806(n,k).

Offset 0, canonical program `A131108.P4431672301133884722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131108 (n : ℕ) : ℤ :=
  A131108.P4431672301133884722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131127.P11296846227451289478

`A028326(n)-A167374(n)`
-/

namespace A131127.P11296846227451289478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A167374 n

end

end A131127.P11296846227451289478

noncomputable section

/-- A131127: Table read by rows: 2*A007318(n,m) - A167374(n,m).

Offset 0, canonical program `A131127.P11296846227451289478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131127 (n : ℕ) : ℤ :=
  A131127.P11296846227451289478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131219.P16671854604704535896

`A166280(n)*A253084(n)`
-/

namespace A131219.P16671854604704535896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166280 n * A253084 n

end

end A131219.P16671854604704535896

noncomputable section

/-- A131219: Triangle read by rows: T(n, k) = A047999(n, k)*A131218(n-k, k).

Offset 0, canonical program `A131219.P16671854604704535896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131219 (n : ℕ) : ℤ :=
  A131219.P16671854604704535896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131427.P4576439200903195274

`A023531(n)*A098474(n)`
-/

namespace A131427.P4576439200903195274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A098474 n

end

end A131427.P4576439200903195274

noncomputable section

/-- A131427: A000108(n) preceded by n zeros.

Offset 0, canonical program `A131427.P4576439200903195274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131427 (n : ℕ) : ℤ :=
  A131427.P4576439200903195274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131830.P11981854450058335817

`A131821(n+1)+A014473(n)`
-/

namespace A131830.P11981854450058335817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + A014473 n

end

end A131830.P11981854450058335817

noncomputable section

/-- A131830: Triangle read by rows: T(n,0) = T(n,n) = n + 1 for n >= 0, and T(n,k) = binomial(n,k) for 1 <= k <= n - 1, n >= 2.

Offset 0, canonical program `A131830.P11981854450058335817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131830 (n : ℕ) : ℤ :=
  A131830.P11981854450058335817.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131950.P17361915348174357254

`A144217(n+1)+A131923(n)`
-/

namespace A131950.P17361915348174357254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A131923 n

end

end A131950.P17361915348174357254

noncomputable section

/-- A131950: A002024 + A131821 + A007318 - 2*A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A131950.P17361915348174357254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131950 (n : ℕ) : ℤ :=
  A131950.P17361915348174357254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132014.P8642909977413927530

`A094441(n)*A185018(n)`
-/

namespace A132014.P8642909977413927530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n * A185018 n

end

end A132014.P8642909977413927530

noncomputable section

/-- A132014: T(n,j) for double application of an iterated mixed order Laguerre transform: Coefficients of Laguerre polynomial (-1)^n*n!*L(n,2-n,x).

Offset 0, canonical program `A132014.P8642909977413927530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132014 (n : ℕ) : ℤ :=
  A132014.P8642909977413927530.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132046.P838827158964499590

`A028326(n)-A103451(n)`
-/

namespace A132046.P838827158964499590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A103451 n

end

end A132046.P838827158964499590

noncomputable section

/-- A132046: Triangle read by rows: T(n,0) = T(n,n) = 1, and T(n,k) = 2*binomial(n,k) for 1 <= k <= n - 1.

Offset 0, canonical program `A132046.P838827158964499590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132046 (n : ℕ) : ℤ :=
  A132046.P838827158964499590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132071.P11945813341508066537

`A063712(n+1)+A014473(n)`
-/

namespace A132071.P11945813341508066537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (n + 1) + A014473 n

end

end A132071.P11945813341508066537

noncomputable section

/-- A132071: A007318 + A002024 - A103451 as infinite lower triangular matrices.

Offset 0, canonical program `A132071.P11945813341508066537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132071 (n : ℕ) : ℤ :=
  A132071.P11945813341508066537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132110.P9059509720305907983

`A059268(n)+A014473(n)`
-/

namespace A132110.P9059509720305907983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A014473 n

end

end A132110.P9059509720305907983

noncomputable section

/-- A132110: A007318 + A059268 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A132110.P9059509720305907983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132110 (n : ℕ) : ℤ :=
  A132110.P9059509720305907983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132307.P4680186652670153265

`2*A038207(n)-1`
-/

namespace A132307.P4680186652670153265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - 1

end

end A132307.P4680186652670153265

noncomputable section

/-- A132307: 2*A007318^(2) - A000012.

Offset 0, canonical program `A132307.P4680186652670153265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132307 (n : ℕ) : ℤ :=
  A132307.P4680186652670153265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132442.P4038622056087217901

`∑{d}[A050873(n+1), #]`
-/

namespace A132442.P4038622056087217901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A132442.P4038622056087217901

noncomputable section

/-- A132442: Triangle whose n-th row consists of the first n terms of the n-th row of A134866.

Offset 1, canonical program `A132442.P4038622056087217901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A132442 (n : ℕ) : ℤ :=
  (A132442.P4038622056087217901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A132442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132749.P9165985344718256506

`A132044(n)+A023532(n)`
-/

namespace A132749.P9165985344718256506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + A023532 n

end

end A132749.P9165985344718256506

noncomputable section

/-- A132749: Triangle T(n,k) = binomial(n, k) with T(n, 0) = 2, read by rows.

Offset 0, canonical program `A132749.P9165985344718256506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132749 (n : ℕ) : ℤ :=
  A132749.P9165985344718256506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132823.P2002679263485787100

`abs(1-A014473(n))`
-/

namespace A132823.P2002679263485787100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A014473 n|

end

end A132823.P2002679263485787100

noncomputable section

/-- A132823: Triangle read by rows: T(n,k) = binomial(n,k) - 2 for 0 < k < n, with T(n,0) = T(n,n) = 1.

Offset 0, canonical program `A132823.P2002679263485787100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132823 (n : ℕ) : ℤ :=
  A132823.P2002679263485787100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133214.P12490288649155844000

`A007318(n)*A013609(n)`
-/

namespace A133214.P12490288649155844000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A013609 n

end

end A133214.P12490288649155844000

noncomputable section

/-- A133214: Delannoy paths counted by number of weak peaks.

Offset 0, canonical program `A133214.P12490288649155844000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9120 terms. -/
def A133214 (n : ℕ) : ℤ :=
  A133214.P12490288649155844000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9120 terms. -/
def A133214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133567.P2335698315275832870

`A103371(n)/A133084(n+1)`
-/

namespace A133567.P2335698315275832870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103371 n : ℚ) / (A133084 (n + 1) : ℚ)

end

end A133567.P2335698315275832870

noncomputable section

/-- A133567: A007318 * A133566.

Offset 1, canonical program `A133567.P2335698315275832870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133567.P2335698315275832870.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133699.P11742816621062580348

`∑{d}[A127093(n+1), #%2]`
-/

namespace A133699.P11742816621062580348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A133699.P11742816621062580348

noncomputable section

/-- A133699: Triangle read by rows: T(n, k) = A001227(k) if k divides n, T(n, k) = 0 otherwise.

Offset 1, canonical program `A133699.P11742816621062580348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133699 (n : ℕ) : ℤ :=
  (A133699.P11742816621062580348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133727.P10884205234152568613

`∑{d}[A127093(n+1), A326828(#)]`
-/

namespace A133727.P10884205234152568613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326828 d

end

end A133727.P10884205234152568613

noncomputable section

/-- A133727: A051731 * A007438 as a diagonalized matrix.

Offset 1, canonical program `A133727.P10884205234152568613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133727 (n : ℕ) : ℤ :=
  A133727.P10884205234152568613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133807.P1554400217598503188

`A131768(n)+1-A133084(n+1)`
-/

namespace A133807.P1554400217598503188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131768 n + (1 - A133084 (n + 1))

end

end A133807.P1554400217598503188

noncomputable section

/-- A133807: Triangle read by rows: A007318 * (A097806 + A133566 - I) as infinite lower triangular matrices, where I is the identity matrix.

Offset 0, canonical program `A133807.P1554400217598503188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133807 (n : ℕ) : ℤ :=
  A133807.P1554400217598503188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134061.P7247591162381959497

`A124928(n)+A134059(n)-A007318(n)`
-/

namespace A134061.P7247591162381959497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n + (A134059 n - A007318 n)

end

end A134061.P7247591162381959497

noncomputable section

/-- A134061: Triangle read by rows: T(n,k) = A124928(n,k) + A134059(n,k) - A007318(n,k).

Offset 0, canonical program `A134061.P7247591162381959497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134061 (n : ℕ) : ℤ :=
  A134061.P7247591162381959497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134065.P13071345824488755756

`A132200(n)-A073424(n)`
-/

namespace A134065.P13071345824488755756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132200 n - A073424 n

end

end A134065.P13071345824488755756

noncomputable section

/-- A134065: Triangle read by rows: A134059 + A124927 - A007318 as infinite lower triangular matrices.

Offset 0, canonical program `A134065.P13071345824488755756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134065 (n : ℕ) : ℤ :=
  A134065.P13071345824488755756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134312.P1287057998980359310

`A166444(A144217(n+2))`
-/

namespace A134312.P1287057998980359310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A144217 (n + 2)).toNat

end

end A134312.P1287057998980359310

noncomputable section

/-- A134312: A097806 * A134309.

Offset 0, canonical program `A134312.P1287057998980359310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134312 (n : ℕ) : ℤ :=
  A134312.P1287057998980359310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134347.P5892652363670150920

`A013609(n)+A013609(n)-A073424(n+1)`
-/

namespace A134347.P5892652363670150920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (A013609 n - A073424 (n + 1))

end

end A134347.P5892652363670150920

noncomputable section

/-- A134347: A007318^(-1) * A134346.

Offset 0, canonical program `A134347.P5892652363670150920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134347 (n : ℕ) : ℤ :=
  A134347.P5892652363670150920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134348.P202855012637188097

`2*A130123(n)-A130595(n)`
-/

namespace A134348.P202855012637188097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130123 n - A130595 n

end

end A134348.P202855012637188097

noncomputable section

/-- A134348: A007318^(-1) * A134347.

Offset 0, canonical program `A134348.P202855012637188097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134348 (n : ℕ) : ℤ :=
  A134348.P202855012637188097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134484.P5349206259711963594

`A011782(A329854(n))²*A007318(n)`
-/

namespace A134484.P5349206259711963594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A329854 n).toNat ^ 2 * A007318 n

end

end A134484.P5349206259711963594

noncomputable section

/-- A134484: Triangle, read by rows, where T(n,k) = 2^[n*(n-1) - k*(k-1)] * binomial(n,k) for n>=k>=0.

Offset 0, canonical program `A134484.P5349206259711963594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A134484 (n : ℕ) : ℤ :=
  A134484.P5349206259711963594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A134484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134505.P6935622930957667742

`A107230(n)/gcd(A107230(n), A108044(n))`
-/

namespace A134505.P6935622930957667742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107230 n : ℚ) / (Int.gcd (A107230 n) (A108044 n) : ℚ)

end

end A134505.P6935622930957667742

noncomputable section

/-- A134505: Replace 0's with 1's in triangle A049310, and take absolute values.

Offset 1, canonical program `A134505.P6935622930957667742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134505.P6935622930957667742.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134520.P2309234469278234575

`A128174(n+1)+A014473(n)`
-/

namespace A134520.P2309234469278234575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) + A014473 n

end

end A134520.P2309234469278234575

noncomputable section

/-- A134520: Triangle read by rows: A007318 + A128174 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A134520.P2309234469278234575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134520 (n : ℕ) : ℤ :=
  A134520.P2309234469278234575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134560.P13872332646358761664

`A014681(2*A127093(n+1))`
-/

namespace A134560.P13872332646358761664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A127093 (n + 1)).toNat

end

end A134560.P13872332646358761664

noncomputable section

/-- A134560: Triangle A051731 * A127775 (as infinite lower triangular matrices).

Offset 1, canonical program `A134560.P13872332646358761664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134560 (n : ℕ) : ℤ :=
  A134560.P13872332646358761664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134575.P10268793143717734569

`A127093(n+1)²`
-/

namespace A134575.P10268793143717734569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) ^ 2

end

end A134575.P10268793143717734569

noncomputable section

/-- A134575: Triangle read by rows: T(n,k) = k^2*A051731(n,k).

Offset 1, canonical program `A134575.P10268793143717734569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134575 (n : ℕ) : ℤ :=
  A134575.P10268793143717734569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134676.P11721118199451395300

`A007425(A010766(n+1))*A127093(n+1)`
-/

namespace A134676.P11721118199451395300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A010766 (n + 1)).toNat * A127093 (n + 1)

end

end A134676.P11721118199451395300

noncomputable section

/-- A134676: Triangle read by rows: A127172 * A127648 as infinite lower triangular matrices.

Offset 1, canonical program `A134676.P11721118199451395300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134676 (n : ℕ) : ℤ :=
  A134676.P11721118199451395300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134700.P8117380377990256962

`A113215(A085383(n+1))`
-/

namespace A134700.P8117380377990256962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A085383 (n + 1)).toNat

end

end A134700.P8117380377990256962

noncomputable section

/-- A134700: Triangle read by rows: A000012 * A051731^2.

Offset 1, canonical program `A134700.P8117380377990256962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A134700 (n : ℕ) : ℤ :=
  A134700.P8117380377990256962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A134700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135065.P17350075566062413981

`A140880(n)-A003506(n+1)`
-/

namespace A135065.P17350075566062413981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140880 n - A003506 (n + 1)

end

end A135065.P17350075566062413981

noncomputable section

/-- A135065: A127733 * A007318 as infinite lower triangular matrices.

Offset 0, canonical program `A135065.P17350075566062413981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135065 (n : ℕ) : ℤ :=
  A135065.P17350075566062413981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135087.P6451622044258782504

`2*A134058(n)-1`
-/

namespace A135087.P6451622044258782504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134058 n - 1

end

end A135087.P6451622044258782504

noncomputable section

/-- A135087: Triangle T(n, k) = 2*A134058(n, k) - 1, read by rows.

Offset 0, canonical program `A135087.P6451622044258782504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135087 (n : ℕ) : ℤ :=
  A135087.P6451622044258782504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135089.P9007722127279209499

`floor(5*A134059(n)/3)`
-/

namespace A135089.P9007722127279209499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((A134059 n : ℚ) / 3)⌋

end

end A135089.P9007722127279209499

noncomputable section

/-- A135089: Triangle T(n,k) = 5*binomial(n,k) with T(0,0) = 1, read by rows.

Offset 0, canonical program `A135089.P9007722127279209499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135089 (n : ℕ) : ℤ :=
  A135089.P9007722127279209499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135221.P11114439058659202462

`abs(A130595(n)+A023532(n))`
-/

namespace A135221.P11114439058659202462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n + A023532 n|

end

end A135221.P11114439058659202462

noncomputable section

/-- A135221: Triangle A007318 + A000012(signed) - I, I = Identity matrix, read by rows.

Offset 0, canonical program `A135221.P11114439058659202462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135221 (n : ℕ) : ℤ :=
  A135221.P11114439058659202462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135225.P1573324357091350278

`A097805(A073423(n)+n)`
-/

namespace A135225.P1573324357091350278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A073423 n + (n : ℤ)).toNat

end

end A135225.P1573324357091350278

noncomputable section

/-- A135225: Pascal's triangle A007318 augmented with a leftmost border column of 1's.

Offset 0, canonical program `A135225.P1573324357091350278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135225 (n : ℕ) : ℤ :=
  A135225.P1573324357091350278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135226.P11438623629144137933

`A029655(A056943(n))`
-/

namespace A135226.P11438623629144137933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (A056943 n).toNat

end

end A135226.P11438623629144137933

noncomputable section

/-- A135226: Triangle A135225 + A007318 - A103451, read by rows.

Offset 0, canonical program `A135226.P11438623629144137933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135226 (n : ℕ) : ℤ :=
  A135226.P11438623629144137933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135356.P12448169041983576144

`Δ[A130595(n)]*A033999(A002024(n+1))`
-/

namespace A135356.P12448169041983576144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (A002024 (n + 1)).toNat

end

end A135356.P12448169041983576144

noncomputable section

/-- A135356: Triangle T(n,k) read by rows: coefficients in the recurrence of sequences which equal their n-th differences.

Offset 1, canonical program `A135356.P12448169041983576144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A135356 (n : ℕ) : ℤ :=
  A135356.P12448169041983576144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A135356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135573.P6360191770483409668

`A068555(A007401(n+1))/2`
-/

namespace A135573.P6360191770483409668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A007401 (n + 1)).toNat : ℚ) / 2

end

end A135573.P6360191770483409668

noncomputable section

/-- A135573: Array T(n,m) of super ballot numbers read along ascending antidiagonals.

Offset 0, canonical program `A135573.P6360191770483409668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135573 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135573.P6360191770483409668.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135817.P17602955867649866332

`A102364(n)+1`
-/

namespace A135817.P17602955867649866332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102364 n + 1

end

end A135817.P17602955867649866332

noncomputable section

/-- A135817: Length of Wythoff representation of n.

Offset 1, canonical program `A135817.P17602955867649866332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135817 (n : ℕ) : ℤ :=
  A135817.P17602955867649866332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135818.P5231028092520313342

`A102364(n)+1-A007895(n)`
-/

namespace A135818.P5231028092520313342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102364 n + (1 - A007895 n)

end

end A135818.P5231028092520313342

noncomputable section

/-- A135818: Number of 1's (or A's) in the Wythoff representation of n.

Offset 1, canonical program `A135818.P5231028092520313342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135818 (n : ℕ) : ℤ :=
  A135818.P5231028092520313342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135852.P3513124287864982456

`A103406(n)*A211164(A198954(n))`
-/

namespace A135852.P3513124287864982456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n * A211164 (A198954 n).toNat

end

end A135852.P3513124287864982456

noncomputable section

/-- A135852: A007318 * A103516 as a lower triangular matrix.

Offset 0, canonical program `A135852.P3513124287864982456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135852 (n : ℕ) : ℤ :=
  A135852.P3513124287864982456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136151.P15773181379420580496

`p?[A100367(n+1)-1]+1`
-/

namespace A136151.P15773181379420580496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136151.P15773181379420580496

noncomputable section

/-- A136151: Composites n with exactly two distinct prime divisors and of the form n=1+(any prime).

Offset 1, canonical program `A136151.P15773181379420580496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136151 (n : ℕ) : ℤ :=
  A136151.P15773181379420580496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137919.P9332456221901038334

`A135368(2*(n+1))`
-/

namespace A137919.P9332456221901038334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135368 (2 * (n + 1))

end

end A137919.P9332456221901038334

noncomputable section

/-- A137919: (Nextprime(24n)-previousprime(24n))/2.

Offset 1, canonical program `A137919.P9332456221901038334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A137919 (n : ℕ) : ℤ :=
  A137919.P9332456221901038334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A137919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138106.P6247191427024848150

`(A130321(n)-2)*A130595(n)`
-/

namespace A138106.P6247191427024848150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n - 2) * A130595 n

end

end A138106.P6247191427024848150

noncomputable section

/-- A138106: A triangular sequence of coefficients based on the expansion of a Morse potential type function: p(x,t) = exp(x*t)*(exp(-2*t) - 2*exp(-t)).

Offset 1, canonical program `A138106.P6247191427024848150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A138106 (n : ℕ) : ℤ :=
  A138106.P6247191427024848150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A138106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138618.P17518203585378134010

`A072211(A085383(n+1))`
-/

namespace A138618.P17518203585378134010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072211 (A085383 (n + 1)).toNat

end

end A138618.P17518203585378134010

noncomputable section

/-- A138618: Triangle of exponentials of Mangoldt function M(n) read by rows, in which row products give the natural numbers.

Offset 1, canonical program `A138618.P17518203585378134010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138618 (n : ℕ) : ℤ :=
  A138618.P17518203585378134010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139483.P14077773424165135591

`eq[A260518(2*n), 4*n+1]`
-/

namespace A139483.P14077773424165135591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260518 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A139483.P14077773424165135591

noncomputable section

/-- A139483: Numbers k such that 24*k + 7 is prime.

Offset 1, canonical program `A139483.P14077773424165135591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1417 terms. -/
def A139483 (n : ℕ) : ℤ :=
  (A139483.P14077773424165135591.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1417 terms. -/
def A139483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139524.P6795429159031582513

`A130123(A061579(n))+A028326(n)`
-/

namespace A139524.P6795429159031582513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 (A061579 n).toNat + A028326 n

end

end A139524.P6795429159031582513

noncomputable section

/-- A139524: Triangle T(n,k) read by rows: the coefficient of [x^k] of the polynomial 2*(x+1)^n + 2^n in row n, column k.

Offset 0, canonical program `A139524.P6795429159031582513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A139524 (n : ℕ) : ℤ :=
  A139524.P6795429159031582513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A139524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139633.P14427635210752987056

`gcd(A103406(n), A124847(n+1))`
-/

namespace A139633.P14427635210752987056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103406 n) (A124847 (n + 1))

end

end A139633.P14427635210752987056

noncomputable section

/-- A139633: Triangle read by rows: binomial transform of a diagonalized matrix of A026741.

Offset 1, canonical program `A139633.P14427635210752987056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139633 (n : ℕ) : ℤ :=
  (A139633.P14427635210752987056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139764.P8277455869379676170

`A000045(A035614(n)+2)`
-/

namespace A139764.P8277455869379676170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035614 n + 2).toNat

end

end A139764.P8277455869379676170

noncomputable section

/-- A139764: Smallest term in Zeckendorf representation of n.

Offset 1, canonical program `A139764.P8277455869379676170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139764 (n : ℕ) : ℤ :=
  A139764.P8277455869379676170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139833.P7529889308705541114

`∩[A191063(n+1), A243183(n+1)]`
-/

namespace A139833.P7529889308705541114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P7529889308705541114

noncomputable section

/-- A139833: Primes of the form 2x^2+2xy+29y^2.

Offset 1, canonical program `A139833.P7529889308705541114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A139833 (n : ℕ) : ℤ :=
  (A139833.P7529889308705541114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A139833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139834.P9214492758601902631

`∩[A068231(n+1), A191019(n+1)]`
-/

namespace A139834.P9214492758601902631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P9214492758601902631

noncomputable section

/-- A139834: Primes of the form 6x^2+6xy+11y^2.

Offset 1, canonical program `A139834.P9214492758601902631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A139834 (n : ℕ) : ℤ :=
  (A139834.P9214492758601902631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A139834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140256.P6339651880868965640

`∑{d}[A126988(n+1), A140254(#)]`
-/

namespace A140256.P6339651880868965640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A140254 d

end

end A140256.P6339651880868965640

noncomputable section

/-- A140256: Triangle read by columns: Column k is A014963 aerated with groups of (k-1) zeros.

Offset 1, canonical program `A140256.P6339651880868965640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140256 (n : ℕ) : ℤ :=
  A140256.P6339651880868965640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140869.P8726722076403287160

`ceil(A154684(n+1)/2)`
-/

namespace A140869.P8726722076403287160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154684 (n + 1) : ℚ) / 2⌉

end

end A140869.P8726722076403287160

noncomputable section

/-- A140869: Triangle read by rows where T(m,n) = floor((2mn+m+n-2)/2), m >= n >= 1.

Offset 1, canonical program `A140869.P8726722076403287160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A140869 (n : ℕ) : ℤ :=
  A140869.P8726722076403287160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A140869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140950.P13621482593954872628

`A140944(n+1)-3*A140944(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140950.P13621482593954872628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140944 (n + 1) - 3 * A140944 n

end

end A140950.P13621482593954872628

noncomputable section

/-- A140950: a(n) = A140944(n+1) - 3*A140944(n).

Offset 0, canonical program `A140950.P13621482593954872628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140950 (n : ℕ) : ℤ :=
  A140950.P13621482593954872628.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141192.P12091153532500432266

`∩[A045309(n+1), A191063(n+1)]`
-/

namespace A141192.P12091153532500432266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P12091153532500432266

noncomputable section

/-- A141192: Primes of the form 3*x^2+3*x*y-4*y^2 (as well as of the form 8*x^2+11*x*y+2*y^2).

Offset 1, canonical program `A141192.P12091153532500432266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A141192 (n : ℕ) : ℤ :=
  (A141192.P12091153532500432266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A141192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141596.P103919161271172174

`A028326(n)²-3`
-/

namespace A141596.P103919161271172174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n ^ 2 - 3

end

end A141596.P103919161271172174

noncomputable section

/-- A141596: Triangle T(n,k) = 4*binomial(n,k)^2 - 3, read by rows, 0<=k<=n.

Offset 0, canonical program `A141596.P103919161271172174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141596 (n : ℕ) : ℤ :=
  A141596.P103919161271172174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141619.P4982656639390205998

`A082500(n+1)*A176040(n)`
-/

namespace A141619.P4982656639390205998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1) * A176040 n

end

end A141619.P4982656639390205998

noncomputable section

/-- A141619: a(n) = 3*(n+1)/2 if n is odd, a(n) = prime(n/2) if n is even.

Offset 1, canonical program `A141619.P4982656639390205998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141619 (n : ℕ) : ℤ :=
  A141619.P4982656639390205998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141671.P16866868866156929720

`A126988(A103516(n)+A083920(n))`
-/

namespace A141671.P16866868866156929720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A103516 n + A083920 n).toNat

end

end A141671.P16866868866156929720

noncomputable section

/-- A141671: Triangle T(n, k) = n/k if n mod k = 0, otherwise T(n, k) = 0, with T(n, 0) = n+1, read by rows.

Offset 0, canonical program `A141671.P16866868866156929720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141671 (n : ℕ) : ℤ :=
  A141671.P16866868866156929720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141680.P15300332058196604664

`A126988(n+1)*A135278(n)`
-/

namespace A141680.P15300332058196604664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A135278 n

end

end A141680.P15300332058196604664

noncomputable section

/-- A141680: Triangle read by rows: T(n,m) = (n/m)*binomial(n,m) if m divides n, otherwise 0.

Offset 1, canonical program `A141680.P15300332058196604664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141680 (n : ℕ) : ℤ :=
  A141680.P15300332058196604664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141701.P8211479873156200797

`∑{d}[A126988(n+1), A120007(#)]`
-/

namespace A141701.P8211479873156200797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A141701.P8211479873156200797

noncomputable section

/-- A141701: Triangle read by rows: A001414 interleaved with (k-1) zeros.

Offset 1, canonical program `A141701.P8211479873156200797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141701 (n : ℕ) : ℤ :=
  A141701.P8211479873156200797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141846.P12023117412264450593

`∑{d}[A127093(n+1), A062790(#)]`
-/

namespace A141846.P12023117412264450593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A141846.P12023117412264450593

noncomputable section

/-- A141846: Triangle read by rows: A051731 * A051953^(n-k) * 0^(n-k), 1 <= k <= n.

Offset 1, canonical program `A141846.P12023117412264450593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141846 (n : ℕ) : ℤ :=
  A141846.P12023117412264450593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143200.P1078575733488683412

`(1-A014473(n))%2`
-/

namespace A143200.P1078575733488683412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A014473 n) 2

end

end A143200.P1078575733488683412

noncomputable section

/-- A143200: Triangle read by rows: T(n, k) = 1 if k = 0 or k = n, T(n, k) = -1 if ( binomial(n, k) mod 2 ) = 1, otherwise T(n, k) = 0.

Offset 0, canonical program `A143200.P1078575733488683412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143200 (n : ℕ) : ℤ :=
  A143200.P1078575733488683412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143256.P573487630212465793

`∑{d}[A127093(n+1), A046692(#)]`
-/

namespace A143256.P573487630212465793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A046692 d

end

end A143256.P573487630212465793

noncomputable section

/-- A143256: Triangle read by rows, matrix multiplication A051731 * A128407 * A127648, 1<=k<=n.

Offset 1, canonical program `A143256.P573487630212465793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143256 (n : ℕ) : ℤ :=
  A143256.P573487630212465793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143276.P14600609899696088407

`∑{d}[A126988(n+1), A007432(#)]`
-/

namespace A143276.P14600609899696088407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007432 d

end

end A143276.P14600609899696088407

noncomputable section

/-- A143276: Triangle read by rows: A054525 * A054523 as infinite lower triangular matrices.

Offset 1, canonical program `A143276.P14600609899696088407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143276 (n : ℕ) : ℤ :=
  A143276.P14600609899696088407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143315.P7020980111509435971

`A014681(2*A126988(n+1))`
-/

namespace A143315.P7020980111509435971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A126988 (n + 1)).toNat

end

end A143315.P7020980111509435971

noncomputable section

/-- A143315: Triangle read by rows: T(n, k) = 2*A126988(n, k) - signum(A126988(n, k)).

Offset 1, canonical program `A143315.P7020980111509435971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143315 (n : ℕ) : ℤ :=
  A143315.P7020980111509435971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143358.P15436520401934876681

`A059268(n)*A107230(n)`
-/

namespace A143358.P15436520401934876681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A107230 n

end

end A143358.P15436520401934876681

noncomputable section

/-- A143358: Triangle read by rows: T(n,k) = 2^k*binomial(n,k)*binomial(n-k, floor((n-k)/2)), 0 <= k <= n.

Offset 0, canonical program `A143358.P15436520401934876681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143358 (n : ℕ) : ℤ :=
  A143358.P15436520401934876681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143445.P11117581188804912765

`A001318(A127093(n+1))`
-/

namespace A143445.P11117581188804912765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A127093 (n + 1)).toNat

end

end A143445.P11117581188804912765

noncomputable section

/-- A143445: Triangle read by rows, A051731 * (A001318 * 0^(n-k)); 1<=k<=n.

Offset 1, canonical program `A143445.P11117581188804912765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143445 (n : ℕ) : ℤ :=
  A143445.P11117581188804912765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143595.P4643358724247871193

`ceil(A143593(n+1)/2)`
-/

namespace A143595.P4643358724247871193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143593 (n + 1) : ℚ) / 2⌉

end

end A143595.P4643358724247871193

noncomputable section

/-- A143595: Triangle read by rows, A000012 * (an infinite lower triangular matrix with 1's in the first column and the rest 2's); 1<=k<=n.

Offset 1, canonical program `A143595.P4643358724247871193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143595 (n : ℕ) : ℤ :=
  A143595.P4643358724247871193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144213.P11436118161922588227

`p?[A144754(n+1)]`
-/

namespace A144213.P11436118161922588227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144213.P11436118161922588227

noncomputable section

/-- A144213: Primes with a prime number of 0's in their binary representations.

Offset 1, canonical program `A144213.P11436118161922588227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3046 terms. -/
def A144213 (n : ℕ) : ℤ :=
  A144213.P11436118161922588227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3046 terms. -/
def A144213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144225.P8396101801530063706

`A097805(n)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A144225.P8396101801530063706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A097805 n - a (n - 1)

end

end A144225.P8396101801530063706

noncomputable section

/-- A144225: Bordered Pascal's triangle in rectangular format.

Offset 1, canonical program `A144225.P8396101801530063706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144225 (n : ℕ) : ℤ :=
  A144225.P8396101801530063706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144336.P3305188520501149043

`2*A144328(n+1)-A130595(n)`
-/

namespace A144336.P3305188520501149043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144328 (n + 1) - A130595 n

end

end A144336.P3305188520501149043

noncomputable section

/-- A144336: Triangle read by rows, 2*A144328 - A007318^(-1).

Offset 1, canonical program `A144336.P3305188520501149043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144336 (n : ℕ) : ℤ :=
  A144336.P3305188520501149043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144388.P8676543943554811271

`xor(1, A025581(n))*A130595(n)`
-/

namespace A144388.P8676543943554811271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A025581 n) * A130595 n

end

end A144388.P8676543943554811271

noncomputable section

/-- A144388: Triangle T(n,k) = binomial(n, k) + ((-1)^(n + k))*n*binomial(n - 1, k), T(0,0) = 1, read by rows, 0 <= k <= n.

Offset 0, canonical program `A144388.P8676543943554811271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144388 (n : ℕ) : ℤ :=
  A144388.P8676543943554811271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144405.P5741731572261963603

`A007318(n)*A144404(n)`
-/

namespace A144405.P5741731572261963603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A144404 n

end

end A144405.P5741731572261963603

noncomputable section

/-- A144405: Triangle T(n,k) = binomial(n, k)*(3*binomial(n, k)^2 - binomial(n, k) - 1), read by rows.

Offset 0, canonical program `A144405.P5741731572261963603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6611 terms. -/
def A144405 (n : ℕ) : ℤ :=
  A144405.P5741731572261963603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6611 terms. -/
def A144405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145888.P2166201089829665938

`A136125(∑[char[∑[n]]]²-n)`
-/

namespace A145888.P2166201089829665938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136125 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A145888.P2166201089829665938

noncomputable section

/-- A145888: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which k is the largest entry in the cycle containing 1 (1 <= k <= n).

Offset 1, canonical program `A145888.P2166201089829665938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A145888 (n : ℕ) : ℤ :=
  A145888.P2166201089829665938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A145888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147718.P16689878087894079709

`record[A010051(A027861(n+1)+1)*A027862(n+1)]`
-/

namespace A147718.P16689878087894079709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A027861 (n + 1) + 1).toNat * A027862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P16689878087894079709

noncomputable section

/-- A147718: Primes of the form prime(x)^2 + (prime(x) - 1)^2.

Offset 1, canonical program `A147718.P16689878087894079709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. -/
def A147718 (n : ℕ) : ℤ :=
  A147718.P16689878087894079709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. -/
def A147718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152907.P2636118499686291148

`A152905(floor(n/2))`
-/

namespace A152907.P2636118499686291148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 ⌊(n : ℚ) / 2⌋.toNat

end

end A152907.P2636118499686291148

noncomputable section

/-- A152907: Irregular triangle read by rows, numbers in A007318 repeated four times .

Offset 0, canonical program `A152907.P2636118499686291148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152907 (n : ℕ) : ℤ :=
  A152907.P2636118499686291148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152920.P8736754326884123531

`A053218(n+1)-A059268(n)`
-/

namespace A152920.P8736754326884123531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (n + 1) - A059268 n

end

end A152920.P8736754326884123531

noncomputable section

/-- A152920: Triangle read by rows: triangle A062111 reversed.

Offset 0, canonical program `A152920.P8736754326884123531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152920 (n : ℕ) : ℤ :=
  A152920.P8736754326884123531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153041.P5870166533893309816

`A153051(n+1)+1`
-/

namespace A153041.P5870166533893309816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1) + 1

end

end A153041.P5870166533893309816

noncomputable section

/-- A153041: Numbers n >=10 such that 2*n-19 is not a prime.

Offset 1, canonical program `A153041.P5870166533893309816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153041 (n : ℕ) : ℤ :=
  A153041.P5870166533893309816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154312.P18401052688145520114

`A130123(n)+Δ[A006949(A130123(n))]`
-/

namespace A154312.P18401052688145520114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A130123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n + (f1 (n + 1) - f1 n)

end

end A154312.P18401052688145520114

noncomputable section

/-- A154312: Triangle T(n,k), 0<=k<=n, read by rows, given by [0,1/2,-1/2,0,0,0,0,0,0,0,...] DELTA [2,-1/2,-1/2,2,0,0,0,0,0,0,0 ...] where DELTA is the operator defined in A084938 .

Offset 0, canonical program `A154312.P18401052688145520114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A154312 (n : ℕ) : ℤ :=
  A154312.P18401052688145520114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A154312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154680.P927006277095668491

`A154684(n+1)+1`
-/

namespace A154680.P927006277095668491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 1

end

end A154680.P927006277095668491

noncomputable section

/-- A154680: Triangle read by rows where T(m,n)=2*m*n + m + n - 2.

Offset 1, canonical program `A154680.P927006277095668491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154680 (n : ℕ) : ℤ :=
  A154680.P927006277095668491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154690.P3021837543352259598

`A038207(n)+A013609(n)`
-/

namespace A154690.P3021837543352259598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + A013609 n

end

end A154690.P3021837543352259598

noncomputable section

/-- A154690: Triangle read by rows: T(n, k) = (2^(n-k) + 2^k)*binomial(n,k), 0 <= k <= n.

Offset 0, canonical program `A154690.P3021837543352259598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154690 (n : ℕ) : ℤ :=
  A154690.P3021837543352259598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155029.P670373944836976515

`1-C(A114002(n), 2)`
-/

namespace A155029.P670373944836976515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A114002 n).toNat 2 : ℤ)

end

end A155029.P670373944836976515

noncomputable section

/-- A155029: Complement to A051731 with the identity matrix A023531 included.

Offset 1, canonical program `A155029.P670373944836976515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A155029 (n : ℕ) : ℤ :=
  A155029.P670373944836976515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A155029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155031.P17817635720882455542

`A294619(2*A126988(n+1))-1`
-/

namespace A155031.P17817635720882455542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (2 * A126988 (n + 1)).toNat - 1

end

end A155031.P17817635720882455542

noncomputable section

/-- A155031: Triangle T(n, k) = 0 if n==0 (mod k) otherwise -1 with T(n, n) = 1 and T(n, 0) = 0, read by rows.

Offset 1, canonical program `A155031.P17817635720882455542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155031 (n : ℕ) : ℤ :=
  A155031.P17817635720882455542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155863.P6306218083756010822

`gcd(A068606(n)*A130595(n), A103452(n))`
-/

namespace A155863.P6306218083756010822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068606 n * A130595 n) (A103452 n)

end

end A155863.P6306218083756010822

noncomputable section

/-- A155863: Triangle T(n,k) = n*(n^2 - 1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A155863.P6306218083756010822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155863 (n : ℕ) : ℤ :=
  (A155863.P6306218083756010822.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156708.P214328452382928940

`round(A104709(n)/A035214(n))`
-/

namespace A156708.P214328452382928940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104709 n : ℚ) / (A035214 n : ℚ))

end

end A156708.P214328452382928940

noncomputable section

/-- A156708: Triangle read by rows, binomial transform of A154325.

Offset 0, canonical program `A156708.P214328452382928940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156708 (n : ℕ) : ℤ :=
  A156708.P214328452382928940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156763.P18275565687023349415

`A104684(n)+A063007(n)`
-/

namespace A156763.P18275565687023349415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 n + A063007 n

end

end A156763.P18275565687023349415

noncomputable section

/-- A156763: Triangle T(n, k) = binomial(2*k, k)*binomial(n+k, n-k) + binomial(2*n-k, k)*binomial(2*(n-k), n-k), read by rows.

Offset 0, canonical program `A156763.P18275565687023349415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A156763 (n : ℕ) : ℤ :=
  A156763.P18275565687023349415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A156763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156789.P14168589977904999980

`A098473(A161983(n))`
-/

namespace A156789.P14168589977904999980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (A161983 n).toNat

end

end A156789.P14168589977904999980

noncomputable section

/-- A156789: Irregular triangle, read by rows, T(n, k) = binomial(2*n, k)*binomial(2*k, k).

Offset 0, canonical program `A156789.P14168589977904999980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3969 terms. -/
def A156789 (n : ℕ) : ℤ :=
  A156789.P14168589977904999980.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3969 terms. -/
def A156789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156861.P2637372191329157181

`A059268(n)-A206735(n+1)`
-/

namespace A156861.P2637372191329157181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A206735 (n + 1)

end

end A156861.P2637372191329157181

noncomputable section

/-- A156861: Triangle read by rows: T(n, k) = 2^k - binomial(n, k+1).

Offset 0, canonical program `A156861.P2637372191329157181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A156861 (n : ℕ) : ℤ :=
  A156861.P2637372191329157181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A156861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156991.P556303608998092449

`A003056(n)!*A097805(A245300(n))`
-/

namespace A156991.P556303608998092449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A097805 (A245300 n).toNat

end

end A156991.P556303608998092449

noncomputable section

/-- A156991: Triangle T(n,k) read by rows: T(n,k) = n! * binomial(n + k - 1, n).

Offset 0, canonical program `A156991.P556303608998092449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A156991 (n : ℕ) : ℤ :=
  A156991.P556303608998092449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A156991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157108.P6977766346991396534

`C(A134400(n), A002262(n))`
-/

namespace A157108.P6977766346991396534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134400 n).toNat (A002262 n).toNat

end

end A157108.P6977766346991396534

noncomputable section

/-- A157108: Triangle, read by rows, T(n, k) = binomial(n*binomial(n, k), k).

Offset 0, canonical program `A157108.P6977766346991396534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A157108 (n : ℕ) : ℤ :=
  (A157108.P6977766346991396534.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A157108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157531.P12353891917184055220

`A008459(n)+A000984(A003056(n))`
-/

namespace A157531.P12353891917184055220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n + A000984 (A003056 n).toNat

end

end A157531.P12353891917184055220

noncomputable section

/-- A157531: Triangle T(n, k) = binomial(2*n, n) + binomial(n, k)^2, read by rows.

Offset 0, canonical program `A157531.P12353891917184055220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157531 (n : ℕ) : ℤ :=
  A157531.P12353891917184055220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157636.P9007390473919086256

`ceil(A157635(n)/2)`
-/

namespace A157636.P9007390473919086256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157635 n : ℚ) / 2⌉

end

end A157636.P9007390473919086256

noncomputable section

/-- A157636: Triangle read by rows: T(n, k) = 1 if k=0 or k=n, otherwise = n*k*(n-k)/2.

Offset 0, canonical program `A157636.P9007390473919086256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157636 (n : ℕ) : ℤ :=
  A157636.P9007390473919086256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158526.P13730426443095740123

`p?[A027861(n+1)]`
-/

namespace A158526.P13730426443095740123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158526.P13730426443095740123

noncomputable section

/-- A158526: n and (1 + 2*n + 2*n^2) are primes.

Offset 1, canonical program `A158526.P13730426443095740123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 817 terms. -/
def A158526 (n : ℕ) : ℤ :=
  A158526.P13730426443095740123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 817 terms. -/
def A158526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158906.P5702865832035020583

`ceil(A126988(n+1)/A007318(n))`
-/

namespace A158906.P5702865832035020583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126988 (n + 1) : ℚ) / (A007318 n : ℚ)⌉

end

end A158906.P5702865832035020583

noncomputable section

/-- A158906: Triangle read by rows: the matrix product A158821 * A051731.

Offset 1, canonical program `A158906.P5702865832035020583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158906 (n : ℕ) : ℤ :=
  A158906.P5702865832035020583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159335.P4567446689233847705

`A003056(n)/gcd(A003056(n), A130595(n))`
-/

namespace A159335.P4567446689233847705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) / (Int.gcd (A003056 n) (A130595 n) : ℚ)

end

end A159335.P4567446689233847705

noncomputable section

/-- A159335: Triangle read by rows: numerator of n/binomial(n,m).

Offset 0, canonical program `A159335.P4567446689233847705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A159335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159335.P4567446689233847705.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A159335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159853.P10122269261997446491

`A097805(n)+Δ[A097805(A083920(n))]`
-/

namespace A159853.P10122269261997446491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A083920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (f1 (n + 1) - f1 n)

end

end A159853.P10122269261997446491

noncomputable section

/-- A159853: Riordan array ((1-2*x+2*x^2)/(1-x), x/(1-x)).

Offset 0, canonical program `A159853.P10122269261997446491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159853 (n : ℕ) : ℤ :=
  A159853.P10122269261997446491.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161552.P2623612057955738276

`A003992(abs(1-n))*A059297(n)`
-/

namespace A161552.P2623612057955738276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 |1 - (n : ℤ)|.toNat * A059297 n

end

end A161552.P2623612057955738276

noncomputable section

/-- A161552: E.g.f. satisfies: A(x,y) = exp(x*y*exp(x*A(x,y))).

Offset 0, canonical program `A161552.P2623612057955738276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A161552 (n : ℕ) : ℤ :=
  A161552.P2623612057955738276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A161552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162153.P5732949919012923603

`A054265(n+2)-A000040(n+2)`
-/

namespace A162153.P5732949919012923603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 2) - A000040 (n + 2)

end

end A162153.P5732949919012923603

noncomputable section

/-- A162153: Differences between the sum of consecutive composites and the prime that precedes them.

Offset 1, canonical program `A162153.P5732949919012923603`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162153 (n : ℕ) : ℤ :=
  A162153.P5732949919012923603.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162153.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162315.P7831858856993321518

`A028326(n)-A130595(n)`
-/

namespace A162315.P7831858856993321518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A130595 n

end

end A162315.P7831858856993321518

noncomputable section

/-- A162315: Triangular array 2*P - P^-1, where P is Pascal's triangle A007318.

Offset 0, canonical program `A162315.P7831858856993321518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162315 (n : ℕ) : ℤ :=
  A162315.P7831858856993321518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163170.P17147635865030267506

`∩[A044918(n+1), A071904(n+1)]`
-/

namespace A163170.P17147635865030267506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P17147635865030267506

noncomputable section

/-- A163170: Odd composite integers that are palindromes when written in binary.

Offset 1, canonical program `A163170.P17147635865030267506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A163170 (n : ℕ) : ℤ :=
  (A163170.P17147635865030267506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A163170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163649.P13387088983405012079

`A056040(A002262(n))*A130595(n)`
-/

namespace A163649.P13387088983405012079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002262 n).toNat * A130595 n

end

end A163649.P13387088983405012079

noncomputable section

/-- A163649: Triangle interpolating between (-1)^n (A033999) and A056040(n), read by rows.

Offset 0, canonical program `A163649.P13387088983405012079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163649 (n : ℕ) : ℤ :=
  A163649.P13387088983405012079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164942.P608611104626014810

`A027465(n)*A033999(A002262(n))`
-/

namespace A164942.P608611104626014810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A033999 (A002262 n).toNat

end

end A164942.P608611104626014810

noncomputable section

/-- A164942: Triangle, read by rows, T(n,k) = (-1)^k*binomial(n, k)*3^(n-k).

Offset 0, canonical program `A164942.P608611104626014810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164942 (n : ℕ) : ℤ :=
  A164942.P608611104626014810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165196.P14945103063248019176

`∑[A165195(n+1)]`
-/

namespace A165196.P14945103063248019176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165196.P14945103063248019176

noncomputable section

/-- A165196: Partial sums of A165195.

Offset 1, canonical program `A165196.P14945103063248019176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165196 (n : ℕ) : ℤ :=
  A165196.P14945103063248019176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166080.P16349895722489351659

`A001844(comp[A027861(n+1)])`
-/

namespace A166080.P16349895722489351659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A166080.P16349895722489351659

noncomputable section

/-- A166080: Nonprimes of the form (k^2+1)/2.

Offset 1, canonical program `A166080.P16349895722489351659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8355 terms. -/
def A166080 (n : ℕ) : ℤ :=
  A166080.P16349895722489351659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8355 terms. -/
def A166080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166360.P13661747061550426905

`(A103371(n)/A004736(n+1))%2`
-/

namespace A166360.P13661747061550426905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A103371 n : ℚ) / (A004736 (n + 1) : ℚ))) 2

end

end A166360.P13661747061550426905

noncomputable section

/-- A166360: Triangle of Narayana numbers mod 2, T(n,k) = A001263(n,k) mod 2, read by rows.

Offset 1, canonical program `A166360.P13661747061550426905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166360 (n : ℕ) : ℤ :=
  A166360.P13661747061550426905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166692.P3793629774854990532

`and(A232089(n), A360033(n+1))`
-/

namespace A166692.P3793629774854990532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A232089 n) (A360033 (n + 1))

end

end A166692.P3793629774854990532

noncomputable section

/-- A166692: Triangle T(n,k) read by rows: T(n,k) = 2^(k-1), k>0, T(n,0) = (n+1) mod 2.

Offset 0, canonical program `A166692.P3793629774854990532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166692 (n : ℕ) : ℤ :=
  A166692.P3793629774854990532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167024.P6195221100249756200

`A007318(n)*A008949(n)`
-/

namespace A167024.P6195221100249756200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008949 n

end

end A167024.P6195221100249756200

noncomputable section

/-- A167024: Triangle read by rows: T(n, m) = binomial(n, m)* Sum_{k=0..m} binomial(n, k) for 0 <= m <= n.

Offset 0, canonical program `A167024.P6195221100249756200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A167024 (n : ℕ) : ℤ :=
  A167024.P6195221100249756200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A167024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167569.P2794290920742679181

`abs(A053124(n)*A098361(n))`
-/

namespace A167569.P2794290920742679181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053124 n * A098361 n|

end

end A167569.P2794290920742679181

noncomputable section

/-- A167569: The lower left triangle of the ED2 array A167560.

Offset 1, canonical program `A167569.P2794290920742679181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A167569 (n : ℕ) : ℤ :=
  A167569.P2794290920742679181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A167569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168231.P7184205410609298794

`A000196(∑{digits}[A076503(n+1)², #])`
-/

namespace A168231.P7184205410609298794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168231.P7184205410609298794

noncomputable section

/-- A168231: a(n)^2 = digital sum of (A076503(n))^2.

Offset 1, canonical program `A168231.P7184205410609298794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A168231 (n : ℕ) : ℤ :=
  A168231.P7184205410609298794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A168231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168472.P7588143364208973636

`∑[A161918(n+2)]-2`
-/

namespace A168472.P7588143364208973636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A168472.P7588143364208973636

noncomputable section

/-- A168472: Partial sums of products of two distinct primes (A006881).

Offset 1, canonical program `A168472.P7588143364208973636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A168472 (n : ℕ) : ℤ :=
  A168472.P7588143364208973636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A168472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168623.P11281898141141744744

`gcd(9*A130595(n), A103452(n))`
-/

namespace A168623.P11281898141141744744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 * A130595 n) (A103452 n)

end

end A168623.P11281898141141744744

noncomputable section

/-- A168623: Triangle read by rows: T(n, k) = [x^k]( 9*(1+x)^n - 8*(1 + x^n) ), with T(0, 0) = 1.

Offset 0, canonical program `A168623.P11281898141141744744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A168623 (n : ℕ) : ℤ :=
  (A168623.P11281898141141744744.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A168623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169653.P16133505498737097715

`A008297(n+1)+A008297(A038722(n+1))`
-/

namespace A169653.P16133505498737097715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008297 (n + 1) + A008297 (A038722 (n + 1)).toNat

end

end A169653.P16133505498737097715

noncomputable section

/-- A169653: Triangle T(n,k) = A008297(n,k) + A008297(n,n-k+1), read by rows.

Offset 1, canonical program `A169653.P16133505498737097715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A169653 (n : ℕ) : ℤ :=
  A169653.P16133505498737097715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A169653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169656.P394969500318583370

`A008297(n+1)*A173333(n+1)`
-/

namespace A169656.P394969500318583370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008297 (n + 1) * A173333 (n + 1)

end

end A169656.P394969500318583370

noncomputable section

/-- A169656: Triangle, read by rows, T(n, k) = (-1)^n*(n!/k!)^2*binomial(n-1, k-1).

Offset 1, canonical program `A169656.P394969500318583370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 821 terms. -/
def A169656 (n : ℕ) : ℤ :=
  A169656.P394969500318583370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 821 terms. -/
def A169656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169699.P12141138360793338882

`A102376(n)*A267584(n)-A267447(n)`
-/

namespace A169699.P12141138360793338882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n * A267584 n - A267447 n

end

end A169699.P12141138360793338882

noncomputable section

/-- A169699: Total number of ON cells at stage n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 510".

Offset 0, canonical program `A169699.P12141138360793338882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4689 terms. -/
def A169699 (n : ℕ) : ℤ :=
  A169699.P12141138360793338882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4689 terms. -/
def A169699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000520.P740625616792287926

`A077429(n+1)-A004216(n+1)`
-/

namespace A000520.P740625616792287926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (n + 1) - A004216 (n + 1)

end

end A000520.P740625616792287926

noncomputable section

/-- A000520: Nearest integer to log_10(n).

Offset 1, canonical program `A000520.P740625616792287926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000520 (n : ℕ) : ℤ :=
  A000520.P740625616792287926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001036.P12089511997625600617

`A062692(n+1)-1`
-/

namespace A001036.P12089511997625600617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062692 (n + 1) - 1

end

end A001036.P12089511997625600617

noncomputable section

/-- A001036: Partial sums of A001037, omitting A001037(1).

Offset 1, canonical program `A001036.P12089511997625600617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001036 (n : ℕ) : ℤ :=
  A001036.P12089511997625600617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001263.P4972562200399461323

`A050169(n+1)*A161642(n)`
-/

namespace A001263.P4972562200399461323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050169 (n + 1) * A161642 n

end

end A001263.P4972562200399461323

noncomputable section

/-- A001263: Triangle of Narayana numbers T(n,k) = C(n-1,k-1)*C(n,k-1)/k with 1 <= k <= n, read by rows. Also called the Catalan triangle.

Offset 1, canonical program `A001263.P4972562200399461323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001263 (n : ℕ) : ℤ :=
  A001263.P4972562200399461323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005322.P16684099688218700763

`∑[A026134(n+1)]`
-/

namespace A005322.P16684099688218700763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005322.P16684099688218700763

noncomputable section

/-- A005322: Column of Motzkin triangle.

Offset 2, canonical program `A005322.P16684099688218700763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A005322 (n : ℕ) : ℤ :=
  A005322.P16684099688218700763.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A005322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005323.P16533346365293254348

`A026134(n+3)-A002026(n+3)`
-/

namespace A005323.P16533346365293254348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 3) - A002026 (n + 3)

end

end A005323.P16533346365293254348

noncomputable section

/-- A005323: Column of Motzkin triangle.

Offset 3, canonical program `A005323.P16533346365293254348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A005323 (n : ℕ) : ℤ :=
  A005323.P16533346365293254348.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A005323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005356.P1340583783643983062

`∑[∑[char[A062692(n+1)]]]`
-/

namespace A005356.P1340583783643983062
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062692 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P1340583783643983062

noncomputable section

/-- A005356: Number of low discrepancy sequences in base 2.

Offset 1, canonical program `A005356.P1340583783643983062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005356 (n : ℕ) : ℤ :=
  (A005356.P1340583783643983062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007305.P14904390197358887400

`A007306(A004761(n+1)+1)-A007306(n)`
-/

namespace A007305.P14904390197358887400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A004761 (n + 1) + 1).toNat - A007306 n

end

end A007305.P14904390197358887400

noncomputable section

/-- A007305: Numerators of Farey (or Stern-Brocot) tree fractions.

Offset 0, canonical program `A007305.P14904390197358887400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A007305 (n : ℕ) : ℤ :=
  A007305.P14904390197358887400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A007305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008290.P6792413531487756726

`A098825(A061579(n))`
-/

namespace A008290.P6792413531487756726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A061579 n).toNat

end

end A008290.P6792413531487756726

noncomputable section

/-- A008290: Triangle T(n,k) of rencontres numbers (number of permutations of n elements with k fixed points).

Offset 0, canonical program `A008290.P6792413531487756726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A008290 (n : ℕ) : ℤ :=
  A008290.P6792413531487756726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A008290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008366.P17453301044158756852

`eq[1, gcd(n, A046324(gcd(n, n+1)))]`
-/

namespace A008366.P17453301044158756852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A046324 (Nat.gcd n (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008366.P17453301044158756852

noncomputable section

/-- A008366: Smallest prime factor is >= 17.

Offset 1, canonical program `A008366.P17453301044158756852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A008366 (n : ℕ) : ℤ :=
  (A008366.P17453301044158756852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A008366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008494.P6748544680179378653

`∑[A008493(n)+A000582(n+9)]-A008493(n)`
-/

namespace A008494.P6748544680179378653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 n + A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008493 n

end

end A008494.P6748544680179378653

noncomputable section

/-- A008494: Expansion of (1-x^12) / (1-x)^12.

Offset 0, canonical program `A008494.P6748544680179378653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008494 (n : ℕ) : ℤ :=
  A008494.P6748544680179378653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008504.P14420488726331992651

`∑[A008493(n)]`
-/

namespace A008504.P14420488726331992651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008504.P14420488726331992651

noncomputable section

/-- A008504: 10-dimensional centered tetrahedral numbers.

Offset 0, canonical program `A008504.P14420488726331992651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008504 (n : ℕ) : ℤ :=
  A008504.P14420488726331992651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008674.P13151143413591466086

`A029092(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A008674.P13151143413591466086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029092 n + a (n - 3)

end

end A008674.P13151143413591466086

noncomputable section

/-- A008674: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A008674.P13151143413591466086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008674 (n : ℕ) : ℤ :=
  A008674.P13151143413591466086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011857.P7224973455274872980

`floor((A014430(n)+1)/A002260(n+1))`
-/

namespace A011857.P7224973455274872980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014430 n + 1 : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A011857.P7224973455274872980

noncomputable section

/-- A011857: Triangle of numbers [ C(n,k)/k ], k=1..n-1.

Offset 2, canonical program `A011857.P7224973455274872980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011857 (n : ℕ) : ℤ :=
  A011857.P7224973455274872980.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012132.P13113475380317075671

`comp[A027861(n+1)-1]+1`
-/

namespace A012132.P13113475380317075671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A012132.P13113475380317075671

noncomputable section

/-- A012132: Numbers z such that x*(x+1) + y*(y+1) = z*(z+1) is solvable in positive integers x,y.

Offset 1, canonical program `A012132.P13113475380317075671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012132 (n : ℕ) : ℤ :=
  (A012132.P13113475380317075671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014414.P8989341581527788122

`A014421(lt[1, A014421(n)])`
-/

namespace A014414.P8989341581527788122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014414.P8989341581527788122

noncomputable section

/-- A014414: Odd elements in Pascal's triangle that are not 1.

Offset 1, canonical program `A014414.P8989341581527788122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9255 terms. -/
def A014414 (n : ℕ) : ℤ :=
  A014414.P8989341581527788122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9255 terms. -/
def A014414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014475.P5620230107622203063

`A007318(eq[A065040(n), A089627(n)])`
-/

namespace A014475.P5620230107622203063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014475.P5620230107622203063

noncomputable section

/-- A014475: Triangular array formed from odd elements to right of middle of rows of Pascal's triangle.

Offset 1, canonical program `A014475.P5620230107622203063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A014475 (n : ℕ) : ℤ :=
  A014475.P5620230107622203063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A014475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014957.P10597532944830016708

`record[A000265(A014866(n+1))]`
-/

namespace A014957.P10597532944830016708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014866 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014957.P10597532944830016708

noncomputable section

/-- A014957: Positive integers k that divide 16^k - 1.

Offset 1, canonical program `A014957.P10597532944830016708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 810 terms. -/
def A014957 (n : ℕ) : ℤ :=
  A014957.P10597532944830016708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 810 terms. -/
def A014957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014962.P11562702008569150727

`record[A000265(A067946(n+1))]`
-/

namespace A014962.P11562702008569150727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014962.P11562702008569150727

noncomputable section

/-- A014962: Odd numbers k that divide 25^k - 1.

Offset 1, canonical program `A014962.P11562702008569150727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A014962 (n : ℕ) : ℤ :=
  A014962.P11562702008569150727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A014962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021009.P8531484928274081809

`A094587(n)*A130595(A061579(n))`
-/

namespace A021009.P8531484928274081809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A130595 (A061579 n).toNat

end

end A021009.P8531484928274081809

noncomputable section

/-- A021009: Triangle of coefficients of Laguerre polynomials n!*L_n(x) (rising powers of x).

Offset 0, canonical program `A021009.P8531484928274081809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A021009 (n : ℕ) : ℤ :=
  A021009.P8531484928274081809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A021009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021010.P4626545497147415232

`A008279(n)*A130595(n)`
-/

namespace A021010.P4626545497147415232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A130595 n

end

end A021010.P4626545497147415232

noncomputable section

/-- A021010: Triangle of coefficients of Laguerre polynomials L_n(x) (powers of x in decreasing order).

Offset 0, canonical program `A021010.P4626545497147415232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A021010 (n : ℕ) : ℤ :=
  A021010.P4626545497147415232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A021010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023734.P2270528785038764700

`eq[3, A000265(A338803(n))]`
-/

namespace A023734.P2270528785038764700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A338803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023734.P2270528785038764700

noncomputable section

/-- A023734: Numbers with a single 3 in their base-5 expansion.

Offset 1, canonical program `A023734.P2270528785038764700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A023734 (n : ℕ) : ℤ :=
  (A023734.P2270528785038764700.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A023734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026015.P6215984727450645741

`Δ[A003518(n+3)-A000588(n+3)]`
-/

namespace A026015.P6215984727450645741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003518 (n + 3) - A000588 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026015.P6215984727450645741

noncomputable section

/-- A026015: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2n) = 8. Also a(n) = T(2n,n-3), where T is the array defined in A026009.

Offset 3, canonical program `A026015.P6215984727450645741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026015 (n : ℕ) : ℤ :=
  A026015.P6215984727450645741.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026034.P10503130599749257734

`A001405(n)-A037958(n)`
-/

namespace A026034.P10503130599749257734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A037958 n

end

end A026034.P10503130599749257734

noncomputable section

/-- A026034: a(n) = A026022(n,floor(n/2)).

Offset 0, canonical program `A026034.P10503130599749257734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A026034 (n : ℕ) : ℤ :=
  A026034.P10503130599749257734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A026034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026070.P16071561854489553922

`2*A025180(n+2)-A026134(n+1)`
-/

namespace A026070.P16071561854489553922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025180 (n + 2) - A026134 (n + 1)

end

end A026070.P16071561854489553922

noncomputable section

/-- A026070: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 3. Also a(n) = T(n,n-3), where T is the array defined in A024996.

Offset 3, canonical program `A026070.P16071561854489553922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026070 (n : ℕ) : ℤ :=
  A026070.P16071561854489553922.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026109.P346914583229573815

`Δ[A026134(n+2)]-A026107(n+3)`
-/

namespace A026109.P346914583229573815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026107 (n + 3)

end

end A026109.P346914583229573815

noncomputable section

/-- A026109: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1, s(n) = 3, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-3), where T is the array defined in A026105.

Offset 3, canonical program `A026109.P346914583229573815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026109 (n : ℕ) : ℤ :=
  A026109.P346914583229573815.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026123.P266507043467753679

`Δ[A026134(n+1)]`
-/

namespace A026123.P266507043467753679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026123.P266507043467753679

noncomputable section

/-- A026123: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 2, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-1), where T is the array in A026120; a(n) = U(n,n+1), where U is the array in A026148.

Offset 2, canonical program `A026123.P266507043467753679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026123 (n : ℕ) : ℤ :=
  A026123.P266507043467753679.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027707.P15810114307957499977

`A000040(A027708(n))`
-/

namespace A027707.P15810114307957499977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027708 n).toNat

end

end A027707.P15810114307957499977

noncomputable section

/-- A027707: Primes with odd number of 1's in binary expansion such that next prime also has odd number of 1's.

Offset 0, canonical program `A027707.P15810114307957499977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2800 terms. -/
def A027707 (n : ℕ) : ℤ :=
  A027707.P15810114307957499977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2800 terms. -/
def A027707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029024.P968207086213750906

`∑[A025820(n)]`
-/

namespace A029024.P968207086213750906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029024.P968207086213750906

noncomputable section

/-- A029024: Expansion of 1/((1-x)*(1-x^2)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029024.P968207086213750906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029024 (n : ℕ) : ℤ :=
  A029024.P968207086213750906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029031.P834443779075650966

`A029062(n)+A029170(n)-A025858(n)`
-/

namespace A029031.P834443779075650966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029062 n + (A029170 n - A025858 n)

end

end A029031.P834443779075650966

noncomputable section

/-- A029031: Expansion of 1/((1-x)(1-x^2)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029031.P834443779075650966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029031 (n : ℕ) : ℤ :=
  A029031.P834443779075650966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029160.P15609541812980759005

`A025820(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029160.P15609541812980759005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025820 n + a (n - 3)

end

end A029160.P15609541812980759005

noncomputable section

/-- A029160: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029160.P15609541812980759005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029160 (n : ℕ) : ℤ :=
  A029160.P15609541812980759005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029379.P7066399516052753646

`A008678(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029379.P7066399516052753646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008678 n - a (n - 3)

end

end A029379.P7066399516052753646

noncomputable section

/-- A029379: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029379.P7066399516052753646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029379 (n : ℕ) : ℤ :=
  A029379.P7066399516052753646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029600.P6364138794063411097

`A134059(n)-A097805(n+1)`
-/

namespace A029600.P6364138794063411097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n - A097805 (n + 1)

end

end A029600.P6364138794063411097

noncomputable section

/-- A029600: Numbers in the (2,3)-Pascal triangle (by row).

Offset 0, canonical program `A029600.P6364138794063411097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029600 (n : ℕ) : ℤ :=
  A029600.P6364138794063411097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029621.P3765941121051379767

`2*A029655(n)-A206735(n)`
-/

namespace A029621.P3765941121051379767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029655 n - A206735 n

end

end A029621.P3765941121051379767

noncomputable section

/-- A029621: Numbers in (3,2)-Pascal triangle A029618 that are different from 3.

Offset 0, canonical program `A029621.P3765941121051379767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029621 (n : ℕ) : ℤ :=
  A029621.P3765941121051379767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029635.P14447282759070454877

`A097805(n)+A007318(n)`
-/

namespace A029635.P14447282759070454877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A007318 n

end

end A029635.P14447282759070454877

noncomputable section

/-- A029635: The (1,2)-Pascal triangle (or Lucas triangle) read by rows.

Offset 0, canonical program `A029635.P14447282759070454877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029635 (n : ℕ) : ℤ :=
  A029635.P14447282759070454877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029653.P15740320911286042854

`A028326(n)-A097805(n)`
-/

namespace A029653.P15740320911286042854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A097805 n

end

end A029653.P15740320911286042854

noncomputable section

/-- A029653: Numbers in (2,1)-Pascal triangle (by row).

Offset 0, canonical program `A029653.P15740320911286042854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029653 (n : ℕ) : ℤ :=
  A029653.P15740320911286042854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030111.P731753675035142376

`A107230(n+1)/A061554(n+1)`
-/

namespace A030111.P731753675035142376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107230 (n + 1) : ℚ) / (A061554 (n + 1) : ℚ)

end

end A030111.P731753675035142376

noncomputable section

/-- A030111: Triangular array in which k-th entry in n-th row is C([ (n+k)/2 ],k) (1<=k<=n).

Offset 1, canonical program `A030111.P731753675035142376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030111 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030111.P731753675035142376.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031370.P9115598881235146625

`A060192(Δ[n²])`
-/

namespace A031370.P9115598881235146625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031370.P9115598881235146625

noncomputable section

/-- A031370: a(n) = prime(4n-1).

Offset 1, canonical program `A031370.P9115598881235146625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031370 (n : ℕ) : ℤ :=
  A031370.P9115598881235146625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034054.P15306153571953073182

`A199985(n+1)+A199985(n+1)-A034050(n+1)`
-/

namespace A034054.P15306153571953073182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199985 (n + 1) + (A199985 (n + 1) - A034050 (n + 1))

end

end A034054.P15306153571953073182

noncomputable section

/-- A034054: Numbers with multiplicative digital root value 7.

Offset 1, canonical program `A034054.P15306153571953073182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A034054 (n : ℕ) : ℤ :=
  A034054.P15306153571953073182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A034054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034959.P6743851652437007301

`2*A034957(n+1)`
-/

namespace A034959.P6743851652437007301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034957 (n + 1)

end

end A034959.P6743851652437007301

noncomputable section

/-- A034959: Divide even numbers into groups with prime(n) elements and add together.

Offset 1, canonical program `A034959.P6743851652437007301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034959 (n : ℕ) : ℤ :=
  A034959.P6743851652437007301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035146.P2109457745238657454

`A035179(A000265(n+1))`
-/

namespace A035146.P2109457745238657454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (A000265 (n + 1)).toNat

end

end A035146.P2109457745238657454

noncomputable section

/-- A035146: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -44.

Offset 1, canonical program `A035146.P2109457745238657454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035146 (n : ℕ) : ℤ :=
  A035146.P2109457745238657454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035183.P7352895301479017186

`A035170(n+1)*A035263(n+1)`
-/

namespace A035183.P7352895301479017186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (n + 1) * A035263 (n + 1)

end

end A035183.P7352895301479017186

noncomputable section

/-- A035183: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -5.

Offset 1, canonical program `A035183.P7352895301479017186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035183 (n : ℕ) : ℤ :=
  A035183.P7352895301479017186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037201.P6658727426378706638

`A001223(eq[1, A079054(n+2)²]+1)`
-/

namespace A037201.P6658727426378706638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A037201.P6658727426378706638

noncomputable section

/-- A037201: Differences between consecutive primes (A001223) but with repeats omitted.

Offset 1, canonical program `A037201.P6658727426378706638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037201 (n : ℕ) : ℤ :=
  A037201.P6658727426378706638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038512.P8659192709119909117

`∩[A008365(n+1), A038510(n+1)]`
-/

namespace A038512.P8659192709119909117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P8659192709119909117

noncomputable section

/-- A038512: Nonprime numbers with smallest prime factor >= 13.

Offset 1, canonical program `A038512.P8659192709119909117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5048 terms. -/
def A038512 (n : ℕ) : ℤ :=
  (A038512.P8659192709119909117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5048 terms. -/
def A038512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043747.P2830991943609161891

`record[A000265(A043748(n+1))]`
-/

namespace A043747.P2830991943609161891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043747.P2830991943609161891

noncomputable section

/-- A043747: Numbers n such that number of runs in the base 2 representation of n is congruent to 1 mod 8.

Offset 1, canonical program `A043747.P2830991943609161891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6117 terms. -/
def A043747 (n : ℕ) : ℤ :=
  A043747.P2830991943609161891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6117 terms. -/
def A043747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043764.P5681629137931592736

`record[A000265(A043729(n+1))]`
-/

namespace A043764.P5681629137931592736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043729 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043764.P5681629137931592736

noncomputable section

/-- A043764: Numbers n such that number of runs in the base 2 representation of n is congruent to 1 mod 10.

Offset 1, canonical program `A043764.P5681629137931592736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3588 terms. -/
def A043764 (n : ℕ) : ℤ :=
  A043764.P5681629137931592736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3588 terms. -/
def A043764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046389.P14226479357517666807

`filter[A046316(n+1), A359590(#)]`
-/

namespace A046389.P14226479357517666807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A046389.P14226479357517666807

noncomputable section

/-- A046389: Products of exactly three distinct odd primes.

Offset 1, canonical program `A046389.P14226479357517666807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7793 terms. -/
def A046389 (n : ℕ) : ℤ :=
  A046389.P14226479357517666807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7793 terms. -/
def A046389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049439.P3678346078929510445

`record[(n+1)*A336040(A000265(n+1))]`
-/

namespace A049439.P3678346078929510445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336040 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049439.P3678346078929510445

noncomputable section

/-- A049439: Numbers k such that the number of odd divisors of k is an odd divisor of k.

Offset 1, canonical program `A049439.P3678346078929510445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A049439 (n : ℕ) : ℤ :=
  A049439.P3678346078929510445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A049439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049643.P15143516310095013308

`A049641(2*n)`
-/

namespace A049643.P15143516310095013308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049641 (2 * n)

end

end A049643.P15143516310095013308

noncomputable section

/-- A049643: Number of fractions in Farey series of order n.

Offset 0, canonical program `A049643.P15143516310095013308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049643 (n : ℕ) : ℤ :=
  A049643.P15143516310095013308.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049646.P16318745313949960329

`∪[A049648(n), A049691(n)]`
-/

namespace A049646.P16318745313949960329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049646.P16318745313949960329

noncomputable section

/-- A049646: a(n) = T(n,n+1), array T given by A049639.

Offset 0, canonical program `A049646.P16318745313949960329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A049646 (n : ℕ) : ℤ :=
  (A049646.P16318745313949960329.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A049646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049647.P9788054326573138071

`A049648(floor(n/2))`
-/

namespace A049647.P9788054326573138071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049648 ⌊(n : ℚ) / 2⌋.toNat

end

end A049647.P9788054326573138071

noncomputable section

/-- A049647: a(n) = T(n,n+2), array T given by A049639.

Offset 0, canonical program `A049647.P9788054326573138071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A049647 (n : ℕ) : ℤ :=
  A049647.P9788054326573138071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A049647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050799.P9551313652604683105

`A050795(n+1)²-1`
-/

namespace A050799.P9551313652604683105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1) ^ 2 - 1

end

end A050799.P9551313652604683105

noncomputable section

/-- A050799: Values of n^2 - 1 resulting from A050795.

Offset 0, canonical program `A050799.P9551313652604683105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. -/
def A050799 (n : ℕ) : ℤ :=
  A050799.P9551313652604683105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. -/
def A050799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051634.P9175354426533819428

`A045319(eq[1, A079054(n+2)]+1)`
-/

namespace A051634.P9175354426533819428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A051634.P9175354426533819428

noncomputable section

/-- A051634: Strong primes: prime(k) > (prime(k-1) + prime(k+1))/2.

Offset 1, canonical program `A051634.P9175354426533819428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. -/
def A051634 (n : ℕ) : ℤ :=
  A051634.P9175354426533819428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. -/
def A051634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053178.P15316804422992662611

`record[A171435(10*n+11)]`
-/

namespace A053178.P15316804422992662611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (10 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053178.P15316804422992662611

noncomputable section

/-- A053178: Numbers ending in 1 which are not prime.

Offset 1, canonical program `A053178.P15316804422992662611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7613 terms. -/
def A053178 (n : ℕ) : ℤ :=
  A053178.P15316804422992662611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7613 terms. -/
def A053178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053181.P9598775767197643253

`record[A171435(10*n+9)]`
-/

namespace A053181.P9598775767197643253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (10 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053181.P9598775767197643253

noncomputable section

/-- A053181: Composite numbers ending in 9.

Offset 1, canonical program `A053181.P9598775767197643253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7610 terms. -/
def A053181 (n : ℕ) : ℤ :=
  A053181.P9598775767197643253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7610 terms. -/
def A053181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053575.P1121553310004174533

`A000265(A055034(n+1))`
-/

namespace A053575.P1121553310004174533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A055034 (n + 1)).toNat

end

end A053575.P1121553310004174533

noncomputable section

/-- A053575: Odd part of phi(n): a(n) = A000265(A000010(n)).

Offset 1, canonical program `A053575.P1121553310004174533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053575 (n : ℕ) : ℤ :=
  A053575.P1121553310004174533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054524.P18058734108985721974

`∑{d}[A127093(n+1), A007427(#)]`
-/

namespace A054524.P18058734108985721974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A054524.P18058734108985721974

noncomputable section

/-- A054524: Triangle T(n,k): T(n,k) = mu(k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1<=k<=n).

Offset 1, canonical program `A054524.P18058734108985721974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054524 (n : ℕ) : ℤ :=
  A054524.P18058734108985721974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054525.P5010349066179246070

`∑{d}[A126988(n+1), A007427(#)]`
-/

namespace A054525.P5010349066179246070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A054525.P5010349066179246070

noncomputable section

/-- A054525: Triangle T(n,k): T(n,k) = mu(n/k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054525.P5010349066179246070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054525 (n : ℕ) : ℤ :=
  A054525.P5010349066179246070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054664.P6000498737285423986

`∑{d}[n+1, A054660(#)*A154955((n+1)/#)]`
-/

namespace A054664.P6000498737285423986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054660 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054664.P6000498737285423986

noncomputable section

/-- A054664: Number of 4-ary Lyndon words of length n with trace 0 mod 4.

Offset 1, canonical program `A054664.P6000498737285423986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054664 (n : ℕ) : ℤ :=
  A054664.P6000498737285423986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055194.P16976081745941547580

`A005745(n+2)-Δ[A001752(n)]`
-/

namespace A055194.P16976081745941547580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005745 (n + 2) - (f1 (n + 1) - f1 n)

end

end A055194.P16976081745941547580

noncomputable section

/-- A055194: Number of 3 X n binary matrices with distinct rows, up to row and column permutation; (n,3)-hypergraphs (including empty hyperedge but excluding multiple hyperedges).

Offset 2, canonical program `A055194.P16976081745941547580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055194 (n : ℕ) : ℤ :=
  A055194.P16976081745941547580.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055195.P7061284061579471674

`Δ[A005745(n+1)-A008778(n)]`
-/

namespace A055195.P7061284061579471674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005745 (n + 1) - A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055195.P7061284061579471674

noncomputable section

/-- A055195: Number of 3-covers of an unlabeled n-set.

Offset 2, canonical program `A055195.P7061284061579471674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055195 (n : ℕ) : ℤ :=
  A055195.P7061284061579471674.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055248.P3086643025084055619

`A140513(n)-A102363(n)`
-/

namespace A055248.P3086643025084055619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A102363 n

end

end A055248.P3086643025084055619

noncomputable section

/-- A055248: Triangle of partial row sums of triangle A007318(n,m) (Pascal's triangle). Triangle A008949 read backwards. Riordan (1/(1-2x), x/(1-x)).

Offset 0, canonical program `A055248.P3086643025084055619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055248 (n : ℕ) : ℤ :=
  A055248.P3086643025084055619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056288.P10959423349450089845

`6*A056279(n+1)/(n+1)`
-/

namespace A056288.P10959423349450089845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A056279 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A056288.P10959423349450089845

noncomputable section

/-- A056288: Number of primitive (period n) n-bead necklaces with exactly three different colored beads.

Offset 1, canonical program `A056288.P10959423349450089845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A056288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056288.P10959423349450089845.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A056288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057023.P10924214539254793132

`A000265(A130290(n+1))`
-/

namespace A057023.P10924214539254793132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A130290 (n + 1)).toNat

end

end A057023.P10924214539254793132

noncomputable section

/-- A057023: Largest odd factor of (n-th prime-1); k when n-th prime is written as k*2^m+1 [with k odd].

Offset 1, canonical program `A057023.P10924214539254793132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057023 (n : ℕ) : ℤ :=
  A057023.P10924214539254793132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057024.P10079165471848434207

`A000265(A000040(n+1)+1)`
-/

namespace A057024.P10079165471848434207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000040 (n + 1) + 1).toNat

end

end A057024.P10079165471848434207

noncomputable section

/-- A057024: Largest odd factor of (n-th prime+1); k when n-th prime is written as k*2^m-1 [with k odd].

Offset 1, canonical program `A057024.P10079165471848434207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057024 (n : ℕ) : ℤ :=
  A057024.P10079165471848434207.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057963.P10501732461278672615

`A104712(n+2)*A126646(A002262(n))`
-/

namespace A057963.P10501732461278672615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) * A126646 (A002262 n).toNat

end

end A057963.P10501732461278672615

noncomputable section

/-- A057963: Triangle T(n,k) of number of minimal 2-covers of a labeled n-set that cover k points of that set uniquely (k=2,..,n).

Offset 2, canonical program `A057963.P10501732461278672615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057963 (n : ℕ) : ℤ :=
  A057963.P10501732461278672615.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059064.P3418469825707099881

`(A071028(n)*A249095(n))²`
-/

namespace A059064.P3418469825707099881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071028 n * A249095 n) ^ 2

end

end A059064.P3418469825707099881

noncomputable section

/-- A059064: Card-matching numbers (Dinner-Diner matching numbers).

Offset 0, canonical program `A059064.P3418469825707099881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8263 terms. -/
def A059064 (n : ℕ) : ℤ :=
  A059064.P3418469825707099881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8263 terms. -/
def A059064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059125.P6289864031527853917

`and(A000265((n+1)²), A014709(xor(55, n)+55))`
-/

namespace A059125.P6289864031527853917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 ((n + 1) ^ 2)) (A014709 (Nat.xor 55 n + 55))

end

end A059125.P6289864031527853917

noncomputable section

/-- A059125: A self-generated dragon-like folding sequence.

Offset 0, canonical program `A059125.P6289864031527853917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A059125 (n : ℕ) : ℤ :=
  A059125.P6289864031527853917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A059125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059366.P6772543631928925152

`A085881(n)/A086645(n)*A007318(n)`
-/

namespace A059366.P6772543631928925152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085881 n : ℚ) / (A086645 n : ℚ) * (A007318 n : ℚ)

end

end A059366.P6772543631928925152

noncomputable section

/-- A059366: Triangle T(m,s), m >= 0, 0 <= s <= m, arising in the computation of certain integrals.

Offset 0, canonical program `A059366.P6772543631928925152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1502 terms. -/
def A059366 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059366.P6772543631928925152.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1502 terms. -/
def A059366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059412.P1207478742608330448

`A000038(n)+Δ[A059413(A028310(n))]`
-/

namespace A059412.P1207478742608330448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059413 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A059412.P1207478742608330448

noncomputable section

/-- A059412: Number of distinct minimal unary DFA's with exactly n states.

Offset 1, canonical program `A059412.P1207478742608330448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059412 (n : ℕ) : ℤ :=
  A059412.P1207478742608330448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060540.P11282140095539086689

`A060538(n+1)/A166350(n+1)`
-/

namespace A060540.P11282140095539086689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060538 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A060540.P11282140095539086689

noncomputable section

/-- A060540: Square array read by antidiagonals downwards: T(n,k) = (n*k)!/(k!^n*n!), (n>=1, k>=1), the number of ways of dividing nk labeled items into n unlabeled boxes with k items in each box.

Offset 1, canonical program `A060540.P11282140095539086689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A060540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060540.P11282140095539086689.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A060540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060821.P14686981588061014072

`A059268(n)*A112227(n)`
-/

namespace A060821.P14686981588061014072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A112227 n

end

end A060821.P14686981588061014072

noncomputable section

/-- A060821: Triangle read by rows. T(n, k) are the coefficients of the Hermite polynomial of order n, for 0 <= k <= n.

Offset 0, canonical program `A060821.P14686981588061014072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5163 terms. -/
def A060821 (n : ℕ) : ℤ :=
  A060821.P14686981588061014072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5163 terms. -/
def A060821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061538.P7168853207487538997

`∏{d}[n+1, #]/A061537(n+1)`
-/

namespace A061538.P7168853207487538997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A061537 (n + 1) : ℚ)

end

end A061538.P7168853207487538997

noncomputable section

/-- A061538: Product of all divisors of n, divided by product of unitary divisors; or equivalently product of non-unitary divisors of n.

Offset 1, canonical program `A061538.P7168853207487538997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A061538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061538.P7168853207487538997.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A061538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062145.P16567727697507053806

`abs(A108086(n)*A209518(A007401(n+1)))`
-/

namespace A062145.P16567727697507053806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A209518 (A007401 (n + 1)).toNat|

end

end A062145.P16567727697507053806

noncomputable section

/-- A062145: Triangle read by rows: T(n, k) = [z^k] P(n, z) where P(n, z) = Sum_{k=0..n} binomial(n, k) * Pochhammer(n - k + c, k) * z^k / k! and c = 4.

Offset 0, canonical program `A062145.P16567727697507053806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A062145 (n : ℕ) : ℤ :=
  A062145.P16567727697507053806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A062145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062513.P5688483027392518661

`A061537(n+1)/A062509(n+1)`
-/

namespace A062513.P5688483027392518661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) : ℚ) / (A062509 (n + 1) : ℚ)

end

end A062513.P5688483027392518661

noncomputable section

/-- A062513: Product of unitary divisors of n is divided by n^(number of distinct prime factors).

Offset 1, canonical program `A062513.P5688483027392518661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062513.P5688483027392518661.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063468.P15347473074005438293

`∑[A092147(A000265(n+1))]`
-/

namespace A063468.P15347473074005438293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092147 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P15347473074005438293

noncomputable section

/-- A063468: Number of Pythagorean triples in the range [1..n], i.e., the number of integer solutions to x^2 + y^2 = z^2 with 1 <= x,y,z <= n.

Offset 1, canonical program `A063468.P15347473074005438293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063468 (n : ℕ) : ℤ :=
  A063468.P15347473074005438293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064363.P10112196850495095681

`∑[∑[3*n²+2]-1]-A064276(n)`
-/

namespace A064363.P10112196850495095681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064276 n

end

end A064363.P10112196850495095681

noncomputable section

/-- A064363: Number of 2 X 2 regular integer matrices with elements from {0,...,n} up to row and column permutation.

Offset 0, canonical program `A064363.P10112196850495095681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A064363 (n : ℕ) : ℤ :=
  A064363.P10112196850495095681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A064363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066325.P5855515398735635821

`A108086(n)*A123023(A025581(n))`
-/

namespace A066325.P5855515398735635821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A123023 (A025581 n).toNat

end

end A066325.P5855515398735635821

noncomputable section

/-- A066325: Coefficients of unitary Hermite polynomials He_n(x).

Offset 0, canonical program `A066325.P5855515398735635821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7027 terms. -/
def A066325 (n : ℕ) : ℤ :=
  A066325.P5855515398735635821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7027 terms. -/
def A066325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067391.P1924277869724551560

`ceil(A003418(n)/A014963(A073675(n+1)))`
-/

namespace A067391.P1924277869724551560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003418 n : ℚ) / (A014963 (A073675 (n + 1)).toNat : ℚ)⌉

end

end A067391.P1924277869724551560

noncomputable section

/-- A067391: a(n) is the least common multiple of numbers in {1,2,3,...,n-1} which do not divide n.

Offset 1, canonical program `A067391.P1924277869724551560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A067391 (n : ℕ) : ℤ :=
  A067391.P1924277869724551560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A067391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067466.P3837231332204403752

`p?[A100367(n+1)+1]`
-/

namespace A067466.P3837231332204403752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067466.P3837231332204403752

noncomputable section

/-- A067466: Primes p such that p-1 has 2 distinct prime factors.

Offset 1, canonical program `A067466.P3837231332204403752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A067466 (n : ℕ) : ℤ :=
  A067466.P3837231332204403752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A067466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067745.P11467522278281817014

`A000265(3*n+1)`
-/

namespace A067745.P11467522278281817014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (3 * n + 1)

end

end A067745.P11467522278281817014

noncomputable section

/-- A067745: Numerator of ((3*n - 2)/(n^(2*n - 1)*(2*n - 1)*4^(n - 1))).

Offset 1, canonical program `A067745.P11467522278281817014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067745 (n : ℕ) : ℤ :=
  A067745.P11467522278281817014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069088.P2737042877264536650

`∑{d}[n+1, A064950(#)*A347092((n+1)/#)]`
-/

namespace A069088.P2737042877264536650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064950 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069088.P2737042877264536650

noncomputable section

/-- A069088: a(n) = Sum_{d|n} core(d) where d are the divisors of n and where core(d) is the squarefree part of d: the smallest number such that d*core(d) is a square.

Offset 1, canonical program `A069088.P2737042877264536650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069088 (n : ℕ) : ℤ :=
  A069088.P2737042877264536650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069834.P1511118200551447947

`A000265(n+1)*A000265(n+2)`
-/

namespace A069834.P1511118200551447947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A000265 (n + 2)

end

end A069834.P1511118200551447947

noncomputable section

/-- A069834: a(n) = n-th reduced triangular number: n*(n+1)/{2^k} where 2^k is the largest power of 2 that divides product n*(n+1).

Offset 1, canonical program `A069834.P1511118200551447947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069834 (n : ℕ) : ℤ :=
  A069834.P1511118200551447947.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070176.P12484260426223726726

`A166687(∑[char[A166687(n+1)]]+1)-(n+1)`
-/

namespace A070176.P12484260426223726726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n + 1 : ℤ)

end

end A070176.P12484260426223726726

noncomputable section

/-- A070176: Let s(n) be smallest number >= n which is a sum of two squares (A001481); sequence gives s(n) - n.

Offset 0, canonical program `A070176.P12484260426223726726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070176 (n : ℕ) : ℤ :=
  A070176.P12484260426223726726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070802.P9494168428163023846

`A070801(n+2)-A070800(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070802.P9494168428163023846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2) - A070800 (n + 2)

end

end A070802.P9494168428163023846

noncomputable section

/-- A070802: a(n)=prevprime[sigma(n)]-nextprime[phi(n)]=A070801(n)-A070800(n).

Offset 2, canonical program `A070802.P9494168428163023846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070800, A070801, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070802 (n : ℕ) : ℤ :=
  A070802.P9494168428163023846.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070800, A070801, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070940.P9952911694472804508

`A070939(A000265(n+1))`
-/

namespace A070940.P9952911694472804508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000265 (n + 1)).toNat

end

end A070940.P9952911694472804508

noncomputable section

/-- A070940: Number of digits that must be counted from left to right to reach the last 1 in the binary representation of n.

Offset 1, canonical program `A070940.P9952911694472804508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070940 (n : ℕ) : ℤ :=
  A070940.P9952911694472804508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071026.P2916990353363770740

`A071027(A061579(n))`
-/

namespace A071026.P2916990353363770740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071027 (A061579 n).toNat

end

end A071026.P2916990353363770740

noncomputable section

/-- A071026: Triangle read by rows giving successive states of cellular automaton generated by "Rule 188".

Offset 0, canonical program `A071026.P2916990353363770740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A071026 (n : ℕ) : ℤ :=
  A071026.P2916990353363770740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A071026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071960.P16235659411092393557

`A064778(n+1)-(n+1)`
-/

namespace A071960.P16235659411092393557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064778 (n + 1) - (n + 1 : ℤ)

end

end A071960.P16235659411092393557

noncomputable section

/-- A071960: Largest k >= 0 such that Product_{i=0..k} (n+i) divides n!.

Offset 1, canonical program `A071960.P16235659411092393557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071960 (n : ℕ) : ℤ :=
  A071960.P16235659411092393557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072086.P8115136836013124802

`A201219(A072085(n+1))+A201219(n+1)`
-/

namespace A072086.P8115136836013124802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (A072085 (n + 1)).toNat + A201219 (n + 1)

end

end A072086.P8115136836013124802

noncomputable section

/-- A072086: Number of steps to reach 1, starting with n and applying the A072084-map repeatedly.

Offset 1, canonical program `A072086.P8115136836013124802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072086 (n : ℕ) : ℤ :=
  A072086.P8115136836013124802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072715.P8196709911917849842

`record[A255171(n)+a(n-1)]` with `a(0)=1`
-/

namespace A072715.P8196709911917849842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A255171 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P8196709911917849842

noncomputable section

/-- A072715: Record differences between n-th prime and 2n-th prime.

Offset 1, canonical program `A072715.P8196709911917849842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7551 terms. -/
def A072715 (n : ℕ) : ℤ :=
  A072715.P8196709911917849842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7551 terms. -/
def A072715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073060.P4927714666226081539

`A000265(A098350(n+1))`
-/

namespace A073060.P4927714666226081539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A098350 (n + 1)).toNat

end

end A073060.P4927714666226081539

noncomputable section

/-- A073060: Multiplication table for 1 and odd primes, read by antidiagonals.

Offset 0, canonical program `A073060.P4927714666226081539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8318 terms. -/
def A073060 (n : ℕ) : ℤ :=
  A073060.P4927714666226081539.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8318 terms. -/
def A073060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073182.P3909354792223158963

`A243987(A007948(n+1)+A000217(n))`
-/

namespace A073182.P3909354792223158963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A007948 (n + 1) + A000217 n).toNat

end

end A073182.P3909354792223158963

noncomputable section

/-- A073182: Number of divisors of n which are not greater than the cubefree kernel of n.

Offset 1, canonical program `A073182.P3909354792223158963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A073182 (n : ℕ) : ℤ :=
  A073182.P3909354792223158963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A073182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075301.P17074256541668552297

`A209268(n+1)-1`
-/

namespace A075301.P17074256541668552297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (n + 1) - 1

end

end A075301.P17074256541668552297

noncomputable section

/-- A075301: Inverse permutation to A075300.

Offset 0, canonical program `A075301.P17074256541668552297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075301 (n : ℕ) : ℤ :=
  A075301.P17074256541668552297.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075303.P7538692044462103921

`A249725(n+1)-1`
-/

namespace A075303.P7538692044462103921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249725 (n + 1) - 1

end

end A075303.P7538692044462103921

noncomputable section

/-- A075303: Inverse permutation to A075302.

Offset 0, canonical program `A075303.P7538692044462103921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075303 (n : ℕ) : ℤ :=
  A075303.P7538692044462103921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075513.P10550939009286874048

`A002260(n+1)^A003056(n)*A130595(n)`
-/

namespace A075513.P10550939009286874048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A003056 n : ℤ) * (A130595 n : ℚ)

end

end A075513.P10550939009286874048

noncomputable section

/-- A075513: Triangle read by rows. T(n, m) are the coefficients of Sidi polynomials.

Offset 1, canonical program `A075513.P10550939009286874048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A075513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075513.P10550939009286874048.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A075513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075928.P14773802074895312158

`A001969(A075926(n)+1)`
-/

namespace A075928.P14773802074895312158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A075926 n + 1).toNat

end

end A075928.P14773802074895312158

noncomputable section

/-- A075928: List of codewords in binary lexicode with Hamming distance 4 written as decimal numbers.

Offset 0, canonical program `A075928.P14773802074895312158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. -/
def A075928 (n : ℕ) : ℤ :=
  A075928.P14773802074895312158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. -/
def A075928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080159.P15846458939702770497

`A089627(n)/A128227(n)`
-/

namespace A080159.P15846458939702770497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A128227 n : ℚ)

end

end A080159.P15846458939702770497

noncomputable section

/-- A080159: Triangular array of ways of drawing k non-intersecting chords between n points on a circle; i.e., Motzkin polynomial coefficients.

Offset 0, canonical program `A080159.P15846458939702770497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080159 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080159.P15846458939702770497.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081530.P16704119050644518638

`A025529(n+1)+(n+1)*A027457(n+1)`
-/

namespace A081530.P16704119050644518638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) + (n + 1 : ℤ) * A027457 (n + 1)

end

end A081530.P16704119050644518638

noncomputable section

/-- A081530: a(n) = running sum of the first n harmonic numbers, multiplied by the LCM of 1..n.

Offset 1, canonical program `A081530.P16704119050644518638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A081530 (n : ℕ) : ℤ :=
  A081530.P16704119050644518638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A081530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082451.P7121663205053929701

`A035175(A000265(n+1))`
-/

namespace A082451.P7121663205053929701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (A000265 (n + 1)).toNat

end

end A082451.P7121663205053929701

noncomputable section

/-- A082451: Sum over divisors d of n of Kronecker symbol (-60, d).

Offset 1, canonical program `A082451.P7121663205053929701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082451 (n : ℕ) : ℤ :=
  A082451.P7121663205053929701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082908.P3033675240048837863

`2^floor(log2(A000265(n+1)))`
-/

namespace A082908.P3033675240048837863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (A000265 (n + 1)).toNat

end

end A082908.P3033675240048837863

noncomputable section

/-- A082908: Largest value of gcd(2^n, binomial(n,j)) with j=0..n-1; maximum value of largest power of 2 dividing binomial(n,j) in the n-th row of Pascal's triangle.

Offset 0, canonical program `A082908.P3033675240048837863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082908 (n : ℕ) : ℤ :=
  (A082908.P3033675240048837863.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083390.P13570770619546265520

`(A061346(n+1)-1)/2`
-/

namespace A083390.P13570770619546265520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061346 (n + 1) - 1 : ℚ) / 2

end

end A083390.P13570770619546265520

noncomputable section

/-- A083390: Integers m such that 2m + 1 divides lcm(1,3,5,...,2m - 1).

Offset 1, canonical program `A083390.P13570770619546265520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083390 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083390.P13570770619546265520.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084109.P4084513683396020648

`4*A020757(n+1)+1`
-/

namespace A084109.P4084513683396020648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020757 (n + 1) + 1

end

end A084109.P4084513683396020648

noncomputable section

/-- A084109: n is congruent to 1 (mod 4) and is not the sum of two squares.

Offset 1, canonical program `A084109.P4084513683396020648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084109 (n : ℕ) : ℤ :=
  A084109.P4084513683396020648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085002.P7391437187962694911

`A000035(A105774(n+1))`
-/

namespace A085002.P7391437187962694911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A105774 (n + 1)).toNat

end

end A085002.P7391437187962694911

noncomputable section

/-- A085002: a(n) = floor(phi*n) - 2*floor(phi*n/2) where phi is the golden ratio.

Offset 1, canonical program `A085002.P7391437187962694911`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085002 (n : ℕ) : ℤ :=
  A085002.P7391437187962694911.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085448.P15161237144101129775

`p?[A000265(A086096(n+1))]`
-/

namespace A085448.P15161237144101129775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A086096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085448.P15161237144101129775

noncomputable section

/-- A085448: Primes having a semiprime number of 1's in their binary representation.

Offset 1, canonical program `A085448.P15161237144101129775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2007 terms. -/
def A085448 (n : ℕ) : ℤ :=
  A085448.P15161237144101129775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2007 terms. -/
def A085448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086810.P1302734509594098919

`A088617(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A086810.P1302734509594098919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088617 (n - 1) - a (n - 1)

end

end A086810.P1302734509594098919

noncomputable section

/-- A086810: Triangle read by rows: T(n, k) = binomial(n-1, k-1) * binomial(n + k, k) / (n + 1) for k > 0 and T(n, 0) = 0^n.

Offset 0, canonical program `A086810.P1302734509594098919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9544 terms. -/
def A086810 (n : ℕ) : ℤ :=
  A086810.P1302734509594098919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9544 terms. -/
def A086810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089087.P15250469759594262875

`A130595(A112367(n))*A152818(A061579(n))`
-/

namespace A089087.P15250469759594262875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A112367 n).toNat * A152818 (A061579 n).toNat

end

end A089087.P15250469759594262875

noncomputable section

/-- A089087: Triangular array of coefficients multiplied by n! of polynomials in e. These give the expected number of trials needed for the sum of uniform random variables from the interval [0,1] to exceed n+1.

Offset 0, canonical program `A089087.P15250469759594262875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A089087 (n : ℕ) : ℤ :=
  A089087.P15250469759594262875.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A089087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091018.P2259398009619809425

`A056536(n+1)-1`
-/

namespace A091018.P2259398009619809425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (n + 1) - 1

end

end A091018.P2259398009619809425

noncomputable section

/-- A091018: Numbers in n-th upward diagonal of triangle T : 0; 1, 2; 3, 4, 5; 6, 7, 8, 9; ...

Offset 0, canonical program `A091018.P2259398009619809425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091018 (n : ℕ) : ℤ :=
  A091018.P2259398009619809425.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091917.P15315211965670174927

`A130595(n)-A073424(n)`
-/

namespace A091917.P15315211965670174927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n - A073424 n

end

end A091917.P15315211965670174927

noncomputable section

/-- A091917: Coefficient array of polynomials (z-1)^n-1.

Offset 0, canonical program `A091917.P15315211965670174927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091917 (n : ℕ) : ℤ :=
  A091917.P15315211965670174927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096963.P4682834259484350682

`A006519(n+1)^11*∑{d}[A000265(n+1), #^11]`
-/

namespace A096963.P4682834259484350682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) ^ 11 * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 11 : ℕ) : ℤ)

end

end A096963.P4682834259484350682

noncomputable section

/-- A096963: a(n) = Sum {0

Offset 1, canonical program `A096963.P4682834259484350682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096963 (n : ℕ) : ℤ :=
  A096963.P4682834259484350682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098094.P18419752277972636093

`val(A162990(n+1), (A002260(n+1)+1)²)`
-/

namespace A098094.P18419752277972636093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A162990 (n + 1)).toNat ((A002260 (n + 1) + 1) ^ 2).toNat

end

end A098094.P18419752277972636093

noncomputable section

/-- A098094: T(n,k) = greatest e such that k^e divides n!, 2<=k<=n (triangle read by rows).

Offset 2, canonical program `A098094.P18419752277972636093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098094 (n : ℕ) : ℤ :=
  (A098094.P18419752277972636093.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098365.P15550866543655754186

`∑[17*A256435(n+1)]`
-/

namespace A098365.P15550866543655754186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A256435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098365.P15550866543655754186

noncomputable section

/-- A098365: Sums of two squares and divisible by 17.

Offset 1, canonical program `A098365.P15550866543655754186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098365 (n : ℕ) : ℤ :=
  A098365.P15550866543655754186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098903.P17713323182960682569

`eq[A318833(A000265(n+1)), A318841(n+1)]+1`
-/

namespace A098903.P17713323182960682569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (A000265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A098903.P17713323182960682569

noncomputable section

/-- A098903: Odd numbers whose number of distinct prime factors is also odd.

Offset 1, canonical program `A098903.P17713323182960682569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098903 (n : ℕ) : ℤ :=
  (A098903.P17713323182960682569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098985.P11316927395599440814

`A000265(A098988(n))`
-/

namespace A098985.P11316927395599440814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A098988 n).toNat

end

end A098985.P11316927395599440814

noncomputable section

/-- A098985: Denominators in series expansion of log( Sum_{m=-oo,oo} q^(m^2) ).

Offset 0, canonical program `A098985.P11316927395599440814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098985 (n : ℕ) : ℤ :=
  A098985.P11316927395599440814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099544.P10584078921627320659

`A010872(A000265(n+1))`
-/

namespace A099544.P10584078921627320659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000265 (n + 1)).toNat

end

end A099544.P10584078921627320659

noncomputable section

/-- A099544: Odd part of n modulo 3.

Offset 1, canonical program `A099544.P10584078921627320659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099544 (n : ℕ) : ℤ :=
  A099544.P10584078921627320659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099545.P3555190586653278803

`A010873(A000265(n+1))`
-/

namespace A099545.P3555190586653278803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000265 (n + 1)).toNat

end

end A099545.P3555190586653278803

noncomputable section

/-- A099545: Odd part of n, modulo 4.

Offset 1, canonical program `A099545.P3555190586653278803`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099545 (n : ℕ) : ℤ :=
  A099545.P3555190586653278803.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099545.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099546.P17212228547681319757

`A010874(A000265(n+1))`
-/

namespace A099546.P17212228547681319757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A000265 (n + 1)).toNat

end

end A099546.P17212228547681319757

noncomputable section

/-- A099546: Odd part of n modulo 5.

Offset 1, canonical program `A099546.P17212228547681319757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099546 (n : ℕ) : ℤ :=
  A099546.P17212228547681319757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099547.P15449459496181192209

`A010875(A000265(n+1))`
-/

namespace A099547.P15449459496181192209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000265 (n + 1)).toNat

end

end A099547.P15449459496181192209

noncomputable section

/-- A099547: Odd part of n modulo 6.

Offset 1, canonical program `A099547.P15449459496181192209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099547 (n : ℕ) : ℤ :=
  A099547.P15449459496181192209.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099547.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099548.P17170210059057855625

`A010876(A000265(n+1))`
-/

namespace A099548.P17170210059057855625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A000265 (n + 1)).toNat

end

end A099548.P17170210059057855625

noncomputable section

/-- A099548: Odd part of n modulo 7.

Offset 1, canonical program `A099548.P17170210059057855625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099548 (n : ℕ) : ℤ :=
  A099548.P17170210059057855625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099549.P4849231743765954176

`A010877(A000265(n+1))`
-/

namespace A099549.P4849231743765954176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A000265 (n + 1)).toNat

end

end A099549.P4849231743765954176

noncomputable section

/-- A099549: Odd part of n modulo 8.

Offset 1, canonical program `A099549.P4849231743765954176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099549 (n : ℕ) : ℤ :=
  A099549.P4849231743765954176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099550.P6751490665142139537

`A010878(A000265(n+1))`
-/

namespace A099550.P6751490665142139537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A000265 (n + 1)).toNat

end

end A099550.P6751490665142139537

noncomputable section

/-- A099550: Odd part of n modulo 9.

Offset 1, canonical program `A099550.P6751490665142139537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099550 (n : ℕ) : ℤ :=
  A099550.P6751490665142139537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099551.P9886420675140835487

`A010879(A000265(n+1))`
-/

namespace A099551.P9886420675140835487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000265 (n + 1)).toNat

end

end A099551.P9886420675140835487

noncomputable section

/-- A099551: Odd part of n modulo 10. Final digit of A000265(n).

Offset 1, canonical program `A099551.P9886420675140835487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099551 (n : ℕ) : ℤ :=
  A099551.P9886420675140835487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100375.P644983775564528830

`A000265(A001223(n+1))`
-/

namespace A100375.P644983775564528830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001223 (n + 1)).toNat

end

end A100375.P644983775564528830

noncomputable section

/-- A100375: a(n) is the n-th consecutive prime difference divided by the largest power of 2 which divides it.

Offset 1, canonical program `A100375.P644983775564528830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100375 (n : ℕ) : ℤ :=
  A100375.P644983775564528830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104001.P9549142774925648266

`A137268(A014132(n+1))`
-/

namespace A104001.P9549142774925648266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137268 (A014132 (n + 1)).toNat

end

end A104001.P9549142774925648266

noncomputable section

/-- A104001: Triangle T(n,k) read by rows: number of permutations in S_n avoiding all k-length patterns starting with fixed m, 2

Offset 3, canonical program `A104001.P9549142774925648266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1176 terms. -/
def A104001 (n : ℕ) : ℤ :=
  A104001.P9549142774925648266.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1176 terms. -/
def A104001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106464.P950177952330348354

`A006579(n+3)-A060992(n+3)`
-/

namespace A106464.P950177952330348354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 3) - A060992 (n + 3)

end

end A106464.P950177952330348354

noncomputable section

/-- A106464: Antidiagonal sums of number triangle A003989.

Offset 0, canonical program `A106464.P950177952330348354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A106464 (n : ℕ) : ℤ :=
  A106464.P950177952330348354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A106464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106467.P10514879498467039191

`A087960(A025581(n))*A106468(n)`
-/

namespace A106467.P10514879498467039191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A025581 n).toNat * A106468 n

end

end A106467.P10514879498467039191

noncomputable section

/-- A106467: Inverse of number triangle A106465.

Offset 0, canonical program `A106467.P10514879498467039191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106467 (n : ℕ) : ℤ :=
  A106467.P10514879498467039191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106474.P7463800032369804084

`A006579(4*n+4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A106474.P7463800032369804084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006579 (4 * n + 4) : ℚ) / 4

end

end A106474.P7463800032369804084

noncomputable section

/-- A106474: a(n) = A006579(4n+4)/4.

Offset 0, canonical program `A106474.P7463800032369804084`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106474.P7463800032369804084.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110751.P9837249178197633257

`A059995(A239019(n+1))`
-/

namespace A110751.P9837249178197633257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A239019 (n + 1)).toNat

end

end A110751.P9837249178197633257

noncomputable section

/-- A110751: Numbers n such that n and its digital reversal have the same prime divisors.

Offset 1, canonical program `A110751.P9837249178197633257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A110751 (n : ℕ) : ℤ :=
  A110751.P9837249178197633257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A110751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113260.P8698562919777995260

`2*A109091(n+1)-A109091(A000265(n+1))`
-/

namespace A113260.P8698562919777995260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109091 (n + 1) - A109091 (A000265 (n + 1)).toNat

end

end A113260.P8698562919777995260

noncomputable section

/-- A113260: Expansion of (-1 + psi(q)^5/psi(q^5) - 25q^2 psi(q)*psi(q^5)^3)/5 in powers of q where psi(q) is a Ramanujan theta function.

Offset 1, canonical program `A113260.P8698562919777995260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113260 (n : ℕ) : ℤ :=
  A113260.P8698562919777995260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114216.P17343794217474854680

`A000265(a(n-1)+sqrt(A280076(n+1)))` with `a(0)=0`
-/

namespace A114216.P17343794217474854680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000265 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (A280076 (n + 1) : ℝ))).toNat

end

end A114216.P17343794217474854680

noncomputable section

/-- A114216: a(0)=0; thereafter a(n) = largest odd divisor of a(n-1) + prime(n).

Offset 0, canonical program `A114216.P17343794217474854680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A114216 (n : ℕ) : ℤ :=
  A114216.P17343794217474854680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A114216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114990.P7973052791540898501

`a(n-2)+A000265(a(n-1))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114990.P7973052791540898501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A000265 (a (n - 1)).toNat

end

end A114990.P7973052791540898501

noncomputable section

/-- A114990: a(n) = a(n-2) + A000265(a(n-1)), a(0)=0, a(1)=1.

Offset 0, canonical program `A114990.P7973052791540898501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114990 (n : ℕ) : ℤ :=
  A114990.P7973052791540898501.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115079.P7940789343860326763

`A100995(A137734(A126988(n+1)²))`
-/

namespace A115079.P7940789343860326763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A137734 (A126988 (n + 1) ^ 2).toNat).toNat

end

end A115079.P7940789343860326763

noncomputable section

/-- A115079: Matrix log of triangle A051731, where nonzero elements in the matrix log are all unit fractions and represented here by the denominators, with zero elements remaining zero.

Offset 1, canonical program `A115079.P7940789343860326763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115079 (n : ℕ) : ℤ :=
  A115079.P7940789343860326763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116526.P4327458489617124128

`∑[(A105321(n)-A001316(n))^3]`
-/

namespace A116526.P4327458489617124128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105321 n - A001316 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116526.P4327458489617124128

noncomputable section

/-- A116526: a(0)=1, a(1)=1, a(n) = 9*a(n/2) for even n >= 2, and a(n) = 8*a((n-1)/2) + a((n+1)/2) for odd n >= 3.

Offset 0, canonical program `A116526.P4327458489617124128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116526 (n : ℕ) : ℤ :=
  A116526.P4327458489617124128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116881.P11536297269579421476

`A119259(n)+n*A064062(n)`
-/

namespace A116881.P11536297269579421476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119259 n + (n : ℤ) * A064062 n

end

end A116881.P11536297269579421476

noncomputable section

/-- A116881: Row sums of triangle A116880 (generalized Catalan C(1,2)).

Offset 0, canonical program `A116881.P11536297269579421476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A116881 (n : ℕ) : ℤ :=
  A116881.P11536297269579421476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A116881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118759.P5411898151704407720

`A056279(A138902(n))+n`
-/

namespace A118759.P5411898151704407720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056279 (A138902 n).toNat + (n : ℤ)

end

end A118759.P5411898151704407720

noncomputable section

/-- A118759: A118757(A118757(n)).

Offset 0, canonical program `A118759.P5411898151704407720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A118759 (n : ℕ) : ℤ :=
  A118759.P5411898151704407720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A118759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119674.P4521212800816503129

`A000265(n+1)+A007814(n+1)`
-/

namespace A119674.P4521212800816503129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + A007814 (n + 1)

end

end A119674.P4521212800816503129

noncomputable section

/-- A119674: Number of states of the minimal deterministic finite automaton that accepts binary strings that represent numbers that are divisible by n.

Offset 1, canonical program `A119674.P4521212800816503129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119674 (n : ℕ) : ℤ :=
  A119674.P4521212800816503129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121387.P5734124028624995740

`filter[A108181(n+1), A353814(#)]`
-/

namespace A121387.P5734124028624995740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A121387.P5734124028624995740

noncomputable section

/-- A121387: Semiprimes p*q with p and q primes of the form 4k+1 (A002144).

Offset 1, canonical program `A121387.P5734124028624995740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. -/
def A121387 (n : ℕ) : ℤ :=
  A121387.P5734124028624995740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. -/
def A121387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121763.P355992002445267932

`ceil(A121762(n+1)/6)`
-/

namespace A121763.P355992002445267932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121762 (n + 1) : ℚ) / 6⌉

end

end A121763.P355992002445267932

noncomputable section

/-- A121763: Numbers k such that 6*k-1 is prime while 6*k+1 is composite.

Offset 1, canonical program `A121763.P355992002445267932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121763 (n : ℕ) : ℤ :=
  A121763.P355992002445267932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121765.P17102494836504524144

`floor(A121764(n+1)/6)`
-/

namespace A121765.P17102494836504524144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121764 (n + 1) : ℚ) / 6⌋

end

end A121765.P17102494836504524144

noncomputable section

/-- A121765: Numbers k such that 6*k-1 is composite while 6*k+1 is prime.

Offset 1, canonical program `A121765.P17102494836504524144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121765 (n : ℕ) : ℤ :=
  A121765.P17102494836504524144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122493.P2767452462493321461

`eq[A127093(n*A010056(n)+1), A127093(n+1)]`
-/

namespace A122493.P2767452462493321461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 ((n : ℤ) * A010056 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122493.P2767452462493321461

noncomputable section

/-- A122493: Union of Fibonacci and triangular numbers.

Offset 0, canonical program `A122493.P2767452462493321461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A122493 (n : ℕ) : ℤ :=
  (A122493.P2767452462493321461.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A122493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123254.P15110660424745461485

`A090192(A003056(n))*A130595(n)`
-/

namespace A123254.P15110660424745461485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A003056 n).toNat * A130595 n

end

end A123254.P15110660424745461485

noncomputable section

/-- A123254: Triangle T(n,k), 0<=k<=n, read by rows given by [ -1,1,-1,1,-1,1,-1,1,-1,1,...] DELTA [1,-1,1,-1,1,-1,1,-1,1,-1,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A123254.P15110660424745461485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123254 (n : ℕ) : ℤ :=
  A123254.P15110660424745461485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124138.P10766264855078818360

`A000265(3*(a(n-1)+a(n-2))/2+1)` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124138.P10766264855078818360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000265 (SequenceMachineLib.roundAway (3 * ((a (n - 1) + a (n - 2) : ℚ) / 2) + 1)).toNat

end

end A124138.P10766264855078818360

noncomputable section

/-- A124138: a(n)= A000265(3*(a(n-1)+a(n-2))/2 +1) starting at a(1)=1, a(2)=3.

Offset 1, canonical program `A124138.P10766264855078818360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124138 (n : ℕ) : ℤ :=
  A124138.P10766264855078818360.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124139.P6227741509324842729

`A000265(3*(a(n-1)+a(n-2))/2+1)` with `a(0)=1, a(1)=11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124139.P6227741509324842729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A000265 (SequenceMachineLib.roundAway (3 * ((a (n - 1) + a (n - 2) : ℚ) / 2) + 1)).toNat

end

end A124139.P6227741509324842729

noncomputable section

/-- A124139: a(n) = A000265(3*(a(n-1) + a(n-2))/2 + 1) starting at a(1)=1, a(2)=11.

Offset 1, canonical program `A124139.P6227741509324842729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124139 (n : ℕ) : ℤ :=
  A124139.P6227741509324842729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124428.P14380578597492988547

`A152198(comp[(n+1)²])*A152198(n)`
-/

namespace A124428.P14380578597492988547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152198 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A152198 n

end

end A124428.P14380578597492988547

noncomputable section

/-- A124428: Triangle, read by rows: T(n,k) = binomial(floor(n/2),k)*binomial(floor((n+1)/2),k).

Offset 0, canonical program `A124428.P14380578597492988547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9901 terms. -/
def A124428 (n : ℕ) : ℤ :=
  A124428.P14380578597492988547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9901 terms. -/
def A124428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124736.P895631553598970285

`A124737(n)+1`
-/

namespace A124736.P895631553598970285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 n + 1

end

end A124736.P895631553598970285

noncomputable section

/-- A124736: Table where row n has k C(n,k-1) times.

Offset 0, canonical program `A124736.P895631553598970285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124736 (n : ℕ) : ℤ :=
  A124736.P895631553598970285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125217.P12158118302977097912

`eq[1, A125203(n+1)]+1`
-/

namespace A125217.P12158118302977097912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125217.P12158118302977097912

noncomputable section

/-- A125217: Numbers that can be written uniquely as 4*x*y-x-y with 1<=x<=y.

Offset 1, canonical program `A125217.P12158118302977097912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A125217 (n : ℕ) : ℤ :=
  (A125217.P12158118302977097912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A125217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125218.P3417562193377331111

`lt[1, A125203(n+1)]+1`
-/

namespace A125218.P3417562193377331111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A125218.P3417562193377331111

noncomputable section

/-- A125218: Numbers having at least two representations as 4*x*y-x-y with 1<=x<=y.

Offset 1, canonical program `A125218.P3417562193377331111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3223 terms. -/
def A125218 (n : ℕ) : ℤ :=
  (A125218.P3417562193377331111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3223 terms. -/
def A125218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125866.P959070150198838405

`record[A000265(A051913(n+1))]`
-/

namespace A125866.P959070150198838405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A051913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125866.P959070150198838405

noncomputable section

/-- A125866: Odd numbers k such that cos(2*Pi/k) is an algebraic number of a 3-smooth degree, but not 2-smooth.

Offset 1, canonical program `A125866.P959070150198838405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A125866 (n : ℕ) : ℤ :=
  A125866.P959070150198838405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A125866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127197.P14762613204547967732

`A000265(∑[A010051(n+2)])`
-/

namespace A127197.P14762613204547967732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127197.P14762613204547967732

noncomputable section

/-- A127197: a(n) = numerator( pi(n)/2^n ).

Offset 2, canonical program `A127197.P14762613204547967732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127197 (n : ℕ) : ℤ :=
  A127197.P14762613204547967732.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127236.P7586648182986212788

`A174032(n)%2`
-/

namespace A127236.P7586648182986212788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174032 n) 2

end

end A127236.P7586648182986212788

noncomputable section

/-- A127236: A Thue-Morse binomial triangle.

Offset 0, canonical program `A127236.P7586648182986212788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A127236 (n : ℕ) : ℤ :=
  A127236.P7586648182986212788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A127236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129138.P16114292618221871354

`A243987(∑[n]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A129138.P16114292618221871354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A129138.P16114292618221871354

noncomputable section

/-- A129138: a(n) = number of positive divisors of n that are <= phi(n), where phi(n) = A000010(n).

Offset 1, canonical program `A129138.P16114292618221871354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129138 (n : ℕ) : ℤ :=
  A129138.P16114292618221871354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129558.P8312074485780016787

`A007431(2*lcm(2, A126988(n+1)))`
-/

namespace A129558.P8312074485780016787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (2 * Int.lcm 2 (A126988 (n + 1)))

end

end A129558.P8312074485780016787

noncomputable section

/-- A129558: A054523 * A129360.

Offset 1, canonical program `A129558.P8312074485780016787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129558 (n : ℕ) : ℤ :=
  A129558.P8312074485780016787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130298.P4056533622046080156

`A130302(n+1)+A003056(n)*A130296(n+1)`
-/

namespace A130298.P4056533622046080156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1) + A003056 n * A130296 (n + 1)

end

end A130298.P4056533622046080156

noncomputable section

/-- A130298: A051340 * A130296.

Offset 1, canonical program `A130298.P4056533622046080156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130298 (n : ℕ) : ℤ :=
  A130298.P4056533622046080156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130313.P12971682947885630253

`ceil(A242114(n+1)/2)`
-/

namespace A130313.P12971682947885630253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A242114 (n + 1) : ℚ) / 2⌉

end

end A130313.P12971682947885630253

noncomputable section

/-- A130313: A000012 * A054523.

Offset 1, canonical program `A130313.P12971682947885630253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130313 (n : ℕ) : ℤ :=
  A130313.P12971682947885630253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131987.P10026985928661314180

`(A000265(comp[A000225(n)]+1)-1)/2`
-/

namespace A131987.P10026985928661314180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - 1 : ℚ) / 2

end

end A131987.P10026985928661314180

noncomputable section

/-- A131987: Representation of a dense para-sequence.

Offset 1, canonical program `A131987.P10026985928661314180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131987 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131987.P10026985928661314180.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132248.P9030196148284508513

`∩[A121764(n+1), A128470(n)]`
-/

namespace A132248.P9030196148284508513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P9030196148284508513

noncomputable section

/-- A132248: Isolated primes congruent to 1 (mod 30).

Offset 1, canonical program `A132248.P9030196148284508513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132248 (n : ℕ) : ℤ :=
  (A132248.P9030196148284508513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132252.P10549027381406986059

`∩[30*n+19, A121764(n+1)]`
-/

namespace A132252.P10549027381406986059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P10549027381406986059

noncomputable section

/-- A132252: Isolated primes congruent to 19 (mod 30).

Offset 1, canonical program `A132252.P10549027381406986059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132252 (n : ℕ) : ℤ :=
  (A132252.P10549027381406986059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132740.P14773751524268080553

`A000265((n+1)/A060904(n+1))`
-/

namespace A132740.P14773751524268080553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A060904 (n + 1) : ℚ))).toNat

end

end A132740.P14773751524268080553

noncomputable section

/-- A132740: Largest divisor of n coprime to 10.

Offset 1, canonical program `A132740.P14773751524268080553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132740 (n : ℕ) : ℤ :=
  A132740.P14773751524268080553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133562.P2922805213875527912

`A131686(n+3)+A069484(n+1)`
-/

namespace A133562.P2922805213875527912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (n + 3) + A069484 (n + 1)

end

end A133562.P2922805213875527912

noncomputable section

/-- A133562: Numbers which are the sum of the squares of seven consecutive primes.

Offset 1, canonical program `A133562.P2922805213875527912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A133562 (n : ℕ) : ℤ :=
  A133562.P2922805213875527912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A133562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133639.P11234321483746663322

`∑{d}[n+1, A326415(#)*A365210((n+1)/#)]`
-/

namespace A133639.P11234321483746663322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A365210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133639.P11234321483746663322

noncomputable section

/-- A133639: Mobius transform of b(n) where b(8n + 1) = A080995(n).

Offset 1, canonical program `A133639.P11234321483746663322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133639 (n : ℕ) : ℤ :=
  A133639.P11234321483746663322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138483.P1315469439001257354

`(-1)^n*A110712(n+1)`
-/

namespace A138483.P1315469439001257354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A110712 (n + 1)

end

end A138483.P1315469439001257354

noncomputable section

/-- A138483: Expansion of (phi(q)^3 * phi(q^5) - phi(q) * phi(q^5)^3) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A138483.P1315469439001257354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138483 (n : ℕ) : ℤ :=
  A138483.P1315469439001257354.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138558.P8696964352118287343

`(-1)^n*A111580(n+1)`
-/

namespace A138558.P8696964352118287343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A111580 (n + 1)

end

end A138558.P8696964352118287343

noncomputable section

/-- A138558: Expansion of eta(q^2)^7 * eta(q^5)^2 * eta(q^20)^2 / (eta(q)^2 * eta(q^4)^2 * eta(q^10)^3) in powers of q.

Offset 1, canonical program `A138558.P8696964352118287343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138558 (n : ℕ) : ℤ :=
  A138558.P8696964352118287343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139391.P6009705185577113877

`A000265(A014682(n+1))`
-/

namespace A139391.P6009705185577113877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014682 (n + 1)).toNat

end

end A139391.P6009705185577113877

noncomputable section

/-- A139391: Next odd term in Collatz trajectory with starting value n.

Offset 1, canonical program `A139391.P6009705185577113877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139391 (n : ℕ) : ℤ :=
  A139391.P6009705185577113877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139988.P11809578982701821905

`∩[A139844(n+1), A139858(n+1)]`
-/

namespace A139988.P11809578982701821905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P11809578982701821905

noncomputable section

/-- A139988: Primes of the form 8x^2+105y^2.

Offset 1, canonical program `A139988.P11809578982701821905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A139988 (n : ℕ) : ℤ :=
  (A139988.P11809578982701821905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A139988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139995.P6653243888125786699

`∩[A139846(n+1), A139879(n+1)]`
-/

namespace A139995.P6653243888125786699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P6653243888125786699

noncomputable section

/-- A139995: Primes of the form 24x^2+24xy+41y^2.

Offset 1, canonical program `A139995.P6653243888125786699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4973 terms. -/
def A139995 (n : ℕ) : ℤ :=
  (A139995.P6653243888125786699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4973 terms. -/
def A139995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140213.P4834195896681918348

`∏{d}[A000265(n+1), A000265(A078689(#))]`
-/

namespace A140213.P4834195896681918348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000265 (A078689 d).toNat

end

end A140213.P4834195896681918348

noncomputable section

/-- A140213: Product_{h|n and h mod 6 = 1} h; product of divisors of n of the form 6*k + 1.

Offset 1, canonical program `A140213.P4834195896681918348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140213 (n : ℕ) : ℤ :=
  A140213.P4834195896681918348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140214.P6582779710072761783

`∏{d}[A000265(n+1), A093178(A143097(#))]`
-/

namespace A140214.P6582779710072761783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A093178 (A143097 d).toNat

end

end A140214.P6582779710072761783

noncomputable section

/-- A140214: a(n) = Product_{h == 5 (mod 6) and h|n} h.

Offset 1, canonical program `A140214.P6582779710072761783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140214 (n : ℕ) : ℤ :=
  A140214.P6582779710072761783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140370.P11945933179841790018

`record[A171435(A306285(2*(n+1)))]`
-/

namespace A140370.P11945933179841790018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A306285 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140370.P11945933179841790018

noncomputable section

/-- A140370: Composites of the form 26k + 21.

Offset 1, canonical program `A140370.P11945933179841790018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. -/
def A140370 (n : ℕ) : ℤ :=
  A140370.P11945933179841790018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. -/
def A140370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140376.P14382105918377167922

`record[A171435(A190991(2*n))]`
-/

namespace A140376.P14382105918377167922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A190991 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P14382105918377167922

noncomputable section

/-- A140376: Nonprimes of the form 26n+1.

Offset 1, canonical program `A140376.P14382105918377167922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3049 terms. -/
def A140376 (n : ℕ) : ℤ :=
  A140376.P14382105918377167922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3049 terms. -/
def A140376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140379.P6055374210974957999

`record[A171435(2*7*n+1)]`
-/

namespace A140379.P6055374210974957999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (7 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140379.P6055374210974957999

noncomputable section

/-- A140379: Nonprimes of the form 14k+1.

Offset 1, canonical program `A140379.P6055374210974957999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A140379 (n : ℕ) : ℤ :=
  A140379.P6055374210974957999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A140379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140380.P10488376729537076416

`record[A171435(A017029(n)+41)]`
-/

namespace A140380.P10488376729537076416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017029 n + 41).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140380.P10488376729537076416

noncomputable section

/-- A140380: Composites of the form 14k + 3.

Offset 1, canonical program `A140380.P10488376729537076416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. -/
def A140380 (n : ℕ) : ℤ :=
  A140380.P10488376729537076416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. -/
def A140380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140381.P12508315804219335173

`record[A171435(A017005(2*n+1))]`
-/

namespace A140381.P12508315804219335173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017005 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140381.P12508315804219335173

noncomputable section

/-- A140381: Composites of the form 14k + 9.

Offset 1, canonical program `A140381.P12508315804219335173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A140381 (n : ℕ) : ℤ :=
  A140381.P12508315804219335173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A140381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140503.P7282706836659793134

`A059268(n)-2*A140944(n)`
-/

namespace A140503.P7282706836659793134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - 2 * A140944 n

end

end A140503.P7282706836659793134

noncomputable section

/-- A140503: Triangle T(d,n) read by rows, the n-th term of the d-th differences of the Jacobsthal sequence A001045.

Offset 1, canonical program `A140503.P7282706836659793134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A140503 (n : ℕ) : ℤ :=
  A140503.P7282706836659793134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A140503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140579.P2503757338754458893

`floor(A014963(A002260(n+1))/A038207(n))`
-/

namespace A140579.P2503757338754458893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (A002260 (n + 1)).toNat : ℚ) / (A038207 n : ℚ)⌋

end

end A140579.P2503757338754458893

noncomputable section

/-- A140579: Triangle read by rows, A014963(n) * 0^(n-k); 1<=k<=n.

Offset 1, canonical program `A140579.P2503757338754458893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140579 (n : ℕ) : ℤ :=
  A140579.P2503757338754458893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141132.P17603726109172318759

`A141217(A008578(n+1))`
-/

namespace A141132.P17603726109172318759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A008578 (n + 1)).toNat

end

end A141132.P17603726109172318759

noncomputable section

/-- A141132: a(n) = prime(prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1) - 1.

Offset 0, canonical program `A141132.P17603726109172318759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141132 (n : ℕ) : ℤ :=
  A141132.P17603726109172318759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141139.P7707836835325056175

`A141217(A006093(n+1))`
-/

namespace A141139.P7707836835325056175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A006093 (n + 1)).toNat

end

end A141139.P7707836835325056175

noncomputable section

/-- A141139: a(n) = f(f(f(f(f(n))))), where f(n) is prime(n)-1.

Offset 1, canonical program `A141139.P7707836835325056175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141139 (n : ℕ) : ℤ :=
  A141139.P7707836835325056175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143267.P18070143520200093026

`A002260(n+1)*A106476(A057944(n))`
-/

namespace A143267.P18070143520200093026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A106476 (A057944 n).toNat

end

end A143267.P18070143520200093026

noncomputable section

/-- A143267: Triangle read by rows, A130207 * A000012 * A127648.

Offset 1, canonical program `A143267.P18070143520200093026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143267 (n : ℕ) : ℤ :=
  A143267.P18070143520200093026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145738.P10793220673153802030

`A145609(n+1)/A145737(n+1)²`
-/

namespace A145738.P10793220673153802030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145609 (n + 1) : ℚ) / (A145737 (n + 1) ^ 2 : ℚ)

end

end A145738.P10793220673153802030

noncomputable section

/-- A145738: a(n) = squarefree part of A145609(n).

Offset 1, canonical program `A145738.P10793220673153802030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145738 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145738.P10793220673153802030.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152854.P5074765278471973526

`∪[A153086(n+1), A153238(n+1)]`
-/

namespace A152854.P5074765278471973526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152854.P5074765278471973526

noncomputable section

/-- A152854: Numbers n such that either 2n+3 is not prime or 4n+7 is not prime.

Offset 1, canonical program `A152854.P5074765278471973526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152854 (n : ℕ) : ℤ :=
  (A152854.P5074765278471973526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155919.P287135877866266634

`A000265(n+1)*A090168(A006519(n+1))`
-/

namespace A155919.P287135877866266634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A090168 (A006519 (n + 1)).toNat

end

end A155919.P287135877866266634

noncomputable section

/-- A155919: Number of squared hypotenuses mod n in three dimensions.

Offset 1, canonical program `A155919.P287135877866266634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155919 (n : ℕ) : ℤ :=
  A155919.P287135877866266634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158725.P16285587348764817752

`∩[A038510(n+1), A160542(n+1)]`
-/

namespace A158725.P16285587348764817752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158725.P16285587348764817752

noncomputable section

/-- A158725: Non-repdigit composite numbers not divisible by 2, 3, 5 or 11.

Offset 1, canonical program `A158725.P16285587348764817752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1336 terms. -/
def A158725 (n : ℕ) : ℤ :=
  (A158725.P16285587348764817752.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1336 terms. -/
def A158725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160951.P2640926693166453273

`p?[A105760(n+1)-574]`
-/

namespace A160951.P2640926693166453273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 574

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160951.P2640926693166453273

noncomputable section

/-- A160951: Primes p such that 2p + 1155 is prime.

Offset 1, canonical program `A160951.P2640926693166453273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A160951 (n : ℕ) : ℤ :=
  A160951.P2640926693166453273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A160951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161150.P4576201331525909670

`A000265(n+1)*A006519(n+2)`
-/

namespace A161150.P4576201331525909670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A006519 (n + 2)

end

end A161150.P4576201331525909670

noncomputable section

/-- A161150: a(n) = (largest odd divisor of n)*(largest power of 2 dividing (n+1)).

Offset 1, canonical program `A161150.P4576201331525909670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161150 (n : ℕ) : ℤ :=
  A161150.P4576201331525909670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161151.P6562315491543427

`A000265(n+2)*A006519(n+1)`
-/

namespace A161151.P6562315491543427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) * A006519 (n + 1)

end

end A161151.P6562315491543427

noncomputable section

/-- A161151: a(n) = (largest odd divisor of (n+1))*(largest power of 2 dividing n).

Offset 1, canonical program `A161151.P6562315491543427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161151 (n : ℕ) : ℤ :=
  A161151.P6562315491543427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161946.P16073686571463776498

`A000265(A064971(n+1)/(n+1))`
-/

namespace A161946.P16073686571463776498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A064971 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A161946.P16073686571463776498

noncomputable section

/-- A161946: Odd part of sum of unitary divisors of n.

Offset 1, canonical program `A161946.P16073686571463776498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161946 (n : ℕ) : ℤ :=
  A161946.P16073686571463776498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165342.P13431516689000651143

`A061037(n+2)/A000265(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165342.P13431516689000651143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061037 (n + 2) : ℚ) / (A000265 (n + 4) : ℚ)

end

end A165342.P13431516689000651143

noncomputable section

/-- A165342: a(n) = A061037(n+2)/A000265(n+4).

Offset 0, canonical program `A165342.P13431516689000651143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A061037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A165342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165342.P13431516689000651143.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A061037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A165342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165621.P2440575893113926756

`2*A061554(n)-A335322(n+1)`
-/

namespace A165621.P2440575893113926756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061554 n - A335322 (n + 1)

end

end A165621.P2440575893113926756

noncomputable section

/-- A165621: Riordan array (c(x^2)*(1+xc(x^2)), xc(x^2)).

Offset 0, canonical program `A165621.P2440575893113926756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165621 (n : ℕ) : ℤ :=
  A165621.P2440575893113926756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166466.P10605772480082996140

`3*A000265(n+1)`
-/

namespace A166466.P10605772480082996140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000265 (n + 1)

end

end A166466.P10605772480082996140

noncomputable section

/-- A166466: Trisection a(n) = A000265(3n).

Offset 1, canonical program `A166466.P10605772480082996140`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166466 (n : ℕ) : ℤ :=
  A166466.P10605772480082996140.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167990.P17237278703894071025

`A010766(n+1)*A175992(n+1)`
-/

namespace A167990.P17237278703894071025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A175992 (n + 1)

end

end A167990.P17237278703894071025

noncomputable section

/-- A167990: Elements in A126988 (by row) that are not 1.

Offset 1, canonical program `A167990.P17237278703894071025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167990 (n : ℕ) : ℤ :=
  A167990.P17237278703894071025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169613.P2033703515470004183

`A169615(A038722(n+1))+C(n, A008486(n))`
-/

namespace A169613.P2033703515470004183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169615 (A038722 (n + 1)).toNat + (Nat.choose n (A008486 n).toNat : ℤ)

end

end A169613.P2033703515470004183

noncomputable section

/-- A169613: Triangular array: T(n,k)=floor(F(n)/F(n-k)), k=1,2,...,n-2; n>=3, where F=A000045 (Fibonacci numbers).

Offset 3, canonical program `A169613.P2033703515470004183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A169613 (n : ℕ) : ℤ :=
  A169613.P2033703515470004183.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A169613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000404.P2881668745635022014

`∪[A000415(n+1), A004431(n+1)]`
-/

namespace A000404.P2881668745635022014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P2881668745635022014

noncomputable section

/-- A000404: Numbers that are the sum of 2 nonzero squares.

Offset 1, canonical program `A000404.P2881668745635022014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000404 (n : ℕ) : ℤ :=
  (A000404.P2881668745635022014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000799.P8133862244709605742

`A082482(n+1)+A036987(n)`
-/

namespace A000799.P8133862244709605742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + A036987 n

end

end A000799.P8133862244709605742

noncomputable section

/-- A000799: a(n) = floor(2^n / n).

Offset 1, canonical program `A000799.P8133862244709605742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000799 (n : ℕ) : ℤ :=
  A000799.P8133862244709605742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002547.P4051207743041525238

`A001008(n+1)/gcd(A001008(n+1), A145979(n))`
-/

namespace A002547.P4051207743041525238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (Int.gcd (A001008 (n + 1)) (A145979 n) : ℚ)

end

end A002547.P4051207743041525238

noncomputable section

/-- A002547: Numerator of the n-th harmonic number H(n) divided by (n+1); a(n) = A001008(n) / ((n+1)*A002805(n)).

Offset 1, canonical program `A002547.P4051207743041525238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A002547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002547.P4051207743041525238.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A002547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002805.P9682001514947310315

`A001008(n+1)/A025529(n+1)*A003418(n+1)`
-/

namespace A002805.P9682001514947310315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (A025529 (n + 1) : ℚ) * (A003418 (n + 1) : ℚ)

end

end A002805.P9682001514947310315

noncomputable section

/-- A002805: a(n) = denominator of harmonic number H(n) = Sum_{i=1..n} 1/i.

Offset 1, canonical program `A002805.P9682001514947310315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A002805 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002805.P9682001514947310315.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A002805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004614.P9711491461572912569

`filter[A081754(n+1), A354036(#)]`
-/

namespace A004614.P9711491461572912569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A004614.P9711491461572912569

noncomputable section

/-- A004614: Numbers that are divisible only by primes congruent to 3 mod 4.

Offset 1, canonical program `A004614.P9711491461572912569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5176 terms. -/
def A004614 (n : ℕ) : ℤ :=
  A004614.P9711491461572912569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5176 terms. -/
def A004614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014528.P14309397987583269711

`∪[A061346(n+1), A359375(n+1)]`
-/

namespace A014528.P14309397987583269711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014528.P14309397987583269711

noncomputable section

/-- A014528: Neither == 0 (mod 4) nor a power of 3.

Offset 0, canonical program `A014528.P14309397987583269711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014528 (n : ℕ) : ℤ :=
  (A014528.P14309397987583269711.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014813.P12215300460194562373

`(A164845(n)-A000189(n+1))/2`
-/

namespace A014813.P12215300460194562373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164845 n - A000189 (n + 1) : ℚ) / 2

end

end A014813.P12215300460194562373

noncomputable section

/-- A014813: a(n) = Sum_{k=0..n} ceiling(k^3/n).

Offset 1, canonical program `A014813.P12215300460194562373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014813 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014813.P12215300460194562373.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014851.P4266678184961084627

`record[lcm(A000189(n+1), A014491(n+1))]`
-/

namespace A014851.P4266678184961084627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000189 (n + 1)) (A014491 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014851.P4266678184961084627

noncomputable section

/-- A014851: Numbers k that divide s(k), where s(1)=1, s(j)=4*s(j-1)+j.

Offset 1, canonical program `A014851.P4266678184961084627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A014851 (n : ℕ) : ℤ :=
  (A014851.P4266678184961084627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A014851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015050.P6306515244823270706

`A013929(A000027(n+1))/A000189(A013929(n+1))`
-/

namespace A015050.P6306515244823270706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (A000027 (n + 1)).toNat : ℚ) / (A000189 (A013929 (n + 1)).toNat : ℚ)

end

end A015050.P6306515244823270706

noncomputable section

/-- A015050: Let m = A013929(n); then a(n) = smallest k such that m divides k^3.

Offset 1, canonical program `A015050.P6306515244823270706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A015050 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A015050.P6306515244823270706.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A015050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015638.P1771638695330122306

`A015634(n+2)-A000292(n+2)`
-/

namespace A015638.P1771638695330122306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015634 (n + 2) - A000292 (n + 2)

end

end A015638.P1771638695330122306

noncomputable section

/-- A015638: Number of ordered quadruples of integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015638.P1771638695330122306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A015638 (n : ℕ) : ℤ :=
  A015638.P1771638695330122306.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A015638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020650.P8220401630916470724

`A294442(xor(1, n+1))`
-/

namespace A020650.P8220401630916470724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (Nat.xor 1 (n + 1))

end

end A020650.P8220401630916470724

noncomputable section

/-- A020650: Numerators in recursive bijection from positive integers to positive rationals (the bijection is f(1) = 1, f(2n) = f(n)+1, f(2n+1) = 1/(f(n)+1)).

Offset 1, canonical program `A020650.P8220401630916470724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020650 (n : ℕ) : ℤ :=
  A020650.P8220401630916470724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020651.P13339251140804560369

`A294442(n+1)`
-/

namespace A020651.P13339251140804560369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (n + 1)

end

end A020651.P13339251140804560369

noncomputable section

/-- A020651: Denominators in recursive bijection from positive integers to positive rationals (the bijection is f(1) = 1, f(2n) = f(n)+1, f(2n+1) = 1/(f(n)+1)).

Offset 1, canonical program `A020651.P13339251140804560369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020651 (n : ℕ) : ℤ :=
  A020651.P13339251140804560369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024317.P406605019777847365

`A024880(A348776(n+1))`
-/

namespace A024317.P406605019777847365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024880 (A348776 (n + 1)).toNat

end

end A024317.P406605019777847365

noncomputable section

/-- A024317: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = A023532.

Offset 1, canonical program `A024317.P406605019777847365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024317 (n : ℕ) : ℤ :=
  A024317.P406605019777847365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024628.P14360975281112832861

`A061346(eq[2, A061346(n+2)-A061346(n+1)]+1)`
-/

namespace A024628.P14360975281112832861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 2) - A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A024628.P14360975281112832861

noncomputable section

/-- A024628: Odd numbers k such that neither k nor k + 2 is a power of a prime.

Offset 1, canonical program `A024628.P14360975281112832861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7553 terms. -/
def A024628 (n : ℕ) : ℤ :=
  A024628.P14360975281112832861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7553 terms. -/
def A024628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025788.P4064732391598923676

`A025820(abs(1-n))+A025820(n)`
-/

namespace A025788.P4064732391598923676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025820 |1 - (n : ℤ)|.toNat + A025820 n

end

end A025788.P4064732391598923676

noncomputable section

/-- A025788: Expansion of 1/((1-x)(1-x^7)(1-x^12)).

Offset 0, canonical program `A025788.P4064732391598923676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025788 (n : ℕ) : ℤ :=
  A025788.P4064732391598923676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027389.P1038088546329582602

`A027387(n)+2*A316868(n)`
-/

namespace A027389.P1038088546329582602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n + 2 * A316868 n

end

end A027389.P1038088546329582602

noncomputable section

/-- A027389: Write decimal digits for n, count endpoints (version 4).

Offset 0, canonical program `A027389.P1038088546329582602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027389 (n : ℕ) : ℤ :=
  A027389.P1038088546329582602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028272.P16658782118669179364

`A014413(n+1)+A014411(n+1)`
-/

namespace A028272.P16658782118669179364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) + A014411 (n + 1)

end

end A028272.P16658782118669179364

noncomputable section

/-- A028272: Elements to right of central elements in 3-Pascal triangle A028262 that are not 1.

Offset 0, canonical program `A028272.P16658782118669179364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028272 (n : ℕ) : ℤ :=
  A028272.P16658782118669179364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033764.P8466703853470809905

`A110654(A129390(Δ[n²]))`
-/

namespace A033764.P8466703853470809905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A129390 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A033764.P8466703853470809905

noncomputable section

/-- A033764: Product t2(q^d); d | 5, where t2 = theta2(q)/(2*q^(1/4)).

Offset 0, canonical program `A033764.P8466703853470809905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A033764 (n : ℕ) : ℤ :=
  A033764.P8466703853470809905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A033764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036346.P7620792175461304631

`∩[A036350(n+1), A036844(n+1)]`
-/

namespace A036346.P7620792175461304631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036346.P7620792175461304631

noncomputable section

/-- A036346: Composites n such that A001414(n) is odd and divides n.

Offset 1, canonical program `A036346.P7620792175461304631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A036346 (n : ℕ) : ℤ :=
  (A036346.P7620792175461304631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A036346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039143.P17636215594540323729

`eq[A027387(n), A027388(n)]`
-/

namespace A039143.P17636215594540323729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039143.P17636215594540323729

noncomputable section

/-- A039143: Numbers whose base-10 representation has the same number of 4's and 7's.

Offset 1, canonical program `A039143.P17636215594540323729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A039143 (n : ℕ) : ℤ :=
  (A039143.P17636215594540323729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A039143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039732.P11246992434539566219

`A039731(n+3)/2`
-/

namespace A039732.P11246992434539566219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039731 (n + 3) : ℚ) / 2

end

end A039732.P11246992434539566219

noncomputable section

/-- A039732: a(n) = s(n+1)/2, s=A039731.

Offset 1, canonical program `A039732.P11246992434539566219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A039732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039732.P11246992434539566219.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A039732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045737.P2550653022607152751

`A026019(n)-A001764(n+1)`
-/

namespace A045737.P2550653022607152751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026019 n - A001764 (n + 1)

end

end A045737.P2550653022607152751

noncomputable section

/-- A045737: Number of nonroot branch nodes in all noncrossing rooted trees on n nodes on a circle.

Offset 2, canonical program `A045737.P2550653022607152751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045737 (n : ℕ) : ℤ :=
  A045737.P2550653022607152751.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048639.P11152378786203377738

`A048675(A161918(n+2))`
-/

namespace A048639.P11152378786203377738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A161918 (n + 2)).toNat

end

end A048639.P11152378786203377738

noncomputable section

/-- A048639: Binary encoding of A006881, numbers with two distinct prime divisors.

Offset 1, canonical program `A048639.P11152378786203377738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 627 terms. -/
def A048639 (n : ℕ) : ℤ :=
  A048639.P11152378786203377738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 627 terms. -/
def A048639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049094.P18112774684826038960

`comp[A049093(n+1)-1]+1`
-/

namespace A049094.P18112774684826038960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A049094.P18112774684826038960

noncomputable section

/-- A049094: Numbers m such that 2^m - 1 is divisible by a square > 1.

Offset 1, canonical program `A049094.P18112774684826038960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A049094 (n : ℕ) : ℤ :=
  (A049094.P18112774684826038960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A049094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049418.P15748433190609100064

`A073185(A050985(n+1))*A113061(A159253(n+1))`
-/

namespace A049418.P15748433190609100064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073185 (A050985 (n + 1)).toNat * A113061 (A159253 (n + 1)).toNat

end

end A049418.P15748433190609100064

noncomputable section

/-- A049418: 3-i-sigma(n): sum of 3-infinitary divisors of n: if n=Product p(i)^r(i) and d=Product p(i)^s(i), each s(i) has a digit a<=b in its ternary expansion everywhere that the corresponding r(i) has a digit b, then d is a 3-i-divisor of n.

Offset 1, canonical program `A049418.P15748433190609100064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A049418 (n : ℕ) : ℤ :=
  A049418.P15748433190609100064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A049418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050384.P14843473006350326744

`filter[A003277(n+1), A005171(#)]`
-/

namespace A050384.P14843473006350326744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A050384.P14843473006350326744

noncomputable section

/-- A050384: Nonprimes such that n and phi(n) are relatively prime.

Offset 1, canonical program `A050384.P14843473006350326744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6488 terms. -/
def A050384 (n : ℕ) : ℤ :=
  A050384.P14843473006350326744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6488 terms. -/
def A050384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052159.P16139146045707292468

`∩[A015914(n+1), A121762(n+1)]`
-/

namespace A052159.P16139146045707292468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P16139146045707292468

noncomputable section

/-- A052159: Lower prime of a difference of 6 (G-minor-6 primes) between consecutive primes of 6k+5 form.

Offset 1, canonical program `A052159.P16139146045707292468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A052159 (n : ℕ) : ℤ :=
  (A052159.P16139146045707292468.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A052159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053166.P17952654793583109259

`A019555(A019555(n+1)*A295657(n+1))`
-/

namespace A053166.P17952654793583109259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A019555 (n + 1) * A295657 (n + 1)).toNat

end

end A053166.P17952654793583109259

noncomputable section

/-- A053166: Smallest positive integer for which n divides a(n)^4.

Offset 1, canonical program `A053166.P17952654793583109259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053166 (n : ℕ) : ℤ :=
  A053166.P17952654793583109259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053638.P17925340613213967560

`A082482(n+1)+1`
-/

namespace A053638.P17925340613213967560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + 1

end

end A053638.P17925340613213967560

noncomputable section

/-- A053638: a(n) = ceiling(2^n/n).

Offset 1, canonical program `A053638.P17925340613213967560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053638 (n : ℕ) : ℤ :=
  A053638.P17925340613213967560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054538.P2968054408366459089

`A306905(n+2)/(2*(n+2))`
-/

namespace A054538.P2968054408366459089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306905 (n + 2) : ℚ) / (2 * (n + 2) : ℚ)

end

end A054538.P2968054408366459089

noncomputable section

/-- A054538: A000013 / 2.

Offset 1, canonical program `A054538.P2968054408366459089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A054538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054538.P2968054408366459089.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A054538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056268.P10353224445978175421

`6*A056279(n+1)`
-/

namespace A056268.P10353224445978175421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056279 (n + 1)

end

end A056268.P10353224445978175421

noncomputable section

/-- A056268: Number of primitive (aperiodic) words of length n which contain exactly three different symbols.

Offset 1, canonical program `A056268.P10353224445978175421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A056268 (n : ℕ) : ℤ :=
  A056268.P10353224445978175421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A056268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056295.P2923026254266874086

`A306905(n+1)/(n+1)-1`
-/

namespace A056295.P2923026254266874086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306905 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A056295.P2923026254266874086

noncomputable section

/-- A056295: Number of n-bead necklace structures using exactly two different colored beads.

Offset 1, canonical program `A056295.P2923026254266874086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056295.P2923026254266874086.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057653.P8862115344835850100

`A097269(n+1)/2`
-/

namespace A057653.P8862115344835850100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097269 (n + 1) : ℚ) / 2

end

end A057653.P8862115344835850100

noncomputable section

/-- A057653: Odd numbers of form x^2 + y^2.

Offset 1, canonical program `A057653.P8862115344835850100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057653 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057653.P8862115344835850100.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057815.P1062535614346161321

`(n+1)/A049077(n+1)`
-/

namespace A057815.P1062535614346161321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A049077 (n + 1) : ℚ)

end

end A057815.P1062535614346161321

noncomputable section

/-- A057815: a(n) = gcd(n,binomial(n,floor(n/2))).

Offset 1, canonical program `A057815.P1062535614346161321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057815 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057815.P1062535614346161321.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062729.P4043378866416344569

`lt[A284599(n+1), 1]+1`
-/

namespace A062729.P4043378866416344569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A062729.P4043378866416344569

noncomputable section

/-- A062729: Numbers that are not divisible by any prime=p, where either p-2 or p+2 is prime.

Offset 1, canonical program `A062729.P4043378866416344569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A062729 (n : ℕ) : ℤ :=
  (A062729.P4043378866416344569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A062729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063932.P16120183878690892389

`2-A063933(n+2)+n`
-/

namespace A063932.P16120183878690892389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A063933 (n + 2) + (n : ℤ)

end

end A063932.P16120183878690892389

noncomputable section

/-- A063932: Average of largest prime less than or equal to n and smallest prime greater than or equal to n.

Offset 2, canonical program `A063932.P16120183878690892389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063932 (n : ℕ) : ℤ :=
  A063932.P16120183878690892389.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066254.P14705389908508388282

`A066250(A066250(n+1))`
-/

namespace A066254.P14705389908508388282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066250 (A066250 (n + 1)).toNat

end

end A066254.P14705389908508388282

noncomputable section

/-- A066254: a(n) = A066250(A066250(n)).

Offset 1, canonical program `A066254.P14705389908508388282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5757 terms. -/
def A066254 (n : ℕ) : ℤ :=
  A066254.P14705389908508388282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5757 terms. -/
def A066254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066909.P7344722265387193395

`A066838(n+1)%(n+1)`
-/

namespace A066909.P7344722265387193395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066838 (n + 1)) (n + 1 : ℤ)

end

end A066909.P7344722265387193395

noncomputable section

/-- A066909: (product of primes < n that do not divide n) (mod n).

Offset 1, canonical program `A066909.P7344722265387193395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A066909 (n : ℕ) : ℤ :=
  A066909.P7344722265387193395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A066909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067315.P10432000283421290337

`lt[1, A049077(n+1)]+1`
-/

namespace A067315.P10432000283421290337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067315.P10432000283421290337

noncomputable section

/-- A067315: Numbers k such that binomial(k, floor(k/2)) is not divisible by k.

Offset 1, canonical program `A067315.P10432000283421290337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4508 terms. -/
def A067315 (n : ℕ) : ℤ :=
  (A067315.P10432000283421290337.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4508 terms. -/
def A067315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068111.P15408630498123714661

`or(1, A055773(2*n)-A000035(2*n+1))`
-/

namespace A068111.P15408630498123714661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055773 (2 * n) - A000035 (2 * n + 1))

end

end A068111.P15408630498123714661

noncomputable section

/-- A068111: Numerators of coefficients in J0(i*sqrt(x))^2, where J0 denotes the ordinary Bessel function of order 0.

Offset 0, canonical program `A068111.P15408630498123714661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A068111 (n : ℕ) : ℤ :=
  A068111.P15408630498123714661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A068111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070306.P13161022256143863754

`2/(n+1)*A248003(n+1)`
-/

namespace A070306.P13161022256143863754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A248003 (n + 1) : ℚ)

end

end A070306.P13161022256143863754

noncomputable section

/-- A070306: a(n) = 2*phi(n)/2^omega(n).

Offset 1, canonical program `A070306.P13161022256143863754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070306.P13161022256143863754.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072728.P6270051122874775703

`A071585(eq[0, A334076(n)])`
-/

namespace A072728.P6270051122874775703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072728.P6270051122874775703

noncomputable section

/-- A072728: Numerator of rationals >= 1 whose continued fractions consist only of 1's and 2's, in ascending order by the sum of the continued fraction terms and descending by lowest order continued fraction terms to highest.

Offset 0, canonical program `A072728.P6270051122874775703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A072728 (n : ℕ) : ℤ :=
  A072728.P6270051122874775703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A072728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073248.P6563719464096944215

`∩[A053806(n+1)-2, A072284(n+1)]`
-/

namespace A073248.P6563719464096944215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073248.P6563719464096944215

noncomputable section

/-- A073248: Squarefree numbers k such that k+1 is also squarefree, but k-1 and k+2 are not.

Offset 1, canonical program `A073248.P6563719464096944215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A073248 (n : ℕ) : ℤ :=
  (A073248.P6563719464096944215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A073248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073493.P5641246072222244233

`eq[1, A073490(n+1)]+1`
-/

namespace A073493.P5641246072222244233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073493.P5641246072222244233

noncomputable section

/-- A073493: Numbers having exactly one prime gap in their factorization.

Offset 1, canonical program `A073493.P5641246072222244233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073493 (n : ℕ) : ℤ :=
  (A073493.P5641246072222244233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073494.P13413378010787852681

`eq[2, A073490(n+1)]+1`
-/

namespace A073494.P13413378010787852681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073494.P13413378010787852681

noncomputable section

/-- A073494: Numbers having exactly two prime gaps in their factorization.

Offset 1, canonical program `A073494.P13413378010787852681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073494 (n : ℕ) : ℤ :=
  (A073494.P13413378010787852681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073650.P10655186245204518636

`A049437(n+2)+2`
-/

namespace A073650.P10655186245204518636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 2) + 2

end

end A073650.P10655186245204518636

noncomputable section

/-- A073650: Define the composite field of a prime q to be f(q) = (t,s) if p, q, r are three consecutive primes and q-p = t and r-q = s. This is a sequence of primes q with field (2,6).

Offset 1, canonical program `A073650.P10655186245204518636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073650 (n : ℕ) : ℤ :=
  A073650.P10655186245204518636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073838.P2064142446550053236

`A055773(2*n+1)+A000007(n)`
-/

namespace A073838.P2064142446550053236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n + 1) + A000007 n

end

end A073838.P2064142446550053236

noncomputable section

/-- A073838: Product of primes p satisfying n <= p <= 2n.

Offset 1, canonical program `A073838.P2064142446550053236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A073838 (n : ℕ) : ℤ :=
  A073838.P2064142446550053236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A073838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075893.P13894536752048670216

`(A131686(n+1)-A069484(n+1))/3`
-/

namespace A075893.P13894536752048670216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131686 (n + 1) - A069484 (n + 1) : ℚ) / 3

end

end A075893.P13894536752048670216

noncomputable section

/-- A075893: Average of three successive primes squared, (prime(n)^2+prime(n+1)^2+prime(n+2)^2)/3, n>=3.

Offset 3, canonical program `A075893.P13894536752048670216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075893.P13894536752048670216.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075894.P14700299347206667314

`(A131686(n+1)-A001248(n+1))/4`
-/

namespace A075894.P14700299347206667314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131686 (n + 1) - A001248 (n + 1) : ℚ) / 4

end

end A075894.P14700299347206667314

noncomputable section

/-- A075894: Average of four successive primes squared, (prime(n)^2 + prime(n+1)^2 + prime(n+2)^2 + prime(n+3)^2)/4, n>=2.

Offset 2, canonical program `A075894.P14700299347206667314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075894 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075894.P14700299347206667314.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076567.P1168870904317662066

`A076565(n+2)`
-/

namespace A076567.P1168870904317662066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (n + 2)

end

end A076567.P1168870904317662066

noncomputable section

/-- A076567: Greatest prime divisor of 4n+6 (sum of four successive integers).

Offset 1, canonical program `A076567.P1168870904317662066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076565, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076567 (n : ℕ) : ℤ :=
  A076567.P1168870904317662066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076565, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078493.P1150517547966891059

`10*A216292(n+1)`
-/

namespace A078493.P1150517547966891059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A216292 (n + 1)

end

end A078493.P1150517547966891059

noncomputable section

/-- A078493: One-prime decades.

Offset 0, canonical program `A078493.P1150517547966891059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078493 (n : ℕ) : ℤ :=
  A078493.P1150517547966891059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078848.P4044415970445278242

`∩[A046141(n+1), A049437(n+1)]`
-/

namespace A078848.P4044415970445278242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P4044415970445278242

noncomputable section

/-- A078848: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[2,6,4]; short d-string notation of pattern = [264].

Offset 1, canonical program `A078848.P4044415970445278242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1782 terms. -/
def A078848 (n : ℕ) : ℤ :=
  (A078848.P4044415970445278242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1782 terms. -/
def A078848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079747.P283931037976207506

`record[A070089(n+2)%(A070089(n+1)+2)]`
-/

namespace A079747.P283931037976207506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070089 (n + 2)) (A070089 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079747.P283931037976207506

noncomputable section

/-- A079747: Numbers k such that gpf(k-1) < gpf(k) < gpf(k+1), where gpf(k) is the greatest prime factor of k (A006530).

Offset 1, canonical program `A079747.P283931037976207506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A079747 (n : ℕ) : ℤ :=
  A079747.P283931037976207506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A079747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080685.P10681213933144538552

`∑[char[A080681(n+1)-1]]`
-/

namespace A080685.P10681213933144538552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080685.P10681213933144538552

noncomputable section

/-- A080685: Number of 17-smooth numbers <= n.

Offset 1, canonical program `A080685.P10681213933144538552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080685 (n : ℕ) : ℤ :=
  (A080685.P10681213933144538552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082078.P11842051904754166604

`p?[gcd(A127334(n+3), A157996(n+1))]`
-/

namespace A082078.P11842051904754166604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127334 (n + 3)) (A157996 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A082078.P11842051904754166604

noncomputable section

/-- A082078: Balanced primes of order three.

Offset 1, canonical program `A082078.P11842051904754166604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A082078 (n : ℕ) : ℤ :=
  (A082078.P11842051904754166604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A082078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082649.P333713981762825280

`A156308(A038722(n+1))*A262616(n)`
-/

namespace A082649.P333713981762825280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156308 (A038722 (n + 1)).toNat * A262616 n

end

end A082649.P333713981762825280

noncomputable section

/-- A082649: Triangle of coefficients in expansion of sinh^2(n*x) in powers of sinh(x).

Offset 1, canonical program `A082649.P333713981762825280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8814 terms. -/
def A082649 (n : ℕ) : ℤ :=
  A082649.P333713981762825280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8814 terms. -/
def A082649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083557.P10939105980250947085

`A076568(3*a(n-1))` with `a(0)=3`
-/

namespace A083557.P10939105980250947085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A076568 (3 * a (n - 1)).toNat

end

end A083557.P10939105980250947085

noncomputable section

/-- A083557: a(n) is the greatest prime factor of 3*a(n-1)+2.

Offset 1, canonical program `A083557.P10939105980250947085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083557 (n : ℕ) : ℤ :=
  A083557.P10939105980250947085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083718.P5605760341876315868

`A070229(n+1)-A064722(n+1)`
-/

namespace A083718.P5605760341876315868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - A064722 (n + 1)

end

end A083718.P5605760341876315868

noncomputable section

/-- A083718: a(n) = (greatest prime <= n) + (greatest prime factor of n), with a(1) = 2.

Offset 1, canonical program `A083718.P5605760341876315868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083718 (n : ℕ) : ℤ :=
  A083718.P5605760341876315868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084891.P4686034000926733691

`∩[A068191(n+1), A080672(n+1)]`
-/

namespace A084891.P4686034000926733691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084891.P4686034000926733691

noncomputable section

/-- A084891: Multiples of 2, 3, 5, or 7, but not 7-smooth.

Offset 1, canonical program `A084891.P4686034000926733691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7636 terms. -/
def A084891 (n : ℕ) : ℤ :=
  (A084891.P4686034000926733691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7636 terms. -/
def A084891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085731.P8528371143439502418

`gcd(A068719(n+1), A073675(n+1))`
-/

namespace A085731.P8528371143439502418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068719 (n + 1)) (A073675 (n + 1))

end

end A085731.P8528371143439502418

noncomputable section

/-- A085731: Greatest common divisor of n and its arithmetic derivative.

Offset 1, canonical program `A085731.P8528371143439502418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085731 (n : ℕ) : ℤ :=
  (A085731.P8528371143439502418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087007.P9956530116215495387

`record[∏{p}[A080681(n+1), #]]`
-/

namespace A087007.P9956530116215495387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087007.P9956530116215495387

noncomputable section

/-- A087007: Divisors of 510510.

Offset 1, canonical program `A087007.P9956530116215495387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A087007 (n : ℕ) : ℤ :=
  (A087007.P9956530116215495387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A087007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087784.P3470074920736831489

`A115076(n+1)*A177704(n)`
-/

namespace A087784.P3470074920736831489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115076 (n + 1) * A177704 n

end

end A087784.P3470074920736831489

noncomputable section

/-- A087784: Number of solutions to x^2 + y^2 + z^2 = 1 mod n.

Offset 1, canonical program `A087784.P3470074920736831489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087784 (n : ℕ) : ℤ :=
  A087784.P3470074920736831489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088822.P4468809582599686425

`∑[A070229(n+1)-(n+1)]-1`
-/

namespace A088822.P4468809582599686425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088822.P4468809582599686425

noncomputable section

/-- A088822: a(n) is the sum of largest prime factors of numbers from 1 to n.

Offset 1, canonical program `A088822.P4468809582599686425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088822 (n : ℕ) : ℤ :=
  A088822.P4468809582599686425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092694.P10526234463377638545

`A291782(n+1)/(n+1)`
-/

namespace A092694.P10526234463377638545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291782 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A092694.P10526234463377638545

noncomputable section

/-- A092694: Product of iterated phi(n).

Offset 1, canonical program `A092694.P10526234463377638545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092694 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092694.P10526234463377638545.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097700.P16427070202235837695

`lt[A216282(n+1), 1]+1`
-/

namespace A097700.P16427070202235837695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097700.P16427070202235837695

noncomputable section

/-- A097700: Numbers not of form x^2 + 2y^2.

Offset 1, canonical program `A097700.P16427070202235837695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097700 (n : ℕ) : ℤ :=
  (A097700.P16427070202235837695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099184.P11748216234505321066

`A059456(n+3)`
-/

namespace A099184.P11748216234505321066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 3)

end

end A099184.P11748216234505321066

noncomputable section

/-- A099184: Heavy primes: primes p such that p-1 has more than 2 divisors with multiplicity.

Offset 2, canonical program `A099184.P11748216234505321066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A099184 (n : ℕ) : ℤ :=
  A099184.P11748216234505321066.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A099184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100300.P13917620414398069739

`abs(floor(A080243(n+1)/2))`
-/

namespace A100300.P13917620414398069739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A080243 (n + 1) : ℚ) / 2⌋|

end

end A100300.P13917620414398069739

noncomputable section

/-- A100300: Number of dissections of a convex n-gon by nonintersecting diagonals into an odd number of regions.

Offset 3, canonical program `A100300.P13917620414398069739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A100300 (n : ℕ) : ℤ :=
  A100300.P13917620414398069739.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A100300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101428.P10351250407509594824

`A216282(8*n+1)`
-/

namespace A101428.P10351250407509594824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (8 * n + 1)

end

end A101428.P10351250407509594824

noncomputable section

/-- A101428: Number of ways to write n as an ordered sum of a triangular number (A000217) and a square (A000290).

Offset 0, canonical program `A101428.P10351250407509594824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A101428 (n : ℕ) : ℤ :=
  A101428.P10351250407509594824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A101428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104858.P16916997968901490082

`∑[abs(A080243(n))]`
-/

namespace A104858.P16916997968901490082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080243 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P16916997968901490082

noncomputable section

/-- A104858: Partial sums of the little Schroeder numbers (A001003).

Offset 0, canonical program `A104858.P16916997968901490082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A104858 (n : ℕ) : ℤ :=
  A104858.P16916997968901490082.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A104858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105562.P5014279291815470731

`A008578(A070229(n+1)-n)`
-/

namespace A105562.P5014279291815470731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A070229 (n + 1) - (n : ℤ)).toNat

end

end A105562.P5014279291815470731

noncomputable section

/-- A105562: a(n) is the prime whose index is the greatest prime factor of n, for n >1; a(1)=2.

Offset 1, canonical program `A105562.P5014279291815470731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105562 (n : ℕ) : ℤ :=
  A105562.P5014279291815470731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107147.P16137290350496970727

`∪[A139874(n+1), A139879(n+1)]`
-/

namespace A107147.P16137290350496970727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P16137290350496970727

noncomputable section

/-- A107147: Primes of the form 3x^2 + 14y^2.

Offset 1, canonical program `A107147.P16137290350496970727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107147 (n : ℕ) : ℤ :=
  (A107147.P16137290350496970727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107915.P6962663084114423435

`∑[∑[A107965(n)]]`
-/

namespace A107915.P6962663084114423435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107915.P6962663084114423435

noncomputable section

/-- A107915: a(n) = binomial(n+4,4)*binomial(n+5,4)*binomial(n+6,4)/75.

Offset 0, canonical program `A107915.P6962663084114423435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107915 (n : ℕ) : ℤ :=
  A107915.P6962663084114423435.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107917.P17887768737804748010

`∑[A107965(n)]`
-/

namespace A107917.P17887768737804748010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107917.P17887768737804748010

noncomputable section

/-- A107917: a(n) = (n+1)(n+2)^2*(n+3)^3*(n+4)^2*(n+5)(n^2 + 6n + 10)/86400.

Offset 0, canonical program `A107917.P17887768737804748010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107917 (n : ℕ) : ℤ :=
  A107917.P17887768737804748010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109608.P6735383558339274602

`eq[1, A280827(n+1)+1]+1`
-/

namespace A109608.P6735383558339274602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280827 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109608.P6735383558339274602

noncomputable section

/-- A109608: Numbers n such that the number of digits required to write the prime factors of n equals the number of digits of n.

Offset 1, canonical program `A109608.P6735383558339274602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A109608 (n : ℕ) : ℤ :=
  (A109608.P6735383558339274602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A109608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110566.P11658579506260881929

`A025529(n+1)/A001008(n+1)`
-/

namespace A110566.P11658579506260881929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A110566.P11658579506260881929

noncomputable section

/-- A110566: a(n) = lcm{1,2,...,n}/denominator of harmonic number H(n).

Offset 1, canonical program `A110566.P11658579506260881929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001008, A025529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110566 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110566.P11658579506260881929.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001008, A025529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111418.P2524658921802500392

`2*A094527(n)-A039599(n)`
-/

namespace A111418.P2524658921802500392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094527 n - A039599 n

end

end A111418.P2524658921802500392

noncomputable section

/-- A111418: Right-hand side of odd-numbered rows of Pascal's triangle.

Offset 0, canonical program `A111418.P2524658921802500392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111418 (n : ℕ) : ℤ :=
  A111418.P2524658921802500392.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116604.P1630362851422197254

`A010684(n)*A129447(n)`
-/

namespace A116604.P1630362851422197254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A129447 n

end

end A116604.P1630362851422197254

noncomputable section

/-- A116604: Expansion of q^(-1/2) * eta(q)^3 * eta(q^4) * eta(q^12) / (eta(q^2)^2 * eta(q^3)) in powers of q.

Offset 0, canonical program `A116604.P1630362851422197254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116604 (n : ℕ) : ℤ :=
  A116604.P1630362851422197254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119381.P9500418666100049897

`∩[A071680(n+1), A098029(n+1)]`
-/

namespace A119381.P9500418666100049897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119381.P9500418666100049897

noncomputable section

/-- A119381: Primes p(n) for which (p(n-1) + p(n+2)) / p(n) = 2.

Offset 1, canonical program `A119381.P9500418666100049897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119381 (n : ℕ) : ℤ :=
  (A119381.P9500418666100049897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119830.P10829120068690796242

`A046521(n)*A132013(n)`
-/

namespace A119830.P10829120068690796242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 n * A132013 n

end

end A119830.P10829120068690796242

noncomputable section

/-- A119830: Bi-diagonal inverse of (2n)!/(2k)!.

Offset 0, canonical program `A119830.P10829120068690796242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119830 (n : ℕ) : ℤ :=
  A119830.P10829120068690796242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120992.P11139390425260994503

`A053806(n+1)-A072284(n+1)`
-/

namespace A120992.P11139390425260994503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - A072284 (n + 1)

end

end A120992.P11139390425260994503

noncomputable section

/-- A120992: Number of integers in n-th run of squarefree positive integers.

Offset 1, canonical program `A120992.P11139390425260994503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120992 (n : ℕ) : ℤ :=
  A120992.P11139390425260994503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124449.P1414096876915059449

`A010684(n)*A226132(n+1)`
-/

namespace A124449.P1414096876915059449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A226132 (n + 1)

end

end A124449.P1414096876915059449

noncomputable section

/-- A124449: Expansion of (phi(-q^3)^4 - phi(-q)^4)/8 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A124449.P1414096876915059449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124449 (n : ℕ) : ℤ :=
  A124449.P1414096876915059449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126229.P16729156060540235766

`record[A000265(7*A165298(n+1))]`
-/

namespace A126229.P16729156060540235766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (7 * A165298 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126229.P16729156060540235766

noncomputable section

/-- A126229: Odd interprimes divisible by 7.

Offset 1, canonical program `A126229.P16729156060540235766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A126229 (n : ℕ) : ℤ :=
  A126229.P16729156060540235766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A126229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128437.P14087954865165796878

`floor(A001008(n+1)/(n+1))`
-/

namespace A128437.P14087954865165796878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001008 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A128437.P14087954865165796878

noncomputable section

/-- A128437: a(n) = floor((numerator of H(n))/n), where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

Offset 1, canonical program `A128437.P14087954865165796878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A128437 (n : ℕ) : ℤ :=
  A128437.P14087954865165796878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A128437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130333.P18154623364760753136

`∪[A186193(n+1), A016813(n)]`
-/

namespace A130333.P18154623364760753136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130333.P18154623364760753136

noncomputable section

/-- A130333: Numbers k >= 1 for which k!!/Sum_{i=1..k} k is an integer.

Offset 0, canonical program `A130333.P18154623364760753136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A130333 (n : ℕ) : ℤ :=
  (A130333.P18154623364760753136.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A130333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130446.P13627366910175115370

`A111123(C(floor((n+1)/2), 64))+n`
-/

namespace A130446.P13627366910175115370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 (Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 64) + (n : ℤ)

end

end A130446.P13627366910175115370

noncomputable section

/-- A130446: Integers in [1, 425] expressible as a difference of the terms of the unique optimal Golomb ruler of order 24. See A130444.

Offset 1, canonical program `A130446.P13627366910175115370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446 (n : ℕ) : ℤ :=
  A130446.P13627366910175115370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132340.P16481803046900762293

`A284120(A258746(n+2))-1`
-/

namespace A132340.P16481803046900762293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (A258746 (n + 2)).toNat - 1

end

end A132340.P16481803046900762293

noncomputable section

/-- A132340: a(n+1) = if {a(k):1<=k<=n} is a permutation of [1:n] then 2*a(n) else a(n)-1.

Offset 1, canonical program `A132340.P16481803046900762293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132340 (n : ℕ) : ℤ :=
  A132340.P16481803046900762293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136565.P2386143732968195214

`∑{e}[A328400(n+1), #]`
-/

namespace A136565.P2386143732968195214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A136565.P2386143732968195214

noncomputable section

/-- A136565: a(n) = sum of the distinct values making up the exponents in the prime-factorization of n.

Offset 1, canonical program `A136565.P2386143732968195214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136565 (n : ℕ) : ℤ :=
  (A136565.P2386143732968195214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137722.P1738800181093864691

`∑[A073490(n+1)%2]`
-/

namespace A137722.P1738800181093864691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073490 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P1738800181093864691

noncomputable section

/-- A137722: Number of numbers not greater than n with exactly one prime gap in their factorization.

Offset 1, canonical program `A137722.P1738800181093864691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137722 (n : ℕ) : ℤ :=
  A137722.P1738800181093864691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137809.P1616324025404386575

`a(n-1)+a(A076563(n))` with `a(0)=1, a(1)=1`
-/

namespace A137809.P1616324025404386575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A076563 n).toNat

end

end A137809.P1616324025404386575

noncomputable section

/-- A137809: a(0) = a(1) = 1. a(n) = a(n-1) + a(n - b(n)), where b(n) is largest prime dividing n.

Offset 0, canonical program `A137809.P1616324025404386575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A137809 (n : ℕ) : ℤ :=
  (A137809.P1616324025404386575.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A137809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140769.P16438192305256289288

`∩[A049093(n+1)+1, A049093(n+1)]`
-/

namespace A140769.P16438192305256289288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140769.P16438192305256289288

noncomputable section

/-- A140769: Numbers n such that consecutive Mersenne numbers A000225(n-1) = M(n-1) = 2^(n-1) - 1 and A000225(n) = M(n) = 2^n - 1 are both squarefree.

Offset 1, canonical program `A140769.P16438192305256289288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A140769 (n : ℕ) : ℤ :=
  (A140769.P16438192305256289288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A140769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144186.P103456975638940015

`A055773(2*n)/gcd(A055773(2*n), A055773(n+1))`
-/

namespace A144186.P103456975638940015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055773 (2 * n) : ℚ) / (Int.gcd (A055773 (2 * n)) (A055773 (n + 1)) : ℚ)

end

end A144186.P103456975638940015

noncomputable section

/-- A144186: Numerators of series expansion of the e.g.f. for the Catalan numbers.

Offset 0, canonical program `A144186.P103456975638940015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A144186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144186.P103456975638940015.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A144186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151914.P6792254600135524529

`A079315(2*n)`
-/

namespace A151914.P6792254600135524529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079315 (2 * n)

end

end A151914.P6792254600135524529

noncomputable section

/-- A151914: a(0)=0, a(1)=4; for n>=2, a(n) = (8/3)*(Sum_{i=1..n-1} 3^wt(i)) + 4, where wt() = A000120().

Offset 0, canonical program `A151914.P6792254600135524529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151914 (n : ℕ) : ℤ :=
  A151914.P6792254600135524529.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151914.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152313.P14516113526689495699

`∩[A034844(n+1), A386321(n+1)]`
-/

namespace A152313.P14516113526689495699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P14516113526689495699

noncomputable section

/-- A152313: Primes without 0's or primes in their decimal expansion.

Offset 1, canonical program `A152313.P14516113526689495699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. -/
def A152313 (n : ℕ) : ℤ :=
  (A152313.P14516113526689495699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. -/
def A152313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153082.P14466958121128585046

`A241571(n+1)+1`
-/

namespace A153082.P14466958121128585046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241571 (n + 1) + 1

end

end A153082.P14466958121128585046

noncomputable section

/-- A153082: Numbers k such that 2*k + 13 is not prime.

Offset 1, canonical program `A153082.P14466958121128585046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153082 (n : ℕ) : ℤ :=
  A153082.P14466958121128585046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156197.P18100667484286716162

`A009766(n)+abs(A171567(n))`
-/

namespace A156197.P18100667484286716162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n + |A171567 n|

end

end A156197.P18100667484286716162

noncomputable section

/-- A156197: T(n,k) = A009766(n,k) + A009766(n,n-k), triangle read by rows.

Offset 0, canonical program `A156197.P18100667484286716162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156197 (n : ℕ) : ℤ :=
  A156197.P18100667484286716162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162902.P8702082304774524880

`∪[A053806(n+1), A072284(n+1)]`
-/

namespace A162902.P8702082304774524880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162902.P8702082304774524880

noncomputable section

/-- A162902: An increasing sequence of alternatingly squarefree and nonsquarefree numbers.

Offset 1, canonical program `A162902.P8702082304774524880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162902 (n : ℕ) : ℤ :=
  (A162902.P8702082304774524880.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164510.P7896605024817402798

`A186193(n+1)-A309355(n+1)`
-/

namespace A164510.P7896605024817402798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186193 (n + 1) - A309355 (n + 1)

end

end A164510.P7896605024817402798

noncomputable section

/-- A164510: First differences of A071904 (Odd composite numbers).

Offset 1, canonical program `A164510.P7896605024817402798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164510 (n : ℕ) : ℤ :=
  A164510.P7896605024817402798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165277.P6478322796317079351

`∑[A261095(A022342(n+1))-A261095(n)]`
-/

namespace A165277.P6478322796317079351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (A022342 (n + 1)).toNat - A261095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165277.P6478322796317079351

noncomputable section

/-- A165277: Number of odd-indexed Fibonacci numbers in the Zeckendorf representation of n.

Offset 1, canonical program `A165277.P6478322796317079351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A165277 (n : ℕ) : ℤ :=
  A165277.P6478322796317079351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A165277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166228.P7650312400576267198

`abs(∑[A036453(n+1)*A080243(n)])`
-/

namespace A166228.P7650312400576267198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A080243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166228.P7650312400576267198

noncomputable section

/-- A166228: Alternating sum of large Schroeder numbers.

Offset 0, canonical program `A166228.P7650312400576267198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A166228 (n : ℕ) : ℤ :=
  A166228.P7650312400576267198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A166228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006530.P13372528560459906635

`A070229(n+1)-(n+1)`
-/

namespace A006530.P13372528560459906635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - (n + 1 : ℤ)

end

end A006530.P13372528560459906635

noncomputable section

/-- A006530: Gpf(n): greatest prime dividing n, for n >= 2; a(1)=1.

Offset 1, canonical program `A006530.P13372528560459906635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006530 (n : ℕ) : ℤ :=
  A006530.P13372528560459906635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011680.P7451229551187314504

`A011688(6*(n+3))`
-/

namespace A011680.P7451229551187314504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011688 (6 * (n + 3))

end

end A011680.P7451229551187314504

noncomputable section

/-- A011680: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^4+x^2+x+1.

Offset 0, canonical program `A011680.P7451229551187314504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A011680 (n : ℕ) : ℤ :=
  A011680.P7451229551187314504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A011680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011689.P2495358922302082977

`A011690(3*n+2)`
-/

namespace A011689.P2495358922302082977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011690 (3 * n + 2)

end

end A011689.P2495358922302082977

noncomputable section

/-- A011689: A binary m-sequence: expansion of reciprocal of x^7+x^3+x^2+x+1.

Offset 0, canonical program `A011689.P2495358922302082977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A011689 (n : ℕ) : ℤ :=
  A011689.P2495358922302082977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A011689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013947.P11385183315367073616

`∪[A156242(n+1)+1, A156243(n+1)]`
-/

namespace A013947.P11385183315367073616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013947.P11385183315367073616

noncomputable section

/-- A013947: Positions of 1's in Kolakoski sequence (A000002).

Offset 1, canonical program `A013947.P11385183315367073616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013947 (n : ℕ) : ℤ :=
  (A013947.P11385183315367073616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020899.P3391896508179438506

`comp[A095096(n+1)]`
-/

namespace A020899.P3391896508179438506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020899.P3391896508179438506

noncomputable section

/-- A020899: Numbers k with an odd number of terms in their Zeckendorf representation (write k as a sum of non-consecutive distinct Fibonacci numbers).

Offset 1, canonical program `A020899.P3391896508179438506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020899 (n : ℕ) : ℤ :=
  (A020899.P3391896508179438506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023023.P8312334667224594781

`ceil(A000114(n+3)/3)/2`
-/

namespace A023023.P8312334667224594781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A000114 (n + 3) : ℚ) / 3⌉ : ℚ) / 2

end

end A023023.P8312334667224594781

noncomputable section

/-- A023023: Number of partitions of n into 3 unordered relatively prime parts.

Offset 3, canonical program `A023023.P8312334667224594781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023023.P8312334667224594781.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035282.P1097065873675860219

`A078473(A031363(n+1))`
-/

namespace A035282.P1097065873675860219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (A031363 (n + 1)).toNat

end

end A035282.P1097065873675860219

noncomputable section

/-- A035282: Expansion of zeta function of icosian ring (nonzero terms).

Offset 1, canonical program `A035282.P1097065873675860219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1828 terms. -/
def A035282 (n : ℕ) : ℤ :=
  A035282.P1097065873675860219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1828 terms. -/
def A035282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039598.P17145896553488854695

`A128899(comp[∑[n]])`
-/

namespace A039598.P17145896553488854695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A039598.P17145896553488854695

noncomputable section

/-- A039598: Triangle formed from odd-numbered columns of triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x). Sometimes called Catalan's triangle.

Offset 0, canonical program `A039598.P17145896553488854695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039598 (n : ℕ) : ℤ :=
  A039598.P17145896553488854695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050156.P13048179924757720797

`A128899(lt[1, A128899(n)]+1)`
-/

namespace A050156.P13048179924757720797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050156.P13048179924757720797

noncomputable section

/-- A050156: T(n,k)=M(2n+3,n+3,k+3), 0<=k<=n, n >= 0, array M as in A050144.

Offset 0, canonical program `A050156.P13048179924757720797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050156 (n : ℕ) : ℤ :=
  A050156.P13048179924757720797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059453.P3518453852902920616

`filter[A059456(n+1), A101264(#)]`
-/

namespace A059453.P3518453852902920616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A059453.P3518453852902920616

noncomputable section

/-- A059453: Sophie Germain primes (A005384) that are not safe primes (A005385).

Offset 1, canonical program `A059453.P3518453852902920616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A059453 (n : ℕ) : ℤ :=
  A059453.P3518453852902920616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A059453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062284.P17247942179405604773

`A000040(A062288(n+1))`
-/

namespace A062284.P17247942179405604773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A062288 (n + 1)).toNat

end

end A062284.P17247942179405604773

noncomputable section

/-- A062284: Primes p such that p + 50 is also prime.

Offset 1, canonical program `A062284.P17247942179405604773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A062284 (n : ℕ) : ℤ :=
  A062284.P17247942179405604773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A062284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066311.P18093835353172043603

`eq[1, A137794(n+2)]+2`
-/

namespace A066311.P18093835353172043603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066311.P18093835353172043603

noncomputable section

/-- A066311: All distinct primes dividing n are consecutive.

Offset 1, canonical program `A066311.P18093835353172043603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5656 terms. -/
def A066311 (n : ℕ) : ℤ :=
  (A066311.P18093835353172043603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5656 terms. -/
def A066311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073484.P7479602298211081022

`A073490(A005117(n+1))`
-/

namespace A073484.P7479602298211081022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A005117 (n + 1)).toNat

end

end A073484.P7479602298211081022

noncomputable section

/-- A073484: Number of gaps in factors of the n-th squarefree number.

Offset 1, canonical program `A073484.P7479602298211081022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073484 (n : ℕ) : ℤ :=
  A073484.P7479602298211081022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073485.P12285287934864725546

`record[(1-A073490(n+1))*A007947(n+1)]`
-/

namespace A073485.P12285287934864725546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A073490 (n + 1)) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073485.P12285287934864725546

noncomputable section

/-- A073485: Product of any number of consecutive primes; squarefree numbers with no gaps in their prime factorization.

Offset 1, canonical program `A073485.P12285287934864725546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5200 terms. -/
def A073485 (n : ℕ) : ℤ :=
  A073485.P12285287934864725546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5200 terms. -/
def A073485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073487.P16741485548348594848

`A007947(eq[A073490(n+1)+n, A007947(n+1)]+1)`
-/

namespace A073487.P16741485548348594848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A073487.P16741485548348594848

noncomputable section

/-- A073487: Squarefree numbers having exactly one prime gap.

Offset 1, canonical program `A073487.P16741485548348594848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073487 (n : ℕ) : ℤ :=
  A073487.P16741485548348594848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073492.P17387317370613364420

`comp[(n+1)*A137794(n+1)]`
-/

namespace A073492.P17387317370613364420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A137794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A073492.P17387317370613364420

noncomputable section

/-- A073492: Numbers having at least one prime gap in their factorization.

Offset 1, canonical program `A073492.P17387317370613364420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073492 (n : ℕ) : ℤ :=
  (A073492.P17387317370613364420.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075540.P1689046195610418970

`A034961(A075541(n+1))/3`
-/

namespace A075540.P1689046195610418970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034961 (A075541 (n + 1)).toNat : ℚ) / 3

end

end A075540.P1689046195610418970

noncomputable section

/-- A075540: Integers that are the average of three successive primes.

Offset 1, canonical program `A075540.P1689046195610418970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. -/
def A075540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075540.P1689046195610418970.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. -/
def A075540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090958.P14420008161749182674

`lt[A061395(A028310(n)), A235224(n)]`
-/

namespace A090958.P14420008161749182674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090958.P14420008161749182674

noncomputable section

/-- A090958: Numbers in increasing order such that the least multiple of prime(n) in the sequence is primorial(n).

Offset 0, canonical program `A090958.P14420008161749182674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A090958 (n : ℕ) : ℤ :=
  (A090958.P14420008161749182674.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A090958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093446.P18408503001264720502

`record[∑[A111651(n+1)]/A104709(n)]`
-/

namespace A093446.P18408503001264720502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A104709 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093446.P18408503001264720502

noncomputable section

/-- A093446: Largest member of the n-th row of the triangular triangle (A093445).

Offset 1, canonical program `A093446.P18408503001264720502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A093446 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093446.P18408503001264720502.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A093446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095084.P11348282661228116740

`p?[A095096(n+1)]`
-/

namespace A095084.P11348282661228116740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095084.P11348282661228116740

noncomputable section

/-- A095084: Fibevil primes, i.e., primes p whose Zeckendorf-expansion A014417(p) contains an even number of 1-fibits.

Offset 1, canonical program `A095084.P11348282661228116740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1087 terms. -/
def A095084 (n : ℕ) : ℤ :=
  A095084.P11348282661228116740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1087 terms. -/
def A095084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109301.P8977426180802761860

`a(A263323(n+1)-1)+1` with `a(0)=0`
-/

namespace A109301.P8977426180802761860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A263323 (n + 1) - 1).toNat + 1

end

end A109301.P8977426180802761860

noncomputable section

/-- A109301: a(n) = rhig(n) = rote height in gammas of n, where the "rote" corresponding to a positive integer n is a graph derived from the primes factorization of n, as illustrated in the comments.

Offset 1, canonical program `A109301.P8977426180802761860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A109301 (n : ℕ) : ℤ :=
  (A109301.P8977426180802761860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A109301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119416.P16202796342190812721

`(n+1)*A000040(A159081(n+1))`
-/

namespace A119416.P16202796342190812721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (A159081 (n + 1)).toNat

end

end A119416.P16202796342190812721

noncomputable section

/-- A119416: n * (smallest prime greater than largest prime factor of n).

Offset 1, canonical program `A119416.P16202796342190812721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119416 (n : ℕ) : ℤ :=
  A119416.P16202796342190812721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137721.P9767994349219074133

`∑[A137794(n+1)]`
-/

namespace A137721.P9767994349219074133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137721.P9767994349219074133

noncomputable section

/-- A137721: Number of numbers not greater than n with no prime gaps in their factorization.

Offset 1, canonical program `A137721.P9767994349219074133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137721 (n : ℕ) : ℤ :=
  A137721.P9767994349219074133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157043.P17041722274976320511

`∩[A153319(n+1), A199716(n+1)]`
-/

namespace A157043.P17041722274976320511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157043.P17041722274976320511

noncomputable section

/-- A157043: Primes p such that 6p-7, 6p-5, 6p-3, 6p-1 are not prime.

Offset 1, canonical program `A157043.P17041722274976320511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A157043 (n : ℕ) : ℤ :=
  (A157043.P17041722274976320511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A157043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037840.P2762222455671273177

`A037841(A037477(n+1))`
-/

namespace A037840.P2762222455671273177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037841 (A037477 (n + 1)).toNat

end

end A037840.P2762222455671273177

noncomputable section

/-- A037840: a(n)=Sum{|d(i)-d(i-1)|: i=1,...,m}, where Sum{d(i)*8^i: i=0,1,...,m} is the base 8 representation of n.

Offset 1, canonical program `A037840.P2762222455671273177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037840 (n : ℕ) : ℤ :=
  A037840.P2762222455671273177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045413.P11718784102126598698

`∪[A023247(n+1), A045435(n+1)]`
-/

namespace A045413.P11718784102126598698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P11718784102126598698

noncomputable section

/-- A045413: Primes congruent to {0, 3, 4} mod 5.

Offset 1, canonical program `A045413.P11718784102126598698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045413 (n : ℕ) : ℤ :=
  (A045413.P11718784102126598698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068238.P5212387660254963000

`(n+1)²/gcd((n+1)², ∑[A258057(n)])`
-/

namespace A068238.P5212387660254963000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A068238.P5212387660254963000

noncomputable section

/-- A068238: Denominators of arithmetic derivative of 1/n: -A003415(n)/n^2.

Offset 1, canonical program `A068238.P5212387660254963000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068238.P5212387660254963000.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068512.P3368672071714361374

`ceil(A168036(A103517(n))/A000034(n)²)`
-/

namespace A068512.P3368672071714361374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 (A103517 n).toNat : ℚ) / (A000034 n ^ 2 : ℚ)⌉

end

end A068512.P3368672071714361374

noncomputable section

/-- A068512: Numerators of arithmetic derivative of n/2: A003415(n)/2 - n/4; denominators: A010685.

Offset 1, canonical program `A068512.P3368672071714361374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A068512 (n : ℕ) : ℤ :=
  A068512.P3368672071714361374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A068512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072613.P13158909735510187267

`∑[C(A230595(n+1), 2)]`
-/

namespace A072613.P13158909735510187267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A230595 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P13158909735510187267

noncomputable section

/-- A072613: Number of numbers of the form p*q (p, q distinct primes) less than or equal to n.

Offset 1, canonical program `A072613.P13158909735510187267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072613 (n : ℕ) : ℤ :=
  (A072613.P13158909735510187267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106088.P8246779572440490493

`∩[A023222(n+1), A023225(n+1)]`
-/

namespace A106088.P8246779572440490493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106088.P8246779572440490493

noncomputable section

/-- A106088: Primes p such that 7*p + 6 and 6*p + 7 are primes.

Offset 1, canonical program `A106088.P8246779572440490493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A106088 (n : ℕ) : ℤ :=
  (A106088.P8246779572440490493.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A106088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124850.P12264711281521083526

`∩[A023222(n+1), A090614(n+1)]`
-/

namespace A124850.P12264711281521083526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124850.P12264711281521083526

noncomputable section

/-- A124850: Primes p=n/2 such that 7n+3 and 3n+7 are primes.

Offset 1, canonical program `A124850.P12264711281521083526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A124850 (n : ℕ) : ℤ :=
  (A124850.P12264711281521083526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A124850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127331.P7890648957461590311

`∩[A023222(n+1), A153135(n+1)]`
-/

namespace A127331.P7890648957461590311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127331.P7890648957461590311

noncomputable section

/-- A127331: Primes p such that 6p-7 and 6p+7 are also primes.

Offset 1, canonical program `A127331.P7890648957461590311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. -/
def A127331 (n : ℕ) : ℤ :=
  (A127331.P7890648957461590311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. -/
def A127331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157037.P548713860299042765

`eq[2, A229341(n+2)]+2`
-/

namespace A157037.P548713860299042765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229341 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A157037.P548713860299042765

noncomputable section

/-- A157037: Numbers with prime arithmetic derivative A003415.

Offset 1, canonical program `A157037.P548713860299042765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4464 terms. -/
def A157037 (n : ℕ) : ℤ :=
  (A157037.P548713860299042765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4464 terms. -/
def A157037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022760.P12074805106371372305

`A153218(n+1)+A153134(n+1)`
-/

namespace A022760.P12074805106371372305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + A153134 (n + 1)

end

end A022760.P12074805106371372305

noncomputable section

/-- A022760: (n-th 6k+1 prime plus n-th 6k+5 prime)/6.

Offset 1, canonical program `A022760.P12074805106371372305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022760 (n : ℕ) : ℤ :=
  A022760.P12074805106371372305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034936.P1115765045630556781

`2*A153218(n+1)+1`
-/

namespace A034936.P1115765045630556781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1) + 1

end

end A034936.P1115765045630556781

noncomputable section

/-- A034936: Numbers k such that 3*k + 4 is prime.

Offset 1, canonical program `A034936.P1115765045630556781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034936 (n : ℕ) : ℤ :=
  A034936.P1115765045630556781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089439.P9144807234089263602

`p?[A153218(n+1)-1]`
-/

namespace A089439.P9144807234089263602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089439.P9144807234089263602

noncomputable section

/-- A089439: 6p+13 and p are primes.

Offset 1, canonical program `A089439.P9144807234089263602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A089439 (n : ℕ) : ℤ :=
  A089439.P9144807234089263602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A089439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153196.P3857920893069032471

`∩[A059325(n+1), A153218(n+1)]`
-/

namespace A153196.P3857920893069032471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153196.P3857920893069032471

noncomputable section

/-- A153196: Numbers k such that 6*k+5 and 6*k+7 are twin primes.

Offset 1, canonical program `A153196.P3857920893069032471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A153196 (n : ℕ) : ℤ :=
  (A153196.P3857920893069032471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A153196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001003.P3197254907760158298

`abs(A080243(n))`
-/

namespace A001003.P3197254907760158298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080243 n|

end

end A001003.P3197254907760158298

noncomputable section

/-- A001003: Schroeder's second problem (generalized parentheses); also called super-Catalan numbers or little Schroeder numbers.

Offset 0, canonical program `A001003.P3197254907760158298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A001003 (n : ℕ) : ℤ :=
  A001003.P3197254907760158298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A001003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003959.P10480308691352807012

`∑{d}[n+1, A003968(#)]`
-/

namespace A003959.P10480308691352807012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d

end

end A003959.P10480308691352807012

noncomputable section

/-- A003959: If n = Product p(k)^e(k) then a(n) = Product (p(k)+1)^e(k), a(1) = 1.

Offset 1, canonical program `A003959.P10480308691352807012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003959 (n : ℕ) : ℤ :=
  A003959.P10480308691352807012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006881.P8515618879267886084

`A161918(A065475(n+1))`
-/

namespace A006881.P8515618879267886084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (A065475 (n + 1)).toNat

end

end A006881.P8515618879267886084

noncomputable section

/-- A006881: Squarefree semiprimes: Numbers that are the product of two distinct primes.

Offset 1, canonical program `A006881.P8515618879267886084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A006881 (n : ℕ) : ℤ :=
  A006881.P8515618879267886084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A006881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013918.P18405346169258133439

`A007504(A013916(n+1))`
-/

namespace A013918.P18405346169258133439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A013916 (n + 1)).toNat

end

end A013918.P18405346169258133439

noncomputable section

/-- A013918: Primes equal to the sum of the first k primes for some k.

Offset 1, canonical program `A013918.P18405346169258133439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A013916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A013918 (n : ℕ) : ℤ :=
  A013918.P18405346169258133439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A013916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A013918.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014284.P16560659510973334811

`A007504(n)+1`
-/

namespace A014284.P16560659510973334811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + 1

end

end A014284.P16560659510973334811

noncomputable section

/-- A014284: Partial sums of primes, if 1 is regarded as a prime (as it was until quite recently, see A008578).

Offset 1, canonical program `A014284.P16560659510973334811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014284 (n : ℕ) : ℤ :=
  A014284.P16560659510973334811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A018805.P12666295524682144614

`2*A015614(n+1)+1`
-/

namespace A018805.P12666295524682144614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015614 (n + 1) + 1

end

end A018805.P12666295524682144614

noncomputable section

/-- A018805: Number of elements in the set {(x,y): 1 <= x,y <= n, gcd(x,y)=1}.

Offset 1, canonical program `A018805.P12666295524682144614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018805 (n : ℕ) : ℤ :=
  A018805.P12666295524682144614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020938.P7358569268824993959

`A000720(Δ[8*A007504(n)])`
-/

namespace A020938.P7358569268824993959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020938.P7358569268824993959

noncomputable section

/-- A020938: Greatest k such that (k-th prime) < (8 times n-th prime).

Offset 1, canonical program `A020938.P7358569268824993959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. -/
def A020938 (n : ℕ) : ℤ :=
  A020938.P7358569268824993959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. -/
def A020938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020939.P15965853669222690897

`A000720(Δ[9*A007504(n)])`
-/

namespace A020939.P15965853669222690897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020939.P15965853669222690897

noncomputable section

/-- A020939: Greatest k such that (k-th prime) < (9 times n-th prime).

Offset 1, canonical program `A020939.P15965853669222690897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1345 terms. -/
def A020939 (n : ℕ) : ℤ :=
  A020939.P15965853669222690897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1345 terms. -/
def A020939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022094.P5430606946720260700

`A007504(A000040(n+1))`
-/

namespace A022094.P5430606946720260700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000040 (n + 1)).toNat

end

end A022094.P5430606946720260700

noncomputable section

/-- A022094: Sum of first prime(n) primes.

Offset 1, canonical program `A022094.P5430606946720260700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022094 (n : ℕ) : ℤ :=
  A022094.P5430606946720260700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024452.P18220208329630154241

`floor(A024447(n+2)/A007504(n+2))`
-/

namespace A024452.P18220208329630154241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024447 (n + 2) : ℚ) / (A007504 (n + 2) : ℚ)⌋

end

end A024452.P18220208329630154241

noncomputable section

/-- A024452: a(n) = [ (2nd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+1 primes}.

Offset 1, canonical program `A024452.P18220208329630154241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024452 (n : ℕ) : ℤ :=
  A024452.P18220208329630154241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024453.P7505489460028250605

`floor(A024448(n+1)/A007504(n+3))`
-/

namespace A024453.P7505489460028250605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024448 (n + 1) : ℚ) / (A007504 (n + 3) : ℚ)⌋

end

end A024453.P7505489460028250605

noncomputable section

/-- A024453: a(n) = [ (3rd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

Offset 1, canonical program `A024453.P7505489460028250605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024453 (n : ℕ) : ℤ :=
  A024453.P7505489460028250605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034962.P16335635607556510049

`p?[A007504(n+3)-A007504(n)]`
-/

namespace A034962.P16335635607556510049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 3) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P16335635607556510049

noncomputable section

/-- A034962: Primes that are the sum of three consecutive primes.

Offset 1, canonical program `A034962.P16335635607556510049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6149 terms. -/
def A034962 (n : ℕ) : ℤ :=
  A034962.P16335635607556510049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6149 terms. -/
def A034962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036660.P2237359148755878033

`(A007504(A014688(n+1))-A007504(n+1))*A000040(n+1)`
-/

namespace A036660.P2237359148755878033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (A014688 (n + 1)).toNat - A007504 (n + 1)) * A000040 (n + 1)

end

end A036660.P2237359148755878033

noncomputable section

/-- A036660: Product of prime p with sum of next p consecutive primes.

Offset 1, canonical program `A036660.P2237359148755878033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A036660 (n : ℕ) : ℤ :=
  A036660.P2237359148755878033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A036660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037012.P10538222427797936235

`-A008482(n)`
-/

namespace A037012.P10538222427797936235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008482 n

end

end A037012.P10538222427797936235

noncomputable section

/-- A037012: Triangle read by rows; row 0 is 0; the n-th row for n>0 contains the coefficients in the expansion of (1-x)*(1+x)^(n-1).

Offset 0, canonical program `A037012.P10538222427797936235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037012 (n : ℕ) : ℤ :=
  A037012.P10538222427797936235.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037012.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037125.P7956072038026776361

`n+1-A007504(A350174(n))`
-/

namespace A037125.P7956072038026776361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007504 (A350174 n).toNat

end

end A037125.P7956072038026776361

noncomputable section

/-- A037125: Irregular triangle: row n is 1, 2, 3, 4, .., prime(n).

Offset 1, canonical program `A037125.P7956072038026776361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037125 (n : ℕ) : ℤ :=
  A037125.P7956072038026776361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045936.P1176020740706065092

`A045935(eq[1, A045935(n+2)-A045935(n+1)]+1)`
-/

namespace A045936.P1176020740706065092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (n + 2) - A045935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045936.P1176020740706065092

noncomputable section

/-- A045936: Numbers n such that n through n+7 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045936.P1176020740706065092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3449 terms. -/
def A045936 (n : ℕ) : ℤ :=
  A045936.P1176020740706065092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3449 terms. -/
def A045936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048867.P9294340375594916807

`lt[A048865(n+1), A048864(n+1)]+1`
-/

namespace A048867.P9294340375594916807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048867.P9294340375594916807

noncomputable section

/-- A048867: Numbers for which reduced residue system contains fewer primes than nonprimes.

Offset 1, canonical program `A048867.P9294340375594916807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9477 terms. -/
def A048867 (n : ℕ) : ℤ :=
  (A048867.P9294340375594916807.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9477 terms. -/
def A048867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048868.P2029712073439447473

`lt[A048864(n+1), A048865(n+1)]+1`
-/

namespace A048868.P2029712073439447473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048868.P2029712073439447473

noncomputable section

/-- A048868: Numbers whose reduced residue system contains more primes than nonprimes.

Offset 1, canonical program `A048868.P2029712073439447473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A048868 (n : ℕ) : ℤ :=
  (A048868.P2029712073439447473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A048868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048984.P11079844054509268560

`A048983(n+1)+1`
-/

namespace A048984.P11079844054509268560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048983 (n + 1) + 1

end

end A048984.P11079844054509268560

noncomputable section

/-- A048984: As n runs through composite numbers, a(n) = number of nonprime d < n such that gcd(d,n) = 1.

Offset 1, canonical program `A048984.P11079844054509268560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048984 (n : ℕ) : ℤ :=
  A048984.P11079844054509268560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053150.P12301494069484336646

`A019555(A062378(n+1))`
-/

namespace A053150.P12301494069484336646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A062378 (n + 1)).toNat

end

end A053150.P12301494069484336646

noncomputable section

/-- A053150: Cube root of largest cube dividing n.

Offset 1, canonical program `A053150.P12301494069484336646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053150 (n : ℕ) : ℤ :=
  A053150.P12301494069484336646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065795.P4754812368865481869

`∑[A063776(n+1)/2]`
-/

namespace A065795.P4754812368865481869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P4754812368865481869

noncomputable section

/-- A065795: Number of subsets of {1,2,...,n} that contain the average of their elements.

Offset 1, canonical program `A065795.P4754812368865481869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A065795 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065795.P4754812368865481869.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A065795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065886.P10189673192464733251

`A053143(A000142(n))`
-/

namespace A065886.P10189673192464733251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A000142 n).toNat

end

end A065886.P10189673192464733251

noncomputable section

/-- A065886: Smallest square divisible by n!.

Offset 0, canonical program `A065886.P10189673192464733251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065886 (n : ℕ) : ℤ :=
  A065886.P10189673192464733251.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075039.P15668940356083047975

`∩[A006073(n+1), A073251(n+1)]`
-/

namespace A075039.P15668940356083047975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P15668940356083047975

noncomputable section

/-- A075039: Smallest of three consecutive squarefree numbers having equal numbers of prime factors.

Offset 1, canonical program `A075039.P15668940356083047975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A075039 (n : ℕ) : ℤ :=
  (A075039.P15668940356083047975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A075039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077354.P15018745007241807855

`A131740(n+1)-A007504(n+1)`
-/

namespace A077354.P15018745007241807855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131740 (n + 1) - A007504 (n + 1)

end

end A077354.P15018745007241807855

noncomputable section

/-- A077354: a(n) = Sum_{i=n+1..2n} prime(i) - Sum_{i=1..n} prime(i).

Offset 1, canonical program `A077354.P15018745007241807855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077354 (n : ℕ) : ℤ :=
  A077354.P15018745007241807855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078445.P1959700787350412093

`p?[floor(A007504(n+1)/(n+1))]`
-/

namespace A078445.P1959700787350412093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078445.P1959700787350412093

noncomputable section

/-- A078445: Primes in A060620, i.e., primes which are integer parts of averages of initial primes.

Offset 1, canonical program `A078445.P1959700787350412093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8217 terms. -/
def A078445 (n : ℕ) : ℤ :=
  A078445.P1959700787350412093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8217 terms. -/
def A078445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082550.P6841504247689330333

`A063776(n+1)-1`
-/

namespace A082550.P6841504247689330333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (n + 1) - 1

end

end A082550.P6841504247689330333

noncomputable section

/-- A082550: Number of sets of distinct positive integers whose arithmetic mean is an integer, the largest integer of the set being n.

Offset 1, canonical program `A082550.P6841504247689330333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082550 (n : ℕ) : ℤ :=
  A082550.P6841504247689330333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083911.P7693470357739100101

`A001876(A000265(n+1))`
-/

namespace A083911.P7693470357739100101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A000265 (n + 1)).toNat

end

end A083911.P7693470357739100101

noncomputable section

/-- A083911: Number of divisors of n that are congruent to 1 modulo 10.

Offset 1, canonical program `A083911.P7693470357739100101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083911 (n : ℕ) : ℤ :=
  A083911.P7693470357739100101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091728.P1788854672037593812

`A035170(n+1)*A049084(A076078(n+1))`
-/

namespace A091728.P1788854672037593812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (n + 1) * A049084 (A076078 (n + 1)).toNat

end

end A091728.P1788854672037593812

noncomputable section

/-- A091728: Number of prime ideals of Z[sqrt(-5)] of norm n.

Offset 1, canonical program `A091728.P1788854672037593812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A091728 (n : ℕ) : ℤ :=
  A091728.P1788854672037593812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A091728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092110.P15519591343573927648

`p?[A088763(n+1)]`
-/

namespace A092110.P15519591343573927648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092110.P15519591343573927648

noncomputable section

/-- A092110: Primes p such that 2p+3 and 2p-3 are both prime.

Offset 1, canonical program `A092110.P15519591343573927648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A092110 (n : ℕ) : ℤ :=
  A092110.P15519591343573927648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A092110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096010.P4903496547079153273

`A063776(n+1)/2+1`
-/

namespace A096010.P4903496547079153273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (n + 1) : ℚ) / 2 + 1

end

end A096010.P4903496547079153273

noncomputable section

/-- A096010: Number of different cycles computed with the generalized 3x+1 problem using C=2, B=Cn+m, A=C^m.

Offset 1, canonical program `A096010.P4903496547079153273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A096010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096010.P4903496547079153273.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A096010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097505.P1588586263477079278

`A007504(A094727(n+1))-A007504(A003056(n))`
-/

namespace A097505.P1588586263477079278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A094727 (n + 1)).toNat - A007504 (A003056 n).toNat

end

end A097505.P1588586263477079278

noncomputable section

/-- A097505: Triangle read by rows: T(n,k) = Sum_{j=1..k} Prime(n+j-1).

Offset 1, canonical program `A097505.P1588586263477079278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097505 (n : ℕ) : ℤ :=
  A097505.P1588586263477079278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099825.P10390891143560570139

`A007504(A000079(n))`
-/

namespace A099825.P10390891143560570139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000079 n).toNat

end

end A099825.P10390891143560570139

noncomputable section

/-- A099825: Sum of the first 2^n primes.

Offset 0, canonical program `A099825.P10390891143560570139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099825 (n : ℕ) : ℤ :=
  A099825.P10390891143560570139.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099826.P17288839142158247066

`A007504(A000244(n))`
-/

namespace A099826.P17288839142158247066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000244 n).toNat

end

end A099826.P17288839142158247066

noncomputable section

/-- A099826: Sum of the first 3^n primes.

Offset 0, canonical program `A099826.P17288839142158247066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099826 (n : ℕ) : ℤ :=
  A099826.P17288839142158247066.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099958.P10152713407958475996

`A049690(n)+A002088(2*n+1)`
-/

namespace A099958.P10152713407958475996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n + A002088 (2 * n + 1)

end

end A099958.P10152713407958475996

noncomputable section

/-- A099958: (1/2)*number of distinct angular positions under which an observer positioned at the center of an edge of a square lattice can see the (2n)X(2n-1) points symmetrically surrounding his position.

Offset 1, canonical program `A099958.P10152713407958475996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099958 (n : ℕ) : ℤ :=
  A099958.P10152713407958475996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101936.P12055823515065416503

`A045935(n+1)+3`
-/

namespace A101936.P12055823515065416503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (n + 1) + 3

end

end A101936.P12055823515065416503

noncomputable section

/-- A101936: Numbers n with omega(n) = omega of 3 nearest larger and 3 nearest smaller neighbors.

Offset 1, canonical program `A101936.P12055823515065416503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101936 (n : ℕ) : ℤ :=
  A101936.P12055823515065416503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103208.P184489622645366464

`eq[9, dr(A007504(n)²)]`
-/

namespace A103208.P184489622645366464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007504 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103208.P184489622645366464

noncomputable section

/-- A103208: Numbers k such that 3 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A103208.P184489622645366464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103208 (n : ℕ) : ℤ :=
  (A103208.P184489622645366464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103444.P1647931111292523615

`A000079(A048571(n))`
-/

namespace A103444.P1647931111292523615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A048571 n).toNat

end

end A103444.P1647931111292523615

noncomputable section

/-- A103444: Triangle read by rows: T(n,k) is number of unitary divisors of C(n,k), 0<=k<=n.

Offset 0, canonical program `A103444.P1647931111292523615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103444 (n : ℕ) : ℤ :=
  A103444.P1647931111292523615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104227.P10518120145948658045

`p?[A104010(n+1)-1]`
-/

namespace A104227.P10518120145948658045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104010 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P10518120145948658045

noncomputable section

/-- A104227: Primes one less than the sum over a sexy prime pair.

Offset 1, canonical program `A104227.P10518120145948658045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104227 (n : ℕ) : ℤ :=
  A104227.P10518120145948658045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109722.P10188503146465590831

`A007504(2*n)`
-/

namespace A109722.P10188503146465590831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n)

end

end A109722.P10188503146465590831

noncomputable section

/-- A109722: Sum of first 2n primes.

Offset 0, canonical program `A109722.P10188503146465590831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109722 (n : ℕ) : ℤ :=
  A109722.P10188503146465590831.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109723.P9563710613651025040

`A007504(2*n+1)`
-/

namespace A109723.P9563710613651025040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n + 1)

end

end A109723.P9563710613651025040

noncomputable section

/-- A109723: Sum of the first 2n+1 primes.

Offset 0, canonical program `A109723.P9563710613651025040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109723 (n : ℕ) : ℤ :=
  A109723.P9563710613651025040.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109725.P13056055185361958747

`A007504((n+1)²)-A007504(n²)`
-/

namespace A109725.P13056055185361958747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 ((n + 1) ^ 2) - A007504 (n ^ 2)

end

end A109725.P13056055185361958747

noncomputable section

/-- A109725: Divide primes in groups with 2n+1 elements and add together.

Offset 0, canonical program `A109725.P13056055185361958747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109725 (n : ℕ) : ℤ :=
  A109725.P13056055185361958747.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109726.P14787538916744219353

`A007504(n*(n+1))-A007504(n*(n-1))`
-/

namespace A109726.P14787538916744219353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n * (n + 1)) - A007504 ((n : ℤ) * ((n : ℤ) - 1)).toNat

end

end A109726.P14787538916744219353

noncomputable section

/-- A109726: Divide primes in groups with 2n elements and add together.

Offset 0, canonical program `A109726.P14787538916744219353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109726 (n : ℕ) : ℤ :=
  A109726.P14787538916744219353.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111319.P8319744077221751074

`comp[n^gcd(5, A007504(n))]`
-/

namespace A111319.P8319744077221751074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Int.gcd 5 (A007504 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A111319.P8319744077221751074

noncomputable section

/-- A111319: Numbers k such that 5 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111319.P8319744077221751074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111319 (n : ℕ) : ℤ :=
  (A111319.P8319744077221751074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111320.P13176253524952530355

`eq[3, (A007504(n)-3)%6]`
-/

namespace A111320.P13176253524952530355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n - 3) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111320.P13176253524952530355

noncomputable section

/-- A111320: Numbers k such that 6 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111320.P13176253524952530355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8328 terms. -/
def A111320 (n : ℕ) : ℤ :=
  (A111320.P13176253524952530355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8328 terms. -/
def A111320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111321.P11993108395501146979

`eq[7, gcd(7, A007504(n+1))]+1`
-/

namespace A111321.P11993108395501146979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111321.P11993108395501146979

noncomputable section

/-- A111321: Numbers k such that 7 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111321.P11993108395501146979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7136 terms. -/
def A111321 (n : ℕ) : ℤ :=
  (A111321.P11993108395501146979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7136 terms. -/
def A111321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111322.P16638155972908692796

`eq[8, gcd(8, A007504(n+1))]+1`
-/

namespace A111322.P16638155972908692796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111322.P16638155972908692796

noncomputable section

/-- A111322: Numbers k such that 8 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111322.P16638155972908692796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A111322 (n : ℕ) : ℤ :=
  (A111322.P16638155972908692796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A111322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111323.P1048443084486664615

`lt[8, dr(A007504(n))]`
-/

namespace A111323.P1048443084486664615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007504 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111323.P1048443084486664615

noncomputable section

/-- A111323: Numbers k such that 9 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111323.P1048443084486664615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. -/
def A111323 (n : ℕ) : ℤ :=
  (A111323.P1048443084486664615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. -/
def A111323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111324.P1944498692377045728

`eq[5, (A007504(n)-5)%10]`
-/

namespace A111324.P1944498692377045728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n - 5) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111324.P1944498692377045728

noncomputable section

/-- A111324: Numbers k such that 10 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111324.P1944498692377045728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5028 terms. -/
def A111324 (n : ℕ) : ℤ :=
  (A111324.P1944498692377045728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5028 terms. -/
def A111324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111325.P7187186331389231185

`lt[8, gcd(11, A007504(n+1))]+1`
-/

namespace A111325.P7187186331389231185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111325.P7187186331389231185

noncomputable section

/-- A111325: Numbers k such that 11 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111325.P7187186331389231185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4585 terms. -/
def A111325 (n : ℕ) : ℤ :=
  (A111325.P7187186331389231185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4585 terms. -/
def A111325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111326.P17342450105142321715

`eq[12, gcd(12, A007504(n+1))]+1`
-/

namespace A111326.P17342450105142321715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111326.P17342450105142321715

noncomputable section

/-- A111326: Numbers k such that 12 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111326.P17342450105142321715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A111326 (n : ℕ) : ℤ :=
  (A111326.P17342450105142321715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A111326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111327.P16693516718763661567

`eq[13, gcd(13, A007504(n+1))]+1`
-/

namespace A111327.P16693516718763661567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 13 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111327.P16693516718763661567

noncomputable section

/-- A111327: Numbers k such that 13 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111327.P16693516718763661567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3771 terms. -/
def A111327 (n : ℕ) : ℤ :=
  (A111327.P16693516718763661567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3771 terms. -/
def A111327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111905.P16457514482036740586

`lt[A079067(n+1), A001221(n+1)]+1`
-/

namespace A111905.P16457514482036740586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111905.P16457514482036740586

noncomputable section

/-- A111905: Numbers k such that more primes, among primes <= the largest prime dividing k, divide k than do not.

Offset 1, canonical program `A111905.P16457514482036740586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A111905 (n : ℕ) : ℤ :=
  (A111905.P16457514482036740586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A111905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111906.P2775197747297038191

`lt[A001221(n+1), A079067(n+1)]+1`
-/

namespace A111906.P2775197747297038191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111906.P2775197747297038191

noncomputable section

/-- A111906: Numbers k such that fewer primes, among primes <= the largest prime dividing k, divide k than do not.

Offset 1, canonical program `A111906.P2775197747297038191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111906 (n : ℕ) : ℤ :=
  (A111906.P2775197747297038191.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111907.P14627999045947996234

`eq[A001221(n+1), A079067(n+1)]+1`
-/

namespace A111907.P14627999045947996234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111907.P14627999045947996234

noncomputable section

/-- A111907: Numbers k such that the same number of primes, among primes <= the largest prime dividing k, divide k as do not.

Offset 1, canonical program `A111907.P14627999045947996234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A111907 (n : ℕ) : ℤ :=
  (A111907.P14627999045947996234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A111907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113417.P14092830831869927536

`A087960(n)*A124340(2*n+1)`
-/

namespace A113417.P14092830831869927536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A124340 (2 * n + 1)

end

end A113417.P14092830831869927536

noncomputable section

/-- A113417: Expansion of phi(x) * phi(-x)^2 * psi(x^4) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A113417.P14092830831869927536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A113417 (n : ℕ) : ℤ :=
  A113417.P14092830831869927536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A113417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113633.P1089532878435800945

`A007504(A000351(n))`
-/

namespace A113633.P1089532878435800945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000351 n).toNat

end

end A113633.P1089532878435800945

noncomputable section

/-- A113633: Sum of the first 5^n primes.

Offset 0, canonical program `A113633.P1089532878435800945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113633 (n : ℕ) : ℤ :=
  A113633.P1089532878435800945.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113634.P14854653620757727462

`A007504(6^n)`
-/

namespace A113634.P14854653620757727462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (6 ^ n)

end

end A113634.P14854653620757727462

noncomputable section

/-- A113634: Sum of the first 6^n primes.

Offset 0, canonical program `A113634.P14854653620757727462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113634 (n : ℕ) : ℤ :=
  A113634.P14854653620757727462.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113635.P8258085166908120649

`A007504(A000420(n))`
-/

namespace A113635.P8258085166908120649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000420 n).toNat

end

end A113635.P8258085166908120649

noncomputable section

/-- A113635: Sum of the first 7^n primes.

Offset 0, canonical program `A113635.P8258085166908120649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113635 (n : ℕ) : ℤ :=
  A113635.P8258085166908120649.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114381.P8894335192554772772

`A007504(A000040(n+2))-A007504(A006093(n+1))`
-/

namespace A114381.P8894335192554772772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000040 (n + 2)).toNat - A007504 (A006093 (n + 1)).toNat

end

end A114381.P8894335192554772772

noncomputable section

/-- A114381: Sums of p-th to the q-th prime where p and q are consecutive primes.

Offset 1, canonical program `A114381.P8894335192554772772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. -/
def A114381 (n : ℕ) : ℤ :=
  A114381.P8894335192554772772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. -/
def A114381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115075.P17756740268072419021

`A053143(n+1)*A069097(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A115075.P17756740268072419021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) * A069097 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A115075.P17756740268072419021

noncomputable section

/-- A115075: Number of 2 X 2 symmetric matrices over Z(n) having determinant 0.

Offset 1, canonical program `A115075.P17756740268072419021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115075 (n : ℕ) : ℤ :=
  A115075.P17756740268072419021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115105.P6138202386834025871

`∩[A070915(n+1), A115063(n+1)]`
-/

namespace A115105.P6138202386834025871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115105.P6138202386834025871

noncomputable section

/-- A115105: Numbers of the form p^F(i)*q^F(j), where p and q are distinct primes; F(i) and F(j) are Fibonacci numbers.

Offset 1, canonical program `A115105.P6138202386834025871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5369 terms. -/
def A115105 (n : ℕ) : ℤ :=
  (A115105.P6138202386834025871.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5369 terms. -/
def A115105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117400.P676579641845705266

`A007504(A000045(n))`
-/

namespace A117400.P676579641845705266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000045 n).toNat

end

end A117400.P676579641845705266

noncomputable section

/-- A117400: Sum of the first F(n) primes, where F(n) is the n-th Fibonacci number.

Offset 0, canonical program `A117400.P676579641845705266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117400 (n : ℕ) : ℤ :=
  A117400.P676579641845705266.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125902.P12495455694751999864

`A007504(A229109(n+1))-A008472(n+1)`
-/

namespace A125902.P12495455694751999864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A229109 (n + 1)).toNat - A008472 (n + 1)

end

end A125902.P12495455694751999864

noncomputable section

/-- A125902: a(n) = sum of the first n primes which are coprime to n.

Offset 1, canonical program `A125902.P12495455694751999864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125902 (n : ℕ) : ℤ :=
  A125902.P12495455694751999864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133670.P186027561368392954

`∑[A063776(A233583(n+1))/2]`
-/

namespace A133670.P186027561368392954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (A233583 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133670.P186027561368392954

noncomputable section

/-- A133670: Partial sums of A000016.

Offset 0, canonical program `A133670.P186027561368392954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A133670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133670.P186027561368392954.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A133670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145154.P3148683332276423765

`and(5, -(Δ[A007504(n)]²+1))*∏{e}[n, #+1]`
-/

namespace A145154.P3148683332276423765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (-((f1 (n + 1) - f1 n) ^ 2 + 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A145154.P3148683332276423765

noncomputable section

/-- A145154: Coefficients in expansion of Eisenstein series E_1.

Offset 0, canonical program `A145154.P3148683332276423765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145154 (n : ℕ) : ℤ :=
  A145154.P3148683332276423765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155113.P12705420447747489867

`record[A000265(A000720(A155058(n+2)))]`
-/

namespace A155113.P12705420447747489867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000720 (A155058 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155113.P12705420447747489867

noncomputable section

/-- A155113: Odd numbers n with odd largest digit of prime(n).

Offset 1, canonical program `A155113.P12705420447747489867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A155113 (n : ℕ) : ℤ :=
  A155113.P12705420447747489867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A155113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156778.P4656544164751589866

`n*A007504(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156778.P4656544164751589866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A007504 n : ℚ) / 2

end

end A156778.P4656544164751589866

noncomputable section

/-- A156778: a(n) = n*A007504(n)/2 = n*(sum of first n primes)/2.

Offset 0, canonical program `A156778.P4656544164751589866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156778 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156778.P4656544164751589866.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156778.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160792.P10104784036141985292

`∑[A142150(n+1)+A007504(A142150(n))]`
-/

namespace A160792.P10104784036141985292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A007504 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160792.P10104784036141985292

noncomputable section

/-- A160792: Vertex number of a rectangular spiral related to prime numbers. The distances between nearest edges of the spiral that are parallel to the initial edge are the prime numbers, while the distances between nearest edges perpendicular to the initial edge are all one.

Offset 0, canonical program `A160792.P10104784036141985292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160792 (n : ℕ) : ℤ :=
  A160792.P10104784036141985292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160793.P11956426580748944804

`A027656(n)+A007504(∑[A001057(n)])`
-/

namespace A160793.P11956426580748944804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A007504 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160793.P11956426580748944804

noncomputable section

/-- A160793: Natural numbers and the sum of first n primes interleaved.

Offset 1, canonical program `A160793.P11956426580748944804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160793 (n : ℕ) : ℤ :=
  A160793.P11956426580748944804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163464.P1746648833047574952

`A054896(Δ[A007504(n)])`
-/

namespace A163464.P1746648833047574952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (f1 (n + 1) - f1 n).toNat

end

end A163464.P1746648833047574952

noncomputable section

/-- A163464: Cumulative sum of a repeated shift-and-add operation on the base-7 representation of prime(n).

Offset 1, canonical program `A163464.P1746648833047574952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A163464 (n : ℕ) : ℤ :=
  A163464.P1746648833047574952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A163464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165194.P12314185476837874606

`A165195(A062050(n+1))`
-/

namespace A165194.P12314185476837874606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165195 (A062050 (n + 1)).toNat

end

end A165194.P12314185476837874606

noncomputable section

/-- A165194: Triangle of 2^(n-1) terms by rows, left half of (n+1)-th row = row n; right half = "reverse and increment" row n; using terms in A000110.

Offset 1, canonical program `A165194.P12314185476837874606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A165194 (n : ℕ) : ℤ :=
  A165194.P12314185476837874606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A165194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165634.P2944057035927304657

`A000720(p?[A082500(n+1)])`
-/

namespace A165634.P2944057035927304657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165634.P2944057035927304657

noncomputable section

/-- A165634: Start with x=1 and repeat: if x is a prime number then (append i and then x, with x=prime(i)) else (only append x), continue with x:=x+1.

Offset 1, canonical program `A165634.P2944057035927304657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5669 terms. -/
def A165634 (n : ℕ) : ℤ :=
  A165634.P2944057035927304657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5669 terms. -/
def A165634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167610.P10793394435637697919

`p?[A166039(n+1)]`
-/

namespace A167610.P10793394435637697919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167610.P10793394435637697919

noncomputable section

/-- A167610: Primes that are the sum of three consecutive nonprimes.

Offset 1, canonical program `A167610.P10793394435637697919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A167610 (n : ℕ) : ℤ :=
  A167610.P10793394435637697919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A167610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170818.P6502870037101137272

`A000265((n+1)/A097706(n+1))`
-/

namespace A170818.P6502870037101137272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A170818.P6502870037101137272

noncomputable section

/-- A170818: a(n) is the product of primes (with multiplicity) of form 4*k+1 that divide n.

Offset 1, canonical program `A170818.P6502870037101137272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170818 (n : ℕ) : ℤ :=
  A170818.P6502870037101137272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000961.P11514301435404104700

`A309269(n+1)-A246655(n+1)`
-/

namespace A000961.P11514301435404104700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309269 (n + 1) - A246655 (n + 1)

end

end A000961.P11514301435404104700

noncomputable section

/-- A000961: Powers of primes. Alternatively, 1 and the prime powers (p^k, p prime, k >= 1).

Offset 1, canonical program `A000961.P11514301435404104700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000961 (n : ℕ) : ℤ :=
  A000961.P11514301435404104700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001182.P18331014380152811402

`Δ[A211636(n)]`
-/

namespace A001182.P18331014380152811402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001182.P18331014380152811402

noncomputable section

/-- A001182: Number of cells of square lattice of edge 1/n inside quadrant of unit circle centered at 0.

Offset 1, canonical program `A001182.P18331014380152811402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001182 (n : ℕ) : ℤ :=
  A001182.P18331014380152811402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003841.P6958147360462621523

`A329119(n+1)²`
-/

namespace A003841.P6958147360462621523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329119 (n + 1) ^ 2

end

end A003841.P6958147360462621523

noncomputable section

/-- A003841: Order of universal Chevalley group D_2(q), q = prime power.

Offset 1, canonical program `A003841.P6958147360462621523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003841 (n : ℕ) : ℤ :=
  A003841.P6958147360462621523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005940.P997646858218259533

`A243353(A006068(n))`
-/

namespace A005940.P997646858218259533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A006068 n).toNat

end

end A005940.P997646858218259533

noncomputable section

/-- A005940: The Doudna sequence: write n-1 in binary; power of prime(k) in a(n) is # of 1's that are followed by k-1 0's.

Offset 1, canonical program `A005940.P997646858218259533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A243353, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005940 (n : ℕ) : ℤ :=
  A005940.P997646858218259533.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A243353, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015049.P15346329914750650440

`A007913(lt[0, A105570(n)])*A087050(n+1)`
-/

namespace A015049.P15346329914750650440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A087050 (n + 1)

end

end A015049.P15346329914750650440

noncomputable section

/-- A015049: Let m = A013929(n); then a(n) = smallest k such that m divides k^2.

Offset 1, canonical program `A015049.P15346329914750650440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015049 (n : ℕ) : ℤ :=
  A015049.P15346329914750650440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015053.P7212782911095139929

`A019555(A019554(n+1))`
-/

namespace A015053.P7212782911095139929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A019554 (n + 1)).toNat

end

end A015053.P7212782911095139929

noncomputable section

/-- A015053: Smallest positive integer for which n divides a(n)^6.

Offset 1, canonical program `A015053.P7212782911095139929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015053 (n : ℕ) : ℤ :=
  A015053.P7212782911095139929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020642.P1879843505214688540

`A305801(A013921(n+1))-3`
-/

namespace A020642.P1879843505214688540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (A013921 (n + 1)).toNat - 3

end

end A020642.P1879843505214688540

noncomputable section

/-- A020642: n-th composite is sum of first k composites for some k.

Offset 1, canonical program `A020642.P1879843505214688540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A020642 (n : ℕ) : ℤ :=
  A020642.P1879843505214688540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A020642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026235.P2955859054597217029

`abs(1-A026234(n+1)+n)`
-/

namespace A026235.P2955859054597217029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A026234 (n + 1) + (n : ℤ)|

end

end A026235.P2955859054597217029

noncomputable section

/-- A026235: a(n) = |s(n) - n|, where s = A026234.

Offset 1, canonical program `A026235.P2955859054597217029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026235 (n : ℕ) : ℤ :=
  A026235.P2955859054597217029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049723.P10463802410882888049

`A048149(n)+A014200(A048147(n))`
-/

namespace A049723.P10463802410882888049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 n + A014200 (A048147 n).toNat

end

end A049723.P10463802410882888049

noncomputable section

/-- A049723: Array T read by diagonals; T(i,j)=number of lattice points (x,y) in closed right half-plane and circle with radius (0,0)-to-(i,j).

Offset 0, canonical program `A049723.P10463802410882888049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049723 (n : ℕ) : ℤ :=
  A049723.P10463802410882888049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051226.P497692568898990968

`2*A051225(n+1)`
-/

namespace A051226.P497692568898990968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051225 (n + 1)

end

end A051226.P497692568898990968

noncomputable section

/-- A051226: Numbers m such that the Bernoulli number B_m has denominator 30.

Offset 1, canonical program `A051226.P497692568898990968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051226 (n : ℕ) : ℤ :=
  A051226.P497692568898990968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052213.P7998642975196925189

`∩[A005237(n+1), A276553(n+1)]`
-/

namespace A052213.P7998642975196925189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P7998642975196925189

noncomputable section

/-- A052213: Numbers k with prime signature(k) = prime signature(k+1).

Offset 1, canonical program `A052213.P7998642975196925189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8541 terms. -/
def A052213 (n : ℕ) : ℤ :=
  (A052213.P7998642975196925189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8541 terms. -/
def A052213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054080.P10690886715511353127

`∑{d}[n+1, A001037(#-1)]`
-/

namespace A054080.P10690886715511353127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001037 (d - 1)

end

end A054080.P10690886715511353127

noncomputable section

/-- A054080: Inverse Moebius transform of A001037 (starting at term 0).

Offset 0, canonical program `A054080.P10690886715511353127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054080 (n : ℕ) : ℤ :=
  A054080.P10690886715511353127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055097.P7629506041412364577

`A000005(A055096(n+2))`
-/

namespace A055097.P7629506041412364577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055096 (n + 2)).toNat

end

end A055097.P7629506041412364577

noncomputable section

/-- A055097: Number of divisors for each term in the triangle A055096. It is 2 for primes (all of the form 4k+1).

Offset 1, canonical program `A055097.P7629506041412364577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055097 (n : ℕ) : ℤ :=
  A055097.P7629506041412364577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056761.P3347424074707073657

`record[A000265(A056757(n+2))]`
-/

namespace A056761.P3347424074707073657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A056757 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056761.P3347424074707073657

noncomputable section

/-- A056761: Odd numbers less than the cube of their number of divisors.

Offset 1, canonical program `A056761.P3347424074707073657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A056761 (n : ℕ) : ℤ :=
  A056761.P3347424074707073657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A056761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058766.P4843056571337141709

`abs(or(-2^n, A001037(n)))`
-/

namespace A058766.P4843056571337141709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-(2 ^ n : ℤ)) (A001037 n)|

end

end A058766.P4843056571337141709

noncomputable section

/-- A058766: a(0) = 1, a(1) = 2; for n>=2 a(n) is the number of degree-n reducible polynomials over GF(2).

Offset 0, canonical program `A058766.P4843056571337141709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A058766 (n : ℕ) : ℤ :=
  A058766.P4843056571337141709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A058766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059238.P6314019284050348555

`(A246655(n+1)-1)*A329119(n+1)`
-/

namespace A059238.P6314019284050348555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) - 1) * A329119 (n + 1)

end

end A059238.P6314019284050348555

noncomputable section

/-- A059238: Orders of the finite groups GL_2(K) when K is a finite field with q = A246655(n) elements.

Offset 1, canonical program `A059238.P6314019284050348555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, A329119, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A059238 (n : ℕ) : ℤ :=
  A059238.P6314019284050348555.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, A329119, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A059238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059966.P5188141675617584754

`A001037((n+1)%(2*n+1))`
-/

namespace A059966.P5188141675617584754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 ((n + 1) % (2 * n + 1))

end

end A059966.P5188141675617584754

noncomputable section

/-- A059966: a(n) = (1/n) * Sum_{ d divides n } mu(n/d) * (2^d - 1).

Offset 1, canonical program `A059966.P5188141675617584754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A059966 (n : ℕ) : ℤ :=
  A059966.P5188141675617584754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A059966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064016.P3137235747641558068

`10^n*(10^n+1)/2-A064018(n)`
-/

namespace A064016.P3137235747641558068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) * ((10 ^ n + 1 : ℚ) / 2) - (A064018 n : ℚ)

end

end A064016.P3137235747641558068

noncomputable section

/-- A064016: a(n) = Sum_{k <= 10^n} cototient(k), where cototient is A051953.

Offset 0, canonical program `A064016.P3137235747641558068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064018, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064016.P3137235747641558068.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064018, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064016.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065152.P5975500746502698895

`A070556(n+1)-A054571(n+1)`
-/

namespace A065152.P5975500746502698895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1) - A054571 (n + 1)

end

end A065152.P5975500746502698895

noncomputable section

/-- A065152: Cototient(totient(n)) - totient(cototient(n)).

Offset 1, canonical program `A065152.P5975500746502698895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065152 (n : ℕ) : ℤ :=
  A065152.P5975500746502698895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065499.P14795021583104513444

`(n+1)^9-A064767(n+1)`
-/

namespace A065499.P14795021583104513444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 9 : ℤ) - A064767 (n + 1)

end

end A065499.P14795021583104513444

noncomputable section

/-- A065499: Noninvertible 3 X 3 matrices over Z_n.

Offset 1, canonical program `A065499.P14795021583104513444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065499 (n : ℕ) : ℤ :=
  A065499.P14795021583104513444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066670.P7613232947555051159

`p?[A000265(A000010(n+1))]`
-/

namespace A066670.P7613232947555051159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P7613232947555051159

noncomputable section

/-- A066670: Primes arising in A066669: the only odd prime divisor of phi(A066669(n)).

Offset 1, canonical program `A066670.P7613232947555051159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8031 terms. -/
def A066670 (n : ℕ) : ℤ :=
  A066670.P7613232947555051159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8031 terms. -/
def A066670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066813.P15946866973234656462

`lcm(Δ[A005728(n)], A000010(n+2))`
-/

namespace A066813.P15946866973234656462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000010 (n + 2))

end

end A066813.P15946866973234656462

noncomputable section

/-- A066813: a(n) = lcm(phi(n), phi(n+1)).

Offset 1, canonical program `A066813.P15946866973234656462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066813 (n : ℕ) : ℤ :=
  (A066813.P15946866973234656462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068582.P1025897322335427898

`eq[A000005(n+1), A049107(n+1)]+1`
-/

namespace A068582.P1025897322335427898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068582.P1025897322335427898

noncomputable section

/-- A068582: Let phi_m(x) = phi(phi(...(phi(x))...)) m times; sequence gives values of k such that phi_5(k) = tau(k).

Offset 1, canonical program `A068582.P1025897322335427898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A068582 (n : ℕ) : ℤ :=
  (A068582.P1025897322335427898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A068582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071836.P9927628474577651843

`eq[A033273(n+1), A079067(n+1)]+1`
-/

namespace A071836.P9927628474577651843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071836.P9927628474577651843

noncomputable section

/-- A071836: Numbers k such that the largest prime factor of k = prime(tau(k)).

Offset 1, canonical program `A071836.P9927628474577651843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A071836 (n : ℕ) : ℤ :=
  (A071836.P9927628474577651843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A071836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072604.P7451887866366379934

`∩[10*n, A072589(n+1)]`
-/

namespace A072604.P7451887866366379934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072604.P7451887866366379934

noncomputable section

/-- A072604: Last digit of n, phi(n) and sigma(n) is 0 in base 10.

Offset 1, canonical program `A072604.P7451887866366379934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1335 terms. -/
def A072604 (n : ℕ) : ℤ :=
  (A072604.P7451887866366379934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1335 terms. -/
def A072604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076763.P7586696728486630368

`∩[A294277(n+1)+1, A294278(n+1)]`
-/

namespace A076763.P7586696728486630368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076763.P7586696728486630368

noncomputable section

/-- A076763: 1-apexes of omega: numbers n such that omega(n-1) < omega(n) > omega(n+1), where omega(m) = the number of distinct prime factors of m.

Offset 1, canonical program `A076763.P7586696728486630368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6813 terms. -/
def A076763 (n : ℕ) : ℤ :=
  (A076763.P7586696728486630368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6813 terms. -/
def A076763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079546.P3272410509726425478

`Δ[A160664(n)-A100449(n)]`
-/

namespace A079546.P3272410509726425478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079546.P3272410509726425478

noncomputable section

/-- A079546: a(n) = sigma(n) - 4*phi(n).

Offset 1, canonical program `A079546.P3272410509726425478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079546 (n : ℕ) : ℤ :=
  A079546.P3272410509726425478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079703.P2275513762090753196

`4*A043297(n+2)`
-/

namespace A079703.P2275513762090753196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A043297 (n + 2)

end

end A079703.P2275513762090753196

noncomputable section

/-- A079703: Numbers 4p where p is prime and 2p+1 and 4p+1 are composite.

Offset 0, canonical program `A079703.P2275513762090753196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079703 (n : ℕ) : ℤ :=
  A079703.P2275513762090753196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080101.P17293988866175764959

`A366833(n+1)-1`
-/

namespace A080101.P17293988866175764959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366833 (n + 1) - 1

end

end A080101.P17293988866175764959

noncomputable section

/-- A080101: Number of prime powers in all composite numbers between n-th prime and next prime.

Offset 1, canonical program `A080101.P17293988866175764959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080101 (n : ℕ) : ℤ :=
  A080101.P17293988866175764959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080102.P8782798429570687549

`A005451(A345531(n+2))`
-/

namespace A080102.P8782798429570687549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A345531 (n + 2)).toNat

end

end A080102.P8782798429570687549

noncomputable section

/-- A080102: Smallest prime power in all composite numbers between n-th prime and next prime, a(n) = 1 if no such prime power exists.

Offset 2, canonical program `A080102.P8782798429570687549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A080102 (n : ℕ) : ℤ :=
  A080102.P8782798429570687549.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A080102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081755.P13675370153460538164

`A000079(val(A000010(A081754(n+1)), 2))`
-/

namespace A081755.P13675370153460538164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000010 (A081754 (n + 1)).toNat).toNat 2)

end

end A081755.P13675370153460538164

noncomputable section

/-- A081755: Number of noncongruent solutions to x^(2^m) == 1 (mod n) when n is such that the number of solutions is the same for any m>=1.

Offset 1, canonical program `A081755.P13675370153460538164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081755 (n : ℕ) : ℤ :=
  A081755.P13675370153460538164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087625.P17976689394819581728

`A117494(A005451(n+1))`
-/

namespace A087625.P17976689394819581728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A005451 (n + 1)).toNat

end

end A087625.P17976689394819581728

noncomputable section

/-- A087625: Number of primes in the ring Z_n.

Offset 1, canonical program `A087625.P17976689394819581728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087625 (n : ℕ) : ℤ :=
  A087625.P17976689394819581728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089233.P13957741673571392928

`A018892(n+1)-A000005(n+1)`
-/

namespace A089233.P13957741673571392928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) - A000005 (n + 1)

end

end A089233.P13957741673571392928

noncomputable section

/-- A089233: Number of coprime pairs of divisors > 1 of n.

Offset 1, canonical program `A089233.P13957741673571392928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A018892, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089233 (n : ℕ) : ℤ :=
  A089233.P13957741673571392928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A018892, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101934.P8442723091966144168

`∩[A294277(n+1), A294278(n+1)+1]`
-/

namespace A101934.P8442723091966144168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294278 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101934.P8442723091966144168

noncomputable section

/-- A101934: Numbers n with omega(n) smaller than omega(n-1) and omega(n+1).

Offset 1, canonical program `A101934.P8442723091966144168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101934 (n : ℕ) : ℤ :=
  (A101934.P8442723091966144168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105410.P90063867077969444

`∩[A107770(n+1), A155752(n+1)-1]`
-/

namespace A105410.P90063867077969444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105410.P90063867077969444

noncomputable section

/-- A105410: Numbers k such that prime(k)-2 and prime(k+3)-2 are both primes.

Offset 1, canonical program `A105410.P90063867077969444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. -/
def A105410 (n : ℕ) : ℤ :=
  (A105410.P90063867077969444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. -/
def A105410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115226.P2780584315718374276

`A064767(n+1)/A000056(n+1)`
-/

namespace A115226.P2780584315718374276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ)

end

end A115226.P2780584315718374276

noncomputable section

/-- A115226: Order of the group of invertible 3 X 3 symmetric matrices over Z(n).

Offset 1, canonical program `A115226.P2780584315718374276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000056, A064767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115226.P2780584315718374276.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000056, A064767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115944.P14075242755931929840

`floor(1/A343504(n))`
-/

namespace A115944.P14075242755931929840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A343504 n : ℚ)⌋

end

end A115944.P14075242755931929840

noncomputable section

/-- A115944: Number of partitions of n into distinct factorials.

Offset 0, canonical program `A115944.P14075242755931929840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115944 (n : ℕ) : ℤ :=
  A115944.P14075242755931929840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117657.P1042648279683353267

`A000189(n+1)*A055653(A019555(n+1))`
-/

namespace A117657.P1042648279683353267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1) * A055653 (A019555 (n + 1)).toNat

end

end A117657.P1042648279683353267

noncomputable section

/-- A117657: Number of solutions to x^(k+3)=x^3 mod n for some k>=1.

Offset 1, canonical program `A117657.P1042648279683353267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117657 (n : ℕ) : ℤ :=
  A117657.P1042648279683353267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118363.P17308598929900215827

`record[gcd(n+1, (n+1)%A034968(n+1))]`
-/

namespace A118363.P17308598929900215827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A034968 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118363.P17308598929900215827

noncomputable section

/-- A118363: Factorial base Niven (or Harshad) numbers: numbers that are divisible by the sum of their factorial base digits.

Offset 1, canonical program `A118363.P17308598929900215827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A118363 (n : ℕ) : ℤ :=
  (A118363.P17308598929900215827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A118363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131203.P3578267669090281606

`A001037(2*n+1)/2`
-/

namespace A131203.P3578267669090281606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (2 * n + 1) : ℚ) / 2

end

end A131203.P3578267669090281606

noncomputable section

/-- A131203: Number of cycles of length n under the mapping x -> x^2-2 modulo Fermat prime 2^(2^m)+1, where m is any fixed integer such that n divides 2^m-1.

Offset 0, canonical program `A131203.P3578267669090281606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131203.P3578267669090281606.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136486.P13738774024279800787

`4*A136484(n)`
-/

namespace A136486.P13738774024279800787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A136484 n

end

end A136486.P13738774024279800787

noncomputable section

/-- A136486: Number of unit square lattice cells enclosed by origin centered circle of diameter 2n+1.

Offset 0, canonical program `A136486.P13738774024279800787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136486 (n : ℕ) : ℤ :=
  A136486.P13738774024279800787.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136515.P2899484087255744926

`2*A136484(n)`
-/

namespace A136515.P2899484087255744926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136484 n

end

end A136515.P2899484087255744926

noncomputable section

/-- A136515: Number of unit square lattice cells inside half-plane (two adjacent quadrants) of origin centered circle of diameter 2n+1.

Offset 0, canonical program `A136515.P2899484087255744926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136515 (n : ℕ) : ℤ :=
  A136515.P2899484087255744926.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137714.P5842750326419721295

`p?[A104163(n+1)-A255607(n+1)]`
-/

namespace A137714.P5842750326419721295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104163 (n + 1) - A255607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137714.P5842750326419721295

noncomputable section

/-- A137714: Prime numbers p such that p +- ((p-1)/5) are primes.

Offset 1, canonical program `A137714.P5842750326419721295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A137714 (n : ℕ) : ℤ :=
  A137714.P5842750326419721295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A137714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139328.P7634971209800712135

`∑[A285269(n)]`
-/

namespace A139328.P7634971209800712135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139328.P7634971209800712135

noncomputable section

/-- A139328: Sums of rows of the triangle in A139325.

Offset 1, canonical program `A139328.P7634971209800712135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139328 (n : ℕ) : ℤ :=
  A139328.P7634971209800712135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141674.P6920368319490395348

`A000005(∑[A010054(n)])*A126988(n+1)`
-/

namespace A141674.P6920368319490395348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A126988 (n + 1)

end

end A141674.P6920368319490395348

noncomputable section

/-- A141674: Triangle T(n,m) read by rows: T(n,m) = sigma_0(n) * A126988(n,m).

Offset 1, canonical program `A141674.P6920368319490395348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141674 (n : ℕ) : ℤ :=
  A141674.P6920368319490395348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143724.P16783861548530068702

`∑{d}[A127093(n+1), A332684(#)]`
-/

namespace A143724.P16783861548530068702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A332684 d

end

end A143724.P16783861548530068702

noncomputable section

/-- A143724: Triangle read by rows, inverse Möbius transform of a diagonalized matrix of A116477.

Offset 1, canonical program `A143724.P16783861548530068702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143724 (n : ℕ) : ℤ :=
  A143724.P16783861548530068702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151740.P2454433821023245285

`A167611(n+2)`
-/

namespace A151740.P2454433821023245285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167611 (n + 2)

end

end A151740.P2454433821023245285

noncomputable section

/-- A151740: Composites that are the sum of two consecutive composite numbers.

Offset 1, canonical program `A151740.P2454433821023245285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A151740 (n : ℕ) : ℤ :=
  A151740.P2454433821023245285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A151740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152912.P3210305954891432639

`A000040(A220789(n+1))`
-/

namespace A152912.P3210305954891432639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A220789 (n + 1)).toNat

end

end A152912.P3210305954891432639

noncomputable section

/-- A152912: Primes p such that 2*p^2-1 is not prime.

Offset 1, canonical program `A152912.P3210305954891432639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152912 (n : ℕ) : ℤ :=
  A152912.P3210305954891432639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158327.P17963926596425252861

`∑{d}[A000265(n+1)%(n+1), A000005(A274611(#))]`
-/

namespace A158327.P17963926596425252861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 (A274611 d).toNat

end

end A158327.P17963926596425252861

noncomputable section

/-- A158327: a(n) = A145444(n)-A145511(n).

Offset 1, canonical program `A158327.P17963926596425252861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158327 (n : ℕ) : ℤ :=
  A158327.P17963926596425252861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159459.P8256841740485809122

`A000005(A002260(n+1))-A077478(n+1)`
-/

namespace A159459.P8256841740485809122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat - A077478 (n + 1)

end

end A159459.P8256841740485809122

noncomputable section

/-- A159459: Rectangular array read by antidiagonals: a(n,m) = number of divisors of m that don't divide n.

Offset 1, canonical program `A159459.P8256841740485809122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A159459 (n : ℕ) : ℤ :=
  A159459.P8256841740485809122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A159459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160696.P6608074752827117068

`A326038(A000040(n+1))`
-/

namespace A160696.P6608074752827117068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (A000040 (n + 1)).toNat

end

end A160696.P6608074752827117068

noncomputable section

/-- A160696: Largest k such that k^2 divides prime(n)+1.

Offset 1, canonical program `A160696.P6608074752827117068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A160696 (n : ℕ) : ℤ :=
  A160696.P6608074752827117068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A160696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165562.P417528794060687203

`record[(n+1)*(3-A000005(A129283(n+1)))]`
-/

namespace A165562.P417528794060687203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A000005 (A129283 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165562.P417528794060687203

noncomputable section

/-- A165562: Numbers k for which k+k' is prime, k' being the arithmetic derivative of k.

Offset 1, canonical program `A165562.P417528794060687203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A165562 (n : ℕ) : ℤ :=
  A165562.P417528794060687203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A165562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165773.P7798958671883465394

`eq[1, A034968(A000010(n+1))]+1`
-/

namespace A165773.P7798958671883465394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A165773.P7798958671883465394

noncomputable section

/-- A165773: Numbers k for which phi(k) = m! for some integer m, where phi = A000010.

Offset 1, canonical program `A165773.P7798958671883465394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A165773 (n : ℕ) : ℤ :=
  (A165773.P7798958671883465394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A165773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167340.P3802847850510465819

`(n+1)*A166590(n+1)`
-/

namespace A167340.P3802847850510465819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166590 (n + 1)

end

end A167340.P3802847850510465819

noncomputable section

/-- A167340: Totally multiplicative sequence with a(p) = p*(p+2) = p^2+2p for prime p.

Offset 1, canonical program `A167340.P3802847850510465819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167340 (n : ℕ) : ℤ :=
  A167340.P3802847850510465819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167355.P16103125878729455081

`A166586(n+1)*A166590(n+1)`
-/

namespace A167355.P16103125878729455081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A166590 (n + 1)

end

end A167355.P16103125878729455081

noncomputable section

/-- A167355: Totally multiplicative sequence with a(p) = (p-2)*(p+2) = p^2-4 for prime p.

Offset 1, canonical program `A167355.P16103125878729455081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167355 (n : ℕ) : ℤ :=
  A167355.P16103125878729455081.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167358.P1480310879331971813

`A166590(n+1)²`
-/

namespace A167358.P1480310879331971813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) ^ 2

end

end A167358.P1480310879331971813

noncomputable section

/-- A167358: Totally multiplicative sequence with a(p) = (p+2)^2 = p^2+4p+4 for prime p.

Offset 1, canonical program `A167358.P1480310879331971813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167358 (n : ℕ) : ℤ :=
  A167358.P1480310879331971813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167359.P16411272990790649797

`A166590(n+1)*A166589(n+1)`
-/

namespace A167359.P16411272990790649797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A166589 (n + 1)

end

end A167359.P16411272990790649797

noncomputable section

/-- A167359: Totally multiplicative sequence with a(p) = (p+2)*(p-3) = p^2-p-6 for prime p.

Offset 1, canonical program `A167359.P16411272990790649797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167359 (n : ℕ) : ℤ :=
  A167359.P16411272990790649797.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000161.P12733227588245460575

`ceil((A063725(n)+char[(n+1)²]+char[n²])/2)`
-/

namespace A000161.P12733227588245460575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) : ℚ) / 2⌉

end

end A000161.P12733227588245460575

noncomputable section

/-- A000161: Number of partitions of n into 2 squares.

Offset 0, canonical program `A000161.P12733227588245460575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000161 (n : ℕ) : ℤ :=
  A000161.P12733227588245460575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014574.P4587706211531852143

`A129297(n+5)`
-/

namespace A014574.P4587706211531852143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129297 (n + 5)

end

end A014574.P4587706211531852143

noncomputable section

/-- A014574: Average of twin prime pairs.

Offset 1, canonical program `A014574.P4587706211531852143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129297, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014574 (n : ℕ) : ℤ :=
  A014574.P4587706211531852143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129297, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014574.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015641.P988703046572257947

`A015640(n+2)-A000332(n+1)`
-/

namespace A015641.P988703046572257947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (n + 2) - A000332 (n + 1)

end

end A015641.P988703046572257947

noncomputable section

/-- A015641: Number of 5-tuples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015641.P988703046572257947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A015641 (n : ℕ) : ℤ :=
  A015641.P988703046572257947.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A015641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025284.P7403956482281687192

`eq[1, ceil(A063725(n)/2)]`
-/

namespace A025284.P7403956482281687192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P7403956482281687192

noncomputable section

/-- A025284: Numbers that are the sum of 2 nonzero squares in exactly 1 way.

Offset 1, canonical program `A025284.P7403956482281687192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A025284 (n : ℕ) : ℤ :=
  (A025284.P7403956482281687192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A025284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025426.P9414248645359162695

`ceil(A063725(n)/2)`
-/

namespace A025426.P9414248645359162695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n : ℚ) / 2⌉

end

end A025426.P9414248645359162695

noncomputable section

/-- A025426: Number of partitions of n into 2 nonzero squares.

Offset 0, canonical program `A025426.P9414248645359162695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025426 (n : ℕ) : ℤ :=
  A025426.P9414248645359162695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027742.P15524387088752407227

`A295501(n+1)/(2*(n+1))`
-/

namespace A027742.P15524387088752407227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295501 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A027742.P15524387088752407227

noncomputable section

/-- A027742: a(n) = phi(4^n-1)/(2*n).

Offset 1, canonical program `A027742.P15524387088752407227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A027742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027742.P15524387088752407227.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A027742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033715.P6517919621530533375

`A028572(4*n)`
-/

namespace A033715.P6517919621530533375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028572 (4 * n)

end

end A033715.P6517919621530533375

noncomputable section

/-- A033715: Number of integer solutions (x, y) to the equation x^2 + 2y^2 = n.

Offset 0, canonical program `A033715.P6517919621530533375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033715 (n : ℕ) : ℤ :=
  A033715.P6517919621530533375.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036707.P3603739173683534618

`2*A036711(n)+n+1`
-/

namespace A036707.P3603739173683534618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036711 n + (n + 1 : ℤ)

end

end A036707.P3603739173683534618

noncomputable section

/-- A036707: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, b>=0.

Offset 0, canonical program `A036707.P3603739173683534618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8116 terms. -/
def A036707 (n : ℕ) : ℤ :=
  A036707.P3603739173683534618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8116 terms. -/
def A036707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036709.P8581218697881049908

`A136484(n)+Δ[n²]`
-/

namespace A036709.P8581218697881049908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136484 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A036709.P8581218697881049908

noncomputable section

/-- A036709: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, a>=0, b>=0.

Offset 0, canonical program `A036709.P8581218697881049908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. -/
def A036709 (n : ℕ) : ℤ :=
  A036709.P8581218697881049908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. -/
def A036709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038580.P12857475608215451734

`A006450(Δ[A007504(n)])`
-/

namespace A038580.P12857475608215451734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (n + 1) - f1 n).toNat

end

end A038580.P12857475608215451734

noncomputable section

/-- A038580: Primes with indices that are primes with prime indices.

Offset 1, canonical program `A038580.P12857475608215451734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A038580 (n : ℕ) : ℤ :=
  A038580.P12857475608215451734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A038580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049078.P3999378590791680599

`A006450(A018252(n+1))`
-/

namespace A049078.P3999378590791680599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A018252 (n + 1)).toNat

end

end A049078.P3999378590791680599

noncomputable section

/-- A049078: Primes prime(k) for which A049076(k) = 2.

Offset 1, canonical program `A049078.P3999378590791680599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049078 (n : ℕ) : ℤ :=
  A049078.P3999378590791680599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056742.P16159248755186500217

`A000079(n+1)-A378514(n+2)`
-/

namespace A056742.P16159248755186500217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A378514 (n + 2)

end

end A056742.P16159248755186500217

noncomputable section

/-- A056742: a(n) = phi(2^n - 1)/2.

Offset 2, canonical program `A056742.P16159248755186500217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056742 (n : ℕ) : ℤ :=
  A056742.P16159248755186500217.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057470.P6870654479483838036

`A006450(A029707(n+1))`
-/

namespace A057470.P6870654479483838036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A029707 (n + 1)).toNat

end

end A057470.P6870654479483838036

noncomputable section

/-- A057470: Let prime(i) = i-th prime, let twin(n) = (P,Q) be n-th pair of twin primes; sequence gives prime(P).

Offset 1, canonical program `A057470.P6870654479483838036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057470 (n : ℕ) : ℤ :=
  A057470.P6870654479483838036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060374.P11457074353475961309

`2*A060373(n)+n`
-/

namespace A060374.P11457074353475961309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060373 n + (n : ℤ)

end

end A060374.P11457074353475961309

noncomputable section

/-- A060374: a(n)=p+q, where n=p-q and p, q, p+q are in A005836 (integers written without 2 in base 3).

Offset 0, canonical program `A060374.P11457074353475961309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060374 (n : ℕ) : ℤ :=
  A060374.P11457074353475961309.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066694.P293942461781957692

`eq[1, A295308(n+1)]+1`
-/

namespace A066694.P293942461781957692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066694.P293942461781957692

noncomputable section

/-- A066694: Numbers k such that phi(sigma(k)) > k.

Offset 1, canonical program `A066694.P293942461781957692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 804 terms. -/
def A066694 (n : ℕ) : ℤ :=
  (A066694.P293942461781957692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 804 terms. -/
def A066694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072677.P5065037936157036762

`A006450(n+1)+A001223(A000040(n+1))`
-/

namespace A072677.P5065037936157036762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + A001223 (A000040 (n + 1)).toNat

end

end A072677.P5065037936157036762

noncomputable section

/-- A072677: a(n) = prime(prime(n)+1) where prime(k) is the k-th prime.

Offset 1, canonical program `A072677.P5065037936157036762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A072677 (n : ℕ) : ℤ :=
  A072677.P5065037936157036762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A072677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073065.P7723057593703031197

`Δ[A007504(n)]*A006450(n+1)`
-/

namespace A073065.P7723057593703031197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006450 (n + 1)

end

end A073065.P7723057593703031197

noncomputable section

/-- A073065: a(n) = prime(n) * prime(prime(n)).

Offset 1, canonical program `A073065.P7723057593703031197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073065 (n : ℕ) : ℤ :=
  A073065.P7723057593703031197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073130.P270506743588403326

`gcd(Δ[A006450(n+1)], A054541(n+2))`
-/

namespace A073130.P270506743588403326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A054541 (n + 2))

end

end A073130.P270506743588403326

noncomputable section

/-- A073130: a(n) = gcd(p(n+1) - p(n), p(p(n+1)) - p(p(n))), where p(n) is the n-th prime.

Offset 1, canonical program `A073130.P270506743588403326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073130 (n : ℕ) : ℤ :=
  (A073130.P270506743588403326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073131.P6750966020783042022

`A006450(n+2)-A006450(n+1)`
-/

namespace A073131.P6750966020783042022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A006450 (n + 1)

end

end A073131.P6750966020783042022

noncomputable section

/-- A073131: a(n) = prime(prime(n+1)) - prime(prime(n)).

Offset 1, canonical program `A073131.P6750966020783042022`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073131 (n : ℕ) : ℤ :=
  A073131.P6750966020783042022.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073136.P10460070805719689660

`A006450(n+1)+Δ[A007504(n)]`
-/

namespace A073136.P10460070805719689660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (f1 (n + 1) - f1 n)

end

end A073136.P10460070805719689660

noncomputable section

/-- A073136: a(n) = prime(n) + prime(prime(n)).

Offset 1, canonical program `A073136.P10460070805719689660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073136 (n : ℕ) : ℤ :=
  A073136.P10460070805719689660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078653.P17276121586744895402

`A006450(A080147(n+1))`
-/

namespace A078653.P17276121586744895402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A080147 (n + 1)).toNat

end

end A078653.P17276121586744895402

noncomputable section

/-- A078653: a(n) = prime(k) where k = n-th prime congruent to 1 mod 4.

Offset 1, canonical program `A078653.P17276121586744895402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078653 (n : ℕ) : ℤ :=
  A078653.P17276121586744895402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078654.P16044069131984749737

`A006450(A080148(n+1))`
-/

namespace A078654.P16044069131984749737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A080148 (n + 1)).toNat

end

end A078654.P16044069131984749737

noncomputable section

/-- A078654: a(n) = prime(k) where k = n-th prime congruent to 3 mod 4.

Offset 1, canonical program `A078654.P16044069131984749737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078654 (n : ℕ) : ℤ :=
  A078654.P16044069131984749737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078655.P12934853789389506289

`A006450(A091178(n+1))`
-/

namespace A078655.P12934853789389506289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A091178 (n + 1)).toNat

end

end A078655.P12934853789389506289

noncomputable section

/-- A078655: a(n) = prime(k) where k = n-th prime congruent to 1 mod 6.

Offset 1, canonical program `A078655.P12934853789389506289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078655 (n : ℕ) : ℤ :=
  A078655.P12934853789389506289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078656.P2820646494609425011

`A006450(A049511(n+1))`
-/

namespace A078656.P2820646494609425011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A049511 (n + 1)).toNat

end

end A078656.P2820646494609425011

noncomputable section

/-- A078656: a(n) = prime(k) where k = n-th prime congruent to 1 mod 10.

Offset 1, canonical program `A078656.P2820646494609425011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078656 (n : ℕ) : ℤ :=
  A078656.P2820646494609425011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079033.P6576801754187756287

`Δ[p?[A262086(n+1)]]`
-/

namespace A079033.P6576801754187756287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P6576801754187756287

noncomputable section

/-- A079033: First differences of A023203.

Offset 1, canonical program `A079033.P6576801754187756287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A079033 (n : ℕ) : ℤ :=
  A079033.P6576801754187756287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A079033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080697.P5728652288469415747

`(n+1)*A006450(n+1)`
-/

namespace A080697.P5728652288469415747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006450 (n + 1)

end

end A080697.P5728652288469415747

noncomputable section

/-- A080697: a(n) = n * prime(prime(n)).

Offset 1, canonical program `A080697.P5728652288469415747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080697 (n : ℕ) : ℤ :=
  A080697.P5728652288469415747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083186.P11976608839394708486

`∑[A006450(n+1)]`
-/

namespace A083186.P11976608839394708486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P11976608839394708486

noncomputable section

/-- A083186: Sum of the first n primes whose indices are primes.

Offset 1, canonical program `A083186.P11976608839394708486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083186 (n : ℕ) : ℤ :=
  A083186.P11976608839394708486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092252.P17826796624829402363

`A006450(10^n)`
-/

namespace A092252.P17826796624829402363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (10 ^ n)

end

end A092252.P17826796624829402363

noncomputable section

/-- A092252: a(n) = prime(prime(10^n)).

Offset 0, canonical program `A092252.P17826796624829402363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092252 (n : ℕ) : ℤ :=
  A092252.P17826796624829402363.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092769.P14315236457722144089

`A006450(n+1)²`
-/

namespace A092769.P14315236457722144089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) ^ 2

end

end A092769.P14315236457722144089

noncomputable section

/-- A092769: Squares of A006450: a(n) = prime(prime(n))^2.

Offset 1, canonical program `A092769.P14315236457722144089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092769 (n : ℕ) : ℤ :=
  A092769.P14315236457722144089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092770.P3673948446089129611

`A006450(n+1)^3`
-/

namespace A092770.P3673948446089129611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) ^ 3

end

end A092770.P3673948446089129611

noncomputable section

/-- A092770: Cubes of A006450: a(n) = prime(prime(n))^3.

Offset 1, canonical program `A092770.P3673948446089129611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092770 (n : ℕ) : ℤ :=
  A092770.P3673948446089129611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094069.P10196989370020764207

`p?[A006450(n+1)-4]`
-/

namespace A094069.P10196989370020764207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P10196989370020764207

noncomputable section

/-- A094069: Prime(p)-4 for primes p such that prime(p) - 4 is prime.

Offset 1, canonical program `A094069.P10196989370020764207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A094069 (n : ℕ) : ℤ :=
  A094069.P10196989370020764207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A094069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096079.P11427664201264587869

`∪[A050795(n+1), A050796(n+2)]`
-/

namespace A096079.P11427664201264587869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096079.P11427664201264587869

noncomputable section

/-- A096079: Near hypotenuse numbers, i.e., n such that n^2 -+ 1 = a^2 + b^2, with a, b > 1.

Offset 1, canonical program `A096079.P11427664201264587869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096079 (n : ℕ) : ℤ :=
  (A096079.P11427664201264587869.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096479.P1185693016366905234

`A006450(A096477(n+1))`
-/

namespace A096479.P1185693016366905234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A096477 (n + 1)).toNat

end

end A096479.P1185693016366905234

noncomputable section

/-- A096479: "Secondary twin primes": a(n) = A006450(A096477(n)).

Offset 1, canonical program `A096479.P1185693016366905234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8558 terms. -/
def A096479 (n : ℕ) : ℤ :=
  A096479.P1185693016366905234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8558 terms. -/
def A096479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100567.P10372355797948485653

`A006450(ceil(3*n/2)+1)`
-/

namespace A100567.P10372355797948485653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (⌈3 * ((n : ℚ) / 2)⌉ + 1).toNat

end

end A100567.P10372355797948485653

noncomputable section

/-- A100567: Prime-indexed primes as n runs through the integers congruent to 0 or 1 mod 3.

Offset 1, canonical program `A100567.P10372355797948485653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100567 (n : ℕ) : ℤ :=
  A100567.P10372355797948485653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119711.P6383508046076492674

`p?[A171666(n+1)-1]`
-/

namespace A119711.P6383508046076492674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119711.P6383508046076492674

noncomputable section

/-- A119711: Primes p such that p+1, p+2 and p+3 have equal number of divisors.

Offset 1, canonical program `A119711.P6383508046076492674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A119711 (n : ℕ) : ℤ :=
  A119711.P6383508046076492674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A119711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121944.P13014670239025665609

`∩[A050800(n+1), A053755(n)]`
-/

namespace A121944.P13014670239025665609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P13014670239025665609

noncomputable section

/-- A121944: Composite number of the form 4n^2+1.

Offset 1, canonical program `A121944.P13014670239025665609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5036 terms. -/
def A121944 (n : ℕ) : ℤ :=
  (A121944.P13014670239025665609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5036 terms. -/
def A121944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126800.P2125643861586013567

`A195153(∑[A195150(n+2)]+3)+1`
-/

namespace A126800.P2125643861586013567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195153 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat + 1

end

end A126800.P2125643861586013567

noncomputable section

/-- A126800: Smallest divisor of n which is greater than largest divisor d of n such that each integer from 1 to d is also a divisor of n.

Offset 3, canonical program `A126800.P2125643861586013567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A126800 (n : ℕ) : ℤ :=
  A126800.P2125643861586013567.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A126800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134427.P9505557340857002464

`floor(sqrt(A134420(n+1)))`
-/

namespace A134427.P9505557340857002464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A134420 (n + 1))

end

end A134427.P9505557340857002464

noncomputable section

/-- A134427: Numbers k such that k^2 + 1 is a composite squarefree number.

Offset 1, canonical program `A134427.P9505557340857002464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134427 (n : ℕ) : ℤ :=
  A134427.P9505557340857002464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141436.P7162572235992512063

`∪[A006450(n+1), A018252(A018252(n+1))]`
-/

namespace A141436.P7162572235992512063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141436.P7162572235992512063

noncomputable section

/-- A141436: Tisdale's sieve: generators for an infinite set of disjoint prime/nonprime sequences (see Comments for precise definition).

Offset 1, canonical program `A141436.P7162572235992512063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141436 (n : ℕ) : ℤ :=
  (A141436.P7162572235992512063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147810.P3662463774335131867

`A147809(n+1)+1`
-/

namespace A147810.P3662463774335131867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1) + 1

end

end A147810.P3662463774335131867

noncomputable section

/-- A147810: Half the number of divisors of n^2+1.

Offset 1, canonical program `A147810.P3662463774335131867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147809, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147810 (n : ℕ) : ℤ :=
  A147810.P3662463774335131867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147809, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153150.P14859093954344078196

`A341915(A064707(A153153(n)))`
-/

namespace A153150.P14859093954344078196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A064707 (A153153 n).toNat).toNat

end

end A153150.P14859093954344078196

noncomputable section

/-- A153150: Self-inverse permutation of natural numbers: A059893-conjugate of A056539.

Offset 0, canonical program `A153150.P14859093954344078196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153150 (n : ℕ) : ℤ :=
  A153150.P14859093954344078196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154437.P11607465258887740319

`A056539(2*A335858(n))/2`
-/

namespace A154437.P11607465258887740319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056539 (2 * A335858 n).toNat : ℚ) / 2

end

end A154437.P11607465258887740319

noncomputable section

/-- A154437: Permutation of nonnegative integers: A059893-conjugate of A154435.

Offset 0, canonical program `A154437.P11607465258887740319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A154437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154437.P11607465258887740319.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A154437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155133.P16298633087751083546

`eq[1, A147809(5*n+2)]`
-/

namespace A155133.P16298633087751083546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155133.P16298633087751083546

noncomputable section

/-- A155133: Numbers k >= 0 such that 5k^2+4k+1 is prime.

Offset 1, canonical program `A155133.P16298633087751083546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A155133 (n : ℕ) : ℤ :=
  (A155133.P16298633087751083546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A155133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162911.P13044090797899104373

`A002487(A258996(n+1))`
-/

namespace A162911.P13044090797899104373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A258996 (n + 1)).toNat

end

end A162911.P13044090797899104373

noncomputable section

/-- A162911: Numerators of drib tree fractions, where drib is the bit-reversal permutation tree of the Bird tree.

Offset 1, canonical program `A162911.P13044090797899104373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162911 (n : ℕ) : ℤ :=
  A162911.P13044090797899104373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162912.P15780371086772788936

`A002487(1+A258996(n+1))`
-/

namespace A162912.P15780371086772788936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A258996 (n + 1)).toNat

end

end A162912.P15780371086772788936

noncomputable section

/-- A162912: Denominators of drib tree fractions, where drib is the bit-reversal permutation tree of the Bird tree.

Offset 1, canonical program `A162912.P15780371086772788936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162912 (n : ℕ) : ℤ :=
  A162912.P15780371086772788936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162912.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163755.P822583815578675357

`A057335(A341915(n))`
-/

namespace A163755.P822583815578675357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A341915 n).toNat

end

end A163755.P822583815578675357

noncomputable section

/-- A163755: a(0)=1. For n>=1, write n in binary. Let b(n,m) be the length of the m-th run of 0's or 1's, reading right to left. Then a(n) = product{m=1 to M} p(m)^b(n,m), where p(m) is the m-th prime, and M is the number of runs of 0's and 1's in binary n.

Offset 0, canonical program `A163755.P822583815578675357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057335, A341915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163755 (n : ℕ) : ℤ :=
  A163755.P822583815578675357.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057335, A341915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163755.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168152.P14558718132513138966

`A006450(n+1)-A000040(n+1)`
-/

namespace A168152.P14558718132513138966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - A000040 (n + 1)

end

end A168152.P14558718132513138966

noncomputable section

/-- A168152: a(n) = prime(prime(n)) - prime(n).

Offset 1, canonical program `A168152.P14558718132513138966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168152 (n : ℕ) : ℤ :=
  A168152.P14558718132513138966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168245.P5546774106743624338

`A006450(n+2)-A100484(n+1)`
-/

namespace A168245.P5546774106743624338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A100484 (n + 1)

end

end A168245.P5546774106743624338

noncomputable section

/-- A168245: prime(prime(n+1))-2*prime(n).

Offset 1, canonical program `A168245.P5546774106743624338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A100484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168245 (n : ℕ) : ℤ :=
  A168245.P5546774106743624338.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A100484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168272.P13748373025009212725

`abs(A006450(n+1)-A007821(n+1))`
-/

namespace A168272.P13748373025009212725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006450 (n + 1) - A007821 (n + 1)|

end

end A168272.P13748373025009212725

noncomputable section

/-- A168272: a(n) = abs(prime(prime(n))-prime(nonprime(n))).

Offset 1, canonical program `A168272.P13748373025009212725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A007821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168272 (n : ℕ) : ℤ :=
  A168272.P13748373025009212725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A007821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168354.P3857296402165648192

`filter[A044918(n+1), A353481(#)]`
-/

namespace A168354.P3857296402165648192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A168354.P3857296402165648192

noncomputable section

/-- A168354: Squarefree semiprimes whose binary expansion is palindromic.

Offset 1, canonical program `A168354.P3857296402165648192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A168354 (n : ℕ) : ℤ :=
  A168354.P3857296402165648192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A168354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000742.P13490306228597101565

`Δ[A015627(n+3)+∑[∑[n]]]`
-/

namespace A000742.P13490306228597101565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015627 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000742.P13490306228597101565

noncomputable section

/-- A000742: Number of compositions of n into 4 ordered relatively prime parts.

Offset 4, canonical program `A000742.P13490306228597101565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. -/
def A000742 (n : ℕ) : ℤ :=
  A000742.P13490306228597101565.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. -/
def A000742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000743.P6553726784885921065

`Δ[A015640(n+4)]`
-/

namespace A000743.P6553726784885921065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000743.P6553726784885921065

noncomputable section

/-- A000743: Number of compositions of n into 5 ordered relatively prime parts.

Offset 5, canonical program `A000743.P6553726784885921065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A000743 (n : ℕ) : ℤ :=
  A000743.P6553726784885921065.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A000743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002496.P13667531374760205001

`A121326(n%a(n-1))` with `a(0)=2`
-/

namespace A002496.P13667531374760205001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A121326 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A002496.P13667531374760205001

noncomputable section

/-- A002496: Primes of the form k^2 + 1.

Offset 1, canonical program `A002496.P13667531374760205001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002496 (n : ℕ) : ℤ :=
  A002496.P13667531374760205001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028949.P15011364157154069551

`A147809(abs(1-2*n))+A122553(n)`
-/

namespace A028949.P15011364157154069551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 |1 - (2 * n : ℤ)|.toNat + A122553 n

end

end A028949.P15011364157154069551

noncomputable section

/-- A028949: Write numbers from 1 to n(n+1)/2 in a left-justified lower triangular array (a) downwards and (b) across; a(n) is number of numbers in same position in both.

Offset 1, canonical program `A028949.P15011364157154069551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A028949 (n : ℕ) : ℤ :=
  A028949.P15011364157154069551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A028949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045548.P12713011086801001099

`eq[4, A374015(n)]`
-/

namespace A045548.P12713011086801001099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045548.P12713011086801001099

noncomputable section

/-- A045548: Numbers whose factorial has '4' as its final nonzero digit.

Offset 1, canonical program `A045548.P12713011086801001099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A045548 (n : ℕ) : ℤ :=
  (A045548.P12713011086801001099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A045548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049732.P11638542157924361709

`A028310(n)+ceil(A049744(n)/2)`
-/

namespace A049732.P11638542157924361709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ⌈(A049744 n : ℚ) / 2⌉

end

end A049732.P11638542157924361709

noncomputable section

/-- A049732: a(n)=T(n,1), array T as in A049723.

Offset 0, canonical program `A049732.P11638542157924361709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049732 (n : ℕ) : ℤ :=
  A049732.P11638542157924361709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061368.P10250961159884053711

`p?[A112928(n+1)-2]`
-/

namespace A061368.P10250961159884053711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112928 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061368.P10250961159884053711

noncomputable section

/-- A061368: Lesser of twin primes (p, p+2) whose average p+1 is not squarefree.

Offset 1, canonical program `A061368.P10250961159884053711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. -/
def A061368 (n : ℕ) : ℤ :=
  A061368.P10250961159884053711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. -/
def A061368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062948.P1375917266178059174

`A001281(A166362(n+2))`
-/

namespace A062948.P1375917266178059174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A166362 (n + 2)).toNat

end

end A062948.P1375917266178059174

noncomputable section

/-- A062948: a(n) = H(A002808(n)) where H(n) is the half-totient function, H(n) = phi(n)/2: (A023022) and A002808(n) are the composites.

Offset 1, canonical program `A062948.P1375917266178059174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8947 terms. -/
def A062948 (n : ℕ) : ℤ :=
  A062948.P1375917266178059174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8947 terms. -/
def A062948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066994.P5597610892535735044

`eq[0, (n+1)%A289412(n+1)]+1`
-/

namespace A066994.P5597610892535735044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A289412 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066994.P5597610892535735044

noncomputable section

/-- A066994: Numbers k such that phi(k) divides k*sigma(k).

Offset 1, canonical program `A066994.P5597610892535735044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A066994 (n : ℕ) : ℤ :=
  (A066994.P5597610892535735044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A066994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070287.P15555425564075004326

`eq[1, char[A009286(n+1)]]`
-/

namespace A070287.P15555425564075004326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070287.P15555425564075004326

noncomputable section

/-- A070287: Numbers k such that the equation lcm(sigma(x),phi(x))=k has solutions.

Offset 1, canonical program `A070287.P15555425564075004326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A070287 (n : ℕ) : ℤ :=
  (A070287.P15555425564075004326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A070287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087248.P12195210729776297847

`record[A007947(A308127(n+1))]`
-/

namespace A087248.P12195210729776297847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A308127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087248.P12195210729776297847

noncomputable section

/-- A087248: Squarefree abundant numbers.

Offset 1, canonical program `A087248.P12195210729776297847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5505 terms. -/
def A087248 (n : ℕ) : ℤ :=
  A087248.P12195210729776297847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5505 terms. -/
def A087248.provenance : SequenceMachineLib.Provenance := .conjectured

