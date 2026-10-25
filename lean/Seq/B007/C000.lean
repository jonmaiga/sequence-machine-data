import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
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
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A036577.P861720372246105226

`A029883(n+1)+1`
-/

namespace A036577.P861720372246105226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1) + 1

end

end A036577.P861720372246105226

noncomputable section

/-- A036577: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 1, canonical program `A036577.P861720372246105226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036577 (n : ℕ) : ℤ :=
  A036577.P861720372246105226.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115378.P14874640245619376635

`A080100(n+1)-1`
-/

namespace A115378.P14874640245619376635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (n + 1) - 1

end

end A115378.P14874640245619376635

noncomputable section

/-- A115378: a(n) = number of positive integers k < n such that n XOR k = (n+k).

Offset 1, canonical program `A115378.P14874640245619376635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115378 (n : ℕ) : ℤ :=
  A115378.P14874640245619376635.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119477.P8043149192793779635

`A061313(n+1)+1`
-/

namespace A119477.P8043149192793779635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (n + 1) + 1

end

end A119477.P8043149192793779635

noncomputable section

/-- A119477: a(1)=1, a(n) = a((n+1)/2) + 2 if n is odd, a(n) = a(n/2) + 1 if n is even.

Offset 1, canonical program `A119477.P8043149192793779635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119477 (n : ℕ) : ℤ :=
  A119477.P8043149192793779635.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120632.P1454145713146504368

`A120633(n+1)+A040976(n+2)`
-/

namespace A120632.P1454145713146504368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120633 (n + 1) + A040976 (n + 2)

end

end A120632.P1454145713146504368

noncomputable section

/-- A120632: Number of numbers >1 up to 2*prime(n) which are divisible by primes up to prime(n).

Offset 1, canonical program `A120632.P1454145713146504368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120632 (n : ℕ) : ℤ :=
  A120632.P1454145713146504368.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053381.P7424849021433620728

`A209675(n+1)-1`
-/

namespace A053381.P7424849021433620728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209675 (n + 1) - 1

end

end A053381.P7424849021433620728

noncomputable section

/-- A053381: Maximal number of linearly independent smooth nowhere-zero vector fields on a (2n+1)-sphere.

Offset 0, canonical program `A053381.P7424849021433620728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053381 (n : ℕ) : ℤ :=
  A053381.P7424849021433620728.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053381.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A024704.P6119245964848831634

`lt[3, A091282(n+1)]+1`
-/

namespace A024704.P6119245964848831634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091282 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024704.P6119245964848831634

noncomputable section

/-- A024704: Positions of even numbers in A024702.

Offset 1, canonical program `A024704.P6119245964848831634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4987 terms. -/
def A024704 (n : ℕ) : ℤ :=
  (A024704.P6119245964848831634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4987 terms. -/
def A024704.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050216.P18243411776574111140

`A251723(A028310(n))+1`
-/

namespace A050216.P18243411776574111140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (A028310 n).toNat + 1

end

end A050216.P18243411776574111140

noncomputable section

/-- A050216: Number of primes between (prime(n))^2 and (prime(n+1))^2, with a(0) = 2 by convention.

Offset 0, canonical program `A050216.P18243411776574111140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A050216 (n : ℕ) : ℤ :=
  A050216.P18243411776574111140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A050216.provenance : SequenceMachineLib.Provenance := .conjectured

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

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072581.P13999376890829246694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072578 (n + 1)).toNat

end

end A072581.P13999376890829246694

noncomputable section

/-- A072581: a(n) = A000040(A072578(n)).

Offset 1, canonical program `A072581.P13999376890829246694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072581 (n : ℕ) : ℤ :=
  A072581.P13999376890829246694.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072581.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088308.P16348985359279735252

`(A060462(n+1)+1)%10`
-/

namespace A088308.P16348985359279735252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060462 (n + 1) + 1) 10

end

end A088308.P16348985359279735252

noncomputable section

/-- A088308: 2 followed by list of composite numbers mod 10.

Offset 1, canonical program `A088308.P16348985359279735252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088308 (n : ℕ) : ℤ :=
  A088308.P16348985359279735252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096038.P12246479114707872370

`A096037(n+1)-1`
-/

namespace A096038.P12246479114707872370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - 1

end

end A096038.P12246479114707872370

noncomputable section

/-- A096038: Triangle T(n,m) = (3*n^2-3*m^2+5*m-4+n)/2 read by rows.

Offset 1, canonical program `A096038.P12246479114707872370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096038 (n : ℕ) : ℤ :=
  A096038.P12246479114707872370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096038.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100876.P16570100526589804960

`A081611(A227471(n+1))`
-/

namespace A100876.P16570100526589804960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A227471 (n + 1)).toNat

end

end A100876.P16570100526589804960

noncomputable section

/-- A100876: Least number of squares that sum to prime(n).

Offset 1, canonical program `A100876.P16570100526589804960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100876 (n : ℕ) : ℤ :=
  A100876.P16570100526589804960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100876.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104728.P13928348646976407776

`2*A104716(n+1)-A104634(n+1)`
-/

namespace A104728.P13928348646976407776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104716 (n + 1) - A104634 (n + 1)

end

end A104728.P13928348646976407776

noncomputable section

/-- A104728: Triangle T(n,k) = (k-1-n)*(k-2-n)*(k-2+2*n)/2 read by rows, 1<=k<=n.

Offset 1, canonical program `A104728.P13928348646976407776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104728 (n : ℕ) : ℤ :=
  A104728.P13928348646976407776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104728.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126246.P16910619274962634977

`∑{d}[n+1, A086831(#)*A214682((n+1)/#)]`
-/

namespace A126246.P16910619274962634977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086831 d * A214682 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P16910619274962634977

noncomputable section

/-- A126246: a(n) is the number of Fibonacci numbers among (F(1),F(2),F(3),...,F(n)) which are coprime to F(n), where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A126246.P16910619274962634977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126246 (n : ℕ) : ℤ :=
  A126246.P16910619274962634977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128116.P12706371843886189910

`A096037(n+1)-A101447(n)`
-/

namespace A128116.P12706371843886189910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A101447 n

end

end A128116.P12706371843886189910

noncomputable section

/-- A128116: A128064 * A122432 (unsigned).

Offset 1, canonical program `A128116.P12706371843886189910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128116 (n : ℕ) : ℤ :=
  A128116.P12706371843886189910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128116.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128432.P3443979121522389698

`∑{d}[A127449(n+1), A007427(#)]`
-/

namespace A128432.P3443979121522389698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128432.P3443979121522389698

noncomputable section

/-- A128432: Triangle read by rows: A128407 * A054521.

Offset 1, canonical program `A128432.P3443979121522389698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128432 (n : ℕ) : ℤ :=
  A128432.P3443979121522389698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130207.P2831721020535577098

`A023531(n)*A078401(n+1)`
-/

namespace A130207.P2831721020535577098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A078401 (n + 1)

end

end A130207.P2831721020535577098

noncomputable section

/-- A130207: Diagonalized matrix of A000010, Euler totient function phi.

Offset 1, canonical program `A130207.P2831721020535577098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130207 (n : ℕ) : ℤ :=
  A130207.P2831721020535577098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130207.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A004439.P13435589376260114249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7658 terms. -/
def A004439 (n : ℕ) : ℤ :=
  (A004439.P13435589376260114249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7658 terms. -/
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

Offset 1, canonical program `A022887.P6127104275096827440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022887 (n : ℕ) : ℤ :=
  A022887.P6127104275096827440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023742.P9190710118575259042

`∩[A014312(n+1), A045091(n+1)]`
-/

namespace A023742.P9190710118575259042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P9190710118575259042

noncomputable section

/-- A023742: Base 4 expansion uses each positive digit just once.

Offset 1, canonical program `A023742.P9190710118575259042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A023742 (n : ℕ) : ℤ :=
  (A023742.P9190710118575259042.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A023742.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026126.P1694299990526256443

`Δ[A026125(n+4)]-A026124(n+4)`
-/

namespace A026126.P1694299990526256443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026125 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026124 (n + 4)

end

end A026126.P1694299990526256443

noncomputable section

/-- A026126: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 5, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-4), where T is the array in A026120.

Offset 4, canonical program `A026126.P1694299990526256443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026126 (n : ℕ) : ℤ :=
  A026126.P1694299990526256443.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026163.P15912496800147311050

`A026152(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A026163.P15912496800147311050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026152 (n + 1) + a (n - 1)

end

end A026163.P15912496800147311050

noncomputable section

/-- A026163: Sum{T(k,k-1)}, k = 1,2,...,n, where T is the array in A026148.

Offset 1, canonical program `A026163.P15912496800147311050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026163 (n : ℕ) : ℤ :=
  A026163.P15912496800147311050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026855.P12013813959007215242

`A026850(n+2)-A026854(n+1)`
-/

namespace A026855.P12013813959007215242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026850 (n + 2) - A026854 (n + 1)

end

end A026855.P12013813959007215242

noncomputable section

/-- A026855: a(n) = T(2n+1,n+2), T given by A026736.

Offset 1, canonical program `A026855.P12013813959007215242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026855 (n : ℕ) : ℤ :=
  A026855.P12013813959007215242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026855.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A028266.P10744337187639313587

`A028263(eq[2, gcd(2, A028263(n))])`
-/

namespace A028266.P10744337187639313587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028266.P10744337187639313587

noncomputable section

/-- A028266: Even elements in 3-Pascal triangle A028262 (by row).

Offset 0, canonical program `A028266.P10744337187639313587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8527 terms. -/
def A028266 (n : ℕ) : ℤ :=
  A028266.P10744337187639313587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8527 terms. -/
def A028266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028276.P15109551320821074576

`A028263(n)+A007318(n)`
-/

namespace A028276.P15109551320821074576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n + A007318 n

end

end A028276.P15109551320821074576

noncomputable section

/-- A028276: Elements in 4-Pascal triangle A028275 (by row) that are not 1.

Offset 0, canonical program `A028276.P15109551320821074576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028276 (n : ℕ) : ℤ :=
  A028276.P15109551320821074576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028276.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A034020.P14532094965484365911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6603 terms. -/
def A034020 (n : ℕ) : ℤ :=
  (A034020.P14532094965484365911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6603 terms. -/
def A034020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035194.P1613741361831210486

`A035186(A214682(n+1))`
-/

namespace A035194.P1613741361831210486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A214682 (n + 1)).toNat

end

end A035194.P1613741361831210486

noncomputable section

/-- A035194: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 12.

Offset 1, canonical program `A035194.P1613741361831210486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035194 (n : ℕ) : ℤ :=
  A035194.P1613741361831210486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035202.P10068291810367777291

`A035187(A214682(n+1))`
-/

namespace A035202.P10068291810367777291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A214682 (n + 1)).toNat

end

end A035202.P10068291810367777291

noncomputable section

/-- A035202: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 20.

Offset 1, canonical program `A035202.P10068291810367777291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035202 (n : ℕ) : ℤ :=
  A035202.P10068291810367777291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036238.P9635143634491131780

`A002378(A092543(n+1))%A028263(A057944(n))`
-/

namespace A036238.P9635143634491131780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 (A092543 (n + 1)).toNat) (A028263 (A057944 n).toNat)

end

end A036238.P9635143634491131780

noncomputable section

/-- A036238: Triangle of numbers a(r,j) = j*(j+1) mod r+2, r>=1, j=1..r.

Offset 1, canonical program `A036238.P9635143634491131780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036238 (n : ℕ) : ℤ :=
  A036238.P9635143634491131780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036238.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038486.P3069835024340169564

`A033045(A014312(n+1))`
-/

namespace A038486.P3069835024340169564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A014312 (n + 1)).toNat

end

end A038486.P3069835024340169564

noncomputable section

/-- A038486: Sums of 4 distinct powers of 8.

Offset 1, canonical program `A038486.P3069835024340169564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038486 (n : ℕ) : ℤ :=
  A038486.P3069835024340169564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045935.P15068729089152290012

`A045934(eq[1, A045934(n+2)-A045934(n+1)]+1)`
-/

namespace A045935.P15068729089152290012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 2) - A045934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045935.P15068729089152290012

noncomputable section

/-- A045935: Numbers n such that n through n+6 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045935.P15068729089152290012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3579 terms. -/
def A045935 (n : ℕ) : ℤ :=
  A045935.P15068729089152290012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3579 terms. -/
def A045935.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A052218.P15024547465433023170

`A001202(A014312(n+1)+1)`
-/

namespace A052218.P15024547465433023170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A014312 (n + 1) + 1).toNat

end

end A052218.P15024547465433023170

noncomputable section

/-- A052218: Numbers whose sum of digits is 4.

Offset 1, canonical program `A052218.P15024547465433023170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A052218 (n : ℕ) : ℤ :=
  A052218.P15024547465433023170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A052218.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056203.P4742980478354179597

`sqrt(A057103(n+2)+A055096(n+2)²)`
-/

namespace A056203.P4742980478354179597
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057103 (n + 2) + A055096 (n + 2) ^ 2 : ℝ)

end

end A056203.P4742980478354179597

noncomputable section

/-- A056203: Triangle of numbers related to congruum problem: T(n,k)=n^2+2nk-k^2 with n>k>0, starting at T(2,1)=7.

Offset 1, canonical program `A056203.P4742980478354179597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055096, A057103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056203.P4742980478354179597.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055096, A057103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056673.P2016486030983977128

`A056671(A001405(n+1))`
-/

namespace A056673.P2016486030983977128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A001405 (n + 1)).toNat

end

end A056673.P2016486030983977128

noncomputable section

/-- A056673: Number of unitary and squarefree divisors of binomial(n, floor(n/2)). Also the number of divisors of the powerfree part of A001405(n), A056060(n).

Offset 1, canonical program `A056673.P2016486030983977128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056673 (n : ℕ) : ℤ :=
  A056673.P2016486030983977128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056674.P17578094997466486638

`A034444(n+1)-A056671(n+1)`
-/

namespace A056674.P17578094997466486638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A056671 (n + 1)

end

end A056674.P17578094997466486638

noncomputable section

/-- A056674: Number of squarefree divisors which are not unitary. Also number of unitary divisors which are not squarefree.

Offset 1, canonical program `A056674.P17578094997466486638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056674 (n : ℕ) : ℤ :=
  A056674.P17578094997466486638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059399.P9766970929742721937

`A057944(n)+A057059(n+1)`
-/

namespace A059399.P9766970929742721937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A057059 (n + 1)

end

end A059399.P9766970929742721937

noncomputable section

/-- A059399: Triangular hopscotch.

Offset 1, canonical program `A059399.P9766970929742721937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059399 (n : ℕ) : ℤ :=
  A059399.P9766970929742721937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059399.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A060325.P9919999057588717172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060325 (n : ℕ) : ℤ :=
  A060325.P9919999057588717172.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060325.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A081386.P11376049931011802170

`A056173(2*(n+1))`
-/

namespace A081386.P11376049931011802170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (2 * (n + 1))

end

end A081386.P11376049931011802170

noncomputable section

/-- A081386: Number of unitary prime divisors of central binomial coefficient, C(2n,n) = A000984(n), i.e., number of those prime factors in C(2n,n), whose exponent equals one.

Offset 1, canonical program `A081386.P11376049931011802170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A081386 (n : ℕ) : ℤ :=
  A081386.P11376049931011802170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A081386.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086374.P1835455265533878125

`A069733(2*(n+1))-A000035(n+1)`
-/

namespace A086374.P1835455265533878125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (2 * (n + 1)) - A000035 (n + 1)

end

end A086374.P1835455265533878125

noncomputable section

/-- A086374: Number of factors over Q in the factorization of T_n(x) + 1 where T_n(x) is the Chebyshev polynomial of the first kind.

Offset 1, canonical program `A086374.P1835455265533878125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A086374 (n : ℕ) : ℤ :=
  A086374.P1835455265533878125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A086374.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086971.P8267424955413097261

`A056170(n+1)+A079275(n+1)`
-/

namespace A086971.P8267424955413097261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) + A079275 (n + 1)

end

end A086971.P8267424955413097261

noncomputable section

/-- A086971: Number of semiprime divisors of n.

Offset 1, canonical program `A086971.P8267424955413097261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A079275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086971 (n : ℕ) : ℤ :=
  A086971.P8267424955413097261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A079275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086971.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A094930.P3291015638818169319

`A016789(A002262(n))*A096037(n+1)`
-/

namespace A094930.P3291015638818169319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A002262 n).toNat * A096037 (n + 1)

end

end A094930.P3291015638818169319

noncomputable section

/-- A094930: Triangle T(n,m) read by rows, defined by squaring a matrix with row entries 2+3*(m-1).

Offset 1, canonical program `A094930.P3291015638818169319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094930 (n : ℕ) : ℤ :=
  A094930.P3291015638818169319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095077.P13354407846713250107

`p?[A014312(n+1)]`
-/

namespace A095077.P13354407846713250107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095077.P13354407846713250107

noncomputable section

/-- A095077: Primes with four 1-bits in their binary expansion.

Offset 1, canonical program `A095077.P13354407846713250107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A095077 (n : ℕ) : ℤ :=
  A095077.P13354407846713250107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A095077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098059.P11755285612293814488

`A000040(eq[1, A080378(n+1)+1]+1)`
-/

namespace A098059.P11755285612293814488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080378 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098059.P11755285612293814488

noncomputable section

/-- A098059: Primes preceding gaps divisible by 4.

Offset 1, canonical program `A098059.P11755285612293814488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4137 terms. -/
def A098059 (n : ℕ) : ℤ :=
  A098059.P11755285612293814488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4137 terms. -/
def A098059.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A103219.P4336052885139861027

`2*A104716(n+1)-A094728(n+1)`
-/

namespace A103219.P4336052885139861027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104716 (n + 1) - A094728 (n + 1)

end

end A103219.P4336052885139861027

noncomputable section

/-- A103219: Triangle read by rows: T(n,k) = (n+1-k)*(4*(n+1-k)^2 - 1)/3+2*k*(n+1-k)^2.

Offset 0, canonical program `A103219.P4336052885139861027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103219 (n : ℕ) : ℤ :=
  A103219.P4336052885139861027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103271.P8583482951631801752

`2-A080378(n+1)`
-/

namespace A103271.P8583482951631801752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080378 (n + 1)

end

end A103271.P8583482951631801752

noncomputable section

/-- A103271: a(n) = (prime(n)+prime(n+1)) mod 4.

Offset 1, canonical program `A103271.P8583482951631801752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103271 (n : ℕ) : ℤ :=
  A103271.P8583482951631801752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103271.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111279.P17822418939047922619

`A026737((n-1)%(n+1))`
-/

namespace A111279.P17822418939047922619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026737 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A111279.P17822418939047922619

noncomputable section

/-- A111279: Number of permutations avoiding the patterns {3241,3421,4321}; number of weak sorting class based on 3241.

Offset 0, canonical program `A111279.P17822418939047922619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A111279 (n : ℕ) : ℤ :=
  A111279.P17822418939047922619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A111279.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113710.P13393142842901012843

`A113709(n+2)/A001223(n+2)`
-/

namespace A113710.P13393142842901012843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113709 (n + 2) : ℚ) / (A001223 (n + 2) : ℚ)

end

end A113710.P13393142842901012843

noncomputable section

/-- A113710: a(n) = A113709(n)/(prime(n+1) - prime(n)).

Offset 2, canonical program `A113710.P13393142842901012843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A113709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113710 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113710.P13393142842901012843.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A113709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113710.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A120279.P18169380529767619493

`A079309(n+2)-(n+2)`
-/

namespace A120279.P18169380529767619493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079309 (n + 2) - (n + 2 : ℤ)

end

end A120279.P18169380529767619493

noncomputable section

/-- A120279: a(n) = Sum[Sum[(i+j)!/i!/j!,{i,1,j}],{j,1,n}].

Offset 1, canonical program `A120279.P18169380529767619493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120279 (n : ℕ) : ℤ :=
  A120279.P18169380529767619493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120279.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A125235.P13924204334101341039

`2*A125233(n)-A125165(n)`
-/

namespace A125235.P13924204334101341039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125233 n - A125165 n

end

end A125235.P13924204334101341039

noncomputable section

/-- A125235: Triangle with the partial column sums of the octagonal numbers.

Offset 1, canonical program `A125235.P13924204334101341039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125235 (n : ℕ) : ℤ :=
  A125235.P13924204334101341039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125235.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128431.P14264031416913626474

`∑{d}[A127368(n+1), A007427(#)]`
-/

namespace A128431.P14264031416913626474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128431.P14264031416913626474

noncomputable section

/-- A128431: Triangle read by rows: A054521 * A128407.

Offset 1, canonical program `A128431.P14264031416913626474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128431 (n : ℕ) : ℤ :=
  A128431.P14264031416913626474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128431.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128584.P5689279512010966890

`A127368(n+1)+A054521(n+2)-A127368(n+2)`
-/

namespace A128584.P5689279512010966890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1) + (A054521 (n + 2) - A127368 (n + 2))

end

end A128584.P5689279512010966890

noncomputable section

/-- A128584: A054521 * A128064 (unsigned).

Offset 1, canonical program `A128584.P5689279512010966890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128584 (n : ℕ) : ℤ :=
  A128584.P5689279512010966890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128584.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129139.P5076504983765274251

`A078401(A000217(n)+A000005(n+1))`
-/

namespace A129139.P5076504983765274251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078401 (A000217 n + A000005 (n + 1)).toNat

end

end A129139.P5076504983765274251

noncomputable section

/-- A129139: a(n) = number of positive integers which are coprime to n and are <= d(n), where d(n) = A000005(n).

Offset 1, canonical program `A129139.P5076504983765274251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129139 (n : ℕ) : ℤ :=
  A129139.P5076504983765274251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129139.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133700.P16497783363964826140

`∑{d}[n+1, A035263(#)*A069733((n+1)/#)]`
-/

namespace A133700.P16497783363964826140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A069733 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P16497783363964826140

noncomputable section

/-- A133700: A051731 * A001227; a(n) = Sum_{d|n} A001227(d).

Offset 1, canonical program `A133700.P16497783363964826140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133700 (n : ℕ) : ℤ :=
  A133700.P16497783363964826140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133700.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143655.P13289820664003860313

`A127368(n+1)*A143538(n+1)`
-/

namespace A143655.P13289820664003860313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1) * A143538 (n + 1)

end

end A143655.P13289820664003860313

noncomputable section

/-- A143655: Triangle read by rows, primes not dividing n; A054521 * (A061397 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143655.P13289820664003860313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143655 (n : ℕ) : ℤ :=
  A143655.P13289820664003860313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143655.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158824.P15231535269411815641

`A213500(n+1)-A193976(n)%A213500(n+1)`
-/

namespace A158824.P15231535269411815641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) - Int.tmod (A193976 n) (A213500 (n + 1))

end

end A158824.P15231535269411815641

noncomputable section

/-- A158824: Triangle T(n,k) = A000292(n) if k = 1 otherwise (k-1)*(n-k+1)*(n-k+2)/2, read by rows.

Offset 1, canonical program `A158824.P15231535269411815641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158824 (n : ℕ) : ℤ :=
  A158824.P15231535269411815641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158824.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161754.P16252943337925215701

`A175967(A002808(n+1))-A175967(A060462(n+1))`
-/

namespace A161754.P16252943337925215701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (A002808 (n + 1)).toNat - A175967 (A060462 (n + 1)).toNat

end

end A161754.P16252943337925215701

noncomputable section

/-- A161754: a(n) = sum of all nonprimes from nonprime(p) to nonprime(q) where p is nonprime(n+1) and q is nonprime(n+2).

Offset 1, canonical program `A161754.P16252943337925215701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A161754 (n : ℕ) : ℤ :=
  A161754.P16252943337925215701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A161754.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A162153.P5732949919012923603`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162153 (n : ℕ) : ℤ :=
  A162153.P5732949919012923603.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A005324.P532508933651830549

`∑[∑[A026125(n+3)]]`
-/

namespace A005324.P532508933651830549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026125 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005324.P532508933651830549

noncomputable section

/-- A005324: Column of Motzkin triangle A026300.

Offset 4, canonical program `A005324.P532508933651830549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A005324 (n : ℕ) : ℤ :=
  A005324.P532508933651830549.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A005324.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014533.P4665204797223841664

`∑[∑[∑[A026087(n+4)]]]`
-/

namespace A014533.P4665204797223841664
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026087 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014533.P4665204797223841664

noncomputable section

/-- A014533: Form array in which n-th row is obtained by expanding (1 + x + x^2)^n and taking the 4th column from the center.

Offset 1, canonical program `A014533.P4665204797223841664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A014533 (n : ℕ) : ℤ :=
  A014533.P4665204797223841664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A014533.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024409.P2719521149031605988

`filter[A008846(n+1), A354108(#)]`
-/

namespace A024409.P2719521149031605988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A024409.P2719521149031605988

noncomputable section

/-- A024409: Hypotenuses of more than one primitive Pythagorean triangle.

Offset 1, canonical program `A024409.P2719521149031605988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4797 terms. -/
def A024409 (n : ℕ) : ℤ :=
  A024409.P2719521149031605988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4797 terms. -/
def A024409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025182.P9629458430133393997

`∑[∑[A026087(n+4)]]`
-/

namespace A025182.P9629458430133393997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026087 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025182.P9629458430133393997

noncomputable section

/-- A025182: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 4. Also a(n) = T(n,n-4), where T is the array defined in A025177.

Offset 4, canonical program `A025182.P9629458430133393997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A025182 (n : ℕ) : ℤ :=
  A025182.P9629458430133393997.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A025182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026071.P240239828600445417

`∑[A026087(n+4)]`
-/

namespace A026071.P240239828600445417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026087 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026071.P240239828600445417

noncomputable section

/-- A026071: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 4. Also a(n) = T(n,n-4), where T is the array defined in A024996.

Offset 4, canonical program `A026071.P240239828600445417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026071 (n : ℕ) : ℤ :=
  A026071.P240239828600445417.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026110.P4365438227712076799

`∑[A026125(n+3)]`
-/

namespace A026110.P4365438227712076799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026125 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026110.P4365438227712076799

noncomputable section

/-- A026110: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1, s(n) = 4, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-4), where T is the array defined in A026105.

Offset 4, canonical program `A026110.P4365438227712076799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026110 (n : ℕ) : ℤ :=
  A026110.P4365438227712076799.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026672.P4241792068261067658

`Δ[A026671(n)]-A026854(n)`
-/

namespace A026672.P4241792068261067658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026854 n

end

end A026672.P4241792068261067658

noncomputable section

/-- A026672: a(n) = T(2n,n-1), T given by A026670. Also T(2n,n-1)=T(2n+1,n+2), T given by A026725; and T(2n,n-1), T given by A026736.

Offset 2, canonical program `A026672.P4241792068261067658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026672 (n : ℕ) : ℤ :=
  A026672.P4241792068261067658.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026673.P7228674661456513878

`record[A165201(n)-A000245(n)]`
-/

namespace A026673.P7228674661456513878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165201 n - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026673.P7228674661456513878

noncomputable section

/-- A026673: a(n) = T(2n,n-2), T given by A026670.

Offset 2, canonical program `A026673.P7228674661456513878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026673 (n : ℕ) : ℤ :=
  A026673.P7228674661456513878.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026734.P17377753573746690983

`∑[(A026733(n+1)+A026733(n))/2]`
-/

namespace A026734.P17377753573746690983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026733 (n + 1) + A026733 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026734.P17377753573746690983

noncomputable section

/-- A026734: a(n) = Sum_{i=0..n} Sum_{j=0..n} T(i,j), T given by A026725.

Offset 0, canonical program `A026734.P17377753573746690983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A026734.P17377753573746690983.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026985.P17962102269186298352

`A026733(or(1, n))*A026741(n+2)`
-/

namespace A026985.P17962102269186298352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 (Nat.lor 1 n) * A026741 (n + 2)

end

end A026985.P17962102269186298352

noncomputable section

/-- A026985: a(n) = Sum_{k=0..n} (k+1) * A026670(n, k).

Offset 0, canonical program `A026985.P17962102269186298352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A026985 (n : ℕ) : ℤ :=
  A026985.P17962102269186298352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A026985.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029243.P10472737080434967019

`A029134(n)-a(n-1)` with `a(0)=1`
-/

namespace A029243.P10472737080434967019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029134 n - a (n - 1)

end

end A029243.P10472737080434967019

noncomputable section

/-- A029243: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029243.P10472737080434967019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029243 (n : ℕ) : ℤ :=
  A029243.P10472737080434967019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029361.P2316491448957553572

`A029309(n)+A029368(n)-A029315(n)`
-/

namespace A029361.P2316491448957553572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029309 n + (A029368 n - A029315 n)

end

end A029361.P2316491448957553572

noncomputable section

/-- A029361: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029361.P2316491448957553572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029361 (n : ℕ) : ℤ :=
  A029361.P2316491448957553572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029400.P16034242247368147644

`A029366(n)+A029380(n)-A029350(n)`
-/

namespace A029400.P16034242247368147644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029366 n + (A029380 n - A029350 n)

end

end A029400.P16034242247368147644

noncomputable section

/-- A029400: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029400.P16034242247368147644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029400 (n : ℕ) : ℤ :=
  A029400.P16034242247368147644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029412.P8218405848832406386

`A029377(n)+A029391(n)-A029358(n)`
-/

namespace A029412.P8218405848832406386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n + (A029391 n - A029358 n)

end

end A029412.P8218405848832406386

noncomputable section

/-- A029412: Expansion of 1/((1-x^5)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029412.P8218405848832406386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029412 (n : ℕ) : ℤ :=
  A029412.P8218405848832406386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029412.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A031944.P3896050302965344887

`comp[A154314(n+1)]`
-/

namespace A031944.P3896050302965344887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A031944.P3896050302965344887

noncomputable section

/-- A031944: Numbers in which digits 0,1,2 all occur in base 3.

Offset 1, canonical program `A031944.P3896050302965344887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031944 (n : ℕ) : ℤ :=
  (A031944.P3896050302965344887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031944.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038993.P17198785173542543802

`∑{d}[n+1, #*A038992(#)]`
-/

namespace A038993.P17198785173542543802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038992 d

end

end A038993.P17198785173542543802

noncomputable section

/-- A038993: Number of sublattices of index n in generic 6-dimensional lattice.

Offset 1, canonical program `A038993.P17198785173542543802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038993 (n : ℕ) : ℤ :=
  A038993.P17198785173542543802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043727.P2003512612865952320

`∩[2*n+1, A268412(n)]`
-/

namespace A043727.P2003512612865952320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043727.P2003512612865952320

noncomputable section

/-- A043727: Numbers whose number of runs in the base-2 representation is congruent to 3 mod 4.

Offset 1, canonical program `A043727.P2003512612865952320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5020 terms. -/
def A043727 (n : ℕ) : ℤ :=
  (A043727.P2003512612865952320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5020 terms. -/
def A043727.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A059797.P8076883929035700437

`A061928(n+1)-A194121(n)`
-/

namespace A059797.P8076883929035700437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061928 (n + 1) - A194121 n

end

end A059797.P8076883929035700437

noncomputable section

/-- A059797: Second in a series of arrays counting standard tableaux by partition type.

Offset 0, canonical program `A059797.P8076883929035700437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059797 (n : ℕ) : ℤ :=
  A059797.P8076883929035700437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059797.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062327.P9291018550595819418

`∑{d}[n+1, A069733(#)*A091400((n+1)/#)]`
-/

namespace A062327.P9291018550595819418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069733 d * A091400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P9291018550595819418

noncomputable section

/-- A062327: Number of divisors of n over the Gaussian integers.

Offset 1, canonical program `A062327.P9291018550595819418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062327 (n : ℕ) : ℤ :=
  A062327.P9291018550595819418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063659.P17976112420004081821

`n+1-A063658(n+1)`
-/

namespace A063659.P17976112420004081821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A063658 (n + 1)

end

end A063659.P17976112420004081821

noncomputable section

/-- A063659: The number of integers m in [1..n] for which gcd(m,n) is not divisible by a square greater than 1.

Offset 1, canonical program `A063659.P17976112420004081821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063659 (n : ℕ) : ℤ :=
  A063659.P17976112420004081821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063659.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A071960.P16235659411092393557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071960 (n : ℕ) : ℤ :=
  A071960.P16235659411092393557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071960.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A078779.P13855623010479763473

`lt[A078771(n+1), 1]+1`
-/

namespace A078779.P13855623010479763473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078779.P13855623010479763473

noncomputable section

/-- A078779: Union of S, 2S and 4S, where S = odd squarefree numbers (A056911).

Offset 1, canonical program `A078779.P13855623010479763473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078779 (n : ℕ) : ℤ :=
  (A078779.P13855623010479763473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079054.P1655160976094069587

`round(tanh(A073274(n+1)-1))`
-/

namespace A079054.P1655160976094069587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A073274 (n + 1) - 1 : ℝ))

end

end A079054.P1655160976094069587

noncomputable section

/-- A079054: a(n) = -1 if the closest prime to prime(n) is prime(n-1); = 1 if the closest prime to prime(n) is prime(n+1); = 0 if prime(n-1) and prime(n+1) are equally close to prime(n).

Offset 2, canonical program `A079054.P1655160976094069587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079054 (n : ℕ) : ℤ :=
  A079054.P1655160976094069587.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079054.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080737.P3206243844003316961

`A052928(A067240(n+1))`
-/

namespace A080737.P3206243844003316961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A067240 (n + 1)).toNat

end

end A080737.P3206243844003316961

noncomputable section

/-- A080737: a(1) = a(2) = 0; for n > 2, the least dimension of a lattice possessing a symmetry of order n.

Offset 1, canonical program `A080737.P3206243844003316961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080737 (n : ℕ) : ℤ :=
  A080737.P3206243844003316961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089048.P16381130476308871988

`A151774(n)+char[A151757(n+1)]`
-/

namespace A089048.P16381130476308871988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151757 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089048.P16381130476308871988

noncomputable section

/-- A089048: Number of ways of writing n as a sum of exactly 3 powers of 2.

Offset 0, canonical program `A089048.P16381130476308871988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089048 (n : ℕ) : ℤ :=
  A089048.P16381130476308871988.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089048.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114519.P13629279457260616244

`A008475(A114518(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114519.P13629279457260616244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A114518 (n + 1)).toNat

end

end A114519.P13629279457260616244

noncomputable section

/-- A114519: a(n) = A008475(A114518(n)).

Offset 1, canonical program `A114519.P13629279457260616244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A114518, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114519 (n : ℕ) : ℤ :=
  A114519.P13629279457260616244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A114518, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114520.P13451622057905116028

`filter[A114518(n+1), A005171(#)]`
-/

namespace A114520.P13451622057905116028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A114520.P13451622057905116028

noncomputable section

/-- A114520: Composites in sequence A114518.

Offset 1, canonical program `A114520.P13451622057905116028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A114520 (n : ℕ) : ℤ :=
  A114520.P13451622057905116028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A114520.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115138.P4364659728970173853

`A115137(n)+A115137(n)-A062992(n)`
-/

namespace A115138.P4364659728970173853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115137 n + (A115137 n - A062992 n)

end

end A115138.P4364659728970173853

noncomputable section

/-- A115138: A sequence related to Catalan numbers A000108.

Offset 0, canonical program `A115138.P4364659728970173853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115138 (n : ℕ) : ℤ :=
  A115138.P4364659728970173853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115512.P17971829937860406712

`A117198(A183572(n+1))`
-/

namespace A115512.P17971829937860406712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117198 (A183572 (n + 1)).toNat

end

end A115512.P17971829937860406712

noncomputable section

/-- A115512: Number triangle (1,x)+(x,x^3) expressed in terms of Riordan arrays.

Offset 0, canonical program `A115512.P17971829937860406712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A115512 (n : ℕ) : ℤ :=
  A115512.P17971829937860406712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A115512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116078.P123251626147989566

`A139262(n)+A000984(n)`
-/

namespace A116078.P123251626147989566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 n + A000984 n

end

end A116078.P123251626147989566

noncomputable section

/-- A116078: Column 0 of triangle A116077.

Offset 0, canonical program `A116078.P123251626147989566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A116078 (n : ℕ) : ℤ :=
  A116078.P123251626147989566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A116078.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116695.P7849105263678680230

`A023743(n+1)%5+5`
-/

namespace A116695.P7849105263678680230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023743 (n + 1)) 5 + 5

end

end A116695.P7849105263678680230

noncomputable section

/-- A116695: Digit not appearing in A116670(n).

Offset 1, canonical program `A116695.P7849105263678680230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A116695 (n : ℕ) : ℤ :=
  A116695.P7849105263678680230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A116695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119963.P15712922093875506734

`A152198(A246694(n)-1)`
-/

namespace A119963.P15712922093875506734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152198 (A246694 n - 1).toNat

end

end A119963.P15712922093875506734

noncomputable section

/-- A119963: Triangle T(n,k), 0 <= k <= n, read by rows, with T(2n,2k) = T(2n+1,2k) = T(2n+1,2k+1) = T(2n+2,2k+1) = binomial(n,k).

Offset 0, canonical program `A119963.P15712922093875506734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119963 (n : ℕ) : ℤ :=
  A119963.P15712922093875506734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119963.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124340.P17128655900639427507

`∑{d}[n+1, A087780(#)*A206369((n+1)/#)]`
-/

namespace A124340.P17128655900639427507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087780 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124340.P17128655900639427507

noncomputable section

/-- A124340: Number of solutions to n = x^2 + 2*y^2 + 4*(T(z) + T(w)) + 1 where x and y are integers, z and w are nonnegative integers and T(x) = (x^2+x)/2.

Offset 1, canonical program `A124340.P17128655900639427507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124340 (n : ℕ) : ℤ :=
  A124340.P17128655900639427507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124340.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124725.P7594293503964547841

`A028326(n)-A131085(n)`
-/

namespace A124725.P7594293503964547841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131085 n

end

end A124725.P7594293503964547841

noncomputable section

/-- A124725: Triangle read by rows: T(n,k) = binomial(n,k) + binomial(n,k+2) (0 <= k <= n).

Offset 0, canonical program `A124725.P7594293503964547841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124725 (n : ℕ) : ℤ :=
  A124725.P7594293503964547841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124725.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127506.P11176136321246717551

`∑{d}[A127368(n+1), A007431(#)]`
-/

namespace A127506.P11176136321246717551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A127506.P11176136321246717551

noncomputable section

/-- A127506: Triangle read by rows: T(n,k) = A054521(n,k)*A000010(k), 1<=k<=n .

Offset 1, canonical program `A127506.P11176136321246717551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127506 (n : ℕ) : ℤ :=
  A127506.P11176136321246717551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127506.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133555.P10224486640532332811

`A066246(A113709(n+2))`
-/

namespace A133555.P10224486640532332811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A113709 (n + 2)).toNat

end

end A133555.P10224486640532332811

noncomputable section

/-- A133555: Order of A113709(n) among composite positive integers.

Offset 2, canonical program `A133555.P10224486640532332811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066246, A113709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133555 (n : ℕ) : ℤ :=
  A133555.P10224486640532332811.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066246, A113709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133555.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A138741.P8597569601291723982

`(-1)^n*A116604(n)`
-/

namespace A138741.P8597569601291723982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A116604 n

end

end A138741.P8597569601291723982

noncomputable section

/-- A138741: Expansion of q^(-1/2) * eta(q)^3 * eta(q^4) * eta(q^12) / (eta(q^2)^2 * eta(q^3)) in powers of q (unsigned).

Offset 0, canonical program `A138741.P8597569601291723982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138741 (n : ℕ) : ℤ :=
  A138741.P8597569601291723982.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139107.P14608379276421399089

`A139102(2*n+1)`
-/

namespace A139107.P14608379276421399089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139102 (2 * n + 1)

end

end A139107.P14608379276421399089

noncomputable section

/-- A139107: Bisection of A139102.

Offset 1, canonical program `A139107.P14608379276421399089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139107 (n : ℕ) : ℤ :=
  A139107.P14608379276421399089.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139108.P8819243163543541878

`A139102(2*(n+1))`
-/

namespace A139108.P8819243163543541878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139102 (2 * (n + 1))

end

end A139108.P8819243163543541878

noncomputable section

/-- A139108: Bisection of A139102.

Offset 1, canonical program `A139108.P8819243163543541878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139108 (n : ℕ) : ℤ :=
  A139108.P8819243163543541878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139108.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139385.P2848592424051489160

`p?[A095672(n+1)-4]`
-/

namespace A139385.P2848592424051489160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139385.P2848592424051489160

noncomputable section

/-- A139385: Primes p such that p, p+4 and p+12 are consecutive primes.

Offset 1, canonical program `A139385.P2848592424051489160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A139385 (n : ℕ) : ℤ :=
  A139385.P2848592424051489160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A139385.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140369.P7518629714154131444

`filter[A063233(2*(n+1)), A354108(#)]`
-/

namespace A140369.P7518629714154131444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A140369.P7518629714154131444

noncomputable section

/-- A140369: Composites of the form 26k + 19.

Offset 1, canonical program `A140369.P7518629714154131444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A140369 (n : ℕ) : ℤ :=
  A140369.P7518629714154131444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A140369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140584.P2555590282461382423

`∑{d}[n+1, #*A140254((n+1)/#)]`
-/

namespace A140584.P2555590282461382423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140584.P2555590282461382423

noncomputable section

/-- A140584: Row sums of A140583.

Offset 1, canonical program `A140584.P2555590282461382423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140584 (n : ℕ) : ℤ :=
  A140584.P2555590282461382423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141217.P8943898306650397256

`A141208(A006093(n+1))`
-/

namespace A141217.P8943898306650397256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A006093 (n + 1)).toNat

end

end A141217.P8943898306650397256

noncomputable section

/-- A141217: a(n) = prime(prime(prime(prime(n) - 1) - 1) - 1) - 1, where prime(n) is the n-th prime.

Offset 1, canonical program `A141217.P8943898306650397256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141217 (n : ℕ) : ℤ :=
  A141217.P8943898306650397256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141217.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163408.P15967600564679834179

`comp[A114518(n+1)-2]+2`
-/

namespace A163408.P15967600564679834179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A163408.P15967600564679834179

noncomputable section

/-- A163408: Positive integers n such that A008475(n) is composite.

Offset 1, canonical program `A163408.P15967600564679834179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163408 (n : ℕ) : ℤ :=
  (A163408.P15967600564679834179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163408.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020757.P13878919061002843869

`comp[A020756(n+1)]`
-/

namespace A020757.P13878919061002843869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020757.P13878919061002843869

noncomputable section

/-- A020757: Numbers that are not the sum of two triangular numbers.

Offset 1, canonical program `A020757.P13878919061002843869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020757 (n : ℕ) : ℤ :=
  (A020757.P13878919061002843869.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024880.P13248574875159670517

`∑[A024316(n+1)-A024879(n+2)]`
-/

namespace A024880.P13248574875159670517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1) - A024879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024880.P13248574875159670517

noncomputable section

/-- A024880: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = A023532.

Offset 2, canonical program `A024880.P13248574875159670517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024880 (n : ℕ) : ℤ :=
  A024880.P13248574875159670517.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025020.P18212951843414993576

`eq[0, A087780(n+2)]+2`
-/

namespace A025020.P18212951843414993576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A025020.P18212951843414993576

noncomputable section

/-- A025020: Numbers whose least quadratic nonresidue (A020649) is 2.

Offset 1, canonical program `A025020.P18212951843414993576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8588 terms. -/
def A025020 (n : ℕ) : ℤ :=
  (A025020.P18212951843414993576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8588 terms. -/
def A025020.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026236.P6357686734265225565

`A000720(p?[A067747(A026234(n+1))])`
-/

namespace A026236.P6357686734265225565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A026234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026236.P6357686734265225565

noncomputable section

/-- A026236: a(n) = (s(n) + 1)/2, where s(n) is the n-th odd number in A026234.

Offset 1, canonical program `A026236.P6357686734265225565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A026236 (n : ℕ) : ℤ :=
  A026236.P6357686734265225565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A026236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026732.P6139381397905138302

`A026733(n)+Δ[A026733(n)/2]`
-/

namespace A026732.P6139381397905138302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026733 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026733 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A026732.P6139381397905138302

noncomputable section

/-- A026732: a(n) = Sum_{k=0..n} T(n,k), T given by A026725.

Offset 0, canonical program `A026732.P6139381397905138302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A026732.P6139381397905138302.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026732.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029234.P4989415662554192308

`A029125(n)-a(n-1)` with `a(0)=1`
-/

namespace A029234.P4989415662554192308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029125 n - a (n - 1)

end

end A029234.P4989415662554192308

noncomputable section

/-- A029234: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029234.P4989415662554192308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029234 (n : ℕ) : ℤ :=
  A029234.P4989415662554192308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029427.P7393202542857614358

`A029225(n)+A029444(n)-A029238(n)`
-/

namespace A029427.P7393202542857614358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 n + (A029444 n - A029238 n)

end

end A029427.P7393202542857614358

noncomputable section

/-- A029427: Expansion of 1/((1-x^6)(1-x^8)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029427.P7393202542857614358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029427 (n : ℕ) : ℤ :=
  A029427.P7393202542857614358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029427.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037867.P5061930620395652087

`A037869(A008541(n+2))`
-/

namespace A037867.P5061930620395652087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A008541 (n + 2)).toNat

end

end A037867.P5061930620395652087

noncomputable section

/-- A037867: a(n)=(number of digits <=3)-(number of digits >3) in base 8 representation of n.

Offset 1, canonical program `A037867.P5061930620395652087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A037867 (n : ℕ) : ℤ :=
  A037867.P5061930620395652087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A037867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038456.P16170767662126699498

`∪[A039832(n+1)+1, A039832(n+1)]`
-/

namespace A038456.P16170767662126699498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038456.P16170767662126699498

noncomputable section

/-- A038456: List of pairs of consecutive numbers each with 4 divisors (duplicates removed).

Offset 1, canonical program `A038456.P16170767662126699498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038456 (n : ℕ) : ℤ :=
  (A038456.P16170767662126699498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038456.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043425.P2414303622433475634

`eq[1, A268643(A008541(n+1))]`
-/

namespace A043425.P2414303622433475634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A008541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043425.P2414303622433475634

noncomputable section

/-- A043425: Numbers having one 1 in base 8.

Offset 1, canonical program `A043425.P2414303622433475634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A043425 (n : ℕ) : ℤ :=
  (A043425.P2414303622433475634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A043425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043426.P14037301533186646558

`eq[2, A268643(A008541(n+1))]`
-/

namespace A043426.P14037301533186646558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A008541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043426.P14037301533186646558

noncomputable section

/-- A043426: Numbers having two 1's in base 8.

Offset 1, canonical program `A043426.P14037301533186646558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043426 (n : ℕ) : ℤ :=
  (A043426.P14037301533186646558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043429.P15064913157282269590

`eq[1, A316863(A008541(n+1))]`
-/

namespace A043429.P15064913157282269590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A008541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043429.P15064913157282269590

noncomputable section

/-- A043429: Numbers having one 2 in base 8.

Offset 1, canonical program `A043429.P15064913157282269590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043429 (n : ℕ) : ℤ :=
  (A043429.P15064913157282269590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043430.P1982640148982015273

`eq[2, A316863(A008541(n+1))]`
-/

namespace A043430.P1982640148982015273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A008541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043430.P1982640148982015273

noncomputable section

/-- A043430: Numbers having two 2's in base 8.

Offset 1, canonical program `A043430.P1982640148982015273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043430 (n : ℕ) : ℤ :=
  (A043430.P1982640148982015273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043430.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048460.P728019189363879930

`A105321(n+2)/2`
-/

namespace A048460.P728019189363879930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 (n + 2) : ℚ) / 2

end

end A048460.P728019189363879930

noncomputable section

/-- A048460: Total of odd numbers in the generations from 2 onwards.

Offset 2, canonical program `A048460.P728019189363879930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048460.P728019189363879930.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054047.P6609416197519698243

`∩[A008541(n+1), A084984(n+1)]`
-/

namespace A054047.P6609416197519698243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054047.P6609416197519698243

noncomputable section

/-- A054047: Numbers which can be read as (possibly different) numbers when rotated by 180 degrees (final zeros allowed).

Offset 0, canonical program `A054047.P6609416197519698243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A054047 (n : ℕ) : ℤ :=
  (A054047.P6609416197519698243.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A054047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057962.P10638733739306461883

`∑[A005883(A020756(n+1))]`
-/

namespace A057962.P10638733739306461883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 (A020756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057962.P10638733739306461883

noncomputable section

/-- A057962: Number of points (x,y) in square lattice with (x-1/2)^2+(y-1/2)^2 <= n.

Offset 1, canonical program `A057962.P10638733739306461883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4834 terms. -/
def A057962 (n : ℕ) : ℤ :=
  A057962.P10638733739306461883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4834 terms. -/
def A057962.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A063647.P10388026275025770888

`A018892(n+1)-1`
-/

namespace A063647.P10388026275025770888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) - 1

end

end A063647.P10388026275025770888

noncomputable section

/-- A063647: Number of ways to write 1/n as a difference of exactly 2 unit fractions.

Offset 1, canonical program `A063647.P10388026275025770888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063647 (n : ℕ) : ℤ :=
  A063647.P10388026275025770888.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064601.P5730512470654133780

`∑[char[A141208(n+1)]]`
-/

namespace A064601.P5730512470654133780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064601.P5730512470654133780

noncomputable section

/-- A064601: a(n) = # { p | A064558(k) = p prime and k <= n}.

Offset 1, canonical program `A064601.P5730512470654133780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064601 (n : ℕ) : ℤ :=
  (A064601.P5730512470654133780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066252.P8882327947693045390

`A066248(A066248(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066252.P8882327947693045390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066248 (A066248 (n + 1)).toNat

end

end A066252.P8882327947693045390

noncomputable section

/-- A066252: a(n) = A066248(A066248(n)).

Offset 1, canonical program `A066252.P8882327947693045390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066252 (n : ℕ) : ℤ :=
  A066252.P8882327947693045390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066254.P14705389908508388282

`A066250(A066250(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066254.P14705389908508388282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066250 (A066250 (n + 1)).toNat

end

end A066254.P14705389908508388282

noncomputable section

/-- A066254: a(n) = A066250(A066250(n)).

Offset 1, canonical program `A066254.P14705389908508388282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066254 (n : ℕ) : ℤ :=
  A066254.P14705389908508388282.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067051.P9041529878251612629

`∪[A074216(n+1), ∑[A016825(n)]]`
-/

namespace A067051.P9041529878251612629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074216 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067051.P9041529878251612629

noncomputable section

/-- A067051: The smallest k>1 such that k divides sigma(k*n) is equal to 3.

Offset 1, canonical program `A067051.P9041529878251612629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067051 (n : ℕ) : ℤ :=
  (A067051.P9041529878251612629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067051.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084344.P2536127171943321024

`∩[A025583(n+1), A333326(n+1)]`
-/

namespace A084344.P2536127171943321024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P2536127171943321024

noncomputable section

/-- A084344: A077982(n) >= 5.

Offset 1, canonical program `A084344.P2536127171943321024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4883 terms. -/
def A084344 (n : ℕ) : ℤ :=
  (A084344.P2536127171943321024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4883 terms. -/
def A084344.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A089233.P13957741673571392928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089233 (n : ℕ) : ℤ :=
  A089233.P13957741673571392928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089721.P6798565344662168487

`∩[A042992(n+1), A327752(n+1)]`
-/

namespace A089721.P6798565344662168487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P6798565344662168487

noncomputable section

/-- A089721: Primes ending in 1 such that floor(p/7) ends in a digit > 3.

Offset 1, canonical program `A089721.P6798565344662168487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A089721 (n : ℕ) : ℤ :=
  (A089721.P6798565344662168487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A089721.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A097269.P5694133736295637479

`8*A020756(n+1)+2`
-/

namespace A097269.P5694133736295637479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A020756 (n + 1) + 2

end

end A097269.P5694133736295637479

noncomputable section

/-- A097269: Numbers that are the sum of two nonzero squares but not the difference of two nonzero squares.

Offset 1, canonical program `A097269.P5694133736295637479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097269 (n : ℕ) : ℤ :=
  A097269.P5694133736295637479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097269.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A103944.P4730550679544556026

`(n+1)*A178792(n)`
-/

namespace A103944.P4730550679544556026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178792 n

end

end A103944.P4730550679544556026

noncomputable section

/-- A103944: Number of rooted unicursal n-edge maps in the plane (planar with a distinguished outside face).

Offset 1, canonical program `A103944.P4730550679544556026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A103944 (n : ℕ) : ℤ :=
  A103944.P4730550679544556026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A103944.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113520.P10089445824807879536

`A285788(∑[A048864(n+1)])%(n+1)`
-/

namespace A113520.P10089445824807879536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (n + 1 : ℤ)

end

end A113520.P10089445824807879536

noncomputable section

/-- A113520: a(n) = largest nonprime nonnegative integer < n which is coprime to n.

Offset 1, canonical program `A113520.P10089445824807879536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A113520 (n : ℕ) : ℤ :=
  A113520.P10089445824807879536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A113520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115197.P2414366515164714952

`4*A178792(n)-3*(n+1)*A064062(n+1)`
-/

namespace A115197.P2414366515164714952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A178792 n - (3 * (n + 1) : ℤ) * A064062 (n + 1)

end

end A115197.P2414366515164714952

noncomputable section

/-- A115197: Convolution of generalized Catalan numbers A064062 (called C(n;2)).

Offset 0, canonical program `A115197.P2414366515164714952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, A178792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115197 (n : ℕ) : ℤ :=
  A115197.P2414366515164714952.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, A178792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119259.P15056154096299746551

`2^(n+1)*C(2*n, n)-A178792(n)`
-/

namespace A119259.P15056154096299746551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) * Nat.choose (2 * n) n : ℤ) - A178792 n

end

end A119259.P15056154096299746551

noncomputable section

/-- A119259: Central terms of the triangle in A119258.

Offset 0, canonical program `A119259.P15056154096299746551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119259 (n : ℕ) : ℤ :=
  A119259.P15056154096299746551.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119259.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A139651.P8932239673314536185

`∪[A139665(n+1), A139985(n+1)]`
-/

namespace A139651.P8932239673314536185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P8932239673314536185

noncomputable section

/-- A139651: Primes of the form x^2 + 210*y^2.

Offset 1, canonical program `A139651.P8932239673314536185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139651 (n : ℕ) : ℤ :=
  (A139651.P8932239673314536185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140077.P5536516406055941759

`∩[A006049(n+1), A033992(n+1)]`
-/

namespace A140077.P5536516406055941759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140077.P5536516406055941759

noncomputable section

/-- A140077: Numbers n such that n and n+1 have 3 distinct prime factors.

Offset 1, canonical program `A140077.P5536516406055941759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3489 terms. -/
def A140077 (n : ℕ) : ℤ :=
  (A140077.P5536516406055941759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3489 terms. -/
def A140077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141133.P2845964169969126780

`A141208(A008578(n+1))`
-/

namespace A141133.P2845964169969126780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A008578 (n + 1)).toNat

end

end A141133.P2845964169969126780

noncomputable section

/-- A141133: a(n) = prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1.

Offset 0, canonical program `A141133.P2845964169969126780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141133 (n : ℕ) : ℤ :=
  A141133.P2845964169969126780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142956.P11267907444795798616

`∩[A191019(n+1), A230779(n+1)]`
-/

namespace A142956.P11267907444795798616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P11267907444795798616

noncomputable section

/-- A142956: Primes of the form -3*x^2 + 4*x*y + 5*y^2 (as well as of the form 6*x^2 + 10*x*y + y^2).

Offset 1, canonical program `A142956.P11267907444795798616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. -/
def A142956 (n : ℕ) : ℤ :=
  (A142956.P11267907444795798616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. -/
def A142956.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157129.P1601382808116694342

`A071928(n+1)/2`
-/

namespace A157129.P1601382808116694342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071928 (n + 1) : ℚ) / 2

end

end A157129.P1601382808116694342

noncomputable section

/-- A157129: An analog of the Kolakoski sequence A000002, only now a(n) = (length of n-th run divided by 2) using 1 and 2 and starting with 1,1.

Offset 1, canonical program `A157129.P1601382808116694342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157129 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157129.P1601382808116694342.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157129.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A014091.P7512127898270457705

`A106092(n+1)+2`
-/

namespace A014091.P7512127898270457705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1) + 2

end

end A014091.P7512127898270457705

noncomputable section

/-- A014091: Numbers that are the sum of 2 primes.

Offset 1, canonical program `A014091.P7512127898270457705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014091 (n : ℕ) : ℤ :=
  A014091.P7512127898270457705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014091.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034460.P1958235575820581513

`A034448(n+1)-(n+1)`
-/

namespace A034460.P1958235575820581513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (n + 1 : ℤ)

end

end A034460.P1958235575820581513

noncomputable section

/-- A034460: a(n) = usigma(n) - n, where usigma(n) = sum of unitary divisors of n (A034448).

Offset 1, canonical program `A034460.P1958235575820581513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034460 (n : ℕ) : ℤ :=
  A034460.P1958235575820581513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034460.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A048146.P9985884013456677192

`A000203(n+1)-A034448(n+1)`
-/

namespace A048146.P9985884013456677192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A034448 (n + 1)

end

end A048146.P9985884013456677192

noncomputable section

/-- A048146: Sum of non-unitary divisors of n.

Offset 1, canonical program `A048146.P9985884013456677192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048146 (n : ℕ) : ℤ :=
  A048146.P9985884013456677192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048146.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A055033.P5372904485544142447

`A034448(A034448(n+1))`
-/

namespace A055033.P5372904485544142447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A034448 (n + 1)).toNat

end

end A055033.P5372904485544142447

noncomputable section

/-- A055033: a(n) = usigma(usigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448).

Offset 1, canonical program `A055033.P5372904485544142447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055033 (n : ℕ) : ℤ :=
  A055033.P5372904485544142447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061346.P8376989316986031510

`filter[A226025(n+1), A354108(#)]`
-/

namespace A061346.P8376989316986031510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A061346.P8376989316986031510

noncomputable section

/-- A061346: Odd numbers that are neither primes nor prime powers.

Offset 1, canonical program `A061346.P8376989316986031510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9979 terms. -/
def A061346 (n : ℕ) : ℤ :=
  A061346.P8376989316986031510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9979 terms. -/
def A061346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061765.P1670125670375018520

`A034448(A000203(n+1))`
-/

namespace A061765.P1670125670375018520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000203 (n + 1)).toNat

end

end A061765.P1670125670375018520

noncomputable section

/-- A061765: a(n) = usigma(sigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448) and sigma(n) is the sum of the divisors (A000203).

Offset 1, canonical program `A061765.P1670125670375018520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061765 (n : ℕ) : ℤ :=
  A061765.P1670125670375018520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061765.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A063085.P4754823976141225556

`A034448(n+1)-A061468(n+1)`
-/

namespace A063085.P4754823976141225556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A061468 (n + 1)

end

end A063085.P4754823976141225556

noncomputable section

/-- A063085: a(n) = usigma(n) - (phi(n) + d(n)), where usigma(n) is the sum of the unitary divisors of n and d(n) is the number of divisors of n.

Offset 1, canonical program `A063085.P4754823976141225556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063085 (n : ℕ) : ℤ :=
  A063085.P4754823976141225556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063845.P8176048473973946208

`A000203(A034448(n+1))`
-/

namespace A063845.P8176048473973946208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A034448 (n + 1)).toNat

end

end A063845.P8176048473973946208

noncomputable section

/-- A063845: a(n) = sigma(usigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448) and sigma(n) is the sum of the divisors (A000203).

Offset 1, canonical program `A063845.P8176048473973946208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063845 (n : ℕ) : ℤ :=
  A063845.P8176048473973946208.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063845.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063937.P5103970872536131558

`eq[A010052(A034448(n+1)), A057427(n)]+1`
-/

namespace A063937.P5103970872536131558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A034448 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063937.P5103970872536131558

noncomputable section

/-- A063937: Sum of unitary divisors of n is a square > 1.

Offset 1, canonical program `A063937.P5103970872536131558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A063937 (n : ℕ) : ℤ :=
  (A063937.P5103970872536131558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A063937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063977.P8570722050053466654

`lt[0, char[A034448(n+1)]]`
-/

namespace A063977.P8570722050053466654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063977.P8570722050053466654

noncomputable section

/-- A063977: Numbers which are sums of unitary divisors, the usigma values: their inverse usigma set is not empty; usigma() = A034448().

Offset 1, canonical program `A063977.P8570722050053466654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. -/
def A063977 (n : ℕ) : ℤ :=
  (A063977.P8570722050053466654.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. -/
def A063977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064028.P1061499819609687592

`A034448(A000142(n+1))`
-/

namespace A064028.P1061499819609687592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000142 (n + 1)).toNat

end

end A064028.P1061499819609687592

noncomputable section

/-- A064028: Sum of the unitary divisors of n!.

Offset 1, canonical program `A064028.P1061499819609687592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064028 (n : ℕ) : ℤ :=
  A064028.P1061499819609687592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064138.P12736720339364131366

`A062569(n+1)-A034448((n+1)!)`
-/

namespace A064138.P12736720339364131366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 (n + 1) - A034448 (Nat.factorial (n + 1))

end

end A064138.P12736720339364131366

noncomputable section

/-- A064138: Sum of non-unitary divisors of n!.

Offset 1, canonical program `A064138.P12736720339364131366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064138 (n : ℕ) : ℤ :=
  A064138.P12736720339364131366.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064140.P1423845177142153834

`A034448(A001405(n+1))`
-/

namespace A064140.P1423845177142153834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A001405 (n + 1)).toNat

end

end A064140.P1423845177142153834

noncomputable section

/-- A064140: Sum of unitary divisors of central binomial coefficient C(n, floor(n/2)).

Offset 1, canonical program `A064140.P1423845177142153834`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064140 (n : ℕ) : ℤ :=
  A064140.P1423845177142153834.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064212.P10229143328642602721

`A000203(n+1)+A034448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064212.P10229143328642602721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A034448 (n + 1)

end

end A064212.P10229143328642602721

noncomputable section

/-- A064212: a(n) = sigma(n) + usigma(n) = A000203(n) + A034448(n).

Offset 1, canonical program `A064212.P10229143328642602721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064212 (n : ℕ) : ℤ :=
  A064212.P10229143328642602721.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064609.P1823082114239838603

`a(n-1)+A034448(n+1)` with `a(0)=1`
-/

namespace A064609.P1823082114239838603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A034448 (n + 1)

end

end A064609.P1823082114239838603

noncomputable section

/-- A064609: Partial sums of A034448: sum of unitary divisors from 1 to n.

Offset 1, canonical program `A064609.P1823082114239838603`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064609 (n : ℕ) : ℤ :=
  A064609.P1823082114239838603.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064992.P11019565311280809988

`A034448(n+2)-A034448(n+1)`
-/

namespace A064992.P11019565311280809988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 2) - A034448 (n + 1)

end

end A064992.P11019565311280809988

noncomputable section

/-- A064992: a(n) = usigma(n+1) - usigma(n), where usigma(n) is the sum of unitary divisors of n (A034448).

Offset 1, canonical program `A064992.P11019565311280809988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064992 (n : ℕ) : ℤ :=
  A064992.P11019565311280809988.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065871.P16667973696206120642

`lt[0, A010051(A034448(n+1)+1)]+1`
-/

namespace A065871.P16667973696206120642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034448 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065871.P16667973696206120642

noncomputable section

/-- A065871: Numbers k such that usigma(k) + 1 is a prime.

Offset 1, canonical program `A065871.P16667973696206120642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3153 terms. -/
def A065871 (n : ℕ) : ℤ :=
  (A065871.P16667973696206120642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3153 terms. -/
def A065871.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074789.P6952421410353009760

`∑[A034448(n+1)²]`
-/

namespace A074789.P6952421410353009760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P6952421410353009760

noncomputable section

/-- A074789: Partial sums of usigma(n)^2: square of the sum of unitary divisors of n.

Offset 1, canonical program `A074789.P6952421410353009760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074789 (n : ℕ) : ℤ :=
  A074789.P6952421410353009760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103339.P4822592513541350289

`lcm(A034448(n+1), A298473(n+1))/A034448(n+1)`
-/

namespace A103339.P4822592513541350289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A034448 (n + 1)) (A298473 (n + 1)) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A103339.P4822592513541350289

noncomputable section

/-- A103339: Numerator of the unitary harmonic mean (i.e., the harmonic mean of the unitary divisors) of the positive integer n.

Offset 1, canonical program `A103339.P4822592513541350289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103339.P4822592513541350289.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103340.P10740590519268141763

`A034448(n+1)/gcd(A034448(n+1), A298473(n+1))`
-/

namespace A103340.P10740590519268141763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (Int.gcd (A034448 (n + 1)) (A298473 (n + 1)) : ℚ)

end

end A103340.P10740590519268141763

noncomputable section

/-- A103340: Denominator of the unitary harmonic mean (i.e., the harmonic mean of the unitary divisors) of the positive integer n.

Offset 1, canonical program `A103340.P10740590519268141763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103340.P10740590519268141763.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103827.P12053517966830183647

`A034448(A103826(n+1))/A034444(A103826(n+1))`
-/

namespace A103827.P12053517966830183647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (A103826 (n + 1)).toNat : ℚ) / (A034444 (A103826 (n + 1)).toNat : ℚ)

end

end A103827.P12053517966830183647

noncomputable section

/-- A103827: Arithmetic means of the divisors of unitary arithmetic numbers (i.e., of those for which the arithmetic mean of the unitary divisors is an integer, A103826).

Offset 1, canonical program `A103827.P12053517966830183647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A034448, A103826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A103827 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103827.P12053517966830183647.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A034448, A103826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A103827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107749.P144943964937098899

`A000203(n+1)*A034448(n+1)/A069184(n+1)`
-/

namespace A107749.P144943964937098899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A034448 (n + 1) : ℚ) / (A069184 (n + 1) : ℚ)

end

end A107749.P144943964937098899

noncomputable section

/-- A107749: OrdinaryUnitarySigma(n): If n = Product p_i^r_i then OUSigma(n) = Sigma(2^r_1)*UnitarySigma(n/2^r_1).

Offset 1, canonical program `A107749.P144943964937098899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107749 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107749.P144943964937098899.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117658.P10121944413526807387

`A034448(A003557(n+1))*A056671(n+1)`
-/

namespace A117658.P10121944413526807387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A003557 (n + 1)).toNat * A056671 (n + 1)

end

end A117658.P10121944413526807387

noncomputable section

/-- A117658: Number of solutions to x^(k+1) = x^k mod n for some k >= 1.

Offset 1, canonical program `A117658.P10121944413526807387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117658 (n : ℕ) : ℤ :=
  A117658.P10121944413526807387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117658.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A022094.P5430606946720260700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022094 (n : ℕ) : ℤ :=
  A022094.P5430606946720260700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034958.P4957141392143406726

`A007504(A007504(n+1))-A007504(A007504(n))`
-/

namespace A034958.P4957141392143406726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007504 (n + 1)).toNat - A007504 (A007504 n).toNat

end

end A034958.P4957141392143406726

noncomputable section

/-- A034958: Divide primes into groups with prime(n) elements and add together.

Offset 1, canonical program `A034958.P4957141392143406726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034958 (n : ℕ) : ℤ :=
  A034958.P4957141392143406726.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034958.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A055684.P4777645842216541427

`A023022(n+3)-1`
-/

namespace A055684.P4777645842216541427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 3) - 1

end

end A055684.P4777645842216541427

noncomputable section

/-- A055684: Number of different n-pointed stars.

Offset 3, canonical program `A055684.P4777645842216541427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055684 (n : ℕ) : ℤ :=
  A055684.P4777645842216541427.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057473.P10214485168046116986

`A151800(A151800(A057470(n+1)))`
-/

namespace A057473.P10214485168046116986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A057470 (n + 1)).toNat).toNat

end

end A057473.P10214485168046116986

noncomputable section

/-- A057473: Let prime(i) = i-th prime, let twin(n) = (P,Q) be n-th pair of twin primes; sequence gives prime(Q).

Offset 1, canonical program `A057473.P10214485168046116986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057473 (n : ℕ) : ℤ :=
  A057473.P10214485168046116986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060620.P18002916357615302440

`floor(A007504(n+1)/(n+1))`
-/

namespace A060620.P18002916357615302440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P18002916357615302440

noncomputable section

/-- A060620: Average of the first n primes rounded down.

Offset 1, canonical program `A060620.P18002916357615302440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060620 (n : ℕ) : ℤ :=
  A060620.P18002916357615302440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060939.P1241768612471461444

`A007504(n+1)+n+1`
-/

namespace A060939.P1241768612471461444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (n + 1 : ℤ)

end

end A060939.P1241768612471461444

noncomputable section

/-- A060939: a(n) = (Sum of the first n primes) + n.

Offset 1, canonical program `A060939.P1241768612471461444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060939 (n : ℕ) : ℤ :=
  A060939.P1241768612471461444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061568.P18203611541489259856

`A000720(A007504(n+1))`
-/

namespace A061568.P18203611541489259856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007504 (n + 1)).toNat

end

end A061568.P18203611541489259856

noncomputable section

/-- A061568: Number of primes <= sum of first n primes.

Offset 1, canonical program `A061568.P18203611541489259856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061568 (n : ℕ) : ℤ :=
  A061568.P18203611541489259856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062020.P11042138404562219295

`2*A014285(n+1)-(n+2)*A007504(n+1)`
-/

namespace A062020.P11042138404562219295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014285 (n + 1) - (n + 2 : ℤ) * A007504 (n + 1)

end

end A062020.P11042138404562219295

noncomputable section

/-- A062020: a(n) = Sum_{i=1..n} Sum_{j=1..i} (prime(i) - prime(j)).

Offset 1, canonical program `A062020.P11042138404562219295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A014285, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062020 (n : ℕ) : ℤ :=
  A062020.P11042138404562219295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A014285, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062022.P79191704217042567

`(n+1)*A024450(n+1)-A007504(n+1)²`
-/

namespace A062022.P79191704217042567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A024450 (n + 1) - A007504 (n + 1) ^ 2

end

end A062022.P79191704217042567

noncomputable section

/-- A062022: a(n) = Sum_{k=1..n} Sum_{j=1..k} (prime(k) - prime(j))^2.

Offset 1, canonical program `A062022.P79191704217042567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062022 (n : ℕ) : ℤ :=
  A062022.P79191704217042567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062787.P5490258356335580690

`A058210(n+2)-Δ[A005728(n+1)]`
-/

namespace A062787.P5490258356335580690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058210 (n + 2) - (f1 (n + 1) - f1 n)

end

end A062787.P5490258356335580690

noncomputable section

/-- A062787: a(n) = floor(exp(gamma) n log log n ) - phi(n), where gamma is Euler's constant (A001620).

Offset 2, canonical program `A062787.P5490258356335580690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062787 (n : ℕ) : ℤ :=
  A062787.P5490258356335580690.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062956.P3129538147120838096

`(n+2)*A023022(n+3)`
-/

namespace A062956.P3129538147120838096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A023022 (n + 3)

end

end A062956.P3129538147120838096

noncomputable section

/-- A062956: a(n) = h(n^2) - h(n), where h(n) is the half-totient function (A023022).

Offset 3, canonical program `A062956.P3129538147120838096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062956 (n : ℕ) : ℤ :=
  A062956.P3129538147120838096.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063474.P1256532106464464767

`A023022(A000051(n+1))`
-/

namespace A063474.P1256532106464464767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A000051 (n + 1)).toNat

end

end A063474.P1256532106464464767

noncomputable section

/-- A063474: Half totient of 2^n+1.

Offset 1, canonical program `A063474.P1256532106464464767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063474 (n : ℕ) : ℤ :=
  A063474.P1256532106464464767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065595.P17601801696022809177

`A007504(n+1)²-A024450(n+1)`
-/

namespace A065595.P17601801696022809177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 2 - A024450 (n + 1)

end

end A065595.P17601801696022809177

noncomputable section

/-- A065595: a(n) = (sum of first n primes)^2 - sum of squares of first n primes.

Offset 1, canonical program `A065595.P17601801696022809177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065595 (n : ℕ) : ℤ :=
  A065595.P17601801696022809177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065762.P7191930492121283132

`A007504(n+1)²+A024450(n+1)`
-/

namespace A065762.P7191930492121283132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 2 + A024450 (n + 1)

end

end A065762.P7191930492121283132

noncomputable section

/-- A065762: a(n) = (sum of first n primes)^2 + sum of (squares of first n primes).

Offset 1, canonical program `A065762.P7191930492121283132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065762 (n : ℕ) : ℤ :=
  A065762.P7191930492121283132.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068773.P160054697716686617

`3*A002088(n+1)-2*A049690(n+1)`
-/

namespace A068773.P160054697716686617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002088 (n + 1) - 2 * A049690 (n + 1)

end

end A068773.P160054697716686617

noncomputable section

/-- A068773: Alternating sum phi(1) - phi(2) + phi(3) - phi(4) + ... + ((-1)^(n+1))*phi(n).

Offset 1, canonical program `A068773.P160054697716686617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A049690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068773 (n : ℕ) : ℤ :=
  A068773.P160054697716686617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A049690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071148.P13630786703162267389

`A007504(n+2)-2`
-/

namespace A071148.P13630786703162267389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2) - 2

end

end A071148.P13630786703162267389

noncomputable section

/-- A071148: Partial sums of sequence of odd primes (A065091); a(n) = sum of the first n odd primes.

Offset 1, canonical program `A071148.P13630786703162267389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071148 (n : ℕ) : ℤ :=
  A071148.P13630786703162267389.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071411.P1894007710603126055

`A007504(n+1)-A051349(n+1)`
-/

namespace A071411.P1894007710603126055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A051349 (n + 1)

end

end A071411.P1894007710603126055

noncomputable section

/-- A071411: "Sum of n first primes" minus "sum of first n nonprimes".

Offset 1, canonical program `A071411.P1894007710603126055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A051349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071411 (n : ℕ) : ℤ :=
  A071411.P1894007710603126055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A051349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071411.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A074369.P8450492352750418475

`A000005(A007504(n+1))`
-/

namespace A074369.P8450492352750418475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007504 (n + 1)).toNat

end

end A074369.P8450492352750418475

noncomputable section

/-- A074369: Number of divisors of Sum_{i=1..n} prime(i).

Offset 1, canonical program `A074369.P8450492352750418475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074369 (n : ℕ) : ℤ :=
  A074369.P8450492352750418475.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074370.P10376428531819324136

`A000203(A007504(n+1))`
-/

namespace A074370.P10376428531819324136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007504 (n + 1)).toNat

end

end A074370.P10376428531819324136

noncomputable section

/-- A074370: Sum of the divisors of Sum_{i=1..n} prime(i).

Offset 1, canonical program `A074370.P10376428531819324136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074370 (n : ℕ) : ℤ :=
  A074370.P10376428531819324136.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075881.P5081293527233532591

`A008472(A007504(n+1))`
-/

namespace A075881.P5081293527233532591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A007504 (n + 1)).toNat

end

end A075881.P5081293527233532591

noncomputable section

/-- A075881: a(n) = the sum of the prime factors of Sum_{i=1..n} prime(i).

Offset 1, canonical program `A075881.P5081293527233532591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075881 (n : ℕ) : ℤ :=
  A075881.P5081293527233532591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075881.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A077354.P15018745007241807855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A131740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077354 (n : ℕ) : ℤ :=
  A077354.P15018745007241807855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A131740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077645.P129742426279453168

`A007504(A000720(10^(n+1)))-A007504(A000720(10^n))`
-/

namespace A077645.P129742426279453168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (10 ^ (n + 1))).toNat - A007504 (A000720 (10 ^ n)).toNat

end

end A077645.P129742426279453168

noncomputable section

/-- A077645: Sum of all primes having n decimal digits.

Offset 1, canonical program `A077645.P129742426279453168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077645 (n : ℕ) : ℤ :=
  A077645.P129742426279453168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077645.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A089929.P15231734945844901481

`A023022(lcm(4, n+2))`
-/

namespace A089929.P15231734945844901481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (Nat.lcm 4 (n + 2))

end

end A089929.P15231734945844901481

noncomputable section

/-- A089929: Algebraic degree of cot(Pi/n).

Offset 2, canonical program `A089929.P15231734945844901481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A089929 (n : ℕ) : ℤ :=
  A089929.P15231734945844901481.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A089929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091369.P3969440163011087150

`(n+1)²-A063985(n+1)`
-/

namespace A091369.P3969440163011087150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A063985 (n + 1)

end

end A091369.P3969440163011087150

noncomputable section

/-- A091369: a(n) = Sum_{i=1..n} phi(i)*ceiling(n/i).

Offset 1, canonical program `A091369.P3969440163011087150`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091369 (n : ℕ) : ℤ :=
  A091369.P3969440163011087150.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091369.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A092780.P3974277560898924787

`A007504(n+1)²-1`
-/

namespace A092780.P3974277560898924787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 2 - 1

end

end A092780.P3974277560898924787

noncomputable section

/-- A092780: Sum(prime(k),k=1..n)^2-1.

Offset 1, canonical program `A092780.P3974277560898924787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092780 (n : ℕ) : ℤ :=
  A092780.P3974277560898924787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092780.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A099957.P9340861453525677397

`A002088(2*(n+1)-1)-A049690(n)`
-/

namespace A099957.P9340861453525677397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 * (n + 1) - 1) - A049690 n

end

end A099957.P9340861453525677397

noncomputable section

/-- A099957: a(n) = Sum_{k=0..n-1} phi(2k+1).

Offset 1, canonical program `A099957.P9340861453525677397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A049690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099957 (n : ℕ) : ℤ :=
  A099957.P9340861453525677397.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A049690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099957.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A100613.P7468063633472476903

`2*A063985(n+1)-n`
-/

namespace A100613.P7468063633472476903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063985 (n + 1) - (n : ℤ)

end

end A100613.P7468063633472476903

noncomputable section

/-- A100613: Number of elements in the set {(x,y): 1 <= x,y <= n, gcd(x,y) > 1}.

Offset 1, canonical program `A100613.P7468063633472476903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100613 (n : ℕ) : ℤ :=
  A100613.P7468063633472476903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101301.P12618163721935666644

`A007504(n+1)-(n+1)`
-/

namespace A101301.P12618163721935666644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (n + 1 : ℤ)

end

end A101301.P12618163721935666644

noncomputable section

/-- A101301: The sum of the first n primes, minus n.

Offset 1, canonical program `A101301.P12618163721935666644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101301 (n : ℕ) : ℤ :=
  A101301.P12618163721935666644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101301.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A108754.P16448062333260017930

`A007504(n+1)-A000290(n+1)`
-/

namespace A108754.P16448062333260017930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A000290 (n + 1)

end

end A108754.P16448062333260017930

noncomputable section

/-- A108754: Difference between partial sum of the first n primes and n^2.

Offset 1, canonical program `A108754.P16448062333260017930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108754 (n : ℕ) : ℤ :=
  A108754.P16448062333260017930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109288.P6952857508104961843

`A039832(A326178(n+1))+1`
-/

namespace A109288.P6952857508104961843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (A326178 (n + 1)).toNat + 1

end

end A109288.P6952857508104961843

noncomputable section

/-- A109288: Semiprimes equal to p*q + 1, where p and q are distinct primes.

Offset 1, canonical program `A109288.P6952857508104961843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109288 (n : ℕ) : ℤ :=
  A109288.P6952857508104961843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109288.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112039.P8022561423127945551

`(1+A007504(2*(n+1)))/2`
-/

namespace A112039.P8022561423127945551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A007504 (2 * (n + 1)) : ℚ) / 2

end

end A112039.P8022561423127945551

noncomputable section

/-- A112039: Let b(0)=1/2, b(n) = b(n-1) + Prime[n]/2; a(n)=b(2*n).

Offset 1, canonical program `A112039.P8022561423127945551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112039.P8022561423127945551.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112997.P3713856926934514710

`A007504(n+1)-(n+1)*(n+2)/2`
-/

namespace A112997.P3713856926934514710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) - ((n + 1) * (n + 2) : ℚ) / 2

end

end A112997.P3713856926934514710

noncomputable section

/-- A112997: Sum of first n primes minus sum of their indices.

Offset 1, canonical program `A112997.P3713856926934514710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112997 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112997.P3713856926934514710.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112997.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A114699.P8287388229855982445

`A000799(n+1)-A064355(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114699.P8287388229855982445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - A064355 (n + 1)

end

end A114699.P8287388229855982445

noncomputable section

/-- A114699: A000799(n) - A064355(n).

Offset 0, canonical program `A114699.P8287388229855982445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114699 (n : ℕ) : ℤ :=
  A114699.P8287388229855982445.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114699.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116367.P6155131737747558776

`(n+2)*A000040(n+2)+A007504(n+1)-2`
-/

namespace A116367.P6155131737747558776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000040 (n + 2) + A007504 (n + 1) - 2

end

end A116367.P6155131737747558776

noncomputable section

/-- A116367: Sums of rows of the triangle in A116366.

Offset 1, canonical program `A116367.P6155131737747558776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116367 (n : ℕ) : ℤ :=
  A116367.P6155131737747558776.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116367.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A119677.P15587159543036332007

`4*(A036698(n)-n)`
-/

namespace A119677.P15587159543036332007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A036698 n - (n : ℤ))

end

end A119677.P15587159543036332007

noncomputable section

/-- A119677: a(n) is the number of complete squares that fit inside the circle with radius n, drawn on squared paper at (0, 0).

Offset 0, canonical program `A119677.P15587159543036332007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119677 (n : ℕ) : ℤ :=
  A119677.P15587159543036332007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122515.P14647723614096955269

`A007504(n+1)-A046992(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122515.P14647723614096955269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A046992 (n + 1)

end

end A122515.P14647723614096955269

noncomputable section

/-- A122515: a(n) = A007504(n) - A046992(n).

Offset 1, canonical program `A122515.P14647723614096955269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A046992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122515 (n : ℕ) : ℤ :=
  A122515.P14647723614096955269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A046992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123119.P18220163899370039324

`A055642(A007504(n+1))`
-/

namespace A123119.P18220163899370039324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007504 (n + 1)).toNat

end

end A123119.P18220163899370039324

noncomputable section

/-- A123119: Number of digits in sum of first n primes (A007504).

Offset 1, canonical program `A123119.P18220163899370039324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123119 (n : ℕ) : ℤ :=
  A123119.P18220163899370039324.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123119.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125130.P6259504309083317485

`A007504(A000217(n+1))`
-/

namespace A125130.P6259504309083317485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000217 (n + 1)).toNat

end

end A125130.P6259504309083317485

noncomputable section

/-- A125130: Successive sums of consecutive primes that form a triangular grid.

Offset 1, canonical program `A125130.P6259504309083317485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125130 (n : ℕ) : ℤ :=
  A125130.P6259504309083317485.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125130.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A135267.P10837298668863611185

`A007504(n+1)-A002378(n+1)`
-/

namespace A135267.P10837298668863611185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A002378 (n + 1)

end

end A135267.P10837298668863611185

noncomputable section

/-- A135267: Difference between partial sum of the first n primes and the first n even numbers greater than 0.

Offset 1, canonical program `A135267.P10837298668863611185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135267 (n : ℕ) : ℤ :=
  A135267.P10837298668863611185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135267.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143215.P1994719759372848110

`A000040(n+1)*A007504(n+1)`
-/

namespace A143215.P1994719759372848110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007504 (n + 1)

end

end A143215.P1994719759372848110

noncomputable section

/-- A143215: a(n) = prime(n) * Sum_{i=1..n} prime(i).

Offset 1, canonical program `A143215.P1994719759372848110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143215 (n : ℕ) : ℤ :=
  A143215.P1994719759372848110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143215.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A145642.P7677048617916036936

`A050985(A000142(n+1))`
-/

namespace A145642.P7677048617916036936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A000142 (n + 1)).toNat

end

end A145642.P7677048617916036936

noncomputable section

/-- A145642: Cubefree part of n!.

Offset 1, canonical program `A145642.P7677048617916036936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145642 (n : ℕ) : ℤ :=
  A145642.P7677048617916036936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145643.P5565039089606067867

`A050985(A006882(n+1))`
-/

namespace A145643.P5565039089606067867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A006882 (n + 1)).toNat

end

end A145643.P5565039089606067867

noncomputable section

/-- A145643: Cubefree part of n!!.

Offset 1, canonical program `A145643.P5565039089606067867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145643 (n : ℕ) : ℤ :=
  A145643.P5565039089606067867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145643.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A158528.P17573556764949661852

`Δ[A007504(∑[A060199(n)])]`
-/

namespace A158528.P17573556764949661852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158528.P17573556764949661852

noncomputable section

/-- A158528: Sum of primes between consecutive positive cubes.

Offset 1, canonical program `A158528.P17573556764949661852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A158528 (n : ℕ) : ℤ :=
  A158528.P17573556764949661852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A158528.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162867.P8413772705343167960

`(n+2)*A007504(n+1)`
-/

namespace A162867.P8413772705343167960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A007504 (n + 1)

end

end A162867.P8413772705343167960

noncomputable section

/-- A162867: a(n) is the sum of all possible pairs of the first n primes.

Offset 1, canonical program `A162867.P8413772705343167960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162867 (n : ℕ) : ℤ :=
  A162867.P8413772705343167960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162867.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163061.P15581848910612517848

`A007504(n+1)+A051349(n)`
-/

namespace A163061.P15581848910612517848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + A051349 n

end

end A163061.P15581848910612517848

noncomputable section

/-- A163061: Sum of the first n primes plus the first n nonprimes.

Offset 1, canonical program `A163061.P15581848910612517848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A051349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163061 (n : ℕ) : ℤ :=
  A163061.P15581848910612517848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A051349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163116.P9298683324671648407

`A007504(n+1)-A051349(n)`
-/

namespace A163116.P9298683324671648407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A051349 n

end

end A163116.P9298683324671648407

noncomputable section

/-- A163116: Partial sums of A161671.

Offset 1, canonical program `A163116.P9298683324671648407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A051349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163116 (n : ℕ) : ℤ :=
  A163116.P9298683324671648407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A051349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163116.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A167214.P9697442408688225616

`(n+1)*A007504(n+1)`
-/

namespace A167214.P9697442408688225616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007504 (n + 1)

end

end A167214.P9697442408688225616

noncomputable section

/-- A167214: a(n) = (sum of first n primes) * n.

Offset 1, canonical program `A167214.P9697442408688225616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167214 (n : ℕ) : ℤ :=
  A167214.P9697442408688225616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000592.P15353079189797970692

`A224212(A001481(n+1))`
-/

namespace A000592.P15353079189797970692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (A001481 (n + 1)).toNat

end

end A000592.P15353079189797970692

noncomputable section

/-- A000592: Number of nonnegative solutions of x^2 + y^2 = z in first n shells.

Offset 0, canonical program `A000592.P15353079189797970692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. -/
def A000592 (n : ℕ) : ℤ :=
  A000592.P15353079189797970692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. -/
def A000592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000603.P17854986445594045637

`A036698(n)+1+n`
-/

namespace A000603.P17854986445594045637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 n + 1 + (n : ℤ)

end

end A000603.P17854986445594045637

noncomputable section

/-- A000603: Number of nonnegative solutions to x^2 + y^2 <= n^2.

Offset 0, canonical program `A000603.P17854986445594045637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000603 (n : ℕ) : ℤ :=
  A000603.P17854986445594045637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001037.P3072020637183991904

`A045664(n)/A253909(n)`
-/

namespace A001037.P3072020637183991904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045664 n : ℚ) / (A253909 n : ℚ)

end

end A001037.P3072020637183991904

noncomputable section

/-- A001037: Number of degree-n irreducible polynomials over GF(2); number of n-bead necklaces with beads of 2 colors when turning over is not allowed and with primitive period n; number of binary Lyndon words of length n.

Offset 0, canonical program `A001037.P3072020637183991904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A001037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001037.P3072020637183991904.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A001037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003967.P17708187664325612051

`∑{d}[n+1, A003958(#)]`
-/

namespace A003967.P17708187664325612051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d

end

end A003967.P17708187664325612051

noncomputable section

/-- A003967: Inverse Möbius transform of A003958.

Offset 1, canonical program `A003967.P17708187664325612051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003967 (n : ℕ) : ℤ :=
  A003967.P17708187664325612051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006875.P14857395006895934659

`A000740(n+1)-A006876(n+1)`
-/

namespace A006875.P14857395006895934659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) - A006876 (n + 1)

end

end A006875.P14857395006895934659

noncomputable section

/-- A006875: Non-seed mu-atoms of period n in Mandelbrot set.

Offset 1, canonical program `A006875.P14857395006895934659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, A006876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006875 (n : ℕ) : ℤ :=
  A006875.P14857395006895934659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, A006876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008834.P8690349651579721460

`(n+1)/A050985(n+1)`
-/

namespace A008834.P8690349651579721460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A050985 (n + 1) : ℚ)

end

end A008834.P8690349651579721460

noncomputable section

/-- A008834: Largest cube dividing n.

Offset 1, canonical program `A008834.P8690349651579721460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008834.P8690349651579721460.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024447.P10375712064982123198

`(A007504(n+1)²-A024450(n+1))/2`
-/

namespace A024447.P10375712064982123198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) ^ 2 - A024450 (n + 1) : ℚ) / 2

end

end A024447.P10375712064982123198

noncomputable section

/-- A024447: Sum of the products of the primes taken 2 at a time from the first n primes.

Offset 1, canonical program `A024447.P10375712064982123198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024447 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024447.P10375712064982123198.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034734.P15721239827703422834

`∑{d}[n+1, A000740(#)*A007435((n+1)/#)]`
-/

namespace A034734.P15721239827703422834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A007435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P15721239827703422834

noncomputable section

/-- A034734: Dirichlet convolution of b_n=2^(n-1) with Fibonacci numbers.

Offset 1, canonical program `A034734.P15721239827703422834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034734 (n : ℕ) : ℤ :=
  A034734.P15721239827703422834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034736.P10113879758376514175

`∑{d}[n+1, A000740(#)*A030014((n+1)/#)]`
-/

namespace A034736.P10113879758376514175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034736.P10113879758376514175

noncomputable section

/-- A034736: Dirichlet convolution of b_n=2^(n-1) with Primes (with 1).

Offset 1, canonical program `A034736.P10113879758376514175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034736 (n : ℕ) : ℤ :=
  A034736.P10113879758376514175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036695.P3115726908508133400

`ceil(A000328(n)/2+n)`
-/

namespace A036695.P3115726908508133400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000328 n : ℚ) / 2 + (n : ℚ)⌉

end

end A036695.P3115726908508133400

noncomputable section

/-- A036695: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n, b>=0.

Offset 0, canonical program `A036695.P3115726908508133400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036695 (n : ℕ) : ℤ :=
  A036695.P3115726908508133400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036711.P14920642788416913369

`floor(A036704(n)/4)`
-/

namespace A036711.P14920642788416913369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036704 n : ℚ) / 4⌋

end

end A036711.P14920642788416913369

noncomputable section

/-- A036711: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, a>0, b>=0.

Offset 0, canonical program `A036711.P14920642788416913369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8470 terms. -/
def A036711 (n : ℕ) : ℤ :=
  A036711.P14920642788416913369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8470 terms. -/
def A036711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038199.P1588479413970294253

`A000740(n+1)*A036453(n+1)`
-/

namespace A038199.P1588479413970294253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) * A036453 (n + 1)

end

end A038199.P1588479413970294253

noncomputable section

/-- A038199: Row sums of triangle T(m,n) = number of solutions to 1 <= a(1) < a(2) < ... < a(m) <= n, where gcd(a(1), a(2), ..., a(m), n) = 1, in A020921.

Offset 1, canonical program `A038199.P1588479413970294253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A038199 (n : ℕ) : ℤ :=
  A038199.P1588479413970294253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A038199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048149.P13644197507021324335

`A224212(A048147(n))`
-/

namespace A048149.P13644197507021324335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (A048147 n).toNat

end

end A048149.P13644197507021324335

noncomputable section

/-- A048149: Array T read by diagonals: T(i,j) = number of pairs (h,k) with h^2+k^2 <= i^2+j^2, h>=0, k >= 0.

Offset 0, canonical program `A048149.P13644197507021324335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A048149 (n : ℕ) : ℤ :=
  A048149.P13644197507021324335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A048149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049744.P13630164365312870052

`A333167(n)+A000328(n)`
-/

namespace A049744.P13630164365312870052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n + A000328 n

end

end A049744.P13630164365312870052

noncomputable section

/-- A049744: a(n)=T(n,1), array T as in A049735.

Offset 0, canonical program `A049744.P13630164365312870052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049744 (n : ℕ) : ℤ :=
  A049744.P13630164365312870052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050872.P5272709891617421659

`record[2^n-A000740(n+1)]`
-/

namespace A050872.P5272709891617421659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050872.P5272709891617421659

noncomputable section

/-- A050872: a(n) = (1/2)*A050871 (row sums of array T in A050870, periodic binary words).

Offset 0, canonical program `A050872.P5272709891617421659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050872 (n : ℕ) : ℤ :=
  A050872.P5272709891617421659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056278.P6109967652677741343

`A000740(n+1)%(2^n)`
-/

namespace A056278.P6109967652677741343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000740 (n + 1)) (2 ^ n : ℤ)

end

end A056278.P6109967652677741343

noncomputable section

/-- A056278: Number of primitive (aperiodic) word structures of length n which contain exactly two different symbols.

Offset 1, canonical program `A056278.P6109967652677741343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056278 (n : ℕ) : ℤ :=
  A056278.P6109967652677741343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056278.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A063725.P12741089044414848106

`Δ[A237526(abs(1-n))]`
-/

namespace A063725.P12741089044414848106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063725.P12741089044414848106

noncomputable section

/-- A063725: Number of ordered pairs (x,y) of positive integers such that x^2 + y^2 = n.

Offset 0, canonical program `A063725.P12741089044414848106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063725 (n : ℕ) : ℤ :=
  A063725.P12741089044414848106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063776.P939957080839248717

`∑{d}[n+1, A059841(#-1)*A064355((n+1)/#)]`
-/

namespace A063776.P939957080839248717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A064355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063776.P939957080839248717

noncomputable section

/-- A063776: Number of subsets of {1,2,...,n} which sum to 0 modulo n.

Offset 1, canonical program `A063776.P939957080839248717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A063776 (n : ℕ) : ℤ :=
  A063776.P939957080839248717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A063776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064016.P2024844494893965429

`10^n*(10^n+1)/2-A064018(n)`
-/

namespace A064016.P2024844494893965429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n * (10 ^ n + 1) : ℚ) / 2 - (A064018 n : ℚ)

end

end A064016.P2024844494893965429

noncomputable section

/-- A064016: a(n) = Sum_{k <= 10^n} cototient(k), where cototient is A051953.

Offset 0, canonical program `A064016.P2024844494893965429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064018, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064016.P2024844494893965429.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064018, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064016.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064522.P867871108322155119

`lt[(n+1)%A003958(n+1), 1]+1`
-/

namespace A064522.P867871108322155119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A003958 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064522.P867871108322155119

noncomputable section

/-- A064522: For an integer n with prime factorization p1*p2*p3* ... *pn let n* = (p1-1)*(p2-1)*(p3-1)* ... *(pn-1) (A003958); sequence gives n such that n is divisible by n*.

Offset 1, canonical program `A064522.P867871108322155119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A064522 (n : ℕ) : ℤ :=
  (A064522.P867871108322155119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A064522.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A065499.P14795021583104513444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065499 (n : ℕ) : ℤ :=
  A065499.P14795021583104513444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065499.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A070958.P2058158255106177248

`eq[A010879(A007953(n)), A054055(n)]`
-/

namespace A070958.P2058158255106177248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070958.P2058158255106177248

noncomputable section

/-- A070958: Numbers n such that the largest digit of n is the same as the largest digit of (sum of digits of n).

Offset 1, canonical program `A070958.P2058158255106177248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A070958 (n : ℕ) : ℤ :=
  (A070958.P2058158255106177248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A070958.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071203.P735397639379525121

`floor((n+1)/A054055(n+1))`
-/

namespace A071203.P735397639379525121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A054055 (n + 1) : ℚ)⌋

end

end A071203.P735397639379525121

noncomputable section

/-- A071203: Integer part of n divided by its largest digit (decimal notation).

Offset 1, canonical program `A071203.P735397639379525121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071203 (n : ℕ) : ℤ :=
  A071203.P735397639379525121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072543.P16086005877462382500

`eq[A000030(n), A054055(n)]`
-/

namespace A072543.P16086005877462382500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P16086005877462382500

noncomputable section

/-- A072543: Numbers whose largest decimal digit is also the initial digit.

Offset 1, canonical program `A072543.P16086005877462382500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3473 terms. -/
def A072543 (n : ℕ) : ℤ :=
  (A072543.P16086005877462382500.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3473 terms. -/
def A072543.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A072604.P7451887866366379934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6389 terms. -/
def A072604 (n : ℕ) : ℤ :=
  (A072604.P7451887866366379934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6389 terms. -/
def A072604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073730.P1025248942146789471

`A054055(n+1)*10+A054054(n+1)`
-/

namespace A073730.P1025248942146789471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1) * 10 + A054054 (n + 1)

end

end A073730.P1025248942146789471

noncomputable section

/-- A073730: Concatenation of largest and smallest digits of n in decimal representation.

Offset 1, canonical program `A073730.P1025248942146789471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073730 (n : ℕ) : ℤ :=
  A073730.P1025248942146789471.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074919.P483110593070601993

`A078401(A000010(n+1)+∑[n])`
-/

namespace A074919.P483110593070601993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078401 (A000010 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A074919.P483110593070601993

noncomputable section

/-- A074919: Number of integers in {1, 2, ..., phi(n)} that are coprime to n.

Offset 1, canonical program `A074919.P483110593070601993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A074919 (n : ℕ) : ℤ :=
  A074919.P483110593070601993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A074919.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A075882.P17629495467896949930

`A000010(A007504(n+1))`
-/

namespace A075882.P17629495467896949930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007504 (n + 1)).toNat

end

end A075882.P17629495467896949930

noncomputable section

/-- A075882: a(n) = phi(Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A075882.P17629495467896949930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075882 (n : ℕ) : ℤ :=
  A075882.P17629495467896949930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076488.P10336001382820436641

`record[A105570(A076487(n+4))]`
-/

namespace A076488.P10336001382820436641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A076487 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076488.P10336001382820436641

noncomputable section

/-- A076488: Nonsquarefree solutions to gcd(sigma(x), phi(x)) = gcd(sigma(core(x)), Phi(core(x))), i.e., when A009223(x) = A066086(x) or if A066087(x)=0 and mu(x)=0.

Offset 1, canonical program `A076488.P10336001382820436641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A076488 (n : ℕ) : ℤ :=
  A076488.P10336001382820436641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A076488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076520.P2365901369714295993

`comp[A237526(n)+n]-n`
-/

namespace A076520.P2365901369714295993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A076520.P2365901369714295993

noncomputable section

/-- A076520: n appears once if n is the sum of 2 nonzero squares in 1 way, twice if n is the sum of 2 squares in 2 ways, 3 times if n is the sum of 2 squares 3 ways etc.

Offset 1, canonical program `A076520.P2365901369714295993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1862 terms. -/
def A076520 (n : ℕ) : ℤ :=
  A076520.P2365901369714295993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1862 terms. -/
def A076520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079533.P15741439843851512584

`A079532(A002808(n+1))`
-/

namespace A079533.P15741439843851512584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (A002808 (n + 1)).toNat

end

end A079533.P15741439843851512584

noncomputable section

/-- A079533: Floor(k - sqrt(k)) - phi(k) as k runs through the composite numbers (A002808).

Offset 1, canonical program `A079533.P15741439843851512584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079533 (n : ℕ) : ℤ :=
  A079533.P15741439843851512584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079533.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079579.P7960359697621555488

`(n+1)*A003958(n+1)`
-/

namespace A079579.P7960359697621555488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003958 (n + 1)

end

end A079579.P7960359697621555488

noncomputable section

/-- A079579: Totally multiplicative with p -> (p-1)*p, p prime.

Offset 1, canonical program `A079579.P7960359697621555488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079579 (n : ℕ) : ℤ :=
  A079579.P7960359697621555488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079579.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083890.P17438385976831224986

`∑{d}[n+1, (4%A054055(#))%2]`
-/

namespace A083890.P17438385976831224986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod 4 (A054055 d)) 2

end

end A083890.P17438385976831224986

noncomputable section

/-- A083890: Number of divisors of n with largest digit = 3 (base 10).

Offset 1, canonical program `A083890.P17438385976831224986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083890 (n : ℕ) : ℤ :=
  A083890.P17438385976831224986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083892.P9271966704018374742

`∑{d}[n+1, val(A054055(#), 5)]`
-/

namespace A083892.P9271966704018374742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 5

end

end A083892.P9271966704018374742

noncomputable section

/-- A083892: Number of divisors of n with largest digit = 5 (base 10).

Offset 1, canonical program `A083892.P9271966704018374742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083892 (n : ℕ) : ℤ :=
  (A083892.P9271966704018374742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083893.P9413967459148914952

`∑{d}[n+1, val(A054055(#), 6)]`
-/

namespace A083893.P9413967459148914952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 6

end

end A083893.P9413967459148914952

noncomputable section

/-- A083893: Number of divisors of n with largest digit = 6 (base 10).

Offset 1, canonical program `A083893.P9413967459148914952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083893 (n : ℕ) : ℤ :=
  (A083893.P9413967459148914952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083894.P9300796477055001593

`∑{d}[n+1, val(A054055(#), 7)]`
-/

namespace A083894.P9300796477055001593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 7

end

end A083894.P9300796477055001593

noncomputable section

/-- A083894: Number of divisors of n with largest digit = 7 (base 10).

Offset 1, canonical program `A083894.P9300796477055001593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083894 (n : ℕ) : ℤ :=
  (A083894.P9300796477055001593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085945.P16038888341819621342

`∑[A000740(n+1)]`
-/

namespace A085945.P16038888341819621342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085945.P16038888341819621342

noncomputable section

/-- A085945: Number of subsets of {1,2,...,n} with relatively prime elements.

Offset 1, canonical program `A085945.P16038888341819621342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A085945 (n : ℕ) : ℤ :=
  A085945.P16038888341819621342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A085945.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095815.P14387125408819555274

`∑[Δ[A054055(n)]+1]`
-/

namespace A095815.P14387125408819555274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095815.P14387125408819555274

noncomputable section

/-- A095815: a(n) = n + largest digit of n.

Offset 1, canonical program `A095815.P14387125408819555274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095815 (n : ℕ) : ℤ :=
  A095815.P14387125408819555274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095824.P14613897866976482580

`eq[2, A000005(A054055(A028310(n))+n)]`
-/

namespace A095824.P14613897866976482580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054055 (A028310 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095824.P14613897866976482580

noncomputable section

/-- A095824: Numbers k such that k + largest digit of k is prime.

Offset 1, canonical program `A095824.P14613897866976482580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 921 terms. -/
def A095824 (n : ℕ) : ℤ :=
  (A095824.P14613897866976482580.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 921 terms. -/
def A095824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095826.P6298974977224630570

`eq[0, A002262(A054055(n)+n)]`
-/

namespace A095826.P6298974977224630570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095826.P6298974977224630570

noncomputable section

/-- A095826: Numbers k such that k + largest digit of k is a triangular number.

Offset 1, canonical program `A095826.P6298974977224630570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A095826 (n : ℕ) : ℤ :=
  (A095826.P6298974977224630570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A095826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096311.P16491752530489229289

`eq[A032741(n)+1, A054055(n)]`
-/

namespace A096311.P16491752530489229289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096311.P16491752530489229289

noncomputable section

/-- A096311: Numbers whose number of divisors equals the largest digit.

Offset 1, canonical program `A096311.P16491752530489229289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A096311 (n : ℕ) : ℤ :=
  (A096311.P16491752530489229289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A096311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097385.P16831053754396584263

`A054055(n)^A054054(n)+n`
-/

namespace A097385.P16831053754396584263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054055 n : ℚ) ^ (A054054 n : ℤ) + (n : ℚ)

end

end A097385.P16831053754396584263

noncomputable section

/-- A097385: a(n) = (largest digit of n)^(smallest digit of n) + n.

Offset 0, canonical program `A097385.P16831053754396584263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A097385.P16831053754396584263.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098189.P4675613756573831951

`A034448(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098189.P4675613756573831951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A000010 (n + 1)

end

end A098189.P4675613756573831951

noncomputable section

/-- A098189: Sum of unitary divisors minus Euler phi: a(n) = A034448(n) - A000010(n).

Offset 1, canonical program `A098189.P4675613756573831951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098189 (n : ℕ) : ℤ :=
  A098189.P4675613756573831951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098445.P10491373951280653570

`log2(gcd(16, A007706(n)))`
-/

namespace A098445.P10491373951280653570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 16 (A007706 n) : ℝ)

end

end A098445.P10491373951280653570

noncomputable section

/-- A098445: Coefficients of powers of q^5 in (q)_oo^5 == (q_5)^oo (mod 5).

Offset 0, canonical program `A098445.P10491373951280653570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A098445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098445.P10491373951280653570.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A098445.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A106475.P1754682136822621499

`2*(n+1)-A344372(n+1)`
-/

namespace A106475.P1754682136822621499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A344372 (n + 1)

end

end A106475.P1754682136822621499

noncomputable section

/-- A106475: An alternating sum of greatest common divisors.

Offset 0, canonical program `A106475.P1754682136822621499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106475 (n : ℕ) : ℤ :=
  A106475.P1754682136822621499.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107085.P11711300005954803242

`eq[dr(n), A054055(n)]`
-/

namespace A107085.P11711300005954803242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107085.P11711300005954803242

noncomputable section

/-- A107085: Numbers whose largest digit in its decimal representation is equal to its digital root.

Offset 1, canonical program `A107085.P11711300005954803242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1089 terms. -/
def A107085 (n : ℕ) : ℤ :=
  (A107085.P11711300005954803242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1089 terms. -/
def A107085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109712.P3623470777701250285

`A034448(A006519(n+1))*A047994((n+1)/A006519(n+1))`
-/

namespace A109712.P3623470777701250285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A006519 (n + 1)).toNat * A047994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A109712.P3623470777701250285

noncomputable section

/-- A109712: UnitarySigmaUnitaryPhi(n) or USUP(n).

Offset 1, canonical program `A109712.P3623470777701250285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109712 (n : ℕ) : ℤ :=
  A109712.P3623470777701250285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115300.P5587035240963865168

`A054054(n+1)*A054055(n+1)`
-/

namespace A115300.P5587035240963865168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1) * A054055 (n + 1)

end

end A115300.P5587035240963865168

noncomputable section

/-- A115300: Greatest digit of n * least digit of n.

Offset 1, canonical program `A115300.P5587035240963865168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115300 (n : ℕ) : ℤ :=
  A115300.P5587035240963865168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115300.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A123324.P6293013150715471247

`∑[A123323(n+1)]`
-/

namespace A123324.P6293013150715471247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P6293013150715471247

noncomputable section

/-- A123324: Number of integer-sided triangles with all sides <= n and sides relatively prime.

Offset 1, canonical program `A123324.P6293013150715471247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123324 (n : ℕ) : ℤ :=
  A123324.P6293013150715471247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123390.P6182464062084427688

`A003602(A108918(n+1))`
-/

namespace A123390.P6182464062084427688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A108918 (n + 1)).toNat

end

end A123390.P6182464062084427688

noncomputable section

/-- A123390: Triangle read by rows: n-th row starts with n and continues with half the previous value as long as that is even.

Offset 1, canonical program `A123390.P6182464062084427688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A108918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123390 (n : ℕ) : ℤ :=
  A123390.P6182464062084427688.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A108918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123390.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A136484.P14615466940963320552

`floor(A036704(n)/4-n)`
-/

namespace A136484.P14615466940963320552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036704 n : ℚ) / 4 - (n : ℚ)⌋

end

end A136484.P14615466940963320552

noncomputable section

/-- A136484: Number of unit square lattice cells inside quadrant of origin centered circle of diameter 2n+1.

Offset 0, canonical program `A136484.P14615466940963320552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136484 (n : ℕ) : ℤ :=
  A136484.P14615466940963320552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136484.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140887.P4805063022566980461

`(8-A098592(n))*a(A007706(n))` with `a(0)=1`
-/

namespace A140887.P4805063022566980461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a (A007706 n).toNat

end

end A140887.P4805063022566980461

noncomputable section

/-- A140887: Number of nonprimes in [30n - 30, 30n] coprime to 30.

Offset 1, canonical program `A140887.P4805063022566980461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140887 (n : ℕ) : ℤ :=
  A140887.P4805063022566980461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140887.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143278.P3385981285395499080

`(24*n+1)*(A007706(n)-1)`
-/

namespace A143278.P3385981285395499080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * n + 1 : ℤ) * (A007706 n - 1)

end

end A143278.P3385981285395499080

noncomputable section

/-- A143278: Convolution of A006352 and A010815.

Offset 0, canonical program `A143278.P3385981285395499080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A143278 (n : ℕ) : ℤ :=
  A143278.P3385981285395499080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A143278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143513.P17585744667518437941

`record[(n+1)/A003958(A003958(n+1))]`
-/

namespace A143513.P17585744667518437941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003958 (A003958 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143513.P17585744667518437941

noncomputable section

/-- A143513: Numbers of the form 2^a * 3^b * 5^c * 17^d * 257^e * 65537^f; products of 2 and the Fermat primes.

Offset 1, canonical program `A143513.P17585744667518437941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 612 terms. -/
def A143513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143513.P17585744667518437941.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 612 terms. -/
def A143513.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155058.P1638704524620935071

`p?[n*A054055(n)%2]`
-/

namespace A155058.P1638704524620935071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A054055 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155058.P1638704524620935071

noncomputable section

/-- A155058: Primes with odd largest digit.

Offset 1, canonical program `A155058.P1638704524620935071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A155058 (n : ℕ) : ℤ :=
  A155058.P1638704524620935071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A155058.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A167343.P6110866401223025561

`A003958(n+1)²`
-/

namespace A167343.P6110866401223025561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) ^ 2

end

end A167343.P6110866401223025561

noncomputable section

/-- A167343: Totally multiplicative sequence with a(p) = (p-1)^2 = p^2-2p+1 for prime p.

Offset 1, canonical program `A167343.P6110866401223025561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167343 (n : ℕ) : ℤ :=
  A167343.P6110866401223025561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168338.P16717668218238744445

`∑{d}[n+1, A054055(#)]`
-/

namespace A168338.P16717668218238744445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054055 d

end

end A168338.P16717668218238744445

noncomputable section

/-- A168338: Sum of the largest digit of the divisors of n.

Offset 1, canonical program `A168338.P16717668218238744445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168338 (n : ℕ) : ℤ :=
  A168338.P16717668218238744445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002348.P14064672652104361444

`1/8*4^A007814(n+3)*A007434(A000265(n+3))`
-/

namespace A002348.P14064672652104361444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (4 : ℚ) ^ (A007814 (n + 3) : ℤ) * (A007434 (A000265 (n + 3)).toNat : ℚ)

end

end A002348.P14064672652104361444

noncomputable section

/-- A002348: Degree of rational Poncelet porism of n-gon.

Offset 3, canonical program `A002348.P14064672652104361444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002348 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002348.P14064672652104361444.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002348.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002472.P6913863358796282125

`A160467(n+1)*A058026(A000265(n+1))`
-/

namespace A002472.P6913863358796282125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A058026 (A000265 (n + 1)).toNat

end

end A002472.P6913863358796282125

noncomputable section

/-- A002472: Number of pairs x,y such that y-x=2, (x,n)=1, (y,n)=1 and 1 <= x <= n.

Offset 1, canonical program `A002472.P6913863358796282125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A058026, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002472 (n : ℕ) : ℤ :=
  A002472.P6913863358796282125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A058026, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006872.P9526046772509008616

`record[(n+1)*A353637(n+1)]`
-/

namespace A006872.P9526046772509008616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006872.P9526046772509008616

noncomputable section

/-- A006872: Numbers k such that phi(k) = phi(sigma(k)).

Offset 1, canonical program `A006872.P9526046772509008616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A006872 (n : ℕ) : ℤ :=
  A006872.P9526046772509008616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A006872.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A015627.P6012177256396085323

`A015622(n+2)-∑[A161680(n)]`
-/

namespace A015627.P6012177256396085323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015627.P6012177256396085323

noncomputable section

/-- A015627: Quadruples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015627.P6012177256396085323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627 (n : ℕ) : ℤ :=
  A015627.P6012177256396085323.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015640.P16174645672135619219

`∑[A346761(n+1)]-A015622(n+1)`
-/

namespace A015640.P16174645672135619219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015622 (n + 1)

end

end A015640.P16174645672135619219

noncomputable section

/-- A015640: Number of 5-tuples of different integers from [ 1,n ] with no global factor.

Offset 1, canonical program `A015640.P16174645672135619219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640 (n : ℕ) : ℤ :=
  A015640.P16174645672135619219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020479.P12170762038309436866

`(n+2)^4-A000252(n+2)`
-/

namespace A020479.P12170762038309436866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - A000252 (n + 2)

end

end A020479.P12170762038309436866

noncomputable section

/-- A020479: Number of noninvertible 2 X 2 matrices over Z/nZ (determinant is a divisor of 0).

Offset 2, canonical program `A020479.P12170762038309436866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020479 (n : ℕ) : ℤ :=
  A020479.P12170762038309436866.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020479.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A024363.P18199515356215548539

`A024361(n+1)+A024362(n+1)`
-/

namespace A024363.P18199515356215548539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + A024362 (n + 1)

end

end A024363.P18199515356215548539

noncomputable section

/-- A024363: Number of primitive Pythagorean triangles with side n.

Offset 1, canonical program `A024363.P18199515356215548539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A024362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024363 (n : ℕ) : ℤ :=
  A024363.P18199515356215548539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A024362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028572.P14327433802400248636

`(2-A130731(n))*A129438(n)`
-/

namespace A028572.P14327433802400248636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130731 n) * A129438 n

end

end A028572.P14327433802400248636

noncomputable section

/-- A028572: Expansion of theta_3(z)*theta_3(2z) + theta_2(z)*theta_2(2z) in powers of q^(1/4).

Offset 0, canonical program `A028572.P14327433802400248636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028572 (n : ℕ) : ℤ :=
  A028572.P14327433802400248636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030076.P1925332583797946148

`10-A054055(n+1)`
-/

namespace A030076.P1925332583797946148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A054055 (n + 1)

end

end A030076.P1925332583797946148

noncomputable section

/-- A030076: a(n) = 10 - m, where m = maximal digit of n.

Offset 1, canonical program `A030076.P1925332583797946148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030076 (n : ℕ) : ℤ :=
  A030076.P1925332583797946148.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030076.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A035612.P7106491847305260424

`val(A022340(n+1), 2)`
-/

namespace A035612.P7106491847305260424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022340 (n + 1)).toNat 2

end

end A035612.P7106491847305260424

noncomputable section

/-- A035612: Horizontal para-Fibonacci sequence: says which column of Wythoff array (starting column count at 1) contains n.

Offset 1, canonical program `A035612.P7106491847305260424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035612 (n : ℕ) : ℤ :=
  (A035612.P7106491847305260424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037904.P3734509193850289562

`A054055(n+1)-A054054(n+1)`
-/

namespace A037904.P3734509193850289562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1) - A054054 (n + 1)

end

end A037904.P3734509193850289562

noncomputable section

/-- A037904: Greatest digit of n - least digit of n.

Offset 1, canonical program `A037904.P3734509193850289562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037904 (n : ℕ) : ℤ :=
  A037904.P3734509193850289562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046152.P17931852614987402425

`A046151(n+1)+2`
-/

namespace A046152.P17931852614987402425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1) + 2

end

end A046152.P17931852614987402425

noncomputable section

/-- A046152: a(n) = n*phi(n) + 1.

Offset 1, canonical program `A046152.P17931852614987402425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046152 (n : ℕ) : ℤ :=
  A046152.P17931852614987402425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048798.P11871248388947828360

`A011262(A050985(n+1))`
-/

namespace A048798.P11871248388947828360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A050985 (n + 1)).toNat

end

end A048798.P11871248388947828360

noncomputable section

/-- A048798: Smallest k > 0 such that n*k is a perfect cube.

Offset 1, canonical program `A048798.P11871248388947828360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048798 (n : ℕ) : ℤ :=
  A048798.P11871248388947828360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048798.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051001.P2883852462470465960

`A001159(A000265(n+1))`
-/

namespace A051001.P2883852462470465960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (A000265 (n + 1)).toNat

end

end A051001.P2883852462470465960

noncomputable section

/-- A051001: Sum of 4th powers of odd divisors of n.

Offset 1, canonical program `A051001.P2883852462470465960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A001159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051001 (n : ℕ) : ℤ :=
  A051001.P2883852462470465960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A001159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051001.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A053471.P2656201411474916772

`A053470(A016035(n+1)+1)`
-/

namespace A053471.P2656201411474916772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (A016035 (n + 1) + 1).toNat

end

end A053471.P2656201411474916772

noncomputable section

/-- A053471: a(n) is the cototient of n (A051953) iterated 3 times.

Offset 1, canonical program `A053471.P2656201411474916772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053471 (n : ℕ) : ℤ :=
  A053471.P2656201411474916772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053575.P11050081037348707319

`A000265(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053575.P11050081037348707319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (n + 1)).toNat

end

end A053575.P11050081037348707319

noncomputable section

/-- A053575: Odd part of phi(n): a(n) = A000265(A000010(n)).

Offset 1, canonical program `A053575.P11050081037348707319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053575 (n : ℕ) : ℤ :=
  A053575.P11050081037348707319.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054526.P10074911723705506468

`A349137(A174028(n))`
-/

namespace A054526.P10074911723705506468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A174028 n).toNat

end

end A054526.P10074911723705506468

noncomputable section

/-- A054526: Triangle T(n,k): T(n,k) = phi(k) (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054526.P10074911723705506468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054526 (n : ℕ) : ℤ :=
  A054526.P10074911723705506468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056194.P9218421642361807381

`A055230(n+1)^3`
-/

namespace A056194.P9218421642361807381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (n + 1) ^ 3

end

end A056194.P9218421642361807381

noncomputable section

/-- A056194: Characteristic cube divisor of n!: a(n) = A056191(n!).

Offset 1, canonical program `A056194.P9218421642361807381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 395 terms. -/
def A056194 (n : ℕ) : ℤ :=
  A056194.P9218421642361807381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 395 terms. -/
def A056194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056596.P5937118824382541668

`A027423(n+1)-A055993(n+1)`
-/

namespace A056596.P5937118824382541668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A055993 (n + 1)

end

end A056596.P5937118824382541668

noncomputable section

/-- A056596: Number of nonsquare divisors of n!.

Offset 1, canonical program `A056596.P5937118824382541668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056596 (n : ℕ) : ℤ :=
  A056596.P5937118824382541668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056596.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056627.P7295245360470113496

`A055772(n+1)/A055230(n+1)`
-/

namespace A056627.P7295245360470113496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A055230 (n + 1) : ℚ)

end

end A056627.P7295245360470113496

noncomputable section

/-- A056627: a(n) = A056622(n!).

Offset 1, canonical program `A056627.P7295245360470113496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055230, A055772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056627.P7295245360470113496.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055230, A055772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056627.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A057023.P16348844648520426339

`A000265(A006093(n+1))`
-/

namespace A057023.P16348844648520426339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006093 (n + 1)).toNat

end

end A057023.P16348844648520426339

noncomputable section

/-- A057023: Largest odd factor of (n-th prime-1); k when n-th prime is written as k*2^m+1 [with k odd].

Offset 1, canonical program `A057023.P16348844648520426339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057023 (n : ℕ) : ℤ :=
  A057023.P16348844648520426339.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057023.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A057024.P10079165471848434207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057024 (n : ℕ) : ℤ :=
  A057024.P10079165471848434207.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058980.P1253605902020111693

`∩[4*n, A005277(n+1)]`
-/

namespace A058980.P1253605902020111693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P1253605902020111693

noncomputable section

/-- A058980: Positive numbers of form 4*k such that card(invphi(4*k)) = 0 (the nontotients congruent to 0 modulo 4).

Offset 1, canonical program `A058980.P1253605902020111693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. -/
def A058980 (n : ℕ) : ℤ :=
  (A058980.P1253605902020111693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. -/
def A058980.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060141.P5689329236640195433

`A060140(n)+A060140(A066628(n))`
-/

namespace A060141.P5689329236640195433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060140 n + A060140 (A066628 n).toNat

end

end A060141.P5689329236640195433

noncomputable section

/-- A060141: Ordered set S defined by these rules: 0 and 1 are in S and if x is a nonzero number in S, then 3x and 9x+2 are in S.

Offset 0, canonical program `A060141.P5689329236640195433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060141 (n : ℕ) : ℤ :=
  A060141.P5689329236640195433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060141.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A063466.P11095662545612657757

`eq[n+9, A324048(n+1)]+1`
-/

namespace A063466.P11095662545612657757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063466.P11095662545612657757

noncomputable section

/-- A063466: Numbers k such that 2*phi(k) + 8 = sigma(k).

Offset 1, canonical program `A063466.P11095662545612657757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. -/
def A063466 (n : ℕ) : ℤ :=
  (A063466.P11095662545612657757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. -/
def A063466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066072.P3306232100751535018

`A000010(A066071(n+1))+1`
-/

namespace A066072.P3306232100751535018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A066071 (n + 1)).toNat + 1

end

end A066072.P3306232100751535018

noncomputable section

/-- A066072: Prime numbers arising in A066071.

Offset 1, canonical program `A066072.P3306232100751535018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066072 (n : ℕ) : ℤ :=
  A066072.P3306232100751535018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067434.P13929793644750032362

`A056175(2*(n+1))+A056173(2*(n+1))`
-/

namespace A067434.P13929793644750032362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (2 * (n + 1)) + A056173 (2 * (n + 1))

end

end A067434.P13929793644750032362

noncomputable section

/-- A067434: Number of distinct prime factors in binomial(2*n,n).

Offset 1, canonical program `A067434.P13929793644750032362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067434 (n : ℕ) : ℤ :=
  A067434.P13929793644750032362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067434.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069249.P10807043676143783363

`(n+1)²-A062354(n+1)`
-/

namespace A069249.P10807043676143783363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A062354 (n + 1)

end

end A069249.P10807043676143783363

noncomputable section

/-- A069249: a(n) = n^2 - phi(n)*sigma(n).

Offset 1, canonical program `A069249.P10807043676143783363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062354, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069249 (n : ℕ) : ℤ :=
  A069249.P10807043676143783363.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062354, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069256.P11047273582001152722

`A000079(val(A000252(n+1), 2))`
-/

namespace A069256.P11047273582001152722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000252 (n + 1)).toNat 2)

end

end A069256.P11047273582001152722

noncomputable section

/-- A069256: Size of the Sylow 2-subgroup of the group GL_2(Z_n): maximal power of 2 that divides A000252(n).

Offset 1, canonical program `A069256.P11047273582001152722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069256 (n : ℕ) : ℤ :=
  A069256.P11047273582001152722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069256.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070943.P14364430333234565674

`A000252(n+1)*A062354(n+1)`
-/

namespace A070943.P14364430333234565674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (n + 1) * A062354 (n + 1)

end

end A070943.P14364430333234565674

noncomputable section

/-- A070943: Commuting elements: number of ordered pairs g, h in the group GL(2,Z_n) such that gh = hg.

Offset 1, canonical program `A070943.P14364430333234565674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070943 (n : ℕ) : ℤ :=
  A070943.P14364430333234565674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072648.P3576187098403481079

`floor(log2(A048297(n)))+1`
-/

namespace A072648.P3576187098403481079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A048297 n).toNat + 1

end

end A072648.P3576187098403481079

noncomputable section

/-- A072648: a(n) = [log_{Phi}(n*sqrt(5))], where log_{Phi} is logarithm in the base Phi ( = (sqrt(5)+1)/2) and [] stands for the floor function.

Offset 1, canonical program `A072648.P3576187098403481079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072648 (n : ℕ) : ℤ :=
  (A072648.P3576187098403481079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072648.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074278.P1830901965938384071

`A022304(3*n)+4`
-/

namespace A074278.P1830901965938384071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022304 (3 * n) + 4

end

end A074278.P1830901965938384071

noncomputable section

/-- A074278: Positions in the Kolakoski sequence A000002 when there are a multiple of 3 1's and the current term is 1.

Offset 1, canonical program `A074278.P1830901965938384071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A074278 (n : ℕ) : ℤ :=
  A074278.P1830901965938384071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A074278.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078503.P2127838197446641013

`C(A349137(A026741(2*n+3)), A200905(n+1)/3)`
-/

namespace A078503.P2127838197446641013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349137 (A026741 (2 * n + 3)).toNat).toNat (SequenceMachineLib.roundAway ((A200905 (n + 1) : ℚ) / 3)).toNat

end

end A078503.P2127838197446641013

noncomputable section

/-- A078503: a(n) = binomial(phi(n+1),phi(n)).

Offset 1, canonical program `A078503.P2127838197446641013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A078503 (n : ℕ) : ℤ :=
  (A078503.P2127838197446641013.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A078503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078750.P14596410711989328405

`A022340(∑[char[A003714(n)]])`
-/

namespace A078750.P14596410711989328405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078750.P14596410711989328405

noncomputable section

/-- A078750: Least m not less than 2*n such that m + n = m OR n (logical 'or', bitwise).

Offset 1, canonical program `A078750.P14596410711989328405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078750 (n : ℕ) : ℤ :=
  A078750.P14596410711989328405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079695.P1401663240331411904

`A005277(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079695.P1401663240331411904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005277 (n + 1) : ℚ) / 2

end

end A079695.P1401663240331411904

noncomputable section

/-- A079695: Values never taken by phi(j)/2 for any j: a(n) = A005277(n)/2.

Offset 1, canonical program `A079695.P1401663240331411904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079695.P1401663240331411904.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079697.P17241016761379675189

`A000265(A005277(n+1))`
-/

namespace A079697.P17241016761379675189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005277 (n + 1)).toNat

end

end A079697.P17241016761379675189

noncomputable section

/-- A079697: Odd part of A005277(n).

Offset 1, canonical program `A079697.P17241016761379675189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A005277, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079697 (n : ℕ) : ℤ :=
  A079697.P17241016761379675189.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A005277, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079697.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079700.P9994903105198230930

`A007814(A005277(n+1))`
-/

namespace A079700.P9994903105198230930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005277 (n + 1)).toNat

end

end A079700.P9994903105198230930

noncomputable section

/-- A079700: a(n) is the 2-adic valuation of the n-th even nontotient.

Offset 1, canonical program `A079700.P9994903105198230930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079700 (n : ℕ) : ℤ :=
  A079700.P9994903105198230930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079700.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A082953.P9111907207712937456

`A000252(n+1)/A070732(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082953.P9111907207712937456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A070732 (n + 1) : ℚ)

end

end A082953.P9111907207712937456

noncomputable section

/-- A082953: a(n) = A000252(n) / A070732(n).

Offset 1, canonical program `A082953.P9111907207712937456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A070732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082953.P9111907207712937456.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A070732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082953.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A085407.P8456139182409742609

`Δ[A022340(n)]-1`
-/

namespace A085407.P8456139182409742609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A085407.P8456139182409742609

noncomputable section

/-- A085407: Runs of zeros in binomial(3k+2,k+1)/(3k+2) modulo 2 (A085405).

Offset 1, canonical program `A085407.P8456139182409742609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085407 (n : ℕ) : ℤ :=
  A085407.P8456139182409742609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085407.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086062.P3763696700270825147

`∑[A014612(n+1)]`
-/

namespace A086062.P3763696700270825147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P3763696700270825147

noncomputable section

/-- A086062: Sum of first n 3-almost primes.

Offset 1, canonical program `A086062.P3763696700270825147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086062 (n : ℕ) : ℤ :=
  A086062.P3763696700270825147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088958.P13027518788364127214

`(A088955(n+1)-1)/60`
-/

namespace A088958.P13027518788364127214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088955 (n + 1) - 1 : ℚ) / 60

end

end A088958.P13027518788364127214

noncomputable section

/-- A088958: Numbers n such that 60*n+1 is prime.

Offset 1, canonical program `A088958.P13027518788364127214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088958 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088958.P13027518788364127214.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095111.P18387562347158701288

`1-A095076(n)`
-/

namespace A095111.P18387562347158701288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095076 n

end

end A095111.P18387562347158701288

noncomputable section

/-- A095111: One minus the parity of 1-fibits in Zeckendorf expansion A014417(n).

Offset 0, canonical program `A095111.P18387562347158701288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095111 (n : ℕ) : ℤ :=
  A095111.P18387562347158701288.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095994.P6399885986967306928

`eq[1, A003415(n-A054055(n))]`
-/

namespace A095994.P6399885986967306928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) - A054055 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095994.P6399885986967306928

noncomputable section

/-- A095994: Numbers k such that k - (largest digit of k) is prime.

Offset 1, canonical program `A095994.P6399885986967306928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A095994 (n : ℕ) : ℤ :=
  (A095994.P6399885986967306928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A095994.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102304.P12298609267666980490

`A001414(A014612(n+1))`
-/

namespace A102304.P12298609267666980490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014612 (n + 1)).toNat

end

end A102304.P12298609267666980490

noncomputable section

/-- A102304: Sum of prime factors (counted with multiplicity) of the numbers having exactly three prime factors.

Offset 1, canonical program `A102304.P12298609267666980490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A102304 (n : ℕ) : ℤ :=
  A102304.P12298609267666980490.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A102304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105346.P11183548890485311869

`A014612(A014612(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105346.P11183548890485311869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A014612 (n + 1)).toNat

end

end A105346.P11183548890485311869

noncomputable section

/-- A105346: 3-almost primes whose indices are 3-almost primes: a(n) = A014612(A014612(n)).

Offset 1, canonical program `A105346.P11183548890485311869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105346 (n : ℕ) : ℤ :=
  A105346.P11183548890485311869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107152.P3013090277288221645

`∪[A088955(n+1), A142797(n+1)]`
-/

namespace A107152.P3013090277288221645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P3013090277288221645

noncomputable section

/-- A107152: Primes of the form x^2 + 45y^2.

Offset 1, canonical program `A107152.P3013090277288221645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107152 (n : ℕ) : ℤ :=
  (A107152.P3013090277288221645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108852.P14747039251510576692

`floor(log2(A022341(n)))+1`
-/

namespace A108852.P14747039251510576692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A022341 n).toNat + 1

end

end A108852.P14747039251510576692

noncomputable section

/-- A108852: Number of Fibonacci numbers <= n.

Offset 0, canonical program `A108852.P14747039251510576692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108852 (n : ℕ) : ℤ :=
  (A108852.P14747039251510576692.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110187.P7748430197088379820

`record[A082344(A014612(n+2))]`
-/

namespace A110187.P7748430197088379820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A014612 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110187.P7748430197088379820

noncomputable section

/-- A110187: 3-almost primes p * q * r relatively prime to p+q+r.

Offset 1, canonical program `A110187.P7748430197088379820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. -/
def A110187 (n : ℕ) : ℤ :=
  A110187.P7748430197088379820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. -/
def A110187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110209.P16639845999686422386

`A014612(n)+a(n-1)` with `a(0)=1`
-/

namespace A110209.P16639845999686422386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014612 n + a (n - 1)

end

end A110209.P16639845999686422386

noncomputable section

/-- A110209: 1 + sum of first n 3-almost primes.

Offset 0, canonical program `A110209.P16639845999686422386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110209 (n : ℕ) : ℤ :=
  A110209.P16639845999686422386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110934.P9568083779091695448

`A014612(n+3)-A014612(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110934.P9568083779091695448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 3) - A014612 (n + 1)

end

end A110934.P9568083779091695448

noncomputable section

/-- A110934: a(n) = A014612(n+2) - A014612(n).

Offset 1, canonical program `A110934.P9568083779091695448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110934 (n : ℕ) : ℤ :=
  A110934.P9568083779091695448.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110934.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A114403.P7554247449644843870

`A014612(n+2)-A014612(n+1)`
-/

namespace A114403.P7554247449644843870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 2) - A014612 (n + 1)

end

end A114403.P7554247449644843870

noncomputable section

/-- A114403: Triprime gaps. First differences of A014612.

Offset 1, canonical program `A114403.P7554247449644843870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114403 (n : ℕ) : ℤ :=
  A114403.P7554247449644843870.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114403.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A115402.P3622041107575865208

`A014612(n+4)-A014612(n+1)`
-/

namespace A115402.P3622041107575865208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 4) - A014612 (n + 1)

end

end A115402.P3622041107575865208

noncomputable section

/-- A115402: Difference between 3-almostprime(n) and 3-almostprime(n+3).

Offset 1, canonical program `A115402.P3622041107575865208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115402 (n : ℕ) : ℤ :=
  A115402.P3622041107575865208.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118113.P10341986219208380266

`A022340(n)+1`
-/

namespace A118113.P10341986219208380266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n + 1

end

end A118113.P10341986219208380266

noncomputable section

/-- A118113: Even Fibbinary numbers + 1; also 2*Fibbinary(n) + 1.

Offset 0, canonical program `A118113.P10341986219208380266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118113 (n : ℕ) : ℤ :=
  A118113.P10341986219208380266.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118113.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A120044.P16653427168964974241

`A014612(10^n)`
-/

namespace A120044.P16653427168964974241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (10 ^ n)

end

end A120044.P16653427168964974241

noncomputable section

/-- A120044: The 10^n-th 3-almost prime.

Offset 0, canonical program `A120044.P16653427168964974241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120044 (n : ℕ) : ℤ :=
  A120044.P16653427168964974241.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120044.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A121948.P15508955238869912252

`floor(A014612(n+1)/(n+1))`
-/

namespace A121948.P15508955238869912252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014612 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A121948.P15508955238869912252

noncomputable section

/-- A121948: Floor of n-th 3-almost prime / n.

Offset 1, canonical program `A121948.P15508955238869912252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121948 (n : ℕ) : ℤ :=
  A121948.P15508955238869912252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124138.P11165280805295753658

`A000265(3*(a(n-1)+a(n-2))/2+1)` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124138.P11165280805295753658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000265 (SequenceMachineLib.roundAway ((3 * (a (n - 1) + a (n - 2)) : ℚ) / 2 + 1)).toNat

end

end A124138.P11165280805295753658

noncomputable section

/-- A124138: a(n)= A000265(3*(a(n-1)+a(n-2))/2 +1) starting at a(1)=1, a(2)=3.

Offset 1, canonical program `A124138.P11165280805295753658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124138 (n : ℕ) : ℤ :=
  A124138.P11165280805295753658.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124139.P14164421175524936398

`A000265(3*(a(n-1)+a(n-2))/2+1)` with `a(0)=1, a(1)=11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124139.P14164421175524936398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A000265 (SequenceMachineLib.roundAway ((3 * (a (n - 1) + a (n - 2)) : ℚ) / 2 + 1)).toNat

end

end A124139.P14164421175524936398

noncomputable section

/-- A124139: a(n) = A000265(3*(a(n-1) + a(n-2))/2 + 1) starting at a(1)=1, a(2)=11.

Offset 1, canonical program `A124139.P14164421175524936398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124139 (n : ℕ) : ℤ :=
  A124139.P14164421175524936398.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124268.P10201964063762067681

`A000040(A014612(n+1))`
-/

namespace A124268.P10201964063762067681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014612 (n + 1)).toNat

end

end A124268.P10201964063762067681

noncomputable section

/-- A124268: Primes indexed by 3-almost primes.

Offset 1, canonical program `A124268.P10201964063762067681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124268 (n : ℕ) : ℤ :=
  A124268.P10201964063762067681.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124269.P12449337339805484609

`A014612(A000040(n+1))`
-/

namespace A124269.P12449337339805484609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A000040 (n + 1)).toNat

end

end A124269.P12449337339805484609

noncomputable section

/-- A124269: 3-almost primes indexed by primes.

Offset 1, canonical program `A124269.P12449337339805484609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124269 (n : ℕ) : ℤ :=
  A124269.P12449337339805484609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124269.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124940.P17540590922783165598

`∩[A014612(n+1)-3, A014612(n+1)]`
-/

namespace A124940.P17540590922783165598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124940.P17540590922783165598

noncomputable section

/-- A124940: Numbers k such that k and k+3 are 3-almost primes.

Offset 1, canonical program `A124940.P17540590922783165598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A124940 (n : ℕ) : ℤ :=
  (A124940.P17540590922783165598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A124940.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129594.P11313350707503755659

`A165199(A056539(n))`
-/

namespace A129594.P11313350707503755659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A056539 n).toNat

end

end A129594.P11313350707503755659

noncomputable section

/-- A129594: Involution of nonnegative integers induced by the conjugation of the partition encoded in the run lengths of binary expansion of n.

Offset 0, canonical program `A129594.P11313350707503755659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A129594 (n : ℕ) : ℤ :=
  A129594.P11313350707503755659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A129594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130593.P16939163601674739257

`∩[A037143(n+1), A125494(n+1)]`
-/

namespace A130593.P16939163601674739257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130593.P16939163601674739257

noncomputable section

/-- A130593: Evil semiprimes.

Offset 1, canonical program `A130593.P16939163601674739257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. -/
def A130593 (n : ℕ) : ℤ :=
  (A130593.P16939163601674739257.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. -/
def A130593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131850.P13687158872308473205

`∩[A014612(n+1), A125495(n+1)]`
-/

namespace A131850.P13687158872308473205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131850.P13687158872308473205

noncomputable section

/-- A131850: Odious 3-almost primes.

Offset 1, canonical program `A131850.P13687158872308473205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2931 terms. -/
def A131850 (n : ℕ) : ℤ :=
  (A131850.P13687158872308473205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2931 terms. -/
def A131850.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A137595.P2754032097385745944

`eq[A006257(n), A109613(A056539(n))]`
-/

namespace A137595.P2754032097385745944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A056539 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137595.P2754032097385745944

noncomputable section

/-- A137595: Integers k such that the run lengths of identical digits in their binary expansion are palindromic after the rightmost bit is duplicated.

Offset 1, canonical program `A137595.P2754032097385745944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A137595 (n : ℕ) : ℤ :=
  (A137595.P2754032097385745944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A137595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137711.P17738351747178437954

`2^(n+1)-A152537(n+1)`
-/

namespace A137711.P17738351747178437954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A152537 (n + 1)

end

end A137711.P17738351747178437954

noncomputable section

/-- A137711: Row sums of triangle A137710.

Offset 1, canonical program `A137711.P17738351747178437954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A137711 (n : ℕ) : ℤ :=
  A137711.P17738351747178437954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A137711.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A139391.P6009705185577113877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139391 (n : ℕ) : ℤ :=
  A139391.P6009705185577113877.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139391.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A161946.P965283892318521115

`A000265(A034448(n+1))`
-/

namespace A161946.P965283892318521115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A034448 (n + 1)).toNat

end

end A161946.P965283892318521115

noncomputable section

/-- A161946: Odd part of sum of unitary divisors of n.

Offset 1, canonical program `A161946.P965283892318521115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161946 (n : ℕ) : ℤ :=
  A161946.P965283892318521115.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161946.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A165342.P13431516689000651143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165342.P13431516689000651143.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165342.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A009262.P968093419327824865

`A000010(n+1)*A109395(n+1)`
-/

namespace A009262.P968093419327824865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A109395 (n + 1)

end

end A009262.P968093419327824865

noncomputable section

/-- A009262: a(n) = lcm(n, phi(n)).

Offset 1, canonical program `A009262.P968093419327824865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A109395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009262 (n : ℕ) : ℤ :=
  A009262.P968093419327824865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A109395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A009286.P1468991457414160783

`A062354(n+1)/A009223(n+1)`
-/

namespace A009286.P1468991457414160783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

end

end A009286.P1468991457414160783

noncomputable section

/-- A009286: a(n) = lcm(sigma(n), phi(n)).

Offset 1, canonical program `A009286.P1468991457414160783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A009286.P1468991457414160783.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014613.P1114013819310587080

`∪[A030514(n+1), A307342(n+1)]`
-/

namespace A014613.P1114013819310587080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014613.P1114013819310587080

noncomputable section

/-- A014613: Numbers that are products of 4 primes.

Offset 1, canonical program `A014613.P1114013819310587080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014613 (n : ℕ) : ℤ :=
  (A014613.P1114013819310587080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023211.P15510924814259681776

`p?[n-A245838(n+2)²]`
-/

namespace A023211.P15510924814259681776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A245838 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P15510924814259681776

noncomputable section

/-- A023211: Primes p such that 3*p + 10 is also prime.

Offset 1, canonical program `A023211.P15510924814259681776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2941 terms. -/
def A023211 (n : ℕ) : ℤ :=
  A023211.P15510924814259681776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2941 terms. -/
def A023211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023222.P6978621992250826147

`p?[eq[1, A245838(2*(n+1))]]`
-/

namespace A023222.P6978621992250826147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023222.P6978621992250826147

noncomputable section

/-- A023222: Primes p such that 6*p + 7 is also prime.

Offset 1, canonical program `A023222.P6978621992250826147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A023222 (n : ℕ) : ℤ :=
  (A023222.P6978621992250826147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A023222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023247.P8495313482969675933

`p?[eq[A075743(n+1), A245838(3*n+5)]]`
-/

namespace A023247.P8495313482969675933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (3 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023247.P8495313482969675933

noncomputable section

/-- A023247: Primes p such that 3*p + 4 and 9*p + 16 are also prime.

Offset 1, canonical program `A023247.P8495313482969675933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A023247 (n : ℕ) : ℤ :=
  (A023247.P8495313482969675933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A023247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027695.P1855430691776300506

`A011260(A028310(n))*A053285(n)`
-/

namespace A027695.P1855430691776300506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A028310 n).toNat * A053285 n

end

end A027695.P1855430691776300506

noncomputable section

/-- A027695: Number of primitive polynomials of degree n over GF(4).

Offset 0, canonical program `A027695.P1855430691776300506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A027695 (n : ℕ) : ℤ :=
  A027695.P1855430691776300506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A027695.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A027742.P15524387088752407227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027742.P15524387088752407227.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033942.P4752248338100259006

`∪[A014612(n+1), A033987(n+1)]`
-/

namespace A033942.P4752248338100259006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P4752248338100259006

noncomputable section

/-- A033942: Positive integers with at least 3 prime factors (counted with multiplicity).

Offset 1, canonical program `A033942.P4752248338100259006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033942 (n : ℕ) : ℤ :=
  (A033942.P4752248338100259006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034973.P13506425649681590282

`A056175(n+1)+A056173(n+1)`
-/

namespace A034973.P13506425649681590282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (n + 1) + A056173 (n + 1)

end

end A034973.P13506425649681590282

noncomputable section

/-- A034973: Number of distinct prime factors in central binomial coefficients C(n, floor(n/2)), the terms of A001405.

Offset 1, canonical program `A034973.P13506425649681590282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034973 (n : ℕ) : ℤ :=
  A034973.P13506425649681590282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034973.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039766.P771001418354876832

`eq[A000005(n+1), A049559(n+1)]+1`
-/

namespace A039766.P771001418354876832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039766.P771001418354876832

noncomputable section

/-- A039766: Numbers k such that gcd(phi(k), k-1) = number of divisors of k.

Offset 1, canonical program `A039766.P771001418354876832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A039766 (n : ℕ) : ℤ :=
  (A039766.P771001418354876832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A039766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039767.P8796970690706761177

`eq[A001221(n+1), A049559(n+2)]+2`
-/

namespace A039767.P8796970690706761177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A039767.P8796970690706761177

noncomputable section

/-- A039767: Numbers k such that gcd(phi(k), k-1) = number of distinct prime factors of (k-1).

Offset 1, canonical program `A039767.P8796970690706761177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2212 terms. -/
def A039767 (n : ℕ) : ℤ :=
  (A039767.P8796970690706761177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2212 terms. -/
def A039767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039768.P18004626891334739463

`eq[A000005(abs(1-n)+1), A049559(n+1)]+1`
-/

namespace A039768.P18004626891334739463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039768.P18004626891334739463

noncomputable section

/-- A039768: Numbers k such that gcd(phi(k), k-1) = number of divisors of (k-1).

Offset 1, canonical program `A039768.P18004626891334739463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A039768 (n : ℕ) : ℤ :=
  (A039768.P18004626891334739463.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A039768.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A049094.P18112774684826038960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A049094 (n : ℕ) : ℤ :=
  (A049094.P18112774684826038960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A049094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050466.P15533784543900477254

`(A007331(n+1)-A050471(n+1))/2`
-/

namespace A050466.P15533784543900477254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007331 (n + 1) - A050471 (n + 1) : ℚ) / 2

end

end A050466.P15533784543900477254

noncomputable section

/-- A050466: a(n) = Sum_{d|n, n/d=3 mod 4} d^3.

Offset 1, canonical program `A050466.P15533784543900477254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007331, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050466 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050466.P15533784543900477254.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007331, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055077.P10178039189112641336

`A000079(A055460(n+1))`
-/

namespace A055077.P10178039189112641336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055460 (n + 1)).toNat

end

end A055077.P10178039189112641336

noncomputable section

/-- A055077: Multiplicity of Max{gcd(d, n!/d)} when d runs over the divisors of n!.

Offset 1, canonical program `A055077.P10178039189112641336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3472 terms. -/
def A055077 (n : ℕ) : ℤ :=
  A055077.P10178039189112641336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3472 terms. -/
def A055077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056760.P7714240773050569011

`∩[A007774(n+1), A056757(n+1)]`
-/

namespace A056760.P7714240773050569011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056760.P7714240773050569011

noncomputable section

/-- A056760: Integers with exactly 2 prime divisors such that the cube of the number of divisors exceeds the number.

Offset 1, canonical program `A056760.P7714240773050569011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A056760 (n : ℕ) : ℤ :=
  (A056760.P7714240773050569011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A056760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061091.P11020865434902996413

`a(n-1)+A297086(n+1)` with `a(0)=1`
-/

namespace A061091.P11020865434902996413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A297086 (n + 1)

end

end A061091.P11020865434902996413

noncomputable section

/-- A061091: Number of k with 1 <= k <= n relatively prime to phi(k).

Offset 1, canonical program `A061091.P11020865434902996413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061091 (n : ℕ) : ℤ :=
  A061091.P11020865434902996413.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061817.P6788841023954008319

`filter[A061810(n+1), A359430(#)]`
-/

namespace A061817.P6788841023954008319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A061817.P6788841023954008319

noncomputable section

/-- A061817: Multiples of 9 containing only odd digits.

Offset 1, canonical program `A061817.P6788841023954008319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A061817 (n : ℕ) : ℤ :=
  A061817.P6788841023954008319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A061817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062711.P2771895812179949619

`A228232(n+1)+A066490(n+1)`
-/

namespace A062711.P2771895812179949619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1) + A066490 (n + 1)

end

end A062711.P2771895812179949619

noncomputable section

/-- A062711: Number of prime Gaussian integers z=a+bi with |z|<=n.

Offset 1, canonical program `A062711.P2771895812179949619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A062711 (n : ℕ) : ℤ :=
  A062711.P2771895812179949619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A062711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070915.P11112854238645212373

`comp[A000977(n+1)-1]+1`
-/

namespace A070915.P11112854238645212373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A070915.P11112854238645212373

noncomputable section

/-- A070915: Numbers having at most two distinct prime factors.

Offset 1, canonical program `A070915.P11112854238645212373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070915 (n : ℕ) : ℤ :=
  (A070915.P11112854238645212373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071585.P327096867554570626

`A093875(2*n+1)`
-/

namespace A071585.P327096867554570626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (2 * n + 1)

end

end A071585.P327096867554570626

noncomputable section

/-- A071585: Numerator of the continued fraction expansion whose terms are the first-order differences of exponents in the binary representation of 4*n, with the exponents of 2 being listed in descending order.

Offset 0, canonical program `A071585.P327096867554570626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071585 (n : ℕ) : ℤ :=
  A071585.P327096867554570626.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071585.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A077064.P16565391587089475239

`A039787(n+1)-1`
-/

namespace A077064.P16565391587089475239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) - 1

end

end A077064.P16565391587089475239

noncomputable section

/-- A077064: Squarefree numbers of form prime - 1.

Offset 1, canonical program `A077064.P16565391587089475239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077064 (n : ℕ) : ℤ :=
  A077064.P16565391587089475239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077718.P6629925818268460121

`∩[A247068(n+1), A000695(n)]`
-/

namespace A077718.P6629925818268460121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077718.P6629925818268460121

noncomputable section

/-- A077718: Primes which can be expressed as sum of distinct powers of 4.

Offset 1, canonical program `A077718.P6629925818268460121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A077718 (n : ℕ) : ℤ :=
  (A077718.P6629925818268460121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A077718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083346.P12627612333518549643

`(n+1)/A085731(n+1)`
-/

namespace A083346.P12627612333518549643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083346.P12627612333518549643

noncomputable section

/-- A083346: Denominator of r(n) = Sum(e/p: n=Product(p^e)).

Offset 1, canonical program `A083346.P12627612333518549643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083346.P12627612333518549643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089188.P17705299783274846901

`p?[A039787(n+1)+2]-2`
-/

namespace A089188.P17705299783274846901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A089188.P17705299783274846901

noncomputable section

/-- A089188: Lesser member p of a pair of twin primes such that p-1 is squarefree.

Offset 1, canonical program `A089188.P17705299783274846901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A089188 (n : ℕ) : ℤ :=
  A089188.P17705299783274846901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A089188.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105669.P18170374322109492502

`A382113(A005206(n))+1`
-/

namespace A105669.P18170374322109492502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382113 (A005206 n).toNat + 1

end

end A105669.P18170374322109492502

noncomputable section

/-- A105669: A "fractal" transform of the Fibonacci numbers F(n)=A000045(n): a(1)=1, then for n>1 if F(n) < k < F(n+1) we have a(k) = F(n+1)-a(k-F(n)) and when k = F(n+1) we force a(F(n+1)) = F(n+1) + (1+(-1)^n)*F(n).

Offset 1, canonical program `A105669.P18170374322109492502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105669 (n : ℕ) : ℤ :=
  A105669.P18170374322109492502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106546.P8703496101521057786

`((n+1)*(A355450(n+1)-1))²`
-/

namespace A106546.P8703496101521057786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A355450 (n + 1) - 1)) ^ 2

end

end A106546.P8703496101521057786

noncomputable section

/-- A106546: a(n) = n^2 if n^2 is the difference of two primes, otherwise a(n) = 0.

Offset 1, canonical program `A106546.P8703496101521057786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106546 (n : ℕ) : ℤ :=
  A106546.P8703496101521057786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106564.P8487788228564906810

`(eq[1, A355450(n+1)]+1)²`
-/

namespace A106564.P8487788228564906810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A106564.P8487788228564906810

noncomputable section

/-- A106564: Perfect squares which are not the difference of two primes.

Offset 1, canonical program `A106564.P8487788228564906810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106564 (n : ℕ) : ℤ :=
  (A106564.P8487788228564906810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121307.P5032943004208249277

`∩[A004612(n+1), A014612(n+1)]`
-/

namespace A121307.P5032943004208249277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121307.P5032943004208249277

noncomputable section

/-- A121307: Products of three primes of the form 3n-1 (A003627), not necessarily distinct.

Offset 1, canonical program `A121307.P5032943004208249277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1921 terms. -/
def A121307 (n : ℕ) : ℤ :=
  (A121307.P5032943004208249277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1921 terms. -/
def A121307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124849.P5182331567433130283

`record[A089033(n+1)/A245838(A033868(n+1))]`
-/

namespace A124849.P5182331567433130283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089033 (n + 1) : ℚ) / (A245838 (A033868 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124849.P5182331567433130283

noncomputable section

/-- A124849: Numbers k such that 7k + 3 and 3k + 7 are primes.

Offset 1, canonical program `A124849.P5182331567433130283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2985 terms. -/
def A124849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124849.P5182331567433130283.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2985 terms. -/
def A124849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126961.P11434301675719672040

`p?[eq[A355449(3*n), A355450(n+1)]]`
-/

namespace A126961.P11434301675719672040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355450 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126961.P11434301675719672040

noncomputable section

/-- A126961: Primes p such that (3p)^2 + 2 is not prime.

Offset 1, canonical program `A126961.P11434301675719672040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126961 (n : ℕ) : ℤ :=
  (A126961.P11434301675719672040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126961.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139532.P2108094528252457204

`eq[1, A245838(2*A004767(n))]`
-/

namespace A139532.P2108094528252457204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P2108094528252457204

noncomputable section

/-- A139532: Numbers k such that 24*k + 19 is prime.

Offset 1, canonical program `A139532.P2108094528252457204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2663 terms. -/
def A139532 (n : ℕ) : ℤ :=
  (A139532.P2108094528252457204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2663 terms. -/
def A139532.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153207.P8862744067160107778

`p?[2*A039787(n+1)-1]`
-/

namespace A153207.P8862744067160107778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039787 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153207.P8862744067160107778

noncomputable section

/-- A153207: Primes of the form 2*p-1 where p is prime and p-1 is squarefree.

Offset 1, canonical program `A153207.P8862744067160107778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A153207 (n : ℕ) : ℤ :=
  A153207.P8862744067160107778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A153207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153218.P3785772997736358194

`eq[1, A245838(2*(n+1))]`
-/

namespace A153218.P3785772997736358194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153218.P3785772997736358194

noncomputable section

/-- A153218: Numbers k such that 6k + 7 is prime.

Offset 1, canonical program `A153218.P3785772997736358194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218 (n : ℕ) : ℤ :=
  (A153218.P3785772997736358194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A000020.P13856012455953723901

`A011260(n+1)+C(2, n+2)`
-/

namespace A000020.P13856012455953723901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A000020.P13856012455953723901

noncomputable section

/-- A000020: Number of primitive polynomials of degree n over GF(2) (version 2).

Offset 1, canonical program `A000020.P13856012455953723901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020 (n : ℕ) : ℤ :=
  A000020.P13856012455953723901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A020899.P3391896508179438506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A020899 (n : ℕ) : ℤ :=
  (A020899.P3391896508179438506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A020899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053165.P14012928255864923022

`∑{d}[n+1, A219009(#)*A385006((n+1)/#)]`
-/

namespace A053165.P14012928255864923022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A385006 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053165.P14012928255864923022

noncomputable section

/-- A053165: 4th-power-free part of n.

Offset 1, canonical program `A053165.P14012928255864923022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053165 (n : ℕ) : ℤ :=
  A053165.P14012928255864923022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091362.P6318580456760933466

`∩[A052034(n+1), A247122(n+1)]`
-/

namespace A091362.P6318580456760933466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091362.P6318580456760933466

noncomputable section

/-- A091362: Primes p such that the sum of the digits of p is not prime, but the sum of the squares of the digits of p is prime.

Offset 1, canonical program `A091362.P6318580456760933466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091362 (n : ℕ) : ℤ :=
  (A091362.P6318580456760933466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091365.P13821145231187876511

`∩[A091366(n+1), A247122(n+1)]`
-/

namespace A091365.P13821145231187876511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091365.P13821145231187876511

noncomputable section

/-- A091365: Primes p such that the sum of the digits of p is not prime, but the sum of the cubes of the digits of p is prime.

Offset 1, canonical program `A091365.P13821145231187876511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A091365 (n : ℕ) : ℤ :=
  (A091365.P13821145231187876511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A091365.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095879.P11268463583022771490

`comp[A095880(n+1)]`
-/

namespace A095879.P11268463583022771490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095879.P11268463583022771490

noncomputable section

/-- A095879: Numbers whose lazy Fibonacci representation has an odd number of summands.

Offset 1, canonical program `A095879.P11268463583022771490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095879 (n : ℕ) : ℤ :=
  (A095879.P11268463583022771490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112400.P2366853602604330834

`∑{e}[n+1, A219009(#)]`
-/

namespace A112400.P2366853602604330834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A219009 (Nat.factorization (f1 n) p)

end

end A112400.P2366853602604330834

noncomputable section

/-- A112400: a(n) = Sum_{p|n, p prime} mu(b(p,n)), where mu(k) = A008683(k) (the Moebius function) and p^b(p,n) is the highest power of the prime p dividing n.

Offset 1, canonical program `A112400.P2366853602604330834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112400 (n : ℕ) : ℤ :=
  A112400.P2366853602604330834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166234.P18016884847511072532

`∏{e}[n+1, A219009(#)]`
-/

namespace A166234.P18016884847511072532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A219009 (Nat.factorization (f1 n) p)

end

end A166234.P18016884847511072532

noncomputable section

/-- A166234: The inverse of the constant 1 function under the exponential convolution (also called the exponential Möbius function).

Offset 1, canonical program `A166234.P18016884847511072532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166234 (n : ℕ) : ℤ :=
  A166234.P18016884847511072532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166234.provenance : SequenceMachineLib.Provenance := .conjectured

