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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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

/-! ## A255069.P16990446007770203954

`A255071(n+2)-A255071(n+1)`
-/

namespace A255069.P16990446007770203954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (n + 2) - A255071 (n + 1)

end

end A255069.P16990446007770203954

noncomputable section

/-- A255069: First differences of A255071.

Offset 1, canonical program `A255069.P16990446007770203954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255069 (n : ℕ) : ℤ :=
  A255069.P16990446007770203954.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320042.P13296018025758099294

`2*A092339(n+1)-A000523(n+1)`
-/

namespace A320042.P13296018025758099294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092339 (n + 1) - A000523 (n + 1)

end

end A320042.P13296018025758099294

noncomputable section

/-- A320042: a(n) = a(floor(n/2)) + (-1)^(n*(n+1)/2) with a(1)=0.

Offset 1, canonical program `A320042.P13296018025758099294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320042 (n : ℕ) : ℤ :=
  A320042.P13296018025758099294.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375782.P12848737483940934003

`1+A007814(A085062(n+1))`
-/

namespace A375782.P12848737483940934003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007814 (A085062 (n + 1)).toNat

end

end A375782.P12848737483940934003

noncomputable section

/-- A375782: The 2-adic valuation of the result, starting from n, of Collatz steps x -> (3x+1)/2 while odd.

Offset 1, canonical program `A375782.P12848737483940934003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782 (n : ℕ) : ℤ :=
  A375782.P12848737483940934003.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379222.P16799102987765888211

`A378999(2*n+1)`
-/

namespace A379222.P16799102987765888211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378999 (2 * n + 1)

end

end A379222.P16799102987765888211

noncomputable section

/-- A379222: Number of trailing 1-bits in the binary representation of the sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

Offset 1, canonical program `A379222.P16799102987765888211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222 (n : ℕ) : ℤ :=
  A379222.P16799102987765888211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173484.P10472800131719763731

`10^(n+2)*A132740(n+1)`
-/

namespace A173484.P10472800131719763731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 2) : ℤ) * A132740 (n + 1)

end

end A173484.P10472800131719763731

noncomputable section

/-- A173484: a(n) = the smallest number ending in n+1 zeros divisible by n.

Offset 1, canonical program `A173484.P10472800131719763731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173484 (n : ℕ) : ℤ :=
  A173484.P10472800131719763731.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369258.P16975426313700226545

`A001227(n+1)-A369257(n+1)`
-/

namespace A369258.P16975426313700226545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A369257 (n + 1)

end

end A369258.P16975426313700226545

noncomputable section

/-- A369258: a(n) = number of odd divisors of n that have an odd number of prime factors with multiplicity.

Offset 1, canonical program `A369258.P16975426313700226545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369258 (n : ℕ) : ℤ :=
  A369258.P16975426313700226545.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285389.P15180177278250206425

`A000079(A285406(n+1))`
-/

namespace A285389.P15180177278250206425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A285406 (n + 1)).toNat

end

end A285389.P15180177278250206425

noncomputable section

/-- A285389: Denominator of Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k))/n.

Offset 1, canonical program `A285389.P15180177278250206425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285389 (n : ℕ) : ℤ :=
  A285389.P15180177278250206425.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285389.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A172067.P8128341851257573489

`Δ[A172066(n)-∑[A172064(n)]]`
-/

namespace A172067.P8128341851257573489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172066 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172067.P8128341851257573489

noncomputable section

/-- A172067: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=10.

Offset 0, canonical program `A172067.P8128341851257573489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172067 (n : ℕ) : ℤ :=
  A172067.P8128341851257573489.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175057.P10451494009119504139

`A025480(eq[A069010(n+1), A135523(n+1)+1])`
-/

namespace A175057.P10451494009119504139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175057.P10451494009119504139

noncomputable section

/-- A175057: a(n) = decimal equivalent of {A175054(n) written in binary, and each run of 0's reduced in length by one digit}.

Offset 1, canonical program `A175057.P10451494009119504139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A175057 (n : ℕ) : ℤ :=
  A175057.P10451494009119504139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A175057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176224.P7399068725741792420

`A099627(n)-A089633(n)`
-/

namespace A176224.P7399068725741792420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n - A089633 n

end

end A176224.P7399068725741792420

noncomputable section

/-- A176224: A symmetrical triangle sequence: T(n, k) = q^k + q^(n-k) - q^n, with q=2.

Offset 0, canonical program `A176224.P7399068725741792420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176224 (n : ℕ) : ℤ :=
  A176224.P7399068725741792420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177264.P12625146371770321732

`A177263(A038722(n+1))+A000007(n+4)`
-/

namespace A177264.P12625146371770321732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177263 (A038722 (n + 1)).toNat + A000007 (n + 4)

end

end A177264.P12625146371770321732

noncomputable section

/-- A177264: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k as the first entry in the last block (1<=k<=n).

Offset 1, canonical program `A177264.P12625146371770321732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177264 (n : ℕ) : ℤ :=
  A177264.P12625146371770321732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178756.P13128760247326901510

`A051129(n+2)*A127779(n+1)`
-/

namespace A178756.P13128760247326901510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 2) * A127779 (n + 1)

end

end A178756.P13128760247326901510

noncomputable section

/-- A178756: Rectangular array T(n,k) = binomial(n,2)*k*n^(k-1) read by antidiagonals.

Offset 2, canonical program `A178756.P13128760247326901510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4295 terms. -/
def A178756 (n : ℕ) : ℤ :=
  A178756.P13128760247326901510.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4295 terms. -/
def A178756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180987.P1087486024587690451

`A030528(eq[0, A145677(n)]+1)`
-/

namespace A180987.P1087486024587690451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180987.P1087486024587690451

noncomputable section

/-- A180987: T(n,k)=number of nXk binary matrices with rows in lexicographically nonincreasing order and columns in lexicographically strictly increasing order.

Offset 1, canonical program `A180987.P1087486024587690451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A180987 (n : ℕ) : ℤ :=
  A180987.P1087486024587690451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A180987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181118.P14712911132165439164

`A057555(xor(1, n)+1)`
-/

namespace A181118.P14712911132165439164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (Nat.xor 1 n + 1)

end

end A181118.P14712911132165439164

noncomputable section

/-- A181118: Sequencing of all rational numbers p/q > 0 as ordered pairs (p,q). The rational (p,q) occurs as the n-th ordered pair where n=(p+q-1)*(p+q-2)/2+q.

Offset 1, canonical program `A181118.P14712911132165439164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181118 (n : ℕ) : ℤ :=
  A181118.P14712911132165439164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181986.P2870521269527249450

`A007089(A049354(n+1))`
-/

namespace A181986.P2870521269527249450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A049354 (n + 1)).toNat

end

end A181986.P2870521269527249450

noncomputable section

/-- A181986: Digitally balanced numbers: ternary numbers which have the same number of 0's as 1's as 2's.

Offset 1, canonical program `A181986.P2870521269527249450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A181986 (n : ℕ) : ℤ :=
  A181986.P2870521269527249450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A181986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185740.P16449816303873469913

`A130123(n)+A073424(n)`
-/

namespace A185740.P16449816303873469913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n + A073424 n

end

end A185740.P16449816303873469913

noncomputable section

/-- A185740: Weight array of A185738, by antidiagonals.

Offset 1, canonical program `A185740.P16449816303873469913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185740 (n : ℕ) : ℤ :=
  A185740.P16449816303873469913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188094.P8623262597786737526

`A188080(n+6)-6`
-/

namespace A188094.P8623262597786737526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 6) - 6

end

end A188094.P8623262597786737526

noncomputable section

/-- A188094: Positions of 0 in A188093; complement of A188095.

Offset 1, canonical program `A188094.P8623262597786737526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A188094 (n : ℕ) : ℤ :=
  A188094.P8623262597786737526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A188094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191448.P14418744543329355143

`A075300(A066182(n+1))`
-/

namespace A191448.P14418744543329355143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A066182 (n + 1)).toNat

end

end A191448.P14418744543329355143

noncomputable section

/-- A191448: Dispersion of the odd integers greater than 1, by antidiagonals.

Offset 1, canonical program `A191448.P14418744543329355143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191448 (n : ℕ) : ℤ :=
  A191448.P14418744543329355143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193738.P15912685866539530359

`A002260(A132128(n+1))`
-/

namespace A193738.P15912685866539530359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A132128 (n + 1)).toNat

end

end A193738.P15912685866539530359

noncomputable section

/-- A193738: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=q(n,x)=x^n+x^(n-1)+...+x+1.

Offset 0, canonical program `A193738.P15912685866539530359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738 (n : ℕ) : ℤ :=
  A193738.P15912685866539530359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202452.P9644415859408235148

`A000045(A185914(n+1))`
-/

namespace A202452.P9644415859408235148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A185914 (n + 1)).toNat

end

end A202452.P9644415859408235148

noncomputable section

/-- A202452: Lower triangular Fibonacci matrix, by SW antidiagonals.

Offset 1, canonical program `A202452.P9644415859408235148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202452 (n : ℕ) : ℤ :=
  A202452.P9644415859408235148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203994.P3590551673523168265

`A024000(A049581(n))`
-/

namespace A203994.P3590551673523168265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A049581 n).toNat

end

end A203994.P3590551673523168265

noncomputable section

/-- A203994: Symmetric matrix based on f(i,j) = (i+j)*min{i,j}, by antidiagonals.

Offset 1, canonical program `A203994.P3590551673523168265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203994 (n : ℕ) : ℤ :=
  A203994.P3590551673523168265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204000.P8902930415265516511

`A203996(n+1)-1`
-/

namespace A204000.P8902930415265516511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) - 1

end

end A204000.P8902930415265516511

noncomputable section

/-- A204000: Symmetric matrix based on f(i,j)=min{i(j+1)-1,j(i+1)-1}, by antidiagonals.

Offset 1, canonical program `A204000.P8902930415265516511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204000 (n : ℕ) : ℤ :=
  A204000.P8902930415265516511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204002.P9170286212412624765

`A203996(n+1)+A176270(n)`
-/

namespace A204002.P9170286212412624765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) + A176270 n

end

end A204002.P9170286212412624765

noncomputable section

/-- A204002: Symmetric matrix based on f(i,j)=min{2i+j,i+2j}, by antidiagonals.

Offset 1, canonical program `A204002.P9170286212412624765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204002 (n : ℕ) : ℤ :=
  A204002.P9170286212412624765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204008.P190403554516119161

`A131507(n)+A049581(n)`
-/

namespace A204008.P190403554516119161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + A049581 n

end

end A204008.P190403554516119161

noncomputable section

/-- A204008: Symmetric matrix based on f(i,j) = max{3i+j-3,i+3j-3}, by antidiagonals.

Offset 1, canonical program `A204008.P190403554516119161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204008 (n : ℕ) : ℤ :=
  A204008.P190403554516119161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204012.P8035036335366724817

`A131507(n)-A049581(n)`
-/

namespace A204012.P8035036335366724817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A049581 n

end

end A204012.P8035036335366724817

noncomputable section

/-- A204012: Symmetric matrix based on f(i,j)=min{3i+j-3,i+3j-3}, by antidiagonals.

Offset 1, canonical program `A204012.P8035036335366724817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204012 (n : ℕ) : ℤ :=
  A204012.P8035036335366724817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204022.P5041661320422895112

`A002024(n+1)+A049581(n)`
-/

namespace A204022.P5041661320422895112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A049581 n

end

end A204022.P5041661320422895112

noncomputable section

/-- A204022: Symmetric matrix based on f(i,j) = max(2i-1, 2j-1), by antidiagonals.

Offset 1, canonical program `A204022.P5041661320422895112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204022 (n : ℕ) : ℤ :=
  A204022.P5041661320422895112.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204030.P9231576085307590684

`gcd(A128227(n)+1, A049581(n))`
-/

namespace A204030.P9231576085307590684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128227 n + 1) (A049581 n)

end

end A204030.P9231576085307590684

noncomputable section

/-- A204030: Symmetric matrix based on f(i,j) = gcd(i+1, j+1), by antidiagonals.

Offset 1, canonical program `A204030.P9231576085307590684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204030 (n : ℕ) : ℤ :=
  (A204030.P9231576085307590684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204158.P9414050647087276641

`A204154(n+1)+A049581(n)`
-/

namespace A204158.P9414050647087276641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A049581 n

end

end A204158.P9414050647087276641

noncomputable section

/-- A204158: Symmetric matrix based on f(i,j)=max(3i-2j, 3j-2i), by antidiagonals.

Offset 1, canonical program `A204158.P9414050647087276641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204158 (n : ℕ) : ℤ :=
  A204158.P9414050647087276641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205136.P11482582398427600183

`A096037(n+1)+A099375(n)+1`
-/

namespace A205136.P11482582398427600183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) + (A099375 n + 1)

end

end A205136.P11482582398427600183

noncomputable section

/-- A205136: Ordered differences of distinct pentagonal numbers.

Offset 1, canonical program `A205136.P11482582398427600183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205136 (n : ℕ) : ℤ :=
  A205136.P11482582398427600183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205392.P956909529108325684

`A004525(A120070(n+2))`
-/

namespace A205392.P956909529108325684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A120070 (n + 2)).toNat

end

end A205392.P956909529108325684

noncomputable section

/-- A205392: Ordered differences of numbers s(j)=ceiling(j^2/2).

Offset 1, canonical program `A205392.P956909529108325684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A205392 (n : ℕ) : ℤ :=
  A205392.P956909529108325684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A205392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205400.P14668994081946104060

`A143902(n+1)+A128177(n+1)`
-/

namespace A205400.P14668994081946104060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143902 (n + 1) + A128177 (n + 1)

end

end A205400.P14668994081946104060

noncomputable section

/-- A205400: Ordered differences of quarter-squares.

Offset 1, canonical program `A205400.P14668994081946104060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205400 (n : ℕ) : ℤ :=
  A205400.P14668994081946104060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205678.P13105615205405818687

`A002260(A205676(n+1))`
-/

namespace A205678.P13105615205405818687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205676 (n + 1)).toNat

end

end A205678.P13105615205405818687

noncomputable section

/-- A205678: The number j such that 4 divides prime(k)-prime(j), where k(n)=A205677(n).

Offset 1, canonical program `A205678.P13105615205405818687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205678 (n : ℕ) : ℤ :=
  A205678.P13105615205405818687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205690.P15675749625037910183

`∩[A205559(n+1), A080036(n)]`
-/

namespace A205690.P15675749625037910183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205690.P15675749625037910183

noncomputable section

/-- A205690: Positions of multiples of 6 in A204890 (differences of primes).

Offset 1, canonical program `A205690.P15675749625037910183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205690 (n : ℕ) : ℤ :=
  (A205690.P15675749625037910183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205718.P15912331110075494012

`∩[A205683(n+1), A080036(n)]`
-/

namespace A205718.P15912331110075494012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205718.P15912331110075494012

noncomputable section

/-- A205718: Positions of multiples of 10 in A204890 (differences of primes).

Offset 1, canonical program `A205718.P15912331110075494012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A205718 (n : ℕ) : ℤ :=
  (A205718.P15912331110075494012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A205718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206772.P13480883509910150050

`A279891(n)+A204154(n+1)`
-/

namespace A206772.P13480883509910150050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A204154 (n + 1)

end

end A206772.P13480883509910150050

noncomputable section

/-- A206772: Table T(n,k)=max{4*n+k-4,n+4*k-4} n, k > 0, read by antidiagonals.

Offset 1, canonical program `A206772.P13480883509910150050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A206772 (n : ℕ) : ℤ :=
  A206772.P13480883509910150050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A206772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211955.P3134734577332514007

`ceil(A123519(n)/2)`
-/

namespace A211955.P3134734577332514007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123519 n : ℚ) / 2⌉

end

end A211955.P3134734577332514007

noncomputable section

/-- A211955: Triangle of coefficients of a polynomial sequence related to the Morgan-Voyce polynomials A085478.

Offset 0, canonical program `A211955.P3134734577332514007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211955 (n : ℕ) : ℤ :=
  A211955.P3134734577332514007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213752.P6712457032791748921

`2*A213751(n+1)-A055461(n+1)`
-/

namespace A213752.P6712457032791748921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213751 (n + 1) - A055461 (n + 1)

end

end A213752.P6712457032791748921

noncomputable section

/-- A213752: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = b(n-1+h), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213752.P6712457032791748921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213752 (n : ℕ) : ℤ :=
  A213752.P6712457032791748921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213761.P7356628059179805218

`2*A213750(n+1)-A213500(n+1)`
-/

namespace A213761.P7356628059179805218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213750 (n + 1) - A213500 (n + 1)

end

end A213761.P7356628059179805218

noncomputable section

/-- A213761: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213761.P7356628059179805218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213761 (n : ℕ) : ℤ :=
  A213761.P7356628059179805218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213771.P15097200566803793023

`2*A213751(n+1)-A213500(n+1)`
-/

namespace A213771.P15097200566803793023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213751 (n + 1) - A213500 (n + 1)

end

end A213771.P15097200566803793023

noncomputable section

/-- A213771: Rectangular array: (row n) = b**c, where b(h) = 3*h-2, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213771.P15097200566803793023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213771 (n : ℕ) : ℤ :=
  A213771.P15097200566803793023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213774.P653417461158321534

`A213768(A014132(n+1))-A005408(A002024(n+1))`
-/

namespace A213774.P653417461158321534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A014132 (n + 1)).toNat - A005408 (A002024 (n + 1)).toNat

end

end A213774.P653417461158321534

noncomputable section

/-- A213774: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213774.P653417461158321534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213774 (n : ℕ) : ℤ :=
  A213774.P653417461158321534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213786.P3878037431570602295

`A099392(A020986(n))-A008619(n)`
-/

namespace A213786.P3878037431570602295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A020986 n).toNat - A008619 n

end

end A213786.P3878037431570602295

noncomputable section

/-- A213786: a(n) = Sum_{1<=i

Offset 0, canonical program `A213786.P3878037431570602295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213786 (n : ℕ) : ℤ :=
  A213786.P3878037431570602295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213835.P6060374703208332894

`2*A213750(n+1)-abs(A122432(n))`
-/

namespace A213835.P6060374703208332894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213750 (n + 1) - |A122432 n|

end

end A213835.P6060374703208332894

noncomputable section

/-- A213835: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 4*n-7+4*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213835.P6060374703208332894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213835 (n : ℕ) : ℤ :=
  A213835.P6060374703208332894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213836.P1472070259988033542

`2*A213751(n+1)-A049777(n+1)`
-/

namespace A213836.P1472070259988033542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213751 (n + 1) - A049777 (n + 1)

end

end A213836.P1472070259988033542

noncomputable section

/-- A213836: Rectangular array: (row n) = b**c, where b(h) = 4*h-3, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213836.P1472070259988033542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213836 (n : ℕ) : ℤ :=
  A213836.P1472070259988033542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214412.P17651394908834805650

`comp[A141169(n)+A193739(n)²]`
-/

namespace A214412.P17651394908834805650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A193739 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214412.P17651394908834805650

noncomputable section

/-- A214412: Numbers that can't be expressed as the sum of a Fibonacci number and a square of a positive integer.

Offset 1, canonical program `A214412.P17651394908834805650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A214412 (n : ℕ) : ℤ :=
  (A214412.P17651394908834805650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A214412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215287.P2856808534763389541

`record[A088617(A001972(n))]`
-/

namespace A215287.P2856808534763389541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215287.P2856808534763389541

noncomputable section

/-- A215287: Number of permutations of 0..floor((n*3-1)/2) on even squares of an n X 3 array such that each row and column of even squares is increasing.

Offset 1, canonical program `A215287.P2856808534763389541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A215287 (n : ℕ) : ℤ :=
  A215287.P2856808534763389541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A215287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215630.P5926163598212012995

`A144216(n+1)+1+n`
-/

namespace A215630.P5926163598212012995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (n + 1) + 1 + (n : ℤ)

end

end A215630.P5926163598212012995

noncomputable section

/-- A215630: Triangle read by rows: T(n,k) = n^2 - n*k + k^2, 1 <= k <= n.

Offset 1, canonical program `A215630.P5926163598212012995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215630 (n : ℕ) : ℤ :=
  A215630.P5926163598212012995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215655.P274844341247519406

`2*A057555(xor(1, n)+1)`
-/

namespace A215655.P274844341247519406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057555 (Nat.xor 1 n + 1)

end

end A215655.P274844341247519406

noncomputable section

/-- A215655: Irregular triangle read by rows: reading the n-th row describes all the numbers seen in the triangle up to the end of the n-th row.

Offset 1, canonical program `A215655.P274844341247519406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A215655 (n : ℕ) : ℤ :=
  A215655.P274844341247519406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A215655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218485.P11683830369572626684

`record[A120070(A061579(n)+2)]`
-/

namespace A218485.P11683830369572626684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A061579 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218485.P11683830369572626684

noncomputable section

/-- A218485: Positive numbers differing from next greater square by a square.

Offset 1, canonical program `A218485.P11683830369572626684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A218485 (n : ℕ) : ℤ :=
  A218485.P11683830369572626684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A218485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220073.P10030313601789214799

`A101688(n)+A049581(n)`
-/

namespace A220073.P10030313601789214799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n + A049581 n

end

end A220073.P10030313601789214799

noncomputable section

/-- A220073: Mirror of the triangle A130517.

Offset 1, canonical program `A220073.P10030313601789214799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220073 (n : ℕ) : ℤ :=
  A220073.P10030313601789214799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220348.P6667135359390539441

`A193739(n)+a(A002262(n))` with `a(0)=1`
-/

namespace A220348.P6667135359390539441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193739 n + a (A002262 n).toNat

end

end A220348.P6667135359390539441

noncomputable section

/-- A220348: Index of row where n occurs in A183079.

Offset 1, canonical program `A220348.P6667135359390539441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220348 (n : ℕ) : ℤ :=
  A220348.P6667135359390539441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222946.P18161529280472622073

`and(A054431(n+1), A103217(n))*A055096(n+2)`
-/

namespace A222946.P18161529280472622073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A103217 n) * A055096 (n + 2)

end

end A222946.P18161529280472622073

noncomputable section

/-- A222946: Triangle for hypotenuses of primitive Pythagorean triangles.

Offset 2, canonical program `A222946.P18161529280472622073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A222946 (n : ℕ) : ℤ :=
  A222946.P18161529280472622073.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A222946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224701.P15756178297460564340

`2*A224380(n+1)-1`
-/

namespace A224701.P15756178297460564340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224380 (n + 1) - 1

end

end A224701.P15756178297460564340

noncomputable section

/-- A224701: Table read by antidiagonals of numbers of form (2^n - 1)*2^(m+3) + 5 where n>=1, m>=1.

Offset 1, canonical program `A224701.P15756178297460564340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A224701 (n : ℕ) : ℤ :=
  A224701.P15756178297460564340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A224701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226314.P17792487929510332212

`A002024(n+1)-A167192(n+1)`
-/

namespace A226314.P17792487929510332212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A167192 (n + 1)

end

end A226314.P17792487929510332212

noncomputable section

/-- A226314: Triangle read by rows: T(i,j) = j+(i-j)/gcd(i,j) (1<=i<=j).

Offset 1, canonical program `A226314.P17792487929510332212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A226314 (n : ℕ) : ℤ :=
  A226314.P17792487929510332212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A226314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227945.P11162813114022877264

`A098378(A132740(n+1))`
-/

namespace A227945.P11162813114022877264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (A132740 (n + 1)).toNat

end

end A227945.P11162813114022877264

noncomputable section

/-- A227945: Smallest possible number of nonzero digits in a positive multiple of n.

Offset 1, canonical program `A227945.P11162813114022877264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A227945 (n : ℕ) : ℤ :=
  A227945.P11162813114022877264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A227945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227984.P7060352613725131740

`A130330(n)/A204116(n+1)`
-/

namespace A227984.P7060352613725131740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130330 n : ℚ) / (A204116 (n + 1) : ℚ)

end

end A227984.P7060352613725131740

noncomputable section

/-- A227984: Triangle T(n,k), read by rows: T(n,k) is the numerator of (1-2^(n-k+1))/(1-2^(k+1)).

Offset 0, canonical program `A227984.P7060352613725131740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A227984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227984.P7060352613725131740.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A227984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228035.P16229329400387151927

`A143088(n)/gcd(A130328(n)², A143088(n))`
-/

namespace A228035.P16229329400387151927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143088 n : ℚ) / (Int.gcd (A130328 n ^ 2) (A143088 n) : ℚ)

end

end A228035.P16229329400387151927

noncomputable section

/-- A228035: Triangle T(n,k), read by rows: T(n,k) is the denominator of (1-2^(n-k+1))/(1-2^(k+1)).

Offset 0, canonical program `A228035.P16229329400387151927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A228035.P16229329400387151927.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228371.P10828106634153068610

`gcd(∑[A094267(n)], A214546(n))`
-/

namespace A228371.P10828106634153068610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A214546 n)

end

end A228371.P10828106634153068610

noncomputable section

/-- A228371: First differences of A228370. Also A001511 and A006519 interleaved.

Offset 1, canonical program `A228371.P10828106634153068610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228371 (n : ℕ) : ℤ :=
  (A228371.P10828106634153068610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233558.P15177050206559062068

`A128142(n+1)%A003057(n+2)`
-/

namespace A233558.P15177050206559062068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128142 (n + 1)) (A003057 (n + 2))

end

end A233558.P15177050206559062068

noncomputable section

/-- A233558: Triangle read by rows: T(n,k) = real part mod n of (n + ki)^2, where k=1..n-1 and i is the imaginary unit.

Offset 2, canonical program `A233558.P15177050206559062068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A233558 (n : ℕ) : ℤ :=
  A233558.P15177050206559062068.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A233558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240876.P12730443081561685234

`∑[A035706(n)]`
-/

namespace A240876.P12730443081561685234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240876.P12730443081561685234

noncomputable section

/-- A240876: Expansion of (1 + x)^11 / (1 - x)^12.

Offset 0, canonical program `A240876.P12730443081561685234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240876 (n : ℕ) : ℤ :=
  A240876.P12730443081561685234.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241957.P141546297856735390

`2*A075300(n)+1`
-/

namespace A241957.P141546297856735390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075300 n + 1

end

end A241957.P141546297856735390

noncomputable section

/-- A241957: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = 2^n*(2*k - 1) - 1, n,k >= 1.

Offset 1, canonical program `A241957.P141546297856735390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241957 (n : ℕ) : ℤ :=
  A241957.P141546297856735390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246017.P17242805474643553685

`∑[A246016(n)]`
-/

namespace A246017.P17242805474643553685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P17242805474643553685

noncomputable section

/-- A246017: Partial sums of A246016.

Offset 0, canonical program `A246017.P17242805474643553685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246017 (n : ℕ) : ℤ :=
  A246017.P17242805474643553685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249866.P2760361692551330954

`and(A054431(n+1), A073216(n))`
-/

namespace A249866.P2760361692551330954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A073216 n)

end

end A249866.P2760361692551330954

noncomputable section

/-- A249866: Characteristic triangle for primitive Pythagorean triples.

Offset 2, canonical program `A249866.P2760361692551330954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249866 (n : ℕ) : ℤ :=
  A249866.P2760361692551330954.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253284.P16495861320394303083

`Δ[A200748(n)]*A088617(n)`
-/

namespace A253284.P16495861320394303083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A088617 n

end

end A253284.P16495861320394303083

noncomputable section

/-- A253284: Triangle read by rows, T(n,k) = (k+1)*(n+1)!*(n+k)!/((k+1)!^2*(n-k)!) with n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A253284.P16495861320394303083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A253284 (n : ℕ) : ℤ :=
  A253284.P16495861320394303083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A253284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254119.P11166563169654256296

`A213709(n+1)-A255071(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254119.P11166563169654256296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 (n + 1) - A255071 (n + 1)

end

end A254119.P11166563169654256296

noncomputable section

/-- A254119: a(n) = A213709(n) - A255071(n).

Offset 1, canonical program `A254119.P11166563169654256296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254119 (n : ℕ) : ℤ :=
  A254119.P11166563169654256296.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254119.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256560.P10189218502537202963

`A055096(n+2)+A256497(n+1)`
-/

namespace A256560.P10189218502537202963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) + A256497 (n + 1)

end

end A256560.P10189218502537202963

noncomputable section

/-- A256560: Triangle read by rows, sums of 2 distinct nonzero squares plus sums of 2 distinct nonzero cubes: T(n,k) = n^2 + k^2 + n^3 + k^3, 1 <= k <= n-1.

Offset 2, canonical program `A256560.P10189218502537202963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055096, A256497, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256560 (n : ℕ) : ℤ :=
  A256560.P10189218502537202963.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055096, A256497, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259477.P5518667962722059366

`A135278(n)*A193739(n)`
-/

namespace A259477.P5518667962722059366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A193739 n

end

end A259477.P5518667962722059366

noncomputable section

/-- A259477: Triangle of numbers where T(n,k) is the number of k-dimensional faces on a partially truncated n-dimensional simplex, 0 <= k <= n.

Offset 0, canonical program `A259477.P5518667962722059366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259477 (n : ℕ) : ℤ :=
  A259477.P5518667962722059366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259575.P7201171947853536315

`A259572(n+1)+A054431(n+1)`
-/

namespace A259575.P7201171947853536315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (n + 1) + A054431 (n + 1)

end

end A259575.P7201171947853536315

noncomputable section

/-- A259575: Reciprocity array of 1; rectangular, read by antidiagonals.

Offset 1, canonical program `A259575.P7201171947853536315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259575 (n : ℕ) : ℤ :=
  A259575.P7201171947853536315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267448.P14106542243018115986

`∑[A267447(n)]`
-/

namespace A267448.P14106542243018115986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267448.P14106542243018115986

noncomputable section

/-- A267448: Total number of OFF (white) cells after n iterations of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267448.P14106542243018115986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267448 (n : ℕ) : ℤ :=
  A267448.P14106542243018115986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274701.P11955321872613421849

`A080513(A067731(n))`
-/

namespace A274701.P11955321872613421849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A067731 n).toNat

end

end A274701.P11955321872613421849

noncomputable section

/-- A274701: First differences of A259280.

Offset 1, canonical program `A274701.P11955321872613421849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274701 (n : ℕ) : ℤ :=
  A274701.P11955321872613421849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277937.P17394316521050978661

`n-(A239906(n)+A014081(n))`
-/

namespace A277937.P17394316521050978661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A239906 n + A014081 n)

end

end A277937.P17394316521050978661

noncomputable section

/-- A277937: Number of runs of 1's of length 1 in the binary expansion of n.

Offset 0, canonical program `A277937.P17394316521050978661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277937 (n : ℕ) : ℤ :=
  A277937.P17394316521050978661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279415.P13072635906519015695

`(2-Δ[A274773(n+1)])*(1-C(n, n²))`
-/

namespace A279415.P13072635906519015695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * (1 - (Nat.choose n (n ^ 2) : ℤ))

end

end A279415.P13072635906519015695

noncomputable section

/-- A279415: Triangle read by rows: T(n,k), n>=k>=1, is the number of right isosceles triangles with integral coordinates that have a bounding box of size n X k.

Offset 1, canonical program `A279415.P13072635906519015695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279415 (n : ℕ) : ℤ :=
  A279415.P13072635906519015695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280048.P14757921311873397482

`A130784(n)*A309873(n+1)`
-/

namespace A280048.P14757921311873397482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 n * A309873 (n + 1)

end

end A280048.P14757921311873397482

noncomputable section

/-- A280048: The Tower of Hanoi word, with a,b,c,a-bar,b-bar,c-bar encoded as 1,2,3,-1,-2,-3 respectively.

Offset 0, canonical program `A280048.P14757921311873397482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280048 (n : ℕ) : ℤ :=
  A280048.P14757921311873397482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280999.P3057871319140881242

`eq[1, A032741(A092339(n))]`
-/

namespace A280999.P3057871319140881242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A092339 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280999.P3057871319140881242

noncomputable section

/-- A280999: Numbers with a prime number of 0's in their binary reflected Gray code representation.

Offset 1, canonical program `A280999.P3057871319140881242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4790 terms. -/
def A280999 (n : ℕ) : ℤ :=
  (A280999.P3057871319140881242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4790 terms. -/
def A280999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282451.P7052189223115230178

`A280411(xor(1, n))`
-/

namespace A282451.P7052189223115230178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (Nat.xor 1 n)

end

end A282451.P7052189223115230178

noncomputable section

/-- A282451: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282451.P7052189223115230178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282451 (n : ℕ) : ℤ :=
  A282451.P7052189223115230178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283766.P13369118954386203946

`lt[1, A135561(2-A005206(n)+n)]+1`
-/

namespace A283766.P13369118954386203946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (2 - A005206 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283766.P13369118954386203946

noncomputable section

/-- A283766: Numbers k such that L(k) is odd, where L = A000201 = lower Wythoff sequence.

Offset 1, canonical program `A283766.P13369118954386203946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283766 (n : ℕ) : ℤ :=
  (A283766.P13369118954386203946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285974.P6886808199461892070

`A285962(n+1)+1`
-/

namespace A285974.P6886808199461892070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285962 (n + 1) + 1

end

end A285974.P6886808199461892070

noncomputable section

/-- A285974: Positions of 1 in A285972; complement of A285973.

Offset 1, canonical program `A285974.P6886808199461892070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285974 (n : ℕ) : ℤ :=
  A285974.P6886808199461892070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286564.P14826098464724168033

`val(A007401(n+2)-(n+1), A193739(A007401(n+2)))`
-/

namespace A286564.P14826098464724168033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007401 (n + 2) - (n + 1 : ℤ)).toNat (A193739 (A007401 (n + 2)).toNat).toNat

end

end A286564.P14826098464724168033

noncomputable section

/-- A286564: Triangular table A286563 reversed.

Offset 1, canonical program `A286564.P14826098464724168033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A286564 (n : ℕ) : ℤ :=
  (A286564.P14826098464724168033.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A286564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289992.P12730023669115640224

`∑[2*A244880(n)]-A244880(n)`
-/

namespace A289992.P12730023669115640224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A244880 n

end

end A289992.P12730023669115640224

noncomputable section

/-- A289992: Number of magic labelings of the prism graph I X C_8 having magic sum n.

Offset 0, canonical program `A289992.P12730023669115640224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289992 (n : ℕ) : ℤ :=
  A289992.P12730023669115640224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300294.P16691287766721128725

`A054431(C(2, n)+n)`
-/

namespace A300294.P16691287766721128725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (Nat.choose 2 n + n)

end

end A300294.P16691287766721128725

noncomputable section

/-- A300294: Irregular triangle giving the GCD characteristic: T(1, 1) = 1 and, for n >= 2 and 1 <= m <= n-1, T(n, m) = 1 if gcd(n, m) = 1 and 0 otherwise.

Offset 1, canonical program `A300294.P16691287766721128725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300294 (n : ℕ) : ℤ :=
  A300294.P16691287766721128725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300624.P1798579072279093080

`A008421(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A300624.P1798579072279093080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008421 (n - 1) + a (n - 1)

end

end A300624.P1798579072279093080

noncomputable section

/-- A300624: Figurate numbers based on the 11-dimensional regular convex polytope called the 11-dimensional cross-polytope, or 11-dimensional hyperoctahedron.

Offset 0, canonical program `A300624.P1798579072279093080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300624 (n : ℕ) : ℤ :=
  A300624.P1798579072279093080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304337.P3685069978609455408

`A133256(A253146(n+1))`
-/

namespace A304337.P3685069978609455408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A253146 (n + 1)).toNat

end

end A304337.P3685069978609455408

noncomputable section

/-- A304337: Lexicographically earliest fractal-like sequence such that the erasure of all pairs of contiguous terms of opposite parity leaves the sequence unchanged.

Offset 1, canonical program `A304337.P3685069978609455408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304337 (n : ℕ) : ℤ :=
  A304337.P3685069978609455408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305724.P8769741493615946767

`∑[A035747(n)]`
-/

namespace A305724.P8769741493615946767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305724.P8769741493615946767

noncomputable section

/-- A305724: Crystal ball sequence for the lattice C_10.

Offset 0, canonical program `A305724.P8769741493615946767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305724 (n : ℕ) : ℤ :=
  A305724.P8769741493615946767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309557.P6394933625690260118

`A128226(n+1)+1`
-/

namespace A309557.P6394933625690260118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128226 (n + 1) + 1

end

end A309557.P6394933625690260118

noncomputable section

/-- A309557: Number triangle with T(n,k) = 2 + 3*n - 2*k + 2*k*(n-k) for n >= 0, 0 <= k <= n.

Offset 0, canonical program `A309557.P6394933625690260118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309557 (n : ℕ) : ℤ :=
  A309557.P6394933625690260118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313801.P717888020838785705

`abs(A008592(n)-A313682(n))`
-/

namespace A313801.P717888020838785705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313682 n|

end

end A313801.P717888020838785705

noncomputable section

/-- A313801: Coordination sequence Gal.5.291.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313801.P717888020838785705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313801 (n : ℕ) : ℤ :=
  A313801.P717888020838785705.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313905.P339684935486502025

`abs(A008592(n)-A313525(n))`
-/

namespace A313905.P339684935486502025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313525 n|

end

end A313905.P339684935486502025

noncomputable section

/-- A313905: Coordination sequence Gal.6.352.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313905.P339684935486502025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313905 (n : ℕ) : ℤ :=
  A313905.P339684935486502025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314134.P13249333215816617724

`A313739(n)+∑[A022003(n)]`
-/

namespace A314134.P13249333215816617724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314134.P13249333215816617724

noncomputable section

/-- A314134: Coordination sequence Gal.6.624.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314134.P13249333215816617724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314134 (n : ℕ) : ℤ :=
  A314134.P13249333215816617724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315069.P429606285114840225

`abs(A008592(n)-A314020(n))`
-/

namespace A315069.P429606285114840225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314020 n|

end

end A315069.P429606285114840225

noncomputable section

/-- A315069: Coordination sequence Gal.6.325.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315069.P429606285114840225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315069 (n : ℕ) : ℤ :=
  A315069.P429606285114840225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315499.P582473207499707061

`A313739(n)+A004525(n)`
-/

namespace A315499.P582473207499707061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A004525 n

end

end A315499.P582473207499707061

noncomputable section

/-- A315499: Coordination sequence Gal.6.643.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315499.P582473207499707061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315499 (n : ℕ) : ℤ :=
  A315499.P582473207499707061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315726.P3826273257408320648

`2*A313682(n)-A008574(n)`
-/

namespace A315726.P3826273257408320648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313682 n - A008574 n

end

end A315726.P3826273257408320648

noncomputable section

/-- A315726: Coordination sequence Gal.6.252.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315726.P3826273257408320648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A315726 (n : ℕ) : ℤ :=
  A315726.P3826273257408320648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A315726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315742.P4234331020117959484

`A313682(n)+n`
-/

namespace A315742.P4234331020117959484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n + (n : ℤ)

end

end A315742.P4234331020117959484

noncomputable section

/-- A315742: Coordination sequence Gal.5.302.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315742.P4234331020117959484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A315742 (n : ℕ) : ℤ :=
  A315742.P4234331020117959484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A315742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325002.P12992565631191484110

`A206735(n+1)+A103452(n+1)²`
-/

namespace A325002.P12992565631191484110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A103452 (n + 1) ^ 2

end

end A325002.P12992565631191484110

noncomputable section

/-- A325002: Triangle read by rows: T(n,k) is the number of oriented colorings of the facets (or vertices) of a regular n-dimensional simplex using exactly k colors.

Offset 1, canonical program `A325002.P12992565631191484110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325002 (n : ℕ) : ℤ :=
  A325002.P12992565631191484110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325499.P806690597136758802

`Δ[lt[0, A182582(n+1)]]`
-/

namespace A325499.P806690597136758802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325499.P806690597136758802

noncomputable section

/-- A325499: Difference sequence of A325424.

Offset 1, canonical program `A325499.P806690597136758802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A325499 (n : ℕ) : ℤ :=
  A325499.P806690597136758802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A325499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325539.P1534976636247493424

`eq[A065333(n+1), A182582(n+1)]`
-/

namespace A325539.P1534976636247493424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325539.P1534976636247493424

noncomputable section

/-- A325539: a(n) is the least number not 2*a(m)+1 or 3*a(m)+2 for any m < n.

Offset 1, canonical program `A325539.P1534976636247493424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5834 terms. -/
def A325539 (n : ℕ) : ℤ :=
  (A325539.P1534976636247493424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5834 terms. -/
def A325539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330366.P13234269032582178326

`A290450(eq[1, A290450(n+1)%5]+1)`
-/

namespace A330366.P13234269032582178326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290450 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330366.P13234269032582178326

noncomputable section

/-- A330366: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 1 (mod 10).

Offset 1, canonical program `A330366.P13234269032582178326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330366 (n : ℕ) : ℤ :=
  A330366.P13234269032582178326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332676.P3385004995648683764

`∩[5*A024896(n+1)-2, A290450(n+1)]`
-/

namespace A332676.P3385004995648683764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A024896 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P3385004995648683764

noncomputable section

/-- A332676: Prime numbers p_k such that p_k == 3 (mod 10) and p_(k+1) == 3 (mod 10).

Offset 1, canonical program `A332676.P3385004995648683764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. -/
def A332676 (n : ℕ) : ℤ :=
  (A332676.P3385004995648683764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. -/
def A332676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334576.P12532079723840725322

`A020986(n)+A020987(n)-1`
-/

namespace A334576.P12532079723840725322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 n + (A020987 n - 1)

end

end A334576.P12532079723840725322

noncomputable section

/-- A334576: a(n) is the X-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334577 gives Y-coordinates.

Offset 0, canonical program `A334576.P12532079723840725322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334576 (n : ℕ) : ℤ :=
  A334576.P12532079723840725322.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334577.P1556614945130862147

`floor(A020990(4*n+2)/2)`
-/

namespace A334577.P1556614945130862147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020990 (4 * n + 2) : ℚ) / 2⌋

end

end A334577.P1556614945130862147

noncomputable section

/-- A334577: a(n) is the Y-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334576 gives X-coordinates.

Offset 0, canonical program `A334577.P1556614945130862147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A334577 (n : ℕ) : ℤ :=
  A334577.P1556614945130862147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A334577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334922.P17964154798392453556

`A243866(n+1)+A143902(n+1)`
-/

namespace A334922.P17964154798392453556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243866 (n + 1) + A143902 (n + 1)

end

end A334922.P17964154798392453556

noncomputable section

/-- A334922: Square array T(n,k) = ((3/2)*n*k + (1/2)*A319929(n,k))/2, n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A334922.P17964154798392453556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A334922 (n : ℕ) : ℤ :=
  A334922.P17964154798392453556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A334922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338878.P14330195955316122499

`gcd(A054531(n+1), A277227(n+1))`
-/

namespace A338878.P14330195955316122499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054531 (n + 1)) (A277227 (n + 1))

end

end A338878.P14330195955316122499

noncomputable section

/-- A338878: Numerators in a set of expansions of the single-term Machin-like formula for Pi.

Offset 1, canonical program `A338878.P14330195955316122499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A338878 (n : ℕ) : ℤ :=
  (A338878.P14330195955316122499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A338878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339010.P4443742894969204147

`∑{d}[n+1, A091954(A214682(#))]`
-/

namespace A339010.P4443742894969204147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091954 (A214682 d).toNat

end

end A339010.P4443742894969204147

noncomputable section

/-- A339010: a(n) is the number of ways to write n as the difference of two centered k-gonal numbers for k >= 3.

Offset 1, canonical program `A339010.P4443742894969204147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339010 (n : ℕ) : ℤ :=
  A339010.P4443742894969204147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340504.P11252136775736366337

`(5-A105584(n))%4`
-/

namespace A340504.P11252136775736366337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - A105584 n) 4

end

end A340504.P11252136775736366337

noncomputable section

/-- A340504: Fixed under 0 -> 03, 1 -> 23, 2 -> 21, 3 -> 01.

Offset 1, canonical program `A340504.P11252136775736366337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340504 (n : ℕ) : ℤ :=
  A340504.P11252136775736366337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341314.P12612077031606272302

`A277227(A083920(n)+1)%(n+1)`
-/

namespace A341314.P12612077031606272302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277227 (A083920 n + 1).toNat) (n + 1 : ℤ)

end

end A341314.P12612077031606272302

noncomputable section

/-- A341314: Array read by antidiagonals: T(n,k) = (n+k)/gcd(n,k), n>=0, k>=0.

Offset 0, canonical program `A341314.P12612077031606272302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341314 (n : ℕ) : ℤ :=
  A341314.P12612077031606272302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342385.P11220617682431407402

`A144217(n+1)+A004247(n)`
-/

namespace A342385.P11220617682431407402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A004247 n

end

end A342385.P11220617682431407402

noncomputable section

/-- A342385: Triangle T(n,k) read by rows (n >= 0, 0 <= k <= n): first column is A001477 and column k > 0 is k*A028310.

Offset 0, canonical program `A342385.P11220617682431407402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342385 (n : ℕ) : ℤ :=
  A342385.P11220617682431407402.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343258.P4371836176800830808

`∩[A052294(n+1), A144754(n+1)]`
-/

namespace A343258.P4371836176800830808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343258.P4371836176800830808

noncomputable section

/-- A343258: Numbers whose binary representation has a prime number of zeros and a prime number of ones.

Offset 1, canonical program `A343258.P4371836176800830808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3360 terms. -/
def A343258 (n : ℕ) : ℤ :=
  (A343258.P4371836176800830808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3360 terms. -/
def A343258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348556.P1449905922643619445

`lt[0, A014083(n)]`
-/

namespace A348556.P1449905922643619445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P1449905922643619445

noncomputable section

/-- A348556: Binary expansion contains 4 adjacent 1's.

Offset 1, canonical program `A348556.P1449905922643619445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348556 (n : ℕ) : ℤ :=
  (A348556.P1449905922643619445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353292.P917263375731567259

`1-A080100(n)+n`
-/

namespace A353292.P917263375731567259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080100 n + (n : ℤ)

end

end A353292.P917263375731567259

noncomputable section

/-- A353292: a(n) is the number of positive integers k <= n that have at least one common 1-bit with n.

Offset 0, canonical program `A353292.P917263375731567259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353292 (n : ℕ) : ℤ :=
  A353292.P917263375731567259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354968.P5289782423154033668

`A057103(n+2)/24`
-/

namespace A354968.P5289782423154033668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057103 (n + 2) : ℚ) / 24

end

end A354968.P5289782423154033668

noncomputable section

/-- A354968: Triangle read by rows: T(n, k) = n*k*(n+k)*(n-k)/6.

Offset 2, canonical program `A354968.P5289782423154033668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354968.P5289782423154033668.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355341.P9670019332395498527

`floor(A117362(A061579(n))+acot(n))`
-/

namespace A355341.P9670019332395498527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117362 (A061579 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A355341.P9670019332395498527

noncomputable section

/-- A355341: G.f.: A(x) = Sum_{n=-oo..+oo} x^(n*(n+1)/2) * C(x)^n, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A355341.P9670019332395498527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355341 (n : ℕ) : ℤ :=
  A355341.P9670019332395498527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372331.P6557326080855113142

`∏{e}[n+1, A080100(#)]`
-/

namespace A372331.P6557326080855113142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A080100 (Nat.factorization (f1 n) p)

end

end A372331.P6557326080855113142

noncomputable section

/-- A372331: The number of infinitary divisors of the smallest number k such that k*n is a number whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372331.P6557326080855113142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331 (n : ℕ) : ℤ :=
  A372331.P6557326080855113142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373547.P3360985737469459485

`A059268(n)*A123519(n)`
-/

namespace A373547.P3360985737469459485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A123519 n

end

end A373547.P3360985737469459485

noncomputable section

/-- A373547: Triangle read by rows: T(n,k) = 4^k*binomial(n+k, n-k) with 0 <= k <= n.

Offset 0, canonical program `A373547.P3360985737469459485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8997 terms. -/
def A373547 (n : ℕ) : ℤ :=
  A373547.P3360985737469459485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8997 terms. -/
def A373547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376102.P5296559543741715473

`A288870(n)-A130321(n)`
-/

namespace A376102.P5296559543741715473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288870 n - A130321 n

end

end A376102.P5296559543741715473

noncomputable section

/-- A376102: Array read by ascending antidiagonals: A(n,k) = k*2^(n+1) + 1.

Offset 0, canonical program `A376102.P5296559543741715473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376102 (n : ℕ) : ℤ :=
  A376102.P5296559543741715473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378959.P5432620633639023974

`A003817(n)*A090706(n)`
-/

namespace A378959.P5432620633639023974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n * A090706 n

end

end A378959.P5432620633639023974

noncomputable section

/-- A378959: Sum, in base 10, of the permutations of the digits of n, written in base 2.

Offset 0, canonical program `A378959.P5432620633639023974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959 (n : ℕ) : ℤ :=
  A378959.P5432620633639023974.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379267.P15908437696186355973

`∩[A144754(n+1), A059010(n)]`
-/

namespace A379267.P15908437696186355973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379267.P15908437696186355973

noncomputable section

/-- A379267: Numbers whose binary representation contains exactly two zeros.

Offset 1, canonical program `A379267.P15908437696186355973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267 (n : ℕ) : ℤ :=
  (A379267.P15908437696186355973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384021.P7727466552774279921

`∪[A000079(n), A164874(n+1)]`
-/

namespace A384021.P7727466552774279921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384021.P7727466552774279921

noncomputable section

/-- A384021: Powers of 2 along with numbers one power of 2 less than binary repunits, but the power of two subtracted does not flip the leading bit.

Offset 1, canonical program `A384021.P7727466552774279921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A384021 (n : ℕ) : ℤ :=
  (A384021.P7727466552774279921.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A384021.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171651.P1398147796533981043

`2*A171128(n)-A091867(n)`
-/

namespace A171651.P1398147796533981043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171128 n - A091867 n

end

end A171651.P1398147796533981043

noncomputable section

/-- A171651: Triangle T, read by rows : T(n,k) = A007318(n,k)*A005773(n+1-k).

Offset 0, canonical program `A171651.P1398147796533981043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171651 (n : ℕ) : ℤ :=
  A171651.P1398147796533981043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171731.P6855340763383197574

`A094442(n)-A094441(n)`
-/

namespace A171731.P6855340763383197574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 n - A094441 n

end

end A171731.P6855340763383197574

noncomputable section

/-- A171731: Triangle T : T(n,k)= binomial(n,k)*Fibonacci(n-k)= A007318(n,k)*A000045(n-k).

Offset 0, canonical program `A171731.P6855340763383197574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171731 (n : ℕ) : ℤ :=
  A171731.P6855340763383197574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171814.P9797681691333110312

`A099375(n)*A124644(n)`
-/

namespace A171814.P9797681691333110312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A124644 n

end

end A171814.P9797681691333110312

noncomputable section

/-- A171814: Triangle T : T(n,k)= A007318(n,k)*A001700(n-k).

Offset 0, canonical program `A171814.P9797681691333110312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171814 (n : ℕ) : ℤ :=
  A171814.P9797681691333110312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171886.P2069845256079596505

`eq[0, A140513(n)%A008949(n)]`
-/

namespace A171886.P2069845256079596505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140513 n) (A008949 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171886.P2069845256079596505

noncomputable section

/-- A171886: Numbers n such that A008949(n) is a power of 2.

Offset 1, canonical program `A171886.P2069845256079596505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A171886 (n : ℕ) : ℤ :=
  (A171886.P2069845256079596505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A171886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171941.P16669356445325525036

`n-A243109(n)`
-/

namespace A171941.P16669356445325525036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243109 n

end

end A171941.P16669356445325525036

noncomputable section

/-- A171941: Backwards van Eck transform of A000120.

Offset 1, canonical program `A171941.P16669356445325525036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A171941 (n : ℕ) : ℤ :=
  A171941.P16669356445325525036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A171941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173541.P8603278970651018191

`A002260(n+1)-A127093(n+1)`
-/

namespace A173541.P8603278970651018191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A127093 (n + 1)

end

end A173541.P8603278970651018191

noncomputable section

/-- A173541: Triangle read by rows: T(n,k)=k if k is a proper non-divisor of n, otherwise T(n,k)=0 (1<=k<=n).

Offset 1, canonical program `A173541.P8603278970651018191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173541 (n : ℕ) : ℤ :=
  A173541.P8603278970651018191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173741.P3146822036776038077

`A132047(n)+1-A132729(n)`
-/

namespace A173741.P3146822036776038077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132047 n + (1 - A132729 n)

end

end A173741.P3146822036776038077

noncomputable section

/-- A173741: T(n,k) = binomial(n,k) + 4 for 1 <= k <= n - 1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, triangle read by rows.

Offset 0, canonical program `A173741.P3146822036776038077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173741 (n : ℕ) : ℤ :=
  A173741.P3146822036776038077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174719.P14076238822067918350

`A007318(n)+A098355(n)-A038221(n)`
-/

namespace A174719.P14076238822067918350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A098355 n - A038221 n)

end

end A174719.P14076238822067918350

noncomputable section

/-- A174719: Triangle T(n, k, q) = (1-q^n)*( binomial(n, k) - 1 ) + 1, with q = 3, read by rows.

Offset 0, canonical program `A174719.P14076238822067918350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8445 terms. -/
def A174719 (n : ℕ) : ℤ :=
  A174719.P14076238822067918350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8445 terms. -/
def A174719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174790.P10428492186523786925

`A014473(n)*A196347(n)+1`
-/

namespace A174790.P10428492186523786925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A196347 n + 1

end

end A174790.P10428492186523786925

noncomputable section

/-- A174790: Triangle read by rows: T(n,m) = 1 + ((-1 + binomial(n, m))*(n!)^2)/(m!*(n - m)!).

Offset 0, canonical program `A174790.P10428492186523786925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A174790 (n : ℕ) : ℤ :=
  A174790.P10428492186523786925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A174790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176079.P15611810976206123960

`A127093(n+1)-1`
-/

namespace A176079.P15611810976206123960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) - 1

end

end A176079.P15611810976206123960

noncomputable section

/-- A176079: Triangle T(n,k) read by rows: If k divides n then k-1, otherwise -1.

Offset 1, canonical program `A176079.P15611810976206123960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176079 (n : ℕ) : ℤ :=
  A176079.P15611810976206123960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176702.P2242900337551508736

`char[∑[n-1]]-Δ[(2^A127093(n+1)-1)%2]`
-/

namespace A176702.P2242900337551508736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A127093 (n + 1) : ℤ) - 1)) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A176702.P2242900337551508736

noncomputable section

/-- A176702: Triangle T(n,k) read by rows. A051731(n,k)-A051731(n,k+1).

Offset 1, canonical program `A176702.P2242900337551508736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176702 (n : ℕ) : ℤ :=
  A176702.P2242900337551508736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176891.P14783800229621870818

`floor(sqrt(8*n+1))%2*A127093(n+1)`
-/

namespace A176891.P14783800229621870818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ) * A127093 (n + 1)

end

end A176891.P14783800229621870818

noncomputable section

/-- A176891: Triangle T(n,k) = k if k

Offset 1, canonical program `A176891.P14783800229621870818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176891 (n : ℕ) : ℤ :=
  A176891.P14783800229621870818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177121.P3320387375115592110

`A035214(n+1)-A127093(A099375(n)+1+n)`
-/

namespace A177121.P3320387375115592110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (n + 1) - A127093 (A099375 n + 1 + (n : ℤ)).toNat

end

end A177121.P3320387375115592110

noncomputable section

/-- A177121: Square array T(n,k) read by antidiagonals up: T(n,k) = 1 if n=1; otherwise if n divides k then T(n,k) = -n+1; otherwise T(n,k) = 1.

Offset 1, canonical program `A177121.P3320387375115592110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177121 (n : ℕ) : ℤ :=
  A177121.P3320387375115592110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177207.P505828816875833333

`(A038207(n)/A007318(n))%∑[A010054(n)]`
-/

namespace A177207.P505828816875833333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A038207 n : ℚ) / (A007318 n : ℚ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177207.P505828816875833333

noncomputable section

/-- A177207: Triangle read by rows: R(n,k) = 2^(n-k) mod n.

Offset 1, canonical program `A177207.P505828816875833333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177207 (n : ℕ) : ℤ :=
  A177207.P505828816875833333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177767.P10065368362006185369

`or(A097805(n), A103452(n))`
-/

namespace A177767.P10065368362006185369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 n) (A103452 n)

end

end A177767.P10065368362006185369

noncomputable section

/-- A177767: Triangle read by rows: T(n,k) = binomial(n - 1, k - 1), 1 <= k <= n, and T(n,0) = A153881(n+1), n >= 0.

Offset 0, canonical program `A177767.P10065368362006185369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177767 (n : ℕ) : ℤ :=
  A177767.P10065368362006185369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177877.P42856707843489636

`A082652(n+1)-A000292(A002262(n))`
-/

namespace A177877.P42856707843489636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (n + 1) - A000292 (A002262 n).toNat

end

end A177877.P42856707843489636

noncomputable section

/-- A177877: Triangle in which row n is derived from (1,2,3,...,n) dot (n,n-1,...,1) with additive carryovers.

Offset 0, canonical program `A177877.P42856707843489636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177877 (n : ℕ) : ℤ :=
  A177877.P42856707843489636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177939.P13954845041136174016

`A066991(n+1)/A181511(n+1)`
-/

namespace A177939.P13954845041136174016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066991 (n + 1) : ℚ) / (A181511 (n + 1) : ℚ)

end

end A177939.P13954845041136174016

noncomputable section

/-- A177939: Array t(n,m)=(n*m)!/(n + m - 1)! read by antidiagonals.

Offset 1, canonical program `A177939.P13954845041136174016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A177939.P13954845041136174016.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177978.P5012801373125610272

`2*A051731(n+1)-A128185(n+1)`
-/

namespace A177978.P5012801373125610272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051731 (n + 1) - A128185 (n + 1)

end

end A177978.P5012801373125610272

noncomputable section

/-- A177978: Triangle T(n,k) read by rows: A051731(n,k) - A051731(n-1,k).

Offset 1, canonical program `A177978.P5012801373125610272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177978 (n : ℕ) : ℤ :=
  A177978.P5012801373125610272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178623.P14236001565579889142

`A130296(lt[1, A143544(n+1)])`
-/

namespace A178623.P14236001565579889142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A178623.P14236001565579889142

noncomputable section

/-- A178623: Triangle T(n,m) read by rows: T(n,0)= prime(n); T(n,m)=1 if m>=1.

Offset 0, canonical program `A178623.P14236001565579889142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A178623 (n : ℕ) : ℤ :=
  A178623.P14236001565579889142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A178623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180188.P17065688349002946383

`A002024(n+1)*A098825(A061579(n))`
-/

namespace A180188.P17065688349002946383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A098825 (A061579 n).toNat

end

end A180188.P17065688349002946383

noncomputable section

/-- A180188: Triangle read by rows: T(n,k) is the number of permutations of [n] with k circular successions (0<=k<=n-1). A circular succession in a permutation p of [n] is either a pair p(i), p(i+1), where p(i+1)=p(i)+1 or the pair p(n), p(1) if p(1)=p(n)+1.

Offset 1, canonical program `A180188.P17065688349002946383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A180188 (n : ℕ) : ℤ :=
  A180188.P17065688349002946383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A180188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180948.P43109043055312899

`A065091(lt[∑{e}[A127334(n+1), #], 2])`
-/

namespace A180948.P43109043055312899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A180948.P43109043055312899

noncomputable section

/-- A180948: Smallest of seven (7) consecutive primes whose sum is a prime.

Offset 1, canonical program `A180948.P43109043055312899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1794 terms. -/
def A180948 (n : ℕ) : ℤ :=
  A180948.P43109043055312899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1794 terms. -/
def A180948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181116.P15134325695680604966

`∏{e}[A085383(n+1), #-1]`
-/

namespace A181116.P15134325695680604966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A181116.P15134325695680604966

noncomputable section

/-- A181116: Triangle T(n,k) read by rows. T(n,k) = A046643(A126988).

Offset 1, canonical program `A181116.P15134325695680604966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181116 (n : ℕ) : ℤ :=
  A181116.P15134325695680604966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182042.P8039975807503843964

`A013610(n)-A073424(n)`
-/

namespace A182042.P8039975807503843964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n - A073424 n

end

end A182042.P8039975807503843964

noncomputable section

/-- A182042: Triangle T(n,k), read by rows, given by (0, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (3, 0, -3/2, 3/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A182042.P8039975807503843964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182042 (n : ℕ) : ℤ :=
  A182042.P8039975807503843964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182059.P2759527818996415774

`A059268(n)*A206735(n)`
-/

namespace A182059.P2759527818996415774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A206735 n

end

end A182059.P2759527818996415774

noncomputable section

/-- A182059: Triangle, read by rows, given by (0, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (2, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A182059.P2759527818996415774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182059 (n : ℕ) : ℤ :=
  A182059.P2759527818996415774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182411.P8082731584072737721

`A142243(A061579(n))/A007318(n)`
-/

namespace A182411.P8082731584072737721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142243 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A182411.P8082731584072737721

noncomputable section

/-- A182411: Triangle T(n,k) = (2*k)!*(2*n)!/(k!*n!*(k+n)!) with k=0..n, read by rows.

Offset 0, canonical program `A182411.P8082731584072737721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8385 terms. -/
def A182411 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182411.P8082731584072737721.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8385 terms. -/
def A182411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183154.P7623041928284597540

`A005803(A130296(n+1))+A007318(n)`
-/

namespace A183154.P7623041928284597540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (A130296 (n + 1)).toNat + A007318 n

end

end A183154.P7623041928284597540

noncomputable section

/-- A183154: T(n,k) is the number of order-preserving partial isometries (of an n-chain) of fixed k (fix of alpha is the number of fixed points of alpha).

Offset 0, canonical program `A183154.P7623041928284597540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183154 (n : ℕ) : ℤ :=
  A183154.P7623041928284597540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183190.P10026488769609202842

`Δ[A089633(n)]*A071919(n)`
-/

namespace A183190.P10026488769609202842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A071919 n

end

end A183190.P10026488769609202842

noncomputable section

/-- A183190: Triangle T(n,k), read by rows, given by (1, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A183190.P10026488769609202842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183190 (n : ℕ) : ℤ :=
  A183190.P10026488769609202842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183986.P9474763813998468520

`A271709(n)+A209727(n+1)`
-/

namespace A183986.P9474763813998468520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A209727 (n + 1)

end

end A183986.P9474763813998468520

noncomputable section

/-- A183986: T(n,k) = 1/4 the number of (n+1) X (k+1) binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183986.P9474763813998468520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 683 terms. -/
def A183986 (n : ℕ) : ℤ :=
  A183986.P9474763813998468520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 683 terms. -/
def A183986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184881.P26239738405913723

`A068555(A055998(n))/A280560(n)`
-/

namespace A184881.P26239738405913723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A055998 n).toNat : ℚ) / (A280560 n : ℚ)

end

end A184881.P26239738405913723

noncomputable section

/-- A184881: a(n) = A184879(2*n, n) - A184879(2*n, n+1) where A184879(n, k) = Hypergeometric2F1(-2*k, 2*k-2*n, 1, -1) if 0<=k<=n.

Offset 0, canonical program `A184881.P26239738405913723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A184881 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A184881.P26239738405913723.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A184881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185874.P1314293558067631427

`A082652(A014132(n+1))%(n+2)²/2*val(A043569(n+1), 2)`
-/

namespace A185874.P1314293558067631427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A082652 (A014132 (n + 1)).toNat) ((n + 2) ^ 2 : ℤ) : ℚ) / 2 * (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2 : ℚ)

end

end A185874.P1314293558067631427

noncomputable section

/-- A185874: Second accumulation array of A051340, by antidiagonals.

Offset 1, canonical program `A185874.P1314293558067631427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185874 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185874.P1314293558067631427.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187954.P4208797145457920853

`A127093(A185868(n+1))`
-/

namespace A187954.P4208797145457920853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A185868 (n + 1)).toNat

end

end A187954.P4208797145457920853

noncomputable section

/-- A187954: Triangle by rows, divisors of odd integers.

Offset 0, canonical program `A187954.P4208797145457920853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A187954 (n : ℕ) : ℤ :=
  A187954.P4208797145457920853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A187954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188077.P8196535750238244012

`∩[A188080(n+1)-1, A188080(n+1)]`
-/

namespace A188077.P8196535750238244012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188077.P8196535750238244012

noncomputable section

/-- A188077: Positions of 0 in A188076; complement of A188078.

Offset 1, canonical program `A188077.P8196535750238244012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A188077 (n : ℕ) : ℤ :=
  (A188077.P8196535750238244012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A188077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188399.P12920571066288009354

`A188322(n+4)-5`
-/

namespace A188399.P12920571066288009354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 4) - 5

end

end A188399.P12920571066288009354

noncomputable section

/-- A188399: Positions of 0 in A188398; complement of A188265.

Offset 1, canonical program `A188399.P12920571066288009354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A188399 (n : ℕ) : ℤ :=
  A188399.P12920571066288009354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A188399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188440.P17541006003015622244

`A013609((A196199(n)+n)/2)`
-/

namespace A188440.P17541006003015622244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.roundAway ((A196199 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A188440.P17541006003015622244

noncomputable section

/-- A188440: Triangle T(n,k) read by rows: number of size-k antisymmetric subsets of {1,2,...,n}.

Offset 0, canonical program `A188440.P17541006003015622244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188440 (n : ℕ) : ℤ :=
  A188440.P17541006003015622244.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191309.P18243075712559101294

`A000034(n)*A139262(A004526(n))`
-/

namespace A191309.P18243075712559101294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A139262 (A004526 n).toNat

end

end A191309.P18243075712559101294

noncomputable section

/-- A191309: Number of peaks at height >= 2 in all dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191309.P18243075712559101294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191309 (n : ℕ) : ℤ :=
  A191309.P18243075712559101294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191910.P11685670682958930902

`A127093(n+1)+A023531(n)-1`
-/

namespace A191910.P11685670682958930902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + A023531 n - 1

end

end A191910.P11685670682958930902

noncomputable section

/-- A191910: Triangle read by rows: T(n,n)=n; T(n,k) = k-1 if k divides n and k < n, otherwise -1.

Offset 1, canonical program `A191910.P11685670682958930902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191910 (n : ℕ) : ℤ :=
  A191910.P11685670682958930902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193229.P10999994925577061172

`A001497(n)*A233543(n)`
-/

namespace A193229.P10999994925577061172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A233543 n

end

end A193229.P10999994925577061172

noncomputable section

/-- A193229: A double factorial triangle.

Offset 0, canonical program `A193229.P10999994925577061172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A193229 (n : ℕ) : ℤ :=
  A193229.P10999994925577061172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A193229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193770.P193125573540705451

`(A027465(n)+A013612(n))/A028326(n)`
-/

namespace A193770.P193125573540705451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n + A013612 n : ℚ) / (A028326 n : ℚ)

end

end A193770.P193125573540705451

noncomputable section

/-- A193770: Table T(m,n) = (5^m + 3^n)/2, m,n = 0,1,2,..., read by antidiagonals.

Offset 0, canonical program `A193770.P193125573540705451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8621 terms. -/
def A193770 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A193770.P193125573540705451.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8621 terms. -/
def A193770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193829.P10500776787776175054

`A208460(n+2)%A208460(n+3)`
-/

namespace A193829.P10500776787776175054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208460 (n + 2)) (A208460 (n + 3))

end

end A193829.P10500776787776175054

noncomputable section

/-- A193829: Irregular triangle read by rows in which row n lists the differences between consecutive divisors of n.

Offset 2, canonical program `A193829.P10500776787776175054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193829 (n : ℕ) : ℤ :=
  A193829.P10500776787776175054.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193844.P14945394421984348747

`A276985(n)-a(n-1)` with `a(0)=1`
-/

namespace A193844.P14945394421984348747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276985 n - a (n - 1)

end

end A193844.P14945394421984348747

noncomputable section

/-- A193844: Triangular array: the fission of ((x+1)^n) by ((x+1)^n); i.e., the self-fission of Pascal's triangle.

Offset 0, canonical program `A193844.P14945394421984348747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193844 (n : ℕ) : ℤ :=
  A193844.P14945394421984348747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198792.P8210630844402988045

`Δ[A089633(n)]*A097805(n)`
-/

namespace A198792.P8210630844402988045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097805 n

end

end A198792.P8210630844402988045

noncomputable section

/-- A198792: Triangle T(n,k), read by rows, given by (0,1,1,0,0,0,0,0,0,0,...) DELTA (1,0,0,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A198792.P8210630844402988045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198792 (n : ℕ) : ℤ :=
  A198792.P8210630844402988045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198793.P9157725411081335184

`A071919(n)*A232089(n)`
-/

namespace A198793.P9157725411081335184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A232089 n

end

end A198793.P9157725411081335184

noncomputable section

/-- A198793: Triangle T(n,k), read by rows, given by (1,0,0,1,0,0,0,0,0,0,0,...) DELTA (0,1,1,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A198793.P9157725411081335184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198793 (n : ℕ) : ℤ :=
  A198793.P9157725411081335184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202750.P11917823895154512547

`A008459(n)²`
-/

namespace A202750.P11917823895154512547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n ^ 2

end

end A202750.P11917823895154512547

noncomputable section

/-- A202750: Triangle T(n,k) = binomial(n,k)^4 read by rows, 0<=k<=n.

Offset 0, canonical program `A202750.P11917823895154512547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3869 terms. -/
def A202750 (n : ℕ) : ℤ :=
  A202750.P11917823895154512547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3869 terms. -/
def A202750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204201.P4812556110496593180

`2*A054143(n)-A008949(n)`
-/

namespace A204201.P4812556110496593180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - A008949 n

end

end A204201.P4812556110496593180

noncomputable section

/-- A204201: Triangle based on (0,1/3,1) averaging array.

Offset 1, canonical program `A204201.P4812556110496593180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204201 (n : ℕ) : ℤ :=
  A204201.P4812556110496593180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204202.P1024099258740543106

`A054143(n)+A008949(n)`
-/

namespace A204202.P1024099258740543106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + A008949 n

end

end A204202.P1024099258740543106

noncomputable section

/-- A204202: Triangle based on (0,2/3,1) averaging array.

Offset 1, canonical program `A204202.P1024099258740543106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204202 (n : ℕ) : ℤ :=
  A204202.P1024099258740543106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204980.P133552277968696332

`A001281(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P133552277968696332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P133552277968696332

noncomputable section

/-- A204980: Ordered differences of distinct averages of two consecutive odd primes.

Offset 1, canonical program `A204980.P133552277968696332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204980 (n : ℕ) : ℤ :=
  A204980.P133552277968696332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205547.P16237328813757143675

`A002260(A205559(n+1))`
-/

namespace A205547.P16237328813757143675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205559 (n + 1)).toNat

end

end A205547.P16237328813757143675

noncomputable section

/-- A205547: The number j such that 3 divides prime(k)-prime(j), where k(n)=A205560(n).

Offset 1, canonical program `A205547.P16237328813757143675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205547 (n : ℕ) : ℤ :=
  A205547.P16237328813757143675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208324.P5562649891701857175

`A013609(n)+A193862(n)-A010054(n)`
-/

namespace A208324.P5562649891701857175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (A193862 n - A010054 n)

end

end A208324.P5562649891701857175

noncomputable section

/-- A208324: Triangle T(n,k), read by rows, given by (2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (4, -2, 0, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A208324.P5562649891701857175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208324 (n : ℕ) : ℤ :=
  A208324.P5562649891701857175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208510.P9937072583222605301

`A029655(A083920(n))`
-/

namespace A208510.P9937072583222605301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (A083920 n).toNat

end

end A208510.P9937072583222605301

noncomputable section

/-- A208510: Triangle of coefficients of polynomials u(n,x) jointly generated with A029653; see the Formula section.

Offset 1, canonical program `A208510.P9937072583222605301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208510 (n : ℕ) : ℤ :=
  A208510.P9937072583222605301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208519.P8400931654513594547

`A094435(n+1)+A094437(n)-A094436(n)`
-/

namespace A208519.P8400931654513594547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (n + 1) + (A094437 n - A094436 n)

end

end A208519.P8400931654513594547

noncomputable section

/-- A208519: Triangle of coefficients of polynomials v(n,x) jointly generated with A208518; see the Formula section.

Offset 1, canonical program `A208519.P8400931654513594547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208519 (n : ℕ) : ℤ :=
  A208519.P8400931654513594547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208521.P14308452571978604591

`A060546(A002262(n))*A133084(n+1)`
-/

namespace A208521.P14308452571978604591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A002262 n).toNat * A133084 (n + 1)

end

end A208521.P14308452571978604591

noncomputable section

/-- A208521: Triangle of coefficients of polynomials v(n,x) jointly generated with A208520; see the Formula section.

Offset 1, canonical program `A208521.P14308452571978604591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208521 (n : ℕ) : ℤ :=
  A208521.P14308452571978604591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208891.P13459728261934615050

`floor(sqrt(A071919(n)²+1))`
-/

namespace A208891.P13459728261934615050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A071919 n ^ 2 + 1)

end

end A208891.P13459728261934615050

noncomputable section

/-- A208891: Pascal's triangle matrix augmented with a right border of 1's.

Offset 0, canonical program `A208891.P13459728261934615050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208891 (n : ℕ) : ℤ :=
  A208891.P13459728261934615050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208906.P14491951014712469072

`A016116(A002262(n))*A133084(n+1)`
-/

namespace A208906.P14491951014712469072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n).toNat * A133084 (n + 1)

end

end A208906.P14491951014712469072

noncomputable section

/-- A208906: Triangle of coefficients of polynomials v(n,x) jointly generated with A208905; see the Formula section.

Offset 1, canonical program `A208906.P14491951014712469072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208906 (n : ℕ) : ℤ :=
  A208906.P14491951014712469072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208914.P18164605293524257971

`A059268(n)*A133084(n+1)`
-/

namespace A208914.P18164605293524257971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A133084 (n + 1)

end

end A208914.P18164605293524257971

noncomputable section

/-- A208914: Triangle of coefficients of polynomials v(n,x) jointly generated with A208913; see the Formula section.

Offset 1, canonical program `A208914.P18164605293524257971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208914 (n : ℕ) : ℤ :=
  A208914.P18164605293524257971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208920.P3108856857928057317

`A208766(n+1)+A208766(n+2)-A208765(n+2)`
-/

namespace A208920.P3108856857928057317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208766 (n + 1) + (A208766 (n + 2) - A208765 (n + 2))

end

end A208920.P3108856857928057317

noncomputable section

/-- A208920: Triangle of coefficients of polynomials v(n,x) jointly generated with A208919; see the Formula section.

Offset 1, canonical program `A208920.P3108856857928057317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A208920 (n : ℕ) : ℤ :=
  A208920.P3108856857928057317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A208920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210204.P16826536876454018621

`2*A038207(n)-A010054(n)`
-/

namespace A210204.P16826536876454018621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A010054 n

end

end A210204.P16826536876454018621

noncomputable section

/-- A210204: Triangle of coefficients of polynomials v(n,x) jointly generated with A210203; see the Formula section.

Offset 1, canonical program `A210204.P16826536876454018621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210204 (n : ℕ) : ℤ :=
  A210204.P16826536876454018621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214978.P15055894369161094190

`A028412(A061579(n))`
-/

namespace A214978.P15055894369161094190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (A061579 n).toNat

end

end A214978.P15055894369161094190

noncomputable section

/-- A214978: Array T(m,n) = Fibonacci(m*n)/Fibonacci(m), by antidiagonals; transpose of A028412.

Offset 1, canonical program `A214978.P15055894369161094190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A214978 (n : ℕ) : ℤ :=
  A214978.P15055894369161094190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A214978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215534.P11719715118446938532

`A130595(n)*A177885(A025581(n))`
-/

namespace A215534.P11719715118446938532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A177885 (A025581 n).toNat

end

end A215534.P11719715118446938532

noncomputable section

/-- A215534: Matrix inverse of triangle A088956.

Offset 0, canonical program `A215534.P11719715118446938532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A215534 (n : ℕ) : ℤ :=
  A215534.P11719715118446938532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A215534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216973.P15082548232438197860

`A134400(n)-a(n-1)` with `a(0)=0`
-/

namespace A216973.P15082548232438197860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A134400 n - a (n - 1)

end

end A216973.P15082548232438197860

noncomputable section

/-- A216973: Exponential Riordan array [x*exp(x),x].

Offset 0, canonical program `A216973.P15082548232438197860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216973 (n : ℕ) : ℤ :=
  A216973.P15082548232438197860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219206.P10901169306540035016

`A007318(n)*A102480(n)`
-/

namespace A219206.P10901169306540035016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A102480 n

end

end A219206.P10901169306540035016

noncomputable section

/-- A219206: Triangle, read by rows, where T(n,k) = binomial(n,k)^k for n>=0, k=0..n.

Offset 0, canonical program `A219206.P10901169306540035016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A219206 (n : ℕ) : ℤ :=
  A219206.P10901169306540035016.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A219206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219207.P12490393207679744017

`A008459(n)*A102480(n)`
-/

namespace A219207.P12490393207679744017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A102480 n

end

end A219207.P12490393207679744017

noncomputable section

/-- A219207: Triangle, read by rows, where T(n,k) = binomial(n,k)^(k+1) for n>=0, k=0..n.

Offset 0, canonical program `A219207.P12490393207679744017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A219207 (n : ℕ) : ℤ :=
  A219207.P12490393207679744017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A219207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221881.P17320403403418010194

`2*A008949(n)-1`
-/

namespace A221881.P17320403403418010194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008949 n - 1

end

end A221881.P17320403403418010194

noncomputable section

/-- A221881: Number of order-preserving or order-reversing full contraction mappings (of an n-chain) with (right) waist exactly k.

Offset 1, canonical program `A221881.P17320403403418010194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221881 (n : ℕ) : ℤ :=
  A221881.P17320403403418010194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222403.P3020155544965014607

`A194121(n)-A028327(n)`
-/

namespace A222403.P3020155544965014607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - A028327 n

end

end A222403.P3020155544965014607

noncomputable section

/-- A222403: Triangle read by rows: left and right edges are A000217, interior entries are filled in using the Pascal triangle rule.

Offset 0, canonical program `A222403.P3020155544965014607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222403 (n : ℕ) : ℤ :=
  A222403.P3020155544965014607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226636.P1432254579412042459

`∪[A023741(n+1), A038465(n+1)]`
-/

namespace A226636.P1432254579412042459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A226636.P1432254579412042459

noncomputable section

/-- A226636: Numbers whose base-3 sum of digits is 3.

Offset 1, canonical program `A226636.P1432254579412042459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226636 (n : ℕ) : ℤ :=
  (A226636.P1432254579412042459.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227064.P15989366321493760190

`A004139(A022886(n+1))`
-/

namespace A227064.P15989366321493760190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A022886 (n + 1)).toNat

end

end A227064.P15989366321493760190

noncomputable section

/-- A227064: Primes prime(k) such that the gap prime(k-1) - prime(k-2) equals the gap prime(k+2) - prime(k+1).

Offset 1, canonical program `A227064.P15989366321493760190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A227064 (n : ℕ) : ℤ :=
  A227064.P15989366321493760190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A227064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233440.P5706952503317721454

`A003056(n)*A134832(A061579(n))`
-/

namespace A233440.P5706952503317721454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A134832 (A061579 n).toNat

end

end A233440.P5706952503317721454

noncomputable section

/-- A233440: Triangle read by rows: T(n, k) = n*binomial(n, k)*A000757(k), 0 <= k <= n.

Offset 0, canonical program `A233440.P5706952503317721454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A233440 (n : ℕ) : ℤ :=
  A233440.P5706952503317721454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A233440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242849.P8755850415644154534

`gcd(A028326(n), A098355(n))`
-/

namespace A242849.P8755850415644154534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028326 n) (A098355 n)

end

end A242849.P8755850415644154534

noncomputable section

/-- A242849: Triangle read by rows: T(n,k) = A060828(n)/(A060828(k) * A060828(n-k)).

Offset 0, canonical program `A242849.P8755850415644154534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242849 (n : ℕ) : ℤ :=
  (A242849.P8755850415644154534.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245086.P7399087689482312485

`A056594(n)*A063007(A080476(n+1))`
-/

namespace A245086.P7399087689482312485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A063007 (A080476 (n + 1)).toNat

end

end A245086.P7399087689482312485

noncomputable section

/-- A245086: Central values of the n-th discrete Chebyshev polynomials of order 2n.

Offset 0, canonical program `A245086.P7399087689482312485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A245086 (n : ℕ) : ℤ :=
  A245086.P7399087689482312485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A245086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245212.P13496061215896948389

`A038040(n+1)-A245211(n+1)`
-/

namespace A245212.P13496061215896948389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A245211 (n + 1)

end

end A245212.P13496061215896948389

noncomputable section

/-- A245212: a(n) = n * tau(n) - Sum_{(d

Offset 1, canonical program `A245212.P13496061215896948389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A245211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245212 (n : ℕ) : ℤ :=
  A245212.P13496061215896948389.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A245211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249133.P6513466101138431158

`A249095(n)%2`
-/

namespace A249133.P6513466101138431158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249095 n) 2

end

end A249133.P6513466101138431158

noncomputable section

/-- A249133: Triangle read by rows: interleaving successive pairs of rows of Sierpiński's triangle.

Offset 0, canonical program `A249133.P6513466101138431158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249133 (n : ℕ) : ℤ :=
  A249133.P6513466101138431158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249307.P11332962648986991517

`A000079(n-floor(sqrt(n))²)*A249095(n)`
-/

namespace A249307.P11332962648986991517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n - Nat.sqrt n ^ 2) * A249095 n

end

end A249307.P11332962648986991517

noncomputable section

/-- A249307: Triangle read by rows: A249095(n,k) * 2^k, k = 0 .. 2*n+1.

Offset 0, canonical program `A249307.P11332962648986991517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249307 (n : ℕ) : ℤ :=
  A249307.P11332962648986991517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254105.P16731552791873516864

`A254107(A038722(n+1))%A017186(n)`
-/

namespace A254105.P16731552791873516864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254107 (A038722 (n + 1)).toNat) (A017186 n)

end

end A254105.P16731552791873516864

noncomputable section

/-- A254105: Dispersion of A055938; starting from its complementary sequence A005187 as the first column of square array A(row,col), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A254105.P16731552791873516864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254105 (n : ℕ) : ℤ :=
  A254105.P16731552791873516864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255120.P17865758449158190437

`n-A255062(A255121(n))`
-/

namespace A255120.P17865758449158190437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255062 (A255121 n).toNat

end

end A255120.P17865758449158190437

noncomputable section

/-- A255120: After the first zero, numbers from 0 to A255071(n)-1 followed by numbers from 0 to A255071(n+1)-1, etc.

Offset 0, canonical program `A255120.P17865758449158190437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255120 (n : ℕ) : ℤ :=
  A255120.P17865758449158190437.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255120.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256490.P2374671944261723846

`A257512(n+2)-A257512(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256490.P2374671944261723846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257512 (n + 2) - A257512 (n + 1)

end

end A256490.P2374671944261723846

noncomputable section

/-- A256490: First differences of A257512: a(n) = A257512(n+1) - A257512(n).

Offset 1, canonical program `A256490.P2374671944261723846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256490 (n : ℕ) : ℤ :=
  A256490.P2374671944261723846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257499.P1186898740780545041

`2*A258415(n+1)-1`
-/

namespace A257499.P1186898740780545041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258415 (n + 1) - 1

end

end A257499.P1186898740780545041

noncomputable section

/-- A257499: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (1 + 2^n*(6*k-3+2*(-1)^n))/3, n,k >= 1.

Offset 1, canonical program `A257499.P1186898740780545041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257499 (n : ℕ) : ℤ :=
  A257499.P1186898740780545041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258758.P2809109636177300966

`A007318(n)*A100100(A057944(n))`
-/

namespace A258758.P2809109636177300966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A100100 (A057944 n).toNat

end

end A258758.P2809109636177300966

noncomputable section

/-- A258758: Triangle T(n,k) = C(n+k-1,k)*C(2*n-1,n-k).

Offset 0, canonical program `A258758.P2809109636177300966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A258758 (n : ℕ) : ℤ :=
  A258758.P2809109636177300966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A258758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260295.P3101623688400467269

`A263021(A016789(n))/4`
-/

namespace A260295.P3101623688400467269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263021 (A016789 n).toNat : ℚ) / 4

end

end A260295.P3101623688400467269

noncomputable section

/-- A260295: Expansion of f(-x^2)^3 * f(-x^6)^3 / f(-x)^2 in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A260295.P3101623688400467269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A260295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260295.P3101623688400467269.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A260295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263828.P4137114202678511077

`∑{d}[n+1, #*A069733((n+1)/#)]`
-/

namespace A263828.P4137114202678511077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A069733 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P4137114202678511077

noncomputable section

/-- A263828: The number c_{P c pi_1(B_1)}(n) of the first amphicosm n-coverings over the first amphicosm.

Offset 1, canonical program `A263828.P4137114202678511077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263828 (n : ℕ) : ℤ :=
  A263828.P4137114202678511077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265609.P16748235149498157221

`A114219(n)!*A071919(n)`
-/

namespace A265609.P16748235149498157221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A114219 n).toNat : ℤ) * A071919 n

end

end A265609.P16748235149498157221

noncomputable section

/-- A265609: Array read by ascending antidiagonals: A(n,k) the rising factorial, also known as Pochhammer symbol, for n >= 0 and k >= 0.

Offset 0, canonical program `A265609.P16748235149498157221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A265609 (n : ℕ) : ℤ :=
  A265609.P16748235149498157221.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A265609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268223.P12854693730269524273

`A178822(A007401(n+1))*A233543(n)`
-/

namespace A268223.P12854693730269524273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178822 (A007401 (n + 1)).toNat * A233543 n

end

end A268223.P12854693730269524273

noncomputable section

/-- A268223: Triangle read by rows: T(n,k) (n>=6, k=3..n-3) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,5,6,7,...,s,n} where s is the size of the largest proper open set in t.

Offset 6, canonical program `A268223.P12854693730269524273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268223 (n : ℕ) : ℤ :=
  A268223.P12854693730269524273.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270310.P10742443358392983411

`∪[A290450(n+1), A151800(A290450(n+1))]`
-/

namespace A270310.P10742443358392983411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A290450 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270310.P10742443358392983411

noncomputable section

/-- A270310: Primes ending with the same decimal digit as the previous or next prime.

Offset 1, canonical program `A270310.P10742443358392983411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A270310 (n : ℕ) : ℤ :=
  (A270310.P10742443358392983411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A270310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271703.P8618835330592467245

`A094587(n)*A097805(n)`
-/

namespace A271703.P8618835330592467245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A097805 n

end

end A271703.P8618835330592467245

noncomputable section

/-- A271703: Triangle read by rows: the unsigned Lah numbers T(n, k) = binomial(n-1, k-1)*n!/k! if n > 0 and k > 0, T(n, 0) = 0^n and otherwise 0, for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A271703.P8618835330592467245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A271703 (n : ℕ) : ℤ :=
  A271703.P8618835330592467245.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A271703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276418.P3941641458234612422

`A109767(n)/A094587(n)`
-/

namespace A276418.P3941641458234612422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109767 n : ℚ) / (A094587 n : ℚ)

end

end A276418.P3941641458234612422

noncomputable section

/-- A276418: Starting a random walk on Z at 0 triangle T(j,k) gives the number of paths of length 2*j returning to 0 exactly k times.

Offset 0, canonical program `A276418.P3941641458234612422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A276418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276418.P3941641458234612422.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A276418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277078.P923418389823604188

`A130595(∑[A198954(n)-1])+A130321(n)%2`
-/

namespace A277078.P923418389823604188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + Int.tmod (A130321 n) 2

end

end A277078.P923418389823604188

noncomputable section

/-- A277078: Triangular array similar to A255935 but with 0's and 2's swapped in the trailing diagonal. The columns alternate in signs.

Offset 0, canonical program `A277078.P923418389823604188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A277078 (n : ℕ) : ℤ :=
  A277078.P923418389823604188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A277078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277513.P97478074551810804

`A013609(eq[A035214(n), A132728(n)])`
-/

namespace A277513.P97478074551810804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277513.P97478074551810804

noncomputable section

/-- A277513: Irregular triangle read by rows: T(n,k) is the number of integers greater than 4 such that they have n trits and 2k+1 (k>=1) nonzero trits in their balanced ternary representation, with n>=3 and 1<=k<=(j-1)/2.

Offset 3, canonical program `A277513.P97478074551810804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A277513 (n : ℕ) : ℤ :=
  A277513.P97478074551810804.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A277513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281000.P384265330079404776

`A097610(A185869(n+1))`
-/

namespace A281000.P384265330079404776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 (A185869 (n + 1)).toNat

end

end A281000.P384265330079404776

noncomputable section

/-- A281000: Triangle read by rows: T(n,k) = binomial(2*n+1, 2*k+1)*binomial(2*n-2*k, n-k)/(n+1-k) for 0 <= k <= n.

Offset 0, canonical program `A281000.P384265330079404776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A281000 (n : ℕ) : ℤ :=
  A281000.P384265330079404776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A281000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281725.P2164127396884126570

`A000124(A279417(n+1))-A000124(A279416(n+1))`
-/

namespace A281725.P2164127396884126570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A279417 (n + 1)).toNat - A000124 (A279416 (n + 1)).toNat

end

end A281725.P2164127396884126570

noncomputable section

/-- A281725: Triangular array T(n,k) is the sum of elements in an n X k matrix that will be assigned the same value whether the integers from 1 to n*k are assigned to elements in row-major order or column-major order.

Offset 1, canonical program `A281725.P2164127396884126570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A281725 (n : ℕ) : ℤ :=
  A281725.P2164127396884126570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A281725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285116.P11562393058970987769

`or(A097805(n+1), A097805(n))`
-/

namespace A285116.P11562393058970987769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 (n + 1)) (A097805 n)

end

end A285116.P11562393058970987769

noncomputable section

/-- A285116: Triangle read by rows: T(0,n) = T(n,n) = 1; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) OR C(n-1,k), where C(n,k) is binomial coefficient (A007318) and OR is bitwise-OR (A003986).

Offset 0, canonical program `A285116.P11562393058970987769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285116 (n : ℕ) : ℤ :=
  A285116.P11562393058970987769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285800.P7588634103840983572

`eq[0, A340372(n+1)]+1`
-/

namespace A285800.P7588634103840983572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285800.P7588634103840983572

noncomputable section

/-- A285800: Numbers having more than one odd prime factor to an odd power in their prime factorization.

Offset 1, canonical program `A285800.P7588634103840983572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285800 (n : ℕ) : ℤ :=
  (A285800.P7588634103840983572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285801.P12013862398410093951

`eq[1, A340372(n+1)]+1`
-/

namespace A285801.P12013862398410093951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285801.P12013862398410093951

noncomputable section

/-- A285801: Numbers having at most one odd prime factor to an odd power in their prime factorization.

Offset 1, canonical program `A285801.P12013862398410093951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285801 (n : ℕ) : ℤ :=
  (A285801.P12013862398410093951.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286159.P12324638875471488672

`A286158(A038722(n+1))`
-/

namespace A286159.P12324638875471488672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (A038722 (n + 1)).toNat

end

end A286159.P12324638875471488672

noncomputable section

/-- A286159: Lower triangular region of array A286156, transposed.

Offset 1, canonical program `A286159.P12324638875471488672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286159 (n : ℕ) : ℤ :=
  A286159.P12324638875471488672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286519.P7676926827839113296

`A290660(n)+A280411(n)%A283351(n)`
-/

namespace A286519.P7676926827839113296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n + Int.tmod (A280411 n) (A283351 n)

end

end A286519.P7676926827839113296

noncomputable section

/-- A286519: Binary representation of the diagonal from the origin to the corner (or of the corner to the origin) of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 659", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286519.P7676926827839113296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286519 (n : ℕ) : ℤ :=
  A286519.P7676926827839113296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286771.P2105546020748147357

`lcm(A280411(n), A288699(n))`
-/

namespace A286771.P2105546020748147357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A280411 n) (A288699 n)

end

end A286771.P2105546020748147357

noncomputable section

/-- A286771: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286771.P2105546020748147357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286771 (n : ℕ) : ℤ :=
  (A286771.P2105546020748147357.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291632.P11985089398796829925

`n*A122832(A161680(n))`
-/

namespace A291632.P11985089398796829925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122832 (A161680 n).toNat

end

end A291632.P11985089398796829925

noncomputable section

/-- A291632: Column 1 of A122832.

Offset 0, canonical program `A291632.P11985089398796829925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A291632 (n : ℕ) : ℤ :=
  A291632.P11985089398796829925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A291632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298075.P4691434882581935082

`∩[A290450(n+1), A151800(A290450(n+1))]`
-/

namespace A298075.P4691434882581935082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A290450 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298075.P4691434882581935082

noncomputable section

/-- A298075: Primes p whose last digit is the same as that of both its predecessor prime and its successor prime.

Offset 1, canonical program `A298075.P4691434882581935082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A298075 (n : ℕ) : ℤ :=
  (A298075.P4691434882581935082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A298075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298485.P7573186523658269829

`A097805(n+1)+A080232(n)`
-/

namespace A298485.P7573186523658269829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A080232 n

end

end A298485.P7573186523658269829

noncomputable section

/-- A298485: Triangle read by rows; row 0 is 1; the n-th row for n>0 contains the coefficients in the expansion of (2-x)*(1+x)^(n-1).

Offset 0, canonical program `A298485.P7573186523658269829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298485 (n : ℕ) : ℤ :=
  A298485.P7573186523658269829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301280.P3515032847069832870

`round(A139262(n)/A179865(n+1))`
-/

namespace A301280.P3515032847069832870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139262 n : ℚ) / (A179865 (n + 1) : ℚ))

end

end A301280.P3515032847069832870

noncomputable section

/-- A301280: Nearest integer to variance of n-th row of Pascal's triangle.

Offset 0, canonical program `A301280.P3515032847069832870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A301280 (n : ℕ) : ℤ :=
  A301280.P3515032847069832870.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A301280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302170.P8300830872753223611

`p?[A126988(n+1)+A000007(n)]-A000007(n)`
-/

namespace A302170.P8300830872753223611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n

end

end A302170.P8300830872753223611

noncomputable section

/-- A302170: Irregular triangle T(n,k) read by rows: first row is 1, n-th row (n > 1) lists distinct prime factors of n in decreasing order.

Offset 1, canonical program `A302170.P8300830872753223611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A302170 (n : ℕ) : ℤ :=
  A302170.P8300830872753223611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A302170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303872.P15192294474027379389

`A013609(n)*A097807(n)`
-/

namespace A303872.P15192294474027379389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A097807 n

end

end A303872.P15192294474027379389

noncomputable section

/-- A303872: Triangle read by rows: T(0,0) = 1; T(n,k) = -T(n-1,k) + 2 T(n-1,k-1) for k = 0,1,...,n; T(n,k)=0 for n or k < 0.

Offset 0, canonical program `A303872.P15192294474027379389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303872 (n : ℕ) : ℤ :=
  A303872.P15192294474027379389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304571.P9163030136196335364

`A000007(A127368(n+1)+A051731(n+1))`
-/

namespace A304571.P9163030136196335364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127368 (n + 1) + A051731 (n + 1)).toNat

end

end A304571.P9163030136196335364

noncomputable section

/-- A304571: Triangle read by rows: T(n,k) = 1 if gcd(k,n) > 1 and n mod k != 0.

Offset 1, canonical program `A304571.P9163030136196335364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304571 (n : ℕ) : ℤ :=
  A304571.P9163030136196335364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306938.P8201564370674792042

`floor(sqrt(A322550(∑[n+2]+4)))`
-/

namespace A306938.P8201564370674792042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A322550 (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A306938.P8201564370674792042

noncomputable section

/-- A306938: If n is divisible by 3 then a(n) = n/3 otherwise a(n) = floor(n*sqrt(3)).

Offset 1, canonical program `A306938.P8201564370674792042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A306938 (n : ℕ) : ℤ :=
  A306938.P8201564370674792042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A306938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307662.P16149030003919297589

`A028310(A127093(n+1))`
-/

namespace A307662.P16149030003919297589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A127093 (n + 1)).toNat

end

end A307662.P16149030003919297589

noncomputable section

/-- A307662: Triangle T(i,j=1..i) read by rows which contain the naturally ordered divisors-or-ones of the row number i.

Offset 1, canonical program `A307662.P16149030003919297589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. -/
def A307662 (n : ℕ) : ℤ :=
  A307662.P16149030003919297589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. -/
def A307662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312143.P2878235992731397495

`A313682(n)-A253262(n)`
-/

namespace A312143.P2878235992731397495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n - A253262 n

end

end A312143.P2878235992731397495

noncomputable section

/-- A312143: Coordination sequence Gal.5.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312143.P2878235992731397495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A312143 (n : ℕ) : ℤ :=
  A312143.P2878235992731397495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A312143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312684.P12134066676930196282

`abs(A008592(n)-A315630(n))`
-/

namespace A312684.P12134066676930196282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315630 n|

end

end A312684.P12134066676930196282

noncomputable section

/-- A312684: Coordination sequence Gal.6.252.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312684.P12134066676930196282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A312684 (n : ℕ) : ℤ :=
  A312684.P12134066676930196282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A312684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313284.P7231035941228258190

`A314203(n)-A253262(n)`
-/

namespace A313284.P7231035941228258190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314203 n - A253262 n

end

end A313284.P7231035941228258190

noncomputable section

/-- A313284: Coordination sequence Gal.5.88.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313284.P7231035941228258190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313284 (n : ℕ) : ℤ :=
  A313284.P7231035941228258190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313715.P10014129678615076953

`A313703(n)+A313736(n)-A313721(n)`
-/

namespace A313715.P10014129678615076953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + (A313736 n - A313721 n)

end

end A313715.P10014129678615076953

noncomputable section

/-- A313715: Coordination sequence Gal.6.363.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313715.P10014129678615076953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A313715 (n : ℕ) : ℤ :=
  A313715.P10014129678615076953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A313715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313898.P2205925592400124822

`A315518(n)-A330025(n)`
-/

namespace A313898.P2205925592400124822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315518 n - A330025 n

end

end A313898.P2205925592400124822

noncomputable section

/-- A313898: Coordination sequence Gal.5.291.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313898.P2205925592400124822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A313898 (n : ℕ) : ℤ :=
  A313898.P2205925592400124822.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A313898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314740.P9773231279088824093

`A312979(n)-A092202(n+2)`
-/

namespace A314740.P9773231279088824093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n - A092202 (n + 2)

end

end A314740.P9773231279088824093

noncomputable section

/-- A314740: Coordination sequence Gal.5.116.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314740.P9773231279088824093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314740 (n : ℕ) : ℤ :=
  A314740.P9773231279088824093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314849.P12102171247342340479

`A314720(n)+Δ[A011864(n)]`
-/

namespace A314849.P12102171247342340479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314720 n + (f1 (n + 1) - f1 n)

end

end A314849.P12102171247342340479

noncomputable section

/-- A314849: Coordination sequence Gal.6.246.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314849.P12102171247342340479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A314849 (n : ℕ) : ℤ :=
  A314849.P12102171247342340479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A314849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315203.P6226893025600850173

`abs(A008592(n)-A310504(n))`
-/

namespace A315203.P6226893025600850173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310504 n|

end

end A315203.P6226893025600850173

noncomputable section

/-- A315203: Coordination sequence Gal.6.321.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315203.P6226893025600850173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A315203 (n : ℕ) : ℤ :=
  A315203.P6226893025600850173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A315203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315466.P6755861175603104134

`abs(A008592(n)-A313118(n))`
-/

namespace A315466.P6755861175603104134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313118 n|

end

end A315466.P6755861175603104134

noncomputable section

/-- A315466: Coordination sequence Gal.6.158.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315466.P6755861175603104134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315466 (n : ℕ) : ℤ :=
  A315466.P6755861175603104134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315673.P9942185892903368555

`abs(A008592(n)-A312194(n))`
-/

namespace A315673.P9942185892903368555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312194 n|

end

end A315673.P9942185892903368555

noncomputable section

/-- A315673: Coordination sequence Gal.6.347.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315673.P9942185892903368555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A315673 (n : ℕ) : ℤ :=
  A315673.P9942185892903368555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A315673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319861.P4565149569775814978

`A007318(n)/A082907(n)`
-/

namespace A319861.P4565149569775814978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A082907 n : ℚ)

end

end A319861.P4565149569775814978

noncomputable section

/-- A319861: Triangle read by rows, 0 <= k <= n: T(n,k) is the numerator of the k-th Bernstein basis polynomial of degree n evaluated at the interval midpoint t = 1/2; denominator is A319862.

Offset 0, canonical program `A319861.P4565149569775814978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319861.P4565149569775814978.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319862.P1169711650458814628

`A137688(n)/A082907(n)`
-/

namespace A319862.P1169711650458814628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) / (A082907 n : ℚ)

end

end A319862.P1169711650458814628

noncomputable section

/-- A319862: Triangle read by rows, 0 <= k <= n: T(n,k) is the denominator of the k-th Bernstein basis polynomial of degree n evaluated at the interval midpoint t = 1/2; numerator is A319861.

Offset 0, canonical program `A319862.P1169711650458814628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319862.P1169711650458814628.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320824.P6364300311971763929

`A006480(A003056(n))*A181543(n)`
-/

namespace A320824.P6364300311971763929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 (A003056 n).toNat * A181543 n

end

end A320824.P6364300311971763929

noncomputable section

/-- A320824: T(n, k) = (m*n)!/(k!*(n-k)!)^m with m = 3; triangle read by rows, 0 <= k <= n.

Offset 0, canonical program `A320824.P6364300311971763929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A320824 (n : ℕ) : ℤ :=
  A320824.P6364300311971763929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A320824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321601.P8978637378401901694

`A014473(n)+∑[A130595(A061579(n))]`
-/

namespace A321601.P8978637378401901694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321601.P8978637378401901694

noncomputable section

/-- A321601: G.f.: A(x,y) = Sum_{n=-oo...+oo} (x^n + y)^n = Sum_{n>=0} Sum_{k>=0} T(n,k) * x^(n^2 + n*k) * y^k, written here as a rectangle of coefficients T(n,k) read by antidiagonals.

Offset 0, canonical program `A321601.P8978637378401901694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A321601 (n : ℕ) : ℤ :=
  A321601.P8978637378401901694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A321601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327223.P9849619397842507375

`lt[n*A327222(n), n]`
-/

namespace A327223.P9849619397842507375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327222 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327223.P9849619397842507375

noncomputable section

/-- A327223: Positions of 0's in {A327222(k) : n > 0}.

Offset 1, canonical program `A327223.P9849619397842507375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327223 (n : ℕ) : ℤ :=
  (A327223.P9849619397842507375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330559.P10771393297654737098

`∑[A080378(n+1)-1]`
-/

namespace A330559.P10771393297654737098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080378 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330559.P10771393297654737098

noncomputable section

/-- A330559: a(n) = (number of primes p <= prime(n) with Delta(p) == 2 (mod 4)) - (number of primes p <= prime(n) with Delta(p) == 0 (mod 4)), where Delta(p) = nextprime(p) - p.

Offset 1, canonical program `A330559.P10771393297654737098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330559 (n : ℕ) : ℤ :=
  A330559.P10771393297654737098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331430.P3556009182865818442

`-(A033999(A002262(n))*A063007(n))`
-/

namespace A331430.P3556009182865818442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (A002262 n).toNat * A063007 n)

end

end A331430.P3556009182865818442

noncomputable section

/-- A331430: Triangle read by rows: T(n, k) = (-1)^(k+1)*binomial(n,k)*binomial(n+k,k) (n >= k >= 0).

Offset 0, canonical program `A331430.P3556009182865818442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A331430 (n : ℕ) : ℤ :=
  A331430.P3556009182865818442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A331430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333357.P13297053389099279185

`comp[A028412(n)*A057427(n)]`
-/

namespace A333357.P13297053389099279185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n * A057427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333357.P13297053389099279185

noncomputable section

/-- A333357: Integers that cannot be expressed as the ratio of 2 Fibonacci numbers.

Offset 1, canonical program `A333357.P13297053389099279185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333357 (n : ℕ) : ℤ :=
  (A333357.P13297053389099279185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334823.P8236848252117491370

`A001497(n)*A056594(A002262(n))`
-/

namespace A334823.P8236848252117491370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A056594 (A002262 n).toNat

end

end A334823.P8236848252117491370

noncomputable section

/-- A334823: Triangle, read by rows, of Lambert's denominator polynomials related to convergents of tan(x).

Offset 0, canonical program `A334823.P8236848252117491370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A334823 (n : ℕ) : ℤ :=
  A334823.P8236848252117491370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A334823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335340.P11147850247702893830

`2*A103371(n)`
-/

namespace A335340.P11147850247702893830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103371 n

end

end A335340.P11147850247702893830

noncomputable section

/-- A335340: North-East paths from (0,0) to (n,n) with k cyclic descents.

Offset 1, canonical program `A335340.P11147850247702893830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335340 (n : ℕ) : ℤ :=
  A335340.P11147850247702893830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335431.P1130457591279741781

`∩[A054784(n+1), A175332(n+1)]`
-/

namespace A335431.P1130457591279741781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P1130457591279741781

noncomputable section

/-- A335431: Numbers of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0.

Offset 1, canonical program `A335431.P1130457591279741781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A335431 (n : ℕ) : ℤ :=
  (A335431.P1130457591279741781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A335431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337615.P1242488017580297949

`A000166(A025581(n))*A098825(n)`
-/

namespace A337615.P1242488017580297949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A025581 n).toNat * A098825 n

end

end A337615.P1242488017580297949

noncomputable section

/-- A337615: T(n, k) = binomial(n, k)*sf(n-k)*sf(k) where sf is the subfactorial (A000166). Triangle read by rows, for 0 <= k <= n.

Offset 0, canonical program `A337615.P1242488017580297949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A337615 (n : ℕ) : ℤ :=
  A337615.P1242488017580297949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A337615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345221.P15261552467884618322

`A000005(n+1)-A065704(n+1)`
-/

namespace A345221.P15261552467884618322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A065704 (n + 1)

end

end A345221.P15261552467884618322

noncomputable section

/-- A345221: Number of divisors of n with an even sum of divisors.

Offset 1, canonical program `A345221.P15261552467884618322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A065704, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345221 (n : ℕ) : ℤ :=
  A345221.P15261552467884618322.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A065704, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346619.P9922626625092338987

`A003982(A082907(n))`
-/

namespace A346619.P9922626625092338987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A082907 n).toNat

end

end A346619.P9922626625092338987

noncomputable section

/-- A346619: Triangle read by rows: T(n,k) = 1 iff 4 divides binomial(n,k) but 8 does not (0 <= k <= n).

Offset 0, canonical program `A346619.P9922626625092338987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346619 (n : ℕ) : ℤ :=
  A346619.P9922626625092338987.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354981.P5770451458096678403

`and(n, 1-A354108(n+1))`
-/

namespace A354981.P5770451458096678403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A354108 (n + 1))

end

end A354981.P5770451458096678403

noncomputable section

/-- A354981: a(n) = 1 if n = 2 * p^k, with p an odd prime and k >= 1, otherwise 0.

Offset 1, canonical program `A354981.P5770451458096678403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354981 (n : ℕ) : ℤ :=
  A354981.P5770451458096678403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357013.P4431206989666201964

`A094527(n)*A098361(n)`
-/

namespace A357013.P4431206989666201964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A098361 n

end

end A357013.P4431206989666201964

noncomputable section

/-- A357013: Triangle read by rows. T(n, k) = ((2*n)! * k!) / (n + k)!.

Offset 0, canonical program `A357013.P4431206989666201964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A357013 (n : ℕ) : ℤ :=
  A357013.P4431206989666201964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A357013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360769.P2553119699871238566

`filter[A053850(n+1), A354108(#)]`
-/

namespace A360769.P2553119699871238566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A360769.P2553119699871238566

noncomputable section

/-- A360769: Odd numbers that are neither prime powers nor squarefree.

Offset 1, canonical program `A360769.P2553119699871238566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9380 terms. -/
def A360769 (n : ℕ) : ℤ :=
  A360769.P2553119699871238566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9380 terms. -/
def A360769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364287.P1164900162732185155

`lt[A364258(n), 0]`
-/

namespace A364287.P1164900162732185155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364287.P1164900162732185155

noncomputable section

/-- A364287: Numbers k such that A163511(k) < k.

Offset 1, canonical program `A364287.P1164900162732185155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A364287 (n : ℕ) : ℤ :=
  (A364287.P1164900162732185155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A364287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364491.P14827580004623166337

`n/A364255(n)`
-/

namespace A364491.P14827580004623166337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A364255 n : ℚ)

end

end A364491.P14827580004623166337

noncomputable section

/-- A364491: a(n) = n / gcd(n, A163511(n)).

Offset 0, canonical program `A364491.P14827580004623166337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364491.P14827580004623166337.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364492.P17999923725189708202

`A163511(n)/A364255(n)`
-/

namespace A364492.P17999923725189708202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 n : ℚ) / (A364255 n : ℚ)

end

end A364492.P17999923725189708202

noncomputable section

/-- A364492: a(n) = A163511(n) / gcd(n, A163511(n)).

Offset 0, canonical program `A364492.P17999923725189708202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364492 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364492.P17999923725189708202.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364492.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365808.P18059643760552441775

`eq[1, A365807(n)]`
-/

namespace A365808.P18059643760552441775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365808.P18059643760552441775

noncomputable section

/-- A365808: Numbers k such that A163511(k) is a square.

Offset 1, canonical program `A365808.P18059643760552441775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1597 terms. -/
def A365808 (n : ℕ) : ℤ :=
  (A365808.P18059643760552441775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1597 terms. -/
def A365808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366282.P5690967040154622966

`A366275(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366282.P5690967040154622966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 n - (n : ℤ)

end

end A366282.P5690967040154622966

noncomputable section

/-- A366282: a(n) = A366275(n) - n, where A366275 is the Cat's tongue permutation.

Offset 0, canonical program `A366282.P5690967040154622966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366282 (n : ℕ) : ℤ :=
  A366282.P5690967040154622966.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366283.P2349920202320002134

`gcd(n, A366275(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366283.P2349920202320002134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A366275 n)

end

end A366283.P2349920202320002134

noncomputable section

/-- A366283: a(n) = gcd(n, A366275(n)), where A366275 is the Cat's tongue permutation.

Offset 0, canonical program `A366283.P2349920202320002134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366283 (n : ℕ) : ℤ :=
  (A366283.P2349920202320002134.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367023.P1465519748105078735

`A050169(n+1)*A161642(n)*A120588(A002260(n+1))`
-/

namespace A367023.P1465519748105078735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050169 (n + 1) * A161642 n * A120588 (A002260 (n + 1)).toNat

end

end A367023.P1465519748105078735

noncomputable section

/-- A367023: Triangle read by rows, T(n, k) = [x^k] p(n), where p(n) = hypergeom([1/2, -n - 1, -n], [2, 2], 4*x).

Offset 0, canonical program `A367023.P1465519748105078735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6400 terms. -/
def A367023 (n : ℕ) : ℤ :=
  A367023.P1465519748105078735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6400 terms. -/
def A367023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367177.P15815741201613916363

`A007318(n)*A098473(n)`
-/

namespace A367177.P15815741201613916363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A098473 n

end

end A367177.P15815741201613916363

noncomputable section

/-- A367177: Triangle read by rows, T(n, k) = [x^k] hypergeom([1/2, -n, -n], [1, 1], 4*x).

Offset 0, canonical program `A367177.P15815741201613916363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6062 terms. -/
def A367177 (n : ℕ) : ℤ :=
  A367177.P15815741201613916363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6062 terms. -/
def A367177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367178.P17603027464540111819

`A007318(n)*A098474(n)`
-/

namespace A367178.P17603027464540111819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A098474 n

end

end A367178.P17603027464540111819

noncomputable section

/-- A367178: Triangle read by rows. T(n, k) = binomial(n, k)^2 * CatalanNumber(k).

Offset 0, canonical program `A367178.P17603027464540111819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6284 terms. -/
def A367178 (n : ℕ) : ℤ :=
  A367178.P17603027464540111819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6284 terms. -/
def A367178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367270.P16788633298638665148

`A007318(n)*A071919(n)`
-/

namespace A367270.P16788633298638665148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A071919 n

end

end A367270.P16788633298638665148

noncomputable section

/-- A367270: Triangle read by rows. T(n, k) = binomial(n, k)*binomial(n - 1, n - k - 1).

Offset 0, canonical program `A367270.P16788633298638665148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367270 (n : ℕ) : ℤ :=
  A367270.P16788633298638665148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370819.P7119138988108707849

`A097805(A070939(n)+∑[n])`
-/

namespace A370819.P7119138988108707849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A070939 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A370819.P7119138988108707849

noncomputable section

/-- A370819: Number of subsets of {1..n-1} whose cardinality is one less than the length of the binary expansion of n; a(0) = 0.

Offset 0, canonical program `A370819.P7119138988108707849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A370819 (n : ℕ) : ℤ :=
  A370819.P7119138988108707849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A370819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373587.P2627240491300231812

`comp[∪[A373586(n+1), n²]]`
-/

namespace A373587.P2627240491300231812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A373587.P2627240491300231812

noncomputable section

/-- A373587: Numbers k for which A373149(k) is odd, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

Offset 1, canonical program `A373587.P2627240491300231812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373587 (n : ℕ) : ℤ :=
  (A373587.P2627240491300231812.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374108.P14839641477557879055

`filter[A373586(n+1), A152822(#)]`
-/

namespace A374108.P14839641477557879055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A374108.P14839641477557879055

noncomputable section

/-- A374108: Numbers k such that A113177(k) and A328845(k) are both even, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

Offset 1, canonical program `A374108.P14839641477557879055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7256 terms. -/
def A374108 (n : ℕ) : ℤ :=
  A374108.P14839641477557879055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7256 terms. -/
def A374108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380114.P703305606341716703

`A097805(n)*A137688(n)`
-/

namespace A380114.P703305606341716703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A137688 n

end

end A380114.P703305606341716703

noncomputable section

/-- A380114: Triangle read by rows: The convolution triangle of 2^n, where the convolution triangle of a sequence is defined in A357368.

Offset 0, canonical program `A380114.P703305606341716703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380114 (n : ℕ) : ℤ :=
  A380114.P703305606341716703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380114.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171696.P13576368370877495331

`comp[A377540(n+1)]`
-/

namespace A171696.P13576368370877495331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171696.P13576368370877495331

noncomputable section

/-- A171696: Nonnegative numbers k such that neither of 6*k +- 1 is prime.

Offset 1, canonical program `A171696.P13576368370877495331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171696 (n : ℕ) : ℤ :=
  (A171696.P13576368370877495331.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171729.P17350699023659055565

`A171730(A038722(n+1))`
-/

namespace A171729.P17350699023659055565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171730 (A038722 (n + 1)).toNat

end

end A171729.P17350699023659055565

noncomputable section

/-- A171729: Triangle of differences of Fibonacci numbers, rows ascending.

Offset 1, canonical program `A171729.P17350699023659055565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171729 (n : ℕ) : ℤ :=
  A171729.P17350699023659055565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172054.P10035823565765016099

`A121765(n+1)-A121763(n+1)`
-/

namespace A172054.P10035823565765016099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1) - A121763 (n + 1)

end

end A172054.P10035823565765016099

noncomputable section

/-- A172054: n-th number k such that 6*k-1 is composite while 6*k+1 is prime minus n-th number m such that 6*m-1 is prime while 6*m+1 is composite.

Offset 1, canonical program `A172054.P10035823565765016099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172054 (n : ℕ) : ℤ :=
  A172054.P10035823565765016099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172055.P1149678872916383177

`A121765(n+1)+A121763(n+1)`
-/

namespace A172055.P1149678872916383177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1) + A121763 (n + 1)

end

end A172055.P1149678872916383177

noncomputable section

/-- A172055: n-th number k such that 6*k-1 is composite while 6*k+1 is prime plus n-th number m such that 6*m-1 is prime while 6*m+1 is composite.

Offset 1, canonical program `A172055.P1149678872916383177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172055 (n : ℕ) : ℤ :=
  A172055.P1149678872916383177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173522.P2611288585659142813

`∑[A105321(n)]-A105321(n)`
-/

namespace A173522.P2611288585659142813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105321 n

end

end A173522.P2611288585659142813

noncomputable section

/-- A173522: Zero together with the partial sums of A105321.

Offset 0, canonical program `A173522.P2611288585659142813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173522 (n : ℕ) : ℤ :=
  A173522.P2611288585659142813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174941.P11439559617156554674

`∏{p}[n+1, -1%#]*A174940(∏{p}[n+1, #])`
-/

namespace A174941.P11439559617156554674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ)) * A174940 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A174941.P11439559617156554674

noncomputable section

/-- A174941: a(n) = Sum_{d|n} A007955(d) * A008683(d) = Sum_{d|n} A007955(d) * mu(d), where A007955(m) = product of divisors of m.

Offset 1, canonical program `A174941.P11439559617156554674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A174941 (n : ℕ) : ℤ :=
  A174941.P11439559617156554674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A174941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175035.P16765248234289683969

`lt[1, abs(A161516(n))]`
-/

namespace A175035.P16765248234289683969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A161516 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175035.P16765248234289683969

noncomputable section

/-- A175035: Offsets i such that i + m*(m+1)/2 is a perfect square for some positive integer m.

Offset 1, canonical program `A175035.P16765248234289683969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A175035 (n : ℕ) : ℤ :=
  (A175035.P16765248234289683969.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A175035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176835.P11267763139736940378

`A115878(n+1)+1`
-/

namespace A176835.P11267763139736940378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (n + 1) + 1

end

end A176835.P11267763139736940378

noncomputable section

/-- A176835: Number of positive integers k for which k^2 - n*k is a square.

Offset 1, canonical program `A176835.P11267763139736940378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176835 (n : ℕ) : ℤ :=
  A176835.P11267763139736940378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178636.P5283396583048980149

`A167515(n+1)-1`
-/

namespace A178636.P5283396583048980149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167515 (n + 1) - 1

end

end A178636.P5283396583048980149

noncomputable section

/-- A178636: If n = Product (p_i^k_i) for i = 1, ..., j then a(n) is the sum of the divisors d that are not in the set {1, p_1^k_1, p_2^k_2, ..., p_j^k_j}.

Offset 1, canonical program `A178636.P5283396583048980149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178636 (n : ℕ) : ℤ :=
  A178636.P5283396583048980149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181570.P2042820732213063132

`p?[2*A108769(n+1)+1]`
-/

namespace A181570.P2042820732213063132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108769 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181570.P2042820732213063132

noncomputable section

/-- A181570: Primes in A050798.

Offset 1, canonical program `A181570.P2042820732213063132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A181570 (n : ℕ) : ℤ :=
  A181570.P2042820732213063132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A181570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183761.P5340774791652619797

`A062801(n+1)/2`
-/

namespace A183761.P5340774791652619797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062801 (n + 1) : ℚ) / 2

end

end A183761.P5340774791652619797

noncomputable section

/-- A183761: Number of 2 X 2 nonsingular 0..n matrices with rows in increasing order.

Offset 1, canonical program `A183761.P5340774791652619797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183761.P5340774791652619797.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190299.P8200176430200214547

`filter[A189986(n+1), A212793(#)]`
-/

namespace A190299.P8200176430200214547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A190299.P8200176430200214547

noncomputable section

/-- A190299: Squarefree semiprimes of the form 4k+1.

Offset 1, canonical program `A190299.P8200176430200214547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9085 terms. -/
def A190299 (n : ℕ) : ℤ :=
  A190299.P8200176430200214547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9085 terms. -/
def A190299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214362.P3714722882653468056

`xor(3, A213815(A028310(n)+1))+1`
-/

namespace A214362.P3714722882653468056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A213815 (A028310 n + 1).toNat) + 1

end

end A214362.P3714722882653468056

noncomputable section

/-- A214362: Arithmetic mean of next a(n) successive positive integers is prime.

Offset 1, canonical program `A214362.P3714722882653468056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214362 (n : ℕ) : ℤ :=
  A214362.P3714722882653468056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214960.P4106115688173494549

`(-1)^n*A127693(n)`
-/

namespace A214960.P4106115688173494549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A127693 n

end

end A214960.P4106115688173494549

noncomputable section

/-- A214960: Expansion of psi(x^2) - x * psi(x^10) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A214960.P4106115688173494549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127693, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214960 (n : ℕ) : ℤ :=
  A214960.P4106115688173494549.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127693, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216953.P10903731901757870173

`2*∑{d}[A127093(n+1), A296302(#)]`
-/

namespace A216953.P10903731901757870173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A296302 d)

end

end A216953.P10903731901757870173

noncomputable section

/-- A216953: Triangle read by rows: T(n,k) (n>=1, 1<=k<=n) = number of binary sequences of length n with minimal period k.

Offset 1, canonical program `A216953.P10903731901757870173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216953 (n : ℕ) : ℤ :=
  A216953.P10903731901757870173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216954.P1085504788512225851

`∑{d}[A127093(n+1), A296302(#)]`
-/

namespace A216954.P1085504788512225851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A296302 d

end

end A216954.P1085504788512225851

noncomputable section

/-- A216954: Triangle read by rows: A216953/2.

Offset 1, canonical program `A216954.P1085504788512225851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216954 (n : ℕ) : ℤ :=
  A216954.P1085504788512225851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218227.P13857964789849217823

`A218281(2*(n+1))`
-/

namespace A218227.P13857964789849217823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218281 (2 * (n + 1))

end

end A218227.P13857964789849217823

noncomputable section

/-- A218227: Hilltop maps: number of n X 2 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 n X 2 array.

Offset 1, canonical program `A218227.P13857964789849217823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A218227 (n : ℕ) : ℤ :=
  A218227.P13857964789849217823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A218227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221838.P16241372166790464696

`A221837(n+1)+A046079(n+1)`
-/

namespace A221838.P16241372166790464696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221837 (n + 1) + A046079 (n + 1)

end

end A221838.P16241372166790464696

noncomputable section

/-- A221838: Number of integer Heron triangles of height n.

Offset 1, canonical program `A221838.P16241372166790464696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A221837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A221838 (n : ℕ) : ℤ :=
  A221838.P16241372166790464696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A221837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A221838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225756.P8807305609864975192

`∪[A005237(n+1), A083795(n+1)]`
-/

namespace A225756.P8807305609864975192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225756.P8807305609864975192

noncomputable section

/-- A225756: Runs of consecutive numbers with the same number of divisors.

Offset 1, canonical program `A225756.P8807305609864975192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A225756 (n : ℕ) : ℤ :=
  (A225756.P8807305609864975192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A225756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233775.P17199586027421779978

`A105321(n)-ceil(A038573(n)/2)`
-/

namespace A233775.P17199586027421779978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n - ⌈(A038573 n : ℚ) / 2⌉

end

end A233775.P17199586027421779978

noncomputable section

/-- A233775: Number of vertices in the n-th row of the Sierpinski gasket (cf. A047999).

Offset 0, canonical program `A233775.P17199586027421779978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233775 (n : ℕ) : ℤ :=
  A233775.P17199586027421779978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239018.P12242242400328988881

`∩[A007932(n+1), A239019(n+1)]`
-/

namespace A239018.P12242242400328988881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239018.P12242242400328988881

noncomputable section

/-- A239018: Non-primitive words on {1,2,3}.

Offset 1, canonical program `A239018.P12242242400328988881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A239018 (n : ℕ) : ℤ :=
  (A239018.P12242242400328988881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A239018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239879.P16824240110881883084

`∪[A184247(n+1), A184248(n+1)]`
-/

namespace A239879.P16824240110881883084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239879.P16824240110881883084

noncomputable section

/-- A239879: Primes p such that either x divides y, or y divides x, where x = nextprime(p) - p, and y = p - prevprime(p).

Offset 1, canonical program `A239879.P16824240110881883084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239879 (n : ℕ) : ℤ :=
  (A239879.P16824240110881883084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240678.P16460776034127500961

`p?[A216292(n+1)]`
-/

namespace A240678.P16460776034127500961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240678.P16460776034127500961

noncomputable section

/-- A240678: Primes p such that p*10+k is prime for exactly one value of the digit k.

Offset 1, canonical program `A240678.P16460776034127500961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240678 (n : ℕ) : ℤ :=
  A240678.P16460776034127500961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240721.P604364352566737510

`2^(n+1)*C(2*n+1, n)-A178792(n)`
-/

namespace A240721.P604364352566737510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) * Nat.choose (2 * n + 1) n : ℤ) - A178792 n

end

end A240721.P604364352566737510

noncomputable section

/-- A240721: Expansion of -(4*x + sqrt(1-8*x) - 1)/(sqrt(1-8*x)*(4*x^2+x) + 8*x^2 - x).

Offset 0, canonical program `A240721.P604364352566737510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240721 (n : ℕ) : ℤ :=
  A240721.P604364352566737510.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244226.P17876576765539539077

`A244227(A142150(n))`
-/

namespace A244226.P17876576765539539077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 (A142150 n).toNat

end

end A244226.P17876576765539539077

noncomputable section

/-- A244226: Length of runs in A244221 (Greedy Catalan Base, A014418, reduced modulo 2).

Offset 0, canonical program `A244226.P17876576765539539077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244226 (n : ℕ) : ℤ :=
  A244226.P17876576765539539077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245963.P17810080779370420082

`A030528(A056536(n+2))`
-/

namespace A245963.P17810080779370420082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A056536 (n + 2)).toNat

end

end A245963.P17810080779370420082

noncomputable section

/-- A245963: Triangle read by rows: T(n,k) is the number of maximal hypercubes Q(p) in the Fibonacci cube Gamma(n) (i.e., Q(p) is an induced subgraph of Gamma(n) that is not a subgraph of a subgraph of Gamma(n) that is isomorphic to the hypercube Q(p+1)).

Offset 0, canonical program `A245963.P17810080779370420082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A245963 (n : ℕ) : ℤ :=
  A245963.P17810080779370420082.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A245963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246920.P9162283999492987608

`A115878(A038502(n+1))+A115878(n+1)`
-/

namespace A246920.P9162283999492987608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (A038502 (n + 1)).toNat + A115878 (n + 1)

end

end A246920.P9162283999492987608

noncomputable section

/-- A246920: The number of distinct lengths of nontrivial integral cevians of an equilateral triangle of side n that divide an edge into two integral parts.

Offset 1, canonical program `A246920.P9162283999492987608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246920 (n : ℕ) : ℤ :=
  A246920.P9162283999492987608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247052.P1782642490212678067

`p?[A082741(n+1)]`
-/

namespace A247052.P1782642490212678067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247052.P1782642490212678067

noncomputable section

/-- A247052: Primes composed of only digits with line segments or both line segments and curves {1, 2, 4, 5, 7}.

Offset 1, canonical program `A247052.P1782642490212678067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A247052 (n : ℕ) : ℤ :=
  A247052.P1782642490212678067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A247052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256097.P7490933180745882332

`ceil(sqrt(n+1)*A256098(n+1))`
-/

namespace A256097.P7490933180745882332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 1 : ℝ) * (A256098 (n + 1) : ℝ)⌉

end

end A256097.P7490933180745882332

noncomputable section

/-- A256097: Numerators of a rational guess r(n) for the input for Newton's algorithm to find sqrt(n).

Offset 1, canonical program `A256097.P7490933180745882332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256097 (n : ℕ) : ℤ :=
  A256097.P7490933180745882332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258291.P5881300206868688426

`A116604(2*n)/ratio[A131713(n+2)]`
-/

namespace A258291.P5881300206868688426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116604 (2 * n) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A258291.P5881300206868688426

noncomputable section

/-- A258291: Expansion of q^(-1/4) * eta(q) * eta(q^2) * eta(q^6) / eta(q^3) in powers of q.

Offset 0, canonical program `A258291.P5881300206868688426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A258291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A258291.P5881300206868688426.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A258291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258456.P9693069320443912273

`∪[A030140(n+1), A182358(n+1)]`
-/

namespace A258456.P9693069320443912273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258456.P9693069320443912273

noncomputable section

/-- A258456: Product of divisors of n is not a square.

Offset 1, canonical program `A258456.P9693069320443912273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258456 (n : ℕ) : ℤ :=
  (A258456.P9693069320443912273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258469.P13825212742255435643

`A258432(eq[1, A258383(n+1)]+1)`
-/

namespace A258469.P13825212742255435643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A258469.P13825212742255435643

noncomputable section

/-- A258469: Numbers m such that A062234(m) != A062234(m+1).

Offset 1, canonical program `A258469.P13825212742255435643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9263 terms. -/
def A258469 (n : ℕ) : ℤ :=
  A258469.P13825212742255435643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9263 terms. -/
def A258469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262855.P8894309601039071380

`A267673(A020703(n+1)-1)`
-/

namespace A262855.P8894309601039071380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267673 (A020703 (n + 1) - 1).toNat

end

end A262855.P8894309601039071380

noncomputable section

/-- A262855: Triangle read by rows giving successive states of cellular automaton generated by "Rule 153" initiated with a single ON (black) cell.

Offset 0, canonical program `A262855.P8894309601039071380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262855 (n : ℕ) : ℤ :=
  A262855.P8894309601039071380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268083.P14251606824912960542

`filter[A082916(n+3), A354108(#)]`
-/

namespace A268083.P14251606824912960542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A268083.P14251606824912960542

noncomputable section

/-- A268083: Numbers k that are not prime powers and such that gcd(binomial(2*k-1,k), k) = 1.

Offset 1, canonical program `A268083.P14251606824912960542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A268083 (n : ℕ) : ℤ :=
  A268083.P14251606824912960542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A268083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274172.P8360577516930396545

`filter[A038510(n+1), A049240(#)]`
-/

namespace A274172.P8360577516930396545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A274172.P8360577516930396545

noncomputable section

/-- A274172: Nonsquare composites with all prime factors larger than 5.

Offset 1, canonical program `A274172.P8360577516930396545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9936 terms. -/
def A274172 (n : ℕ) : ℤ :=
  A274172.P8360577516930396545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9936 terms. -/
def A274172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274555.P2558607527214522533

`∩[A140612(n+1), A000415(n+5)]`
-/

namespace A274555.P2558607527214522533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274555.P2558607527214522533

noncomputable section

/-- A274555: Nonsquare n such that n*(n+1)/2 is the sum of two nonzero squares.

Offset 1, canonical program `A274555.P2558607527214522533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2067 terms. -/
def A274555 (n : ℕ) : ℤ :=
  (A274555.P2558607527214522533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2067 terms. -/
def A274555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276255.P14719271894009360201

`∑[A033548(n+1)]`
-/

namespace A276255.P14719271894009360201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276255.P14719271894009360201

noncomputable section

/-- A276255: Sum of first n Honaker primes.

Offset 1, canonical program `A276255.P14719271894009360201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276255 (n : ℕ) : ℤ :=
  A276255.P14719271894009360201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276553.P10579405636336948345

`eq[A146564(n+2), A146564(n+1)]+1`
-/

namespace A276553.P10579405636336948345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276553.P10579405636336948345

noncomputable section

/-- A276553: Numbers k such that k^2 and (k + 1)^2 have the same number of divisors.

Offset 1, canonical program `A276553.P10579405636336948345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A276553 (n : ℕ) : ℤ :=
  (A276553.P10579405636336948345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A276553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277238.P17499290417694551927

`∪[A035928(n+1), A276795(n+1)]`
-/

namespace A277238.P17499290417694551927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277238.P17499290417694551927

noncomputable section

/-- A277238: Folding numbers (see comments for the definition).

Offset 1, canonical program `A277238.P17499290417694551927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277238 (n : ℕ) : ℤ :=
  (A277238.P17499290417694551927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280817.P4263899432578162346

`A049501(A000203(n+1))`
-/

namespace A280817.P4263899432578162346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A000203 (n + 1)).toNat

end

end A280817.P4263899432578162346

noncomputable section

/-- A280817: a(n) = A049501(sigma(n)).

Offset 1, canonical program `A280817.P4263899432578162346`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280817 (n : ℕ) : ℤ :=
  A280817.P4263899432578162346.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281388.P2536527221825574794

`A049501(A003188(n+1))`
-/

namespace A281388.P2536527221825574794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A003188 (n + 1)).toNat

end

end A281388.P2536527221825574794

noncomputable section

/-- A281388: Write n in binary reflected Gray code and sum the positions where there is a '1' followed immediately to the right by a '0', counting the leftmost digit as position 1.

Offset 1, canonical program `A281388.P2536527221825574794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281388 (n : ℕ) : ℤ :=
  A281388.P2536527221825574794.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281552.P11677412151710128902

`A049501(A171885(n+1))`
-/

namespace A281552.P11677412151710128902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A171885 (n + 1)).toNat

end

end A281552.P11677412151710128902

noncomputable section

/-- A281552: Write n in the Elias gamma code and sum the positions where there is a '1' followed immediately to the right by a '0', counting the leftmost digit as position 1.

Offset 1, canonical program `A281552.P11677412151710128902`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, A171885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A281552 (n : ℕ) : ℤ :=
  A281552.P11677412151710128902.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, A171885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A281552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282236.P9054473946965597449

`A084545(A000045(n+1))`
-/

namespace A282236.P9054473946965597449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (A000045 (n + 1)).toNat

end

end A282236.P9054473946965597449

noncomputable section

/-- A282236: a(n) = Fibonacci(n) represented in bijective base-5 numeration.

Offset 1, canonical program `A282236.P9054473946965597449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282236 (n : ℕ) : ℤ :=
  A282236.P9054473946965597449.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284819.P13627960389545771610

`A284777(n+1)+1+n`
-/

namespace A284819.P13627960389545771610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) + 1 + (n : ℤ)

end

end A284819.P13627960389545771610

noncomputable section

/-- A284819: Positions of 1 in A284817.

Offset 1, canonical program `A284819.P13627960389545771610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284819 (n : ℕ) : ℤ :=
  A284819.P13627960389545771610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285307.P1018427192164928864

`A284777(n+1)-1`
-/

namespace A285307.P1018427192164928864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) - 1

end

end A285307.P1018427192164928864

noncomputable section

/-- A285307: Positions of 1 in A285305; complement of A285306.

Offset 1, canonical program `A285307.P1018427192164928864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285307 (n : ℕ) : ℤ :=
  A285307.P1018427192164928864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303554.P5565197163094679338

`record[gcd(n+1, A286875(n+1))]`
-/

namespace A303554.P5565197163094679338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A286875 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303554.P5565197163094679338

noncomputable section

/-- A303554: Union of the prime powers (p^k, p prime, k >= 0) and numbers that are the product of 2 or more distinct primes.

Offset 1, canonical program `A303554.P5565197163094679338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303554 (n : ℕ) : ℤ :=
  (A303554.P5565197163094679338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304362.P3395535958297874023

`∑{d}[n+1, A007427(#)*A304817((n+1)/#)]`
-/

namespace A304362.P3395535958297874023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A304817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304362.P3395535958297874023

noncomputable section

/-- A304362: a(n) = Sum_{d|n, d = 1 or not a perfect power} mu(n/d).

Offset 1, canonical program `A304362.P3395535958297874023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304362 (n : ℕ) : ℤ :=
  A304362.P3395535958297874023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311256.P1958209585559977164

`A008574(n)+A315690(n)-A315684(n)`
-/

namespace A311256.P1958209585559977164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315690 n - A315684 n)

end

end A311256.P1958209585559977164

noncomputable section

/-- A311256: Coordination sequence Gal.5.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311256.P1958209585559977164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A311256 (n : ℕ) : ℤ :=
  A311256.P1958209585559977164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A311256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311798.P17873321092687646606

`A313026(n)+A313682(n)-A314088(n)`
-/

namespace A311798.P17873321092687646606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + (A313682 n - A314088 n)

end

end A311798.P17873321092687646606

noncomputable section

/-- A311798: Coordination sequence Gal.5.52.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311798.P17873321092687646606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A311798 (n : ℕ) : ℤ :=
  A311798.P17873321092687646606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A311798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312160.P12207429850201497885

`A311548(n)+Δ[A011862(n)]`
-/

namespace A312160.P12207429850201497885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311548 n + (f1 (n + 1) - f1 n)

end

end A312160.P12207429850201497885

noncomputable section

/-- A312160: Coordination sequence Gal.5.100.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312160.P12207429850201497885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A312160 (n : ℕ) : ℤ :=
  A312160.P12207429850201497885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A312160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312163.P10738351713839419242

`2*A313118(n)-A310455(n)`
-/

namespace A312163.P10738351713839419242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313118 n - A310455 n

end

end A312163.P10738351713839419242

noncomputable section

/-- A312163: Coordination sequence Gal.6.234.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312163.P10738351713839419242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A312163 (n : ℕ) : ℤ :=
  A312163.P10738351713839419242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A312163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313129.P8353896223887088681

`abs(A008592(n)-A315459(n))`
-/

namespace A313129.P8353896223887088681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315459 n|

end

end A313129.P8353896223887088681

noncomputable section

/-- A313129: Coordination sequence Gal.6.159.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313129.P8353896223887088681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313129 (n : ℕ) : ℤ :=
  A313129.P8353896223887088681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313788.P6713366544553221303

`2*A313738(n)-A313696(n)`
-/

namespace A313788.P6713366544553221303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313738 n - A313696 n

end

end A313788.P6713366544553221303

noncomputable section

/-- A313788: Coordination sequence Gal.6.326.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313788.P6713366544553221303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313788 (n : ℕ) : ℤ :=
  A313788.P6713366544553221303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313842.P14836794253891960675

`abs(A008592(n)-A313610(n))`
-/

namespace A313842.P14836794253891960675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313610 n|

end

end A313842.P14836794253891960675

noncomputable section

/-- A313842: Coordination sequence Gal.5.289.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313842.P14836794253891960675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A313842 (n : ℕ) : ℤ :=
  A313842.P14836794253891960675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A313842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314074.P2496956023396408743

`A314072(n)+A314125(n)-A314123(n)`
-/

namespace A314074.P2496956023396408743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314072 n + (A314125 n - A314123 n)

end

end A314074.P2496956023396408743

noncomputable section

/-- A314074: Coordination sequence Gal.5.310.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314074.P2496956023396408743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314074 (n : ℕ) : ℤ :=
  A314074.P2496956023396408743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314680.P15412562109567247213

`abs(A008592(n)-A314244(n))`
-/

namespace A314680.P15412562109567247213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314244 n|

end

end A314680.P15412562109567247213

noncomputable section

/-- A314680: Coordination sequence Gal.6.149.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314680.P15412562109567247213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314680 (n : ℕ) : ℤ :=
  A314680.P15412562109567247213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315277.P16077913648521142554

`A315340(n)-A004525(A315340(n)-A315264(n))`
-/

namespace A315277.P16077913648521142554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315340 n - A004525 (A315340 n - A315264 n).toNat

end

end A315277.P16077913648521142554

noncomputable section

/-- A315277: Coordination sequence Gal.6.330.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315277.P16077913648521142554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. -/
def A315277 (n : ℕ) : ℤ :=
  A315277.P16077913648521142554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. -/
def A315277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330174.P1343887440238847855

`floor(A091396(2*A142150(n)+1)/2)`
-/

namespace A330174.P1343887440238847855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091396 (2 * A142150 n + 1).toNat : ℚ) / 2⌋

end

end A330174.P1343887440238847855

noncomputable section

/-- A330174: Number of primitive Pythagorean triangles with sum of legs n.

Offset 1, canonical program `A330174.P1343887440238847855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330174 (n : ℕ) : ℤ :=
  A330174.P1343887440238847855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330799.P5359052289965847582

`7*a(n-1)-A103970(n)` with `a(0)=1`
-/

namespace A330799.P5359052289965847582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - A103970 n

end

end A330799.P5359052289965847582

noncomputable section

/-- A330799: Evaluation of the Motzkin polynomials at 1/2 and normalized with 2^n.

Offset 0, canonical program `A330799.P5359052289965847582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A330799 (n : ℕ) : ℤ :=
  A330799.P5359052289965847582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A330799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331259.P10309097593094092739

`A331260(n+1)%4*A046301(n+1)`
-/

namespace A331259.P10309097593094092739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331260 (n + 1)) 4 * A046301 (n + 1)

end

end A331259.P10309097593094092739

noncomputable section

/-- A331259: Numerator of harmonic mean of 3 consecutive primes. Denominators are A331260.

Offset 1, canonical program `A331259.P10309097593094092739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331259 (n : ℕ) : ℤ :=
  A331259.P10309097593094092739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331555.P4693125471245912202

`∩[A129809(n+1), A327752(n+1)]`
-/

namespace A331555.P4693125471245912202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P4693125471245912202

noncomputable section

/-- A331555: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 3 (mod 10).

Offset 1, canonical program `A331555.P4693125471245912202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2991 terms. -/
def A331555 (n : ℕ) : ℤ :=
  (A331555.P4693125471245912202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2991 terms. -/
def A331555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333122.P5461417936121362507

`A157996(A022888(n+1))+A022889(n+1)`
-/

namespace A333122.P5461417936121362507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A022888 (n + 1)).toNat + A022889 (n + 1)

end

end A333122.P5461417936121362507

noncomputable section

/-- A333122: Numbers m such that m = prime(k) + prime(k+5) = prime(k+1) + prime(k+4) for some k.

Offset 1, canonical program `A333122.P5461417936121362507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A333122 (n : ℕ) : ℤ :=
  A333122.P5461417936121362507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A333122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334009.P17908156774807028384

`A059268(n)²*A156308(n+1)`
-/

namespace A334009.P17908156774807028384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A156308 (n + 1)

end

end A334009.P17908156774807028384

noncomputable section

/-- A334009: Triangle read by rows: T(n, k) = binomial(n + k - 1, 2*k - 1) * 4^(k - 1) * n/k, 1 <= k <= n.

Offset 1, canonical program `A334009.P17908156774807028384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A334009 (n : ℕ) : ℤ :=
  A334009.P17908156774807028384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A334009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348392.P612105050756570634

`A143127(n+2)-A000217(n+2)`
-/

namespace A348392.P612105050756570634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143127 (n + 2) - A000217 (n + 2)

end

end A348392.P612105050756570634

noncomputable section

/-- A348392: Row sums of the irregular triangle A348389.

Offset 2, canonical program `A348392.P612105050756570634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348392 (n : ℕ) : ℤ :=
  A348392.P612105050756570634.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350107.P1008043692238485637

`2*A143127(n+1)-A024916(n+1)`
-/

namespace A350107.P1008043692238485637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143127 (n + 1) - A024916 (n + 1)

end

end A350107.P1008043692238485637

noncomputable section

/-- A350107: a(n) = Sum_{k=1..n} k * floor(n/k)^2.

Offset 1, canonical program `A350107.P1008043692238485637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350107 (n : ℕ) : ℤ :=
  A350107.P1008043692238485637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350108.P2277365094345231568

`A024916(n+1)+3*A143128(n+1)-3*A143127(n+1)`
-/

namespace A350108.P2277365094345231568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + 3 * A143128 (n + 1) - 3 * A143127 (n + 1)

end

end A350108.P2277365094345231568

noncomputable section

/-- A350108: a(n) = Sum_{k=1..n} k * floor(n/k)^3.

Offset 1, canonical program `A350108.P2277365094345231568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350108 (n : ℕ) : ℤ :=
  A350108.P2277365094345231568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350108.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363459.P15388970718301156450

`A024918(n+2)-1`
-/

namespace A363459.P15388970718301156450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 2) - 1

end

end A363459.P15388970718301156450

noncomputable section

/-- A363459: Sum of the first n prime powers A246655.

Offset 1, canonical program `A363459.P15388970718301156450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363459 (n : ℕ) : ℤ :=
  A363459.P15388970718301156450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365905.P3279008836788023306

`lt[2, abs(A161516(n))]`
-/

namespace A365905.P3279008836788023306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A161516 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A365905.P3279008836788023306

noncomputable section

/-- A365905: "2-peloton numbers": Numbers that appear at least twice in A365904.

Offset 1, canonical program `A365905.P3279008836788023306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A365905 (n : ℕ) : ℤ :=
  (A365905.P3279008836788023306.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A365905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367696.P4831548240618922370

`∩[A270428(n+1)-1, A270428(n+1)]`
-/

namespace A367696.P4831548240618922370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367696.P4831548240618922370

noncomputable section

/-- A367696: Numbers k such that k and k+1 are both exponentially odious numbers (A270428).

Offset 1, canonical program `A367696.P4831548240618922370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8685 terms. -/
def A367696 (n : ℕ) : ℤ :=
  (A367696.P4831548240618922370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8685 terms. -/
def A367696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368684.P17029386363666908636

`A091954(n+1)-A335021(n+1)`
-/

namespace A368684.P17029386363666908636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A335021 (n + 1)

end

end A368684.P17029386363666908636

noncomputable section

/-- A368684: Number of partitions of n into 2 parts such that the smaller part divides both n and floor(n/2).

Offset 1, canonical program `A368684.P17029386363666908636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368684 (n : ℕ) : ℤ :=
  A368684.P17029386363666908636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371016.P443611739013701360

`A099776(A108769(2*n+1-n))`
-/

namespace A371016.P443611739013701360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (A108769 (2 * n + 1 - n)).toNat

end

end A371016.P443611739013701360

noncomputable section

/-- A371016: Centered square numbers which are semiprime.

Offset 1, canonical program `A371016.P443611739013701360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3705 terms. -/
def A371016 (n : ℕ) : ℤ :=
  A371016.P443611739013701360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3705 terms. -/
def A371016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371054.P16164343174787979327

`∩[A043583(n+1), A089118(n+1)]`
-/

namespace A371054.P16164343174787979327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371054.P16164343174787979327

noncomputable section

/-- A371054: Numbers whose ternary representation consists of a run of 1's, then a run of 0's, then a run of 2's.

Offset 1, canonical program `A371054.P16164343174787979327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054 (n : ℕ) : ℤ :=
  (A371054.P16164343174787979327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378377.P1377304433949360129

`A176992(A056943(n+1))`
-/

namespace A378377.P1377304433949360129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176992 (A056943 (n + 1)).toNat

end

end A378377.P1377304433949360129

noncomputable section

/-- A378377: Triangle read by rows: T(n,k) is the number of non-descending sequences with length k such that the maximum of the length and the last number is n.

Offset 1, canonical program `A378377.P1377304433949360129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377 (n : ℕ) : ℤ :=
  A378377.P1377304433949360129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174936.P12299057279148383531

`∑{d}[n+1, A174940(#)*A175317((n+1)/#)]`
-/

namespace A174936.P12299057279148383531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174940 d * A175317 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174936.P12299057279148383531

noncomputable section

/-- A174936: a(n) = Sum_{d|n} A007955(d) * A007955(n/d), where A007955(m) = product of divisors of m.

Offset 1, canonical program `A174936.P12299057279148383531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174936 (n : ℕ) : ℤ :=
  A174936.P12299057279148383531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176888.P9111566822716569314

`A059456(n+1)-1`
-/

namespace A176888.P9111566822716569314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1) - 1

end

end A176888.P9111566822716569314

noncomputable section

/-- A176888: Unsafe primes minus 1.

Offset 1, canonical program `A176888.P9111566822716569314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176888 (n : ℕ) : ℤ :=
  A176888.P9111566822716569314.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189664.P1404059983888781989

`A284777(n+1)-2*(n+1)`
-/

namespace A189664.P1404059983888781989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) - (2 * (n + 1) : ℤ)

end

end A189664.P1404059983888781989

noncomputable section

/-- A189664: Fixed point of the morphism 0->010, 1->001.

Offset 1, canonical program `A189664.P1404059983888781989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189664 (n : ℕ) : ℤ :=
  A189664.P1404059983888781989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192672.P1400011279283696610

`floor(sqrt(abs(A080243(n))))`
-/

namespace A192672.P1400011279283696610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A080243 n|

end

end A192672.P1400011279283696610

noncomputable section

/-- A192672: Floor-Sqrt transform of little Schroeder numbers (A001003).

Offset 0, canonical program `A192672.P1400011279283696610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A192672 (n : ℕ) : ℤ :=
  A192672.P1400011279283696610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A192672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192673.P17428601771079711106

`floor(sqrt(abs(2*A080243(n))))`
-/

namespace A192673.P17428601771079711106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |2 * A080243 n|

end

end A192673.P17428601771079711106

noncomputable section

/-- A192673: Floor-Sqrt transform of large Schroder numbers (A006318).

Offset 0, canonical program `A192673.P17428601771079711106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A192673 (n : ℕ) : ℤ :=
  A192673.P17428601771079711106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A192673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216278.P16799818316336814260

`A374061(n+1)+A364032(n+1)`
-/

namespace A216278.P16799818316336814260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374061 (n + 1) + A364032 (n + 1)

end

end A216278.P16799818316336814260

noncomputable section

/-- A216278: Number of solutions to the equation x^2+2y^2 = n with x and y > 0.

Offset 1, canonical program `A216278.P16799818316336814260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A216278 (n : ℕ) : ℤ :=
  A216278.P16799818316336814260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A216278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216282.P5463168406655024554

`A363037(n+1)-A374061(n+1)`
-/

namespace A216282.P5463168406655024554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) - A374061 (n + 1)

end

end A216282.P5463168406655024554

noncomputable section

/-- A216282: Number of nonnegative solutions to the equation x^2 + 2*y^2 = n.

Offset 1, canonical program `A216282.P5463168406655024554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216282 (n : ℕ) : ℤ :=
  A216282.P5463168406655024554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216295.P7128567264787392644

`(A216309(n+1)-1)/10`
-/

namespace A216295.P7128567264787392644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216309 (n + 1) - 1 : ℚ) / 10

end

end A216295.P7128567264787392644

noncomputable section

/-- A216295: Values of k such that 10k + 1 is the only prime between 10k and 10k + 9.

Offset 1, canonical program `A216295.P7128567264787392644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216295.P7128567264787392644.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216296.P16543262439568301225

`floor(A216310(n+1)/10)`
-/

namespace A216296.P16543262439568301225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216310 (n + 1) : ℚ) / 10⌋

end

end A216296.P16543262439568301225

noncomputable section

/-- A216296: Values of k such that 10k + 3 is the only prime between 10k and 10k + 9.

Offset 1, canonical program `A216296.P16543262439568301225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216296 (n : ℕ) : ℤ :=
  A216296.P16543262439568301225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216297.P18240834366473876575

`floor(A216311(n+1)/10)`
-/

namespace A216297.P18240834366473876575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216311 (n + 1) : ℚ) / 10⌋

end

end A216297.P18240834366473876575

noncomputable section

/-- A216297: Values of k such that 10k + 7 is the only prime between 10k and 10k + 9.

Offset 1, canonical program `A216297.P18240834366473876575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216297 (n : ℕ) : ℤ :=
  A216297.P18240834366473876575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216298.P1014508904312123023

`floor(A216312(n+1)/10)`
-/

namespace A216298.P1014508904312123023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216312 (n + 1) : ℚ) / 10⌋

end

end A216298.P1014508904312123023

noncomputable section

/-- A216298: Values of k such that 10k + 9 is the only prime between 10k and 10k + 9.

Offset 1, canonical program `A216298.P1014508904312123023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216298 (n : ℕ) : ℤ :=
  A216298.P1014508904312123023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220400.P6456087209133966610

`A110654(abs(A335021(A028310(n))))`
-/

namespace A220400.P6456087209133966610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 |A335021 (A028310 n).toNat|.toNat

end

end A220400.P6456087209133966610

noncomputable section

/-- A220400: Number of ways to write n as sum of at least 2 consecutive odd positive integers.

Offset 0, canonical program `A220400.P6456087209133966610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220400 (n : ℕ) : ℤ :=
  A220400.P6456087209133966610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220694.P2534427273062471700

`A220663(n+1)+1`
-/

namespace A220694.P2534427273062471700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220663 (n + 1) + 1

end

end A220694.P2534427273062471700

noncomputable section

/-- A220694: Irregular table: row n (n>=1) consists of numbers 1..A084556(n).

Offset 1, canonical program `A220694.P2534427273062471700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220663, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220694 (n : ℕ) : ℤ :=
  A220694.P2534427273062471700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220663, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232343.P2807166496031523274

`A232356(3*n+5)/6`
-/

namespace A232343.P2807166496031523274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232356 (3 * n + 5) : ℚ) / 6

end

end A232343.P2807166496031523274

noncomputable section

/-- A232343: Expansion of q^(-5/3) * c(q^2)^3 / (9 * c(q)) in powers of q where c() is a cubic AGM theta function.

Offset 0, canonical program `A232343.P2807166496031523274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A232343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232343.P2807166496031523274.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A232343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242663.P15863268049147409045

`lt[0, A259829(round(sqrt(n²+1)))]`
-/

namespace A242663.P15863268049147409045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259829 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242663.P15863268049147409045

noncomputable section

/-- A242663: Nonnegative integers of the form x^2 + 4*x*y - 4*y^2.

Offset 1, canonical program `A242663.P15863268049147409045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A242663 (n : ℕ) : ℤ :=
  (A242663.P15863268049147409045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A242663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247676.P15700024140662741661

`∩[A092256(n+1), A017185(n)]`
-/

namespace A247676.P15700024140662741661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247676.P15700024140662741661

noncomputable section

/-- A247676: Odd composite numbers congruent to 2 modulo 9.

Offset 1, canonical program `A247676.P15700024140662741661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A247676 (n : ℕ) : ℤ :=
  (A247676.P15700024140662741661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A247676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249622.P13007679305527716333

`A052343(p?[A020756(n+4)])`
-/

namespace A249622.P13007679305527716333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249622.P13007679305527716333

noncomputable section

/-- A249622: a(n) = number of ways to express A117048(n) as the sum of two positive triangular numbers.

Offset 1, canonical program `A249622.P13007679305527716333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A249622 (n : ℕ) : ℤ :=
  A249622.P13007679305527716333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A249622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260044.P4271227756067680045

`∩[A386024(n+1), A386025(n+1)]`
-/

namespace A260044.P4271227756067680045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P4271227756067680045

noncomputable section

/-- A260044: Primes having only {0, 1, 3} as digits.

Offset 1, canonical program `A260044.P4271227756067680045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. -/
def A260044 (n : ℕ) : ℤ :=
  (A260044.P4271227756067680045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. -/
def A260044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260552.P11753030595582791337

`A266669(n)*A267001(n)`
-/

namespace A260552.P11753030595582791337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266669 n * A267001 n

end

end A260552.P11753030595582791337

noncomputable section

/-- A260552: Triangle read by rows giving successive states of cellular automaton generated by "Rule 17" initiated with a single ON (black) cell.

Offset 0, canonical program `A260552.P11753030595582791337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260552 (n : ℕ) : ℤ :=
  A260552.P11753030595582791337.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263428.P6407784587852814303

`A266459(n)*A266605(n)`
-/

namespace A263428.P6407784587852814303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266459 n * A266605 n

end

end A263428.P6407784587852814303

noncomputable section

/-- A263428: Triangle read by rows giving successive states of cellular automaton generated by "Rule 3" initiated with a single ON (black) cell.

Offset 0, canonical program `A263428.P6407784587852814303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263428 (n : ℕ) : ℤ :=
  A263428.P6407784587852814303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268447.P7684583934776672033

`A128899(A000124(n+9)+8)`
-/

namespace A268447.P7684583934776672033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A000124 (n + 9) + 8).toNat

end

end A268447.P7684583934776672033

noncomputable section

/-- A268447: Number of North-East lattice paths from (0,0) to (n,n) that cross the diagonal y = x horizontally exactly four times.

Offset 8, canonical program `A268447.P7684583934776672033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A268447 (n : ℕ) : ℤ :=
  A268447.P7684583934776672033.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A268447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271347.P3397854645689726759

`p?[A059456(n+1)-38]`
-/

namespace A271347.P3397854645689726759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P3397854645689726759

noncomputable section

/-- A271347: Primes p such that p + 38 is also prime.

Offset 1, canonical program `A271347.P3397854645689726759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1441 terms. -/
def A271347 (n : ℕ) : ℤ :=
  A271347.P3397854645689726759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1441 terms. -/
def A271347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283265.P16513607417697021488

`a(a(1-A129950(n+1)))` with `a(0)=1, a(1)=0`
-/

namespace A283265.P16513607417697021488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (a (1 - A129950 (n + 1)).toNat)

end

end A283265.P16513607417697021488

noncomputable section

/-- A283265: a(n) = 1 if n is neither 2 nor a lesser or greater twin prime (in A001097), 0 otherwise.

Offset 1, canonical program `A283265.P16513607417697021488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283265 (n : ℕ) : ℤ :=
  (A283265.P16513607417697021488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285960.P9200818931746546545

`A286046(2*n+1)`
-/

namespace A285960.P9200818931746546545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286046 (2 * n + 1)

end

end A285960.P9200818931746546545

noncomputable section

/-- A285960: {01->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285960.P9200818931746546545`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286046, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285960 (n : ℕ) : ℤ :=
  A285960.P9200818931746546545.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286046, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287960.P10000643031088514054

`3*A020756(n+1)+2`
-/

namespace A287960.P10000643031088514054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020756 (n + 1) + 2

end

end A287960.P10000643031088514054

noncomputable section

/-- A287960: Numbers that are the sum of two centered triangular numbers (A005448).

Offset 1, canonical program `A287960.P10000643031088514054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287960 (n : ℕ) : ℤ :=
  A287960.P10000643031088514054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294242.P17936846053533156002

`1-A077641(n+1)+n`
-/

namespace A294242.P17936846053533156002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077641 (n + 1) + (n : ℤ)

end

end A294242.P17936846053533156002

noncomputable section

/-- A294242: Number of partitions of 2n into two parts with the larger part nonsquarefree.

Offset 1, canonical program `A294242.P17936846053533156002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294242 (n : ℕ) : ℤ :=
  A294242.P17936846053533156002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306671.P11706413506972891445

`∑{d}[n+1, A057427(#)]/A137927(n+1)`
-/

namespace A306671.P11706413506972891445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A057427 d : ℤ) : ℚ) / (A137927 (n + 1) : ℚ)

end

end A306671.P11706413506972891445

noncomputable section

/-- A306671: a(n) = gcd(tau(n), pod(n)) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A306671.P11706413506972891445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A306671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306671.P11706413506972891445.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A306671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311506.P16000641395129757266

`A004277(n)+A314736(n)-A072154(n)`
-/

namespace A311506.P16000641395129757266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A314736 n - A072154 n)

end

end A311506.P16000641395129757266

noncomputable section

/-- A311506: Coordination sequence Gal.5.29.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311506.P16000641395129757266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311506 (n : ℕ) : ℤ :=
  A311506.P16000641395129757266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311554.P133304117598951157

`A311549(n)+A004524(A099480(n))`
-/

namespace A311554.P133304117598951157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + A004524 (A099480 n).toNat

end

end A311554.P133304117598951157

noncomputable section

/-- A311554: Coordination sequence Gal.6.134.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311554.P133304117598951157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. -/
def A311554 (n : ℕ) : ℤ :=
  A311554.P133304117598951157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. -/
def A311554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311576.P2952944293918818847

`2*A313089(n)-A310493(n)`
-/

namespace A311576.P2952944293918818847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313089 n - A310493 n

end

end A311576.P2952944293918818847

noncomputable section

/-- A311576: Coordination sequence Gal.5.76.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311576.P2952944293918818847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A311576 (n : ℕ) : ℤ :=
  A311576.P2952944293918818847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A311576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311633.P17424544686150266232

`A314736(n)-A128834(A004396(n))`
-/

namespace A311633.P17424544686150266232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A128834 (A004396 n).toNat

end

end A311633.P17424544686150266232

noncomputable section

/-- A311633: Coordination sequence Gal.5.100.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311633.P17424544686150266232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311633 (n : ℕ) : ℤ :=
  A311633.P17424544686150266232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312152.P14206861352301570908

`A004396(n)+A311549(n)-A004525(n)`
-/

namespace A312152.P14206861352301570908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311549 n - A004525 n)

end

end A312152.P14206861352301570908

noncomputable section

/-- A312152: Coordination sequence Gal.6.134.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312152.P14206861352301570908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A312152 (n : ℕ) : ℤ :=
  A312152.P14206861352301570908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A312152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312963.P18354648499990341232

`A311549(n)+A004525(n-A004396(n))`
-/

namespace A312963.P18354648499990341232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A312963.P18354648499990341232

noncomputable section

/-- A312963: Coordination sequence Gal.6.153.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312963.P18354648499990341232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A312963 (n : ℕ) : ℤ :=
  A312963.P18354648499990341232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A312963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313845.P7215698163674726813

`A313874(n)+A313887(n)-A313908(n)`
-/

namespace A313845.P7215698163674726813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313874 n + (A313887 n - A313908 n)

end

end A313845.P7215698163674726813

noncomputable section

/-- A313845: Coordination sequence Gal.6.649.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313845.P7215698163674726813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313845 (n : ℕ) : ℤ :=
  A313845.P7215698163674726813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315052.P7860107884433601269

`abs(A008592(n)-A314032(n))`
-/

namespace A315052.P7860107884433601269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314032 n|

end

end A315052.P7860107884433601269

noncomputable section

/-- A315052: Coordination sequence Gal.6.338.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315052.P7860107884433601269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315052 (n : ℕ) : ℤ :=
  A315052.P7860107884433601269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315316.P15306875656313717143

`abs(A008592(n)-A310404(n))`
-/

namespace A315316.P15306875656313717143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310404 n|

end

end A315316.P15306875656313717143

noncomputable section

/-- A315316: Coordination sequence Gal.6.324.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315316.P15306875656313717143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315316 (n : ℕ) : ℤ :=
  A315316.P15306875656313717143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315321.P17466874395387374429

`abs(A008592(n)-A310396(n))`
-/

namespace A315321.P17466874395387374429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310396 n|

end

end A315321.P17466874395387374429

noncomputable section

/-- A315321: Coordination sequence Gal.6.635.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315321.P17466874395387374429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315321 (n : ℕ) : ℤ :=
  A315321.P17466874395387374429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315695.P671725202491789356

`2*A313722(n)-A311889(n)`
-/

namespace A315695.P671725202491789356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313722 n - A311889 n

end

end A315695.P671725202491789356

noncomputable section

/-- A315695: Coordination sequence Gal.6.620.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315695.P671725202491789356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315695 (n : ℕ) : ℤ :=
  A315695.P671725202491789356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315702.P17954955877429710355

`abs(A008592(n)-A311889(n))`
-/

namespace A315702.P17954955877429710355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311889 n|

end

end A315702.P17954955877429710355

noncomputable section

/-- A315702: Coordination sequence Gal.6.641.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315702.P17954955877429710355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2230 terms. -/
def A315702 (n : ℕ) : ℤ :=
  A315702.P17954955877429710355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2230 terms. -/
def A315702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323761.P17464288942560498770

`A211776(n+1)/A266265(n+1)*A323760(n+1)`
-/

namespace A323761.P17464288942560498770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) : ℚ) / (A266265 (n + 1) : ℚ) * (A323760 (n + 1) : ℚ)

end

end A323761.P17464288942560498770

noncomputable section

/-- A323761: Denominator of Product_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k and tau(k) = the number of the divisors of k.

Offset 1, canonical program `A323761.P17464288942560498770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A323761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323761.P17464288942560498770.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A323761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329761.P2221005200150248452

`∩[A174813(n+1), A386113(n+1)]`
-/

namespace A329761.P2221005200150248452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P2221005200150248452

noncomputable section

/-- A329761: Primes having only {1, 3, 9} as digits.

Offset 1, canonical program `A329761.P2221005200150248452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A329761 (n : ℕ) : ℤ :=
  (A329761.P2221005200150248452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A329761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333450.P9039608960163679995

`∑[A333471(n+1)]`
-/

namespace A333450.P9039608960163679995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333450.P9039608960163679995

noncomputable section

/-- A333450: a(n) = Sum_{k=1..n} mu(k) * prime(floor(n/k)).

Offset 1, canonical program `A333450.P9039608960163679995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333450 (n : ℕ) : ℤ :=
  A333450.P9039608960163679995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333976.P13271542286250004937

`A184389(n+1)-A018892(n+1)`
-/

namespace A333976.P13271542286250004937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A018892 (n + 1)

end

end A333976.P13271542286250004937

noncomputable section

/-- A333976: Number of pairs of divisors of n, (d1,d2), such that d1 <= d2 and gcd(d1,d2) > 1.

Offset 1, canonical program `A333976.P13271542286250004937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, A184389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333976 (n : ℕ) : ℤ :=
  A333976.P13271542286250004937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, A184389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346400.P16788197224130151719

`filter[A250094(n+1), A066247(#)]`
-/

namespace A346400.P16788197224130151719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A346400.P16788197224130151719

noncomputable section

/-- A346400: Composite numbers k such that the numerator of the harmonic mean of the divisors of k is equal to k.

Offset 1, canonical program `A346400.P16788197224130151719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7263 terms. -/
def A346400 (n : ℕ) : ℤ :=
  A346400.P16788197224130151719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7263 terms. -/
def A346400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351307.P18414374849791957633

`∑{d}[n+1, A189922(#)*A351602((n+1)/#)]`
-/

namespace A351307.P18414374849791957633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189922 d * A351602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351307.P18414374849791957633

noncomputable section

/-- A351307: Sum of the squares of the square divisors of n.

Offset 1, canonical program `A351307.P18414374849791957633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351307 (n : ℕ) : ℤ :=
  A351307.P18414374849791957633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360393.P1701064018632553590

`∪[A360395(n+1), A360397(n+1)]`
-/

namespace A360393.P1701064018632553590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360393.P1701064018632553590

noncomputable section

/-- A360393: Complement of A360392.

Offset 1, canonical program `A360393.P1701064018632553590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360393 (n : ℕ) : ℤ :=
  (A360393.P1701064018632553590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363863.P16896874626965199202

`∪[A192544(n+1), A226025(n+1)]`
-/

namespace A363863.P16896874626965199202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363863.P16896874626965199202

noncomputable section

/-- A363863: Numbers expressible as j^2 - k^2, 1 <= k <= j-2 ("squares with a square hole").

Offset 1, canonical program `A363863.P16896874626965199202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363863 (n : ℕ) : ℤ :=
  (A363863.P16896874626965199202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375076.P5343439789459528226

`filter[A391497(n+1), A295316(#)]`
-/

namespace A375076.P5343439789459528226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A375076.P5343439789459528226

noncomputable section

/-- A375076: Numbers whose prime factorization exponents include at least one 1, at least one 3 and no other exponents.

Offset 1, canonical program `A375076.P5343439789459528226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076 (n : ℕ) : ℤ :=
  A375076.P5343439789459528226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213791.P5287273639939640334

`(-1)^n*A008440(n)`
-/

namespace A213791.P5287273639939640334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008440 n

end

end A213791.P5287273639939640334

noncomputable section

/-- A213791: Expansion of psi(-x)^6 in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A213791.P5287273639939640334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213791 (n : ℕ) : ℤ :=
  A213791.P5287273639939640334.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213791.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286314.P11865172362924914077

`A008440(10^n)`
-/

namespace A286314.P11865172362924914077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008440 (10 ^ n)

end

end A286314.P11865172362924914077

noncomputable section

/-- A286314: Number of representations of 10^n as sum of 6 triangular numbers.

Offset 0, canonical program `A286314.P11865172362924914077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286314 (n : ℕ) : ℤ :=
  A286314.P11865172362924914077.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A314245.P2036578917269548125

`A314146(2*n)+A314156(n)-A314156(2*n)`
-/

namespace A314245.P2036578917269548125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314146 (2 * n) + (A314156 n - A314156 (2 * n))

end

end A314245.P2036578917269548125

noncomputable section

/-- A314245: Coordination sequence Gal.5.317.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314245.P2036578917269548125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1136 terms. -/
def A314245 (n : ℕ) : ℤ :=
  A314245.P2036578917269548125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1136 terms. -/
def A314245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323166.P16503976483329097000

`gcd(A034448(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323166.P16503976483329097000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1)) (n + 1 : ℤ)

end

end A323166.P16503976483329097000

noncomputable section

/-- A323166: Greatest common divisor of Product (1+(p_i^e_i)) and n, when n = Product (p_i^e_i); a(n) = gcd(A034448(n), n).

Offset 1, canonical program `A323166.P16503976483329097000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323166 (n : ℕ) : ℤ :=
  (A323166.P16503976483329097000.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323166.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343569.P10194073236583386996

`∏{p}[n+1, ceil(atan(#))]*A034448(n+1)`
-/

namespace A343569.P10194073236583386996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉) * A034448 (n + 1)

end

end A343569.P10194073236583386996

noncomputable section

/-- A343569: If n = Product (p_j^k_j) then a(n) = Product (2*(p_j^k_j + 1)), with a(1) = 1.

Offset 1, canonical program `A343569.P10194073236583386996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343569 (n : ℕ) : ℤ :=
  A343569.P10194073236583386996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345451.P7254326500789221208

`A034448(n+1)-1`
-/

namespace A345451.P7254326500789221208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - 1

end

end A345451.P7254326500789221208

noncomputable section

/-- A345451: Sum of the unitary divisors of n whose square does not divide n.

Offset 1, canonical program `A345451.P7254326500789221208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345451 (n : ℕ) : ℤ :=
  A345451.P7254326500789221208.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348503.P1074527465490067139

`gcd(A000203(n+1), A034448(n+1))`
-/

namespace A348503.P1074527465490067139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A034448 (n + 1))

end

end A348503.P1074527465490067139

noncomputable section

/-- A348503: a(n) = gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348503.P1074527465490067139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348503 (n : ℕ) : ℤ :=
  (A348503.P1074527465490067139.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349770.P12946265739044333858

`∑{d}[n+1, A034448(#)*A034448((n+1)/#)]`
-/

namespace A349770.P12946265739044333858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349770.P12946265739044333858

noncomputable section

/-- A349770: a(n) = Sum_{d|n} usigma(d) * usigma(n/d).

Offset 1, canonical program `A349770.P12946265739044333858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349770 (n : ℕ) : ℤ :=
  A349770.P12946265739044333858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365209.P13908009698300430813

`A000203(A065331(n+1))*A034448(A065330(n+1))`
-/

namespace A365209.P13908009698300430813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A065331 (n + 1)).toNat * A034448 (A065330 (n + 1)).toNat

end

end A365209.P13908009698300430813

noncomputable section

/-- A365209: The sum of divisors d of n such that gcd(d, n/d) is a 3-smooth number (A003586).

Offset 1, canonical program `A365209.P13908009698300430813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365209 (n : ℕ) : ℤ :=
  A365209.P13908009698300430813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365209.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365211.P17121976784440689824

`A000203(A065330(n+1))*A034448(A065331(n+1))`
-/

namespace A365211.P17121976784440689824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A065330 (n + 1)).toNat * A034448 (A065331 (n + 1)).toNat

end

end A365211.P17121976784440689824

noncomputable section

/-- A365211: The sum of divisors d of n such that gcd(d, n/d) is a 5-rough number (A007310).

Offset 1, canonical program `A365211.P17121976784440689824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365211 (n : ℕ) : ℤ :=
  A365211.P17121976784440689824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366535.P17157640204726655223

`A034448(A268335(n+1))`
-/

namespace A366535.P17157640204726655223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A268335 (n + 1)).toNat

end

end A366535.P17157640204726655223

noncomputable section

/-- A366535: The sum of unitary divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366535.P17157640204726655223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366535 (n : ℕ) : ℤ :=
  A366535.P17157640204726655223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366537.P6054453668731544926

`A034448(A004709(n+1))`
-/

namespace A366537.P6054453668731544926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A004709 (n + 1)).toNat

end

end A366537.P6054453668731544926

noncomputable section

/-- A366537: The sum of unitary divisors of the cubefree numbers (A004709).

Offset 1, canonical program `A366537.P6054453668731544926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366537 (n : ℕ) : ℤ :=
  A366537.P6054453668731544926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366539.P359693618397037836

`A034448(A138302(n+1))`
-/

namespace A366539.P359693618397037836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A138302 (n + 1)).toNat

end

end A366539.P359693618397037836

noncomputable section

/-- A366539: The sum of unitary divisors of the exponentially 2^n-numbers (A138302).

Offset 1, canonical program `A366539.P359693618397037836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366539 (n : ℕ) : ℤ :=
  A366539.P359693618397037836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370898.P6566907685410368332

`∑[(-1)^n*A034448(n+1)]`
-/

namespace A370898.P6566907685410368332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A034448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370898.P6566907685410368332

noncomputable section

/-- A370898: Partial alternating sums of the sum of unitary divisors function (A034448).

Offset 1, canonical program `A370898.P6566907685410368332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370898 (n : ℕ) : ℤ :=
  A370898.P6566907685410368332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314826.P16073624034831469492

`abs(A008592(n)-A314165(n))`
-/

namespace A314826.P16073624034831469492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314165 n|

end

end A314826.P16073624034831469492

noncomputable section

/-- A314826: Coordination sequence Gal.6.129.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314826.P16073624034831469492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314826 (n : ℕ) : ℤ :=
  A314826.P16073624034831469492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314826.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172283.P15307696702803467898

`A007318(n)+10*A008482(n)`
-/

namespace A172283.P15307696702803467898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 10 * A008482 n

end

end A172283.P15307696702803467898

noncomputable section

/-- A172283: (-9,11) Pascal triangle.

Offset 0, canonical program `A172283.P15307696702803467898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172283 (n : ℕ) : ℤ :=
  A172283.P15307696702803467898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176499.P11961058461514971734

`A005728(A000045(n+2))`
-/

namespace A176499.P11961058461514971734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A000045 (n + 2)).toNat

end

end A176499.P11961058461514971734

noncomputable section

/-- A176499: Haros-Farey sequence whose argument is the Fibonacci number; Farey(m) where m = Fibonacci(n + 1).

Offset 1, canonical program `A176499.P11961058461514971734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005728, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176499 (n : ℕ) : ℤ :=
  A176499.P11961058461514971734.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005728, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181058.P12754164257263716526

`A000040(A065451(n+1))`
-/

namespace A181058.P12754164257263716526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065451 (n + 1)).toNat

end

end A181058.P12754164257263716526

noncomputable section

/-- A181058: a(n) = prime(Fibonacci(phi(n))), where prime = A000040, Fibonacci = A000045 and phi = A000010.

Offset 1, canonical program `A181058.P12754164257263716526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181058 (n : ℕ) : ℤ :=
  A181058.P12754164257263716526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181117.P3556212015790333691

`lcm(A046644(A010766(n+1)), A114002(n))`
-/

namespace A181117.P3556212015790333691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046644 (A010766 (n + 1)).toNat) (A114002 n)

end

end A181117.P3556212015790333691

noncomputable section

/-- A181117: Triangle T(n,k) read by rows. T(n,k) = A046644(A126988).

Offset 1, canonical program `A181117.P3556212015790333691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181117 (n : ℕ) : ℤ :=
  (A181117.P3556212015790333691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189892.P11745447332243219839

`A033286(n+1)-A007504(n)`
-/

namespace A189892.P11745447332243219839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A007504 n

end

end A189892.P11745447332243219839

noncomputable section

/-- A189892: a(n) = n*prime(n) - sum_{i=1..n-1} prime(i).

Offset 1, canonical program `A189892.P11745447332243219839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189892 (n : ℕ) : ℤ :=
  A189892.P11745447332243219839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190815.P914547741741299528

`A049690(n)+A002088(2*n)`
-/

namespace A190815.P914547741741299528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n + A002088 (2 * n)

end

end A190815.P914547741741299528

noncomputable section

/-- A190815: A bisection of A049690.

Offset 1, canonical program `A190815.P914547741741299528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190815 (n : ℕ) : ℤ :=
  A190815.P914547741741299528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202301.P8679729127631786445

`A151800(A007504(n+1))`
-/

namespace A202301.P8679729127631786445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007504 (n + 1)).toNat

end

end A202301.P8679729127631786445

noncomputable section

/-- A202301: Next prime after the partial sum of the first n primes.

Offset 1, canonical program `A202301.P8679729127631786445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A202301 (n : ℕ) : ℤ :=
  A202301.P8679729127631786445.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A202301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A203568.P16517688267231901796

`A062157(n)*A199918(n)`
-/

namespace A203568.P16517688267231901796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A199918 n

end

end A203568.P16517688267231901796

noncomputable section

/-- A203568: a(n) = A026837(n) - A026838(n).

Offset 0, canonical program `A203568.P16517688267231901796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203568 (n : ℕ) : ℤ :=
  A203568.P16517688267231901796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211636.P2652783068528798878

`∑[A036698(n)-n]`
-/

namespace A211636.P2652783068528798878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P2652783068528798878

noncomputable section

/-- A211636: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2>=x^2+y^2.

Offset 0, canonical program `A211636.P2652783068528798878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211636 (n : ℕ) : ℤ :=
  A211636.P2652783068528798878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215992.P12067662932436388896

`p?[A007504(n+51)-A007504(n)]`
-/

namespace A215992.P12067662932436388896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 51) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215992.P12067662932436388896

noncomputable section

/-- A215992: Primes that are the sum of 51 consecutive primes.

Offset 1, canonical program `A215992.P12067662932436388896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A215992 (n : ℕ) : ℤ :=
  A215992.P12067662932436388896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A215992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216453.P12765062278134612430

`6*A063985(n+1)`
-/

namespace A216453.P12765062278134612430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A063985 (n + 1)

end

end A216453.P12765062278134612430

noncomputable section

/-- A216453: Number of points hidden from the central point by a closer point in a hexagonal orchard of order n.

Offset 1, canonical program `A216453.P12765062278134612430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216453 (n : ℕ) : ℤ :=
  A216453.P12765062278134612430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225804.P13090922353215695081

`ceil(A007504(n+1)/(n+1))`
-/

namespace A225804.P13090922353215695081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A225804.P13090922353215695081

noncomputable section

/-- A225804: Arithmetic mean of the first n primes, rounded up.

Offset 1, canonical program `A225804.P13090922353215695081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225804 (n : ℕ) : ℤ :=
  A225804.P13090922353215695081.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226318.P4776847927226884081

`A105409(n+1)-1`
-/

namespace A226318.P4776847927226884081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105409 (n + 1) - 1

end

end A226318.P4776847927226884081

noncomputable section

/-- A226318: Positive integers n with p_{n+1}-p_n = 2 and p_{n+3}-p_{n+2} = 2, where p_k denotes the k-th prime.

Offset 1, canonical program `A226318.P4776847927226884081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226318 (n : ℕ) : ℤ :=
  A226318.P4776847927226884081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237684.P6315179612299634331

`floor(A033286(n+1)/A007504(n+1))`
-/

namespace A237684.P6315179612299634331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033286 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ)⌋

end

end A237684.P6315179612299634331

noncomputable section

/-- A237684: a(n) = floor(n*prime(n) / Sum_{i<=n} prime(i)).

Offset 1, canonical program `A237684.P6315179612299634331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A237684 (n : ℕ) : ℤ :=
  A237684.P6315179612299634331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A237684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239731.P14772903405319056009

`A007504(n+1)-A006450(n+1)`
-/

namespace A239731.P14772903405319056009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A006450 (n + 1)

end

end A239731.P14772903405319056009

noncomputable section

/-- A239731: Difference between sum of first n primes and prime(prime(n)).

Offset 1, canonical program `A239731.P14772903405319056009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239731 (n : ℕ) : ℤ :=
  A239731.P14772903405319056009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240568.P14315675564415486684

`(n+1)*A000040(n+1)-2*A007504(n+1)`
-/

namespace A240568.P14315675564415486684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1) - 2 * A007504 (n + 1)

end

end A240568.P14315675564415486684

noncomputable section

/-- A240568: Difference between n times the n-th prime and twice the sum of the first n primes.

Offset 1, canonical program `A240568.P14315675564415486684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240568 (n : ℕ) : ℤ :=
  A240568.P14315675564415486684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245575.P91673300732164970

`Δ[A237526(record[lcm(2, n)])]`
-/

namespace A245575.P91673300732164970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245575.P91673300732164970

noncomputable section

/-- A245575: Number of ways of writing n as the sum of two quarter-squares (cf. A002620).

Offset 0, canonical program `A245575.P91673300732164970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A245575 (n : ℕ) : ℤ :=
  A245575.P91673300732164970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A245575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246763.P9034617049166049105

`A246714(n+1)²%Δ[A007504(n)]`
-/

namespace A246763.P9034617049166049105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246714 (n + 1) ^ 2) (f1 (n + 1) - f1 n)

end

end A246763.P9034617049166049105

noncomputable section

/-- A246763: Catalan(n)^2 mod prime(n).

Offset 1, canonical program `A246763.P9034617049166049105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246763 (n : ℕ) : ℤ :=
  A246763.P9034617049166049105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249679.P425418324060059187

`A007504(eq[0, A007504(n)%3])`
-/

namespace A249679.P425418324060059187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249679.P425418324060059187

noncomputable section

/-- A249679: Terms of A007504 divisible by 3.

Offset 1, canonical program `A249679.P425418324060059187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249679 (n : ℕ) : ℤ :=
  A249679.P425418324060059187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255541.P16486879820483679436

`A005728(2^n-1)`
-/

namespace A255541.P16486879820483679436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (2 ^ n - 1)

end

end A255541.P16486879820483679436

noncomputable section

/-- A255541: a(n) = 1+Sum_{k=1..2^n-1} A000010(k).

Offset 0, canonical program `A255541.P16486879820483679436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005728, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255541 (n : ℕ) : ℤ :=
  A255541.P16486879820483679436.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005728, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256470.P3494554339232187623

`A256469(n+1)-A256468(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256470.P3494554339232187623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) - A256468 (n + 1)

end

end A256470.P3494554339232187623

noncomputable section

/-- A256470: a(n) = A256469(n) - A256468(n).

Offset 1, canonical program `A256470.P3494554339232187623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256468, A256469, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256470 (n : ℕ) : ℤ :=
  A256470.P3494554339232187623.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256468, A256469, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262392.P17406529640943534344

`A007504(n)+A010693(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262392.P17406529640943534344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + A010693 n

end

end A262392.P17406529640943534344

noncomputable section

/-- A262392: a(n) = A007504(n) + A010693(n).

Offset 0, canonical program `A262392.P17406529640943534344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262392 (n : ℕ) : ℤ :=
  A262392.P17406529640943534344.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263170.P6412543418219483663

`A007504(n+1)^3-A098999(n+1)`
-/

namespace A263170.P6412543418219483663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 3 - A098999 (n + 1)

end

end A263170.P6412543418219483663

noncomputable section

/-- A263170: a(n) = (Sum_{k=1..n} prime(k))^3 - (Sum_{k=1..n} prime(k)^3).

Offset 1, canonical program `A263170.P6412543418219483663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A098999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A263170 (n : ℕ) : ℤ :=
  A263170.P6412543418219483663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A098999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A263170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263559.P8053390118549948923

`A083186(n+1)%A007504(n+1)`
-/

namespace A263559.P8053390118549948923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083186 (n + 1)) (A007504 (n + 1))

end

end A263559.P8053390118549948923

noncomputable section

/-- A263559: a(n) = A083186(n) mod A007504(n).

Offset 1, canonical program `A263559.P8053390118549948923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263559 (n : ℕ) : ℤ :=
  A263559.P8053390118549948923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265575.P11957760273569767814

`ratio[A051547(A028310(n))]`
-/

namespace A265575.P11957760273569767814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265575.P11957760273569767814

noncomputable section

/-- A265575: LCM-transform of Euler totient numbers (A000010).

Offset 1, canonical program `A265575.P11957760273569767814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A265575 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265575.P11957760273569767814.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A265575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267084.P13753241132986256046

`ceil(A007504(n+1)/(n+1))-floor(A007504(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267084.P13753241132986256046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ - ⌊(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A267084.P13753241132986256046

noncomputable section

/-- A267084: a(n) = ceiling(A007504(n)/n) - floor(A007504(n)/n); a(n) is 0 if n divides the sum of first n primes, 1 otherwise.

Offset 1, canonical program `A267084.P13753241132986256046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267084 (n : ℕ) : ℤ :=
  A267084.P13753241132986256046.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267084.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267087.P15838477372030421436

`ceil(A007504(n+1)/(n+1))+floor(A007504(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267087.P15838477372030421436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ + ⌊(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A267087.P15838477372030421436

noncomputable section

/-- A267087: a(n) = ceiling(A007504(n)/n) + floor(A007504(n)/n).

Offset 1, canonical program `A267087.P15838477372030421436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267087 (n : ℕ) : ℤ :=
  A267087.P15838477372030421436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268605.P2485238640013637007

`A051885(A007504(n))`
-/

namespace A268605.P2485238640013637007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A007504 n).toNat

end

end A268605.P2485238640013637007

noncomputable section

/-- A268605: a(1) = 0; a(n+1) is the smallest integer in which the difference between its digits sum and the a(n) digits sum is equal to the n-th prime.

Offset 1, canonical program `A268605.P2485238640013637007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268605 (n : ℕ) : ℤ :=
  A268605.P2485238640013637007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272206.P9676339612670176817

`round(A014285(n+1)/A007504(n+1))`
-/

namespace A272206.P9676339612670176817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014285 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ))

end

end A272206.P9676339612670176817

noncomputable section

/-- A272206: Rounded barycenter of first n primes defined as a(n) = round(sum_{i=1..n}(i*prime(i)) / sum_{i=1..n}prime(i)).

Offset 1, canonical program `A272206.P9676339612670176817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A014285, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272206 (n : ℕ) : ℤ :=
  A272206.P9676339612670176817.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A014285, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274921.P6886949141205773937

`A274920(n)+1`
-/

namespace A274921.P6886949141205773937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274920 n + 1

end

end A274921.P6886949141205773937

noncomputable section

/-- A274921: Spiral constructed on the nodes of the triangular net in which each new term is the least positive integer distinct from its neighbors.

Offset 0, canonical program `A274921.P6886949141205773937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274921 (n : ℕ) : ℤ :=
  A274921.P6886949141205773937.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276824.P1865868106888623118

`A000879(n+1)-A007504(n+1)`
-/

namespace A276824.P1865868106888623118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - A007504 (n + 1)

end

end A276824.P1865868106888623118

noncomputable section

/-- A276824: a(n) = p-s, where s = Sum_{i=1..n} prime(i) and p = primepi(prime(n)^2).

Offset 1, canonical program `A276824.P1865868106888623118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000879, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276824 (n : ℕ) : ℤ :=
  A276824.P1865868106888623118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000879, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276824.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283556.P4279643971322405347

`A010888(A007504(n))`
-/

namespace A283556.P4279643971322405347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A007504 n).toNat

end

end A283556.P4279643971322405347

noncomputable section

/-- A283556: Digital root of the sum of the first n primes.

Offset 0, canonical program `A283556.P4279643971322405347`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283556 (n : ℕ) : ℤ :=
  A283556.P4279643971322405347.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286468.P8368266959325649577

`A243353(and(A092323(n+1), A258746(n+1)))`
-/

namespace A286468.P8368266959325649577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (Int.land (A092323 (n + 1)) (A258746 (n + 1))).toNat

end

end A286468.P8368266959325649577

noncomputable section

/-- A286468: Run lengths in the binary expansion of n are one more than the exponents of corresponding primes in the prime factorization of a(n).

Offset 1, canonical program `A286468.P8368266959325649577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286468 (n : ℕ) : ℤ :=
  A286468.P8368266959325649577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301273.P17395654707237324989

`lcm(n+1, A007504(n+1))/(n+1)`
-/

namespace A301273.P17395654707237324989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A007504 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A301273.P17395654707237324989

noncomputable section

/-- A301273: Numerator of mean of first n primes.

Offset 1, canonical program `A301273.P17395654707237324989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301273 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A301273.P17395654707237324989.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301277.P6735917784534562425

`round(A007504(n+1)/(n+1))`
-/

namespace A301277.P6735917784534562425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007504 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A301277.P6735917784534562425

noncomputable section

/-- A301277: Nearest integer to mean of first n primes.

Offset 1, canonical program `A301277.P6735917784534562425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301277 (n : ℕ) : ℤ :=
  A301277.P6735917784534562425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309036.P15951794240758812912

`gcd(A007504(n+1), A014285(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309036.P15951794240758812912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007504 (n + 1)) (A014285 (n + 1))

end

end A309036.P15951794240758812912

noncomputable section

/-- A309036: a(n) = gcd(A007504(n), A014285(n)).

Offset 1, canonical program `A309036.P15951794240758812912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A014285, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309036 (n : ℕ) : ℤ :=
  (A309036.P15951794240758812912.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A014285, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322420.P4592221206710886228

`A007504(A002378(n))`
-/

namespace A322420.P4592221206710886228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A002378 n).toNat

end

end A322420.P4592221206710886228

noncomputable section

/-- A322420: Sum of the first n*(n+1) primes.

Offset 0, canonical program `A322420.P4592221206710886228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322420 (n : ℕ) : ℤ :=
  A322420.P4592221206710886228.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323309.P11860908349838440325

`A007947(n+1)*A034448((n+1)/A007947(n+1))`
-/

namespace A323309.P11860908349838440325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A323309.P11860908349838440325

noncomputable section

/-- A323309: The sum of exponential semiproper divisors of n.

Offset 1, canonical program `A323309.P11860908349838440325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323309 (n : ℕ) : ℤ :=
  A323309.P11860908349838440325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333847.P9301522626114705405

`A063514(A028982(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333847.P9301522626114705405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (A028982 (n + 1)).toNat

end

end A333847.P9301522626114705405

noncomputable section

/-- A333847: a(n) = A063514(A028982(n)).

Offset 1, canonical program `A333847.P9301522626114705405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, A063514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333847 (n : ℕ) : ℤ :=
  A333847.P9301522626114705405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, A063514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343859.P4309510753267781368

`A007504(n+2)-3`
-/

namespace A343859.P4309510753267781368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2) - 3

end

end A343859.P4309510753267781368

noncomputable section

/-- A343859: Partial sums of the primes excluding 3.

Offset 1, canonical program `A343859.P4309510753267781368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343859 (n : ℕ) : ℤ :=
  A343859.P4309510753267781368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344411.P13447493578011651501

`A007504(A000720(3*(n+1)))-A007504(A000720(2*(n+1)))`
-/

namespace A344411.P13447493578011651501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (3 * (n + 1))).toNat - A007504 (A000720 (2 * (n + 1))).toNat

end

end A344411.P13447493578011651501

noncomputable section

/-- A344411: Sum of the prime numbers in the interval (2n, 3n].

Offset 1, canonical program `A344411.P13447493578011651501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344411 (n : ℕ) : ℤ :=
  A344411.P13447493578011651501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345754.P6642101267170344289

`(n+1)²*A344372(n+1)`
-/

namespace A345754.P6642101267170344289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A344372 (n + 1)

end

end A345754.P6642101267170344289

noncomputable section

/-- A345754: Number of 2 X 2 matrices over Z_n whose permanent equals their determinant.

Offset 1, canonical program `A345754.P6642101267170344289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345754 (n : ℕ) : ℤ :=
  A345754.P6642101267170344289.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349191.P3807840381629456878

`A000720(A348907(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349191.P3807840381629456878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A348907 (n + 2)).toNat

end

end A349191.P3807840381629456878

noncomputable section

/-- A349191: a(n) = A000720(A348907(n+1)).

Offset 1, canonical program `A349191.P3807840381629456878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A348907, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349191 (n : ℕ) : ℤ :=
  A349191.P3807840381629456878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A348907, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353382.P5318746231564784083

`A000005(n+1)-A353381(n+1)`
-/

namespace A353382.P5318746231564784083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353381 (n + 1)

end

end A353382.P5318746231564784083

noncomputable section

/-- A353382: Inverse Möbius transform of A353380.

Offset 1, canonical program `A353382.P5318746231564784083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353381, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353382 (n : ℕ) : ℤ :=
  A353382.P5318746231564784083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353381, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354029.P17065459981466861279

`A354028(A026741(n+1))`
-/

namespace A354029.P17065459981466861279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354028 (A026741 (n + 1)).toNat

end

end A354029.P17065459981466861279

noncomputable section

/-- A354029: a(n) = 1 if either n or n/2 is a prime power of the form 4m+3, otherwise 0.

Offset 1, canonical program `A354029.P17065459981466861279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354029 (n : ℕ) : ℤ :=
  A354029.P17065459981466861279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358274.P17704842436153696573

`A262275(n+1)-A348677(n+1)`
-/

namespace A358274.P17704842436153696573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1) - A348677 (n + 1)

end

end A358274.P17704842436153696573

noncomputable section

/-- A358274: a(n) is the prime before A262275(n).

Offset 1, canonical program `A358274.P17704842436153696573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, A348677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358274 (n : ℕ) : ℤ :=
  A358274.P17704842436153696573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, A348677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358558.P4524358198685759852

`A049690(floor((n+1)/2))-A000523(n+1)`
-/

namespace A358558.P4524358198685759852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 ⌊(n + 1 : ℚ) / 2⌋.toNat - A000523 (n + 1)

end

end A358558.P4524358198685759852

noncomputable section

/-- A358558: a(n) is the number of pairs (k,m) of positive integers with 1 <= k < m <= n such that gcd(k,m) = 2^t, t > 0.

Offset 1, canonical program `A358558.P4524358198685759852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358558 (n : ℕ) : ℤ :=
  A358558.P4524358198685759852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362419.P12067227853908555658

`2*A007504(n+1)`
-/

namespace A362419.P12067227853908555658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 (n + 1)

end

end A362419.P12067227853908555658

noncomputable section

/-- A362419: Partial sum of the first n even semiprimes.

Offset 1, canonical program `A362419.P12067227853908555658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362419 (n : ℕ) : ℤ :=
  A362419.P12067227853908555658.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369721.P9851319542305346441

`A034448(A356193(n+1))`
-/

namespace A369721.P9851319542305346441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A356193 (n + 1)).toNat

end

end A369721.P9851319542305346441

noncomputable section

/-- A369721: The sum of unitary divisors of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A369721.P9851319542305346441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369721 (n : ℕ) : ℤ :=
  A369721.P9851319542305346441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374263.P12173342319894559668

`(A049690(n+2)-1)/2`
-/

namespace A374263.P12173342319894559668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049690 (n + 2) - 1 : ℚ) / 2

end

end A374263.P12173342319894559668

noncomputable section

/-- A374263: Number of distinct primitive Pythagorean triples (j^2 - k^2, 2*j*k, j^2 + k^2) where 1 <= k < j <= n.

Offset 2, canonical program `A374263.P12173342319894559668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374263 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374263.P12173342319894559668.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374532.P9847573754567788260

`4*A237526(n²+1)`
-/

namespace A374532.P9847573754567788260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A237526 (n ^ 2 + 1)

end

end A374532.P9847573754567788260

noncomputable section

/-- A374532: Number of complete unit squares that fit inside a circle of radius sqrt(n^2+1) centered at the origin of a square lattice.

Offset 0, canonical program `A374532.P9847573754567788260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374532 (n : ℕ) : ℤ :=
  A374532.P9847573754567788260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374532.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A173556.P12272166252829850610

`A003958(A087112(n+1))%8`
-/

namespace A173556.P12272166252829850610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003958 (A087112 (n + 1)).toNat) 8

end

end A173556.P12272166252829850610

noncomputable section

/-- A173556: Triangle T(n,m) = (prime(n)-1)*(prime(m)- 1) mod 8 read by rows.

Offset 1, canonical program `A173556.P12272166252829850610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A173556 (n : ℕ) : ℤ :=
  A173556.P12272166252829850610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A173556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178472.P12067930664029615455

`2^n-A000740(n+1)`
-/

namespace A178472.P12067930664029615455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000740 (n + 1)

end

end A178472.P12067930664029615455

noncomputable section

/-- A178472: Number of compositions (ordered partitions) of n where the gcd of the part sizes is not 1.

Offset 1, canonical program `A178472.P12067930664029615455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178472 (n : ℕ) : ℤ :=
  A178472.P12067930664029615455.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178841.P12395929515216874443

`(A152537(n)+A010815(n))/2`
-/

namespace A178841.P12395929515216874443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152537 n + A010815 n : ℚ) / 2

end

end A178841.P12395929515216874443

noncomputable section

/-- A178841: The number of pure inverting compositions of n.

Offset 0, canonical program `A178841.P12395929515216874443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A178841 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178841.P12395929515216874443.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A178841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179644.P11803984710528431685

`∩[A030638(n+1), A082294(n+1)]`
-/

namespace A179644.P11803984710528431685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P11803984710528431685

noncomputable section

/-- A179644: Product of the 4th power of a prime and 2 different distinct primes (p^4*q*r).

Offset 1, canonical program `A179644.P11803984710528431685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3259 terms. -/
def A179644 (n : ℕ) : ℤ :=
  (A179644.P11803984710528431685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3259 terms. -/
def A179644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179955.P12787247350186807424

`A098488(10*A009993(n+2))`
-/

namespace A179955.P12787247350186807424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (10 * A009993 (n + 2)).toNat

end

end A179955.P12787247350186807424

noncomputable section

/-- A179955: Numbers whose sum of digits is 10 and which contain no 0 digits.

Offset 1, canonical program `A179955.P12787247350186807424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A179955 (n : ℕ) : ℤ :=
  A179955.P12787247350186807424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A179955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184807.P9604685836924148984

`comp[A184804(n+1)-1]+1`
-/

namespace A184807.P9604685836924148984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184804 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184807.P9604685836924148984

noncomputable section

/-- A184807: Numbers m such that prime(m) is of the form floor(k*s), where s=(5+sqrt(5))/4; complement of A184804.

Offset 1, canonical program `A184807.P9604685836924148984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184807 (n : ℕ) : ℤ :=
  (A184807.P9604685836924148984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190592.P2630804836505561271

`A054055(A007089(n))`
-/

namespace A190592.P2630804836505561271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007089 n).toNat

end

end A190592.P2630804836505561271

noncomputable section

/-- A190592: Maximal digit in base-3 expansion of n.

Offset 0, canonical program `A190592.P2630804836505561271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190592 (n : ℕ) : ℤ :=
  A190592.P2630804836505561271.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190598.P8948535593127818796

`A054055(A007095(n))`
-/

namespace A190598.P8948535593127818796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007095 n).toNat

end

end A190598.P8948535593127818796

noncomputable section

/-- A190598: Maximal digit in base-9 expansion of n.

Offset 0, canonical program `A190598.P8948535593127818796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A190598 (n : ℕ) : ℤ :=
  A190598.P8948535593127818796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A190598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199084.P6700998896668001716

`A018804(n+1)+A193356(n+1)-A344372(n+1)`
-/

namespace A199084.P6700998896668001716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + (A193356 (n + 1) - A344372 (n + 1))

end

end A199084.P6700998896668001716

noncomputable section

/-- A199084: a(n) = Sum_{k=1..n} (-1)^(k+1) gcd(k,n).

Offset 1, canonical program `A199084.P6700998896668001716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199084 (n : ℕ) : ℤ :=
  A199084.P6700998896668001716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200747.P15284769991947233914

`a(A034968(n+1)-1)+1` with `a(0)=0`
-/

namespace A200747.P15284769991947233914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A034968 (n + 1) - 1).toNat + 1

end

end A200747.P15284769991947233914

noncomputable section

/-- A200747: Number of iterations of A034968 required to reach 1.

Offset 1, canonical program `A200747.P15284769991947233914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200747 (n : ℕ) : ℤ :=
  (A200747.P15284769991947233914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206778.P8563083119957903362

`filter[A162306(n+1), A008966(#)]`
-/

namespace A206778.P8563083119957903362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206778.P8563083119957903362

noncomputable section

/-- A206778: Irregular triangle in which n-th row lists squarefree divisors (A005117) of n.

Offset 1, canonical program `A206778.P8563083119957903362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A206778 (n : ℕ) : ℤ :=
  A206778.P8563083119957903362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A206778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211771.P2908802160452686432

`filter[A009993(n+2), A005171(#)]`
-/

namespace A211771.P2908802160452686432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A211771.P2908802160452686432

noncomputable section

/-- A211771: Nonprime numbers with distinct digits in ascending order.

Offset 1, canonical program `A211771.P2908802160452686432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A211771 (n : ℕ) : ℤ :=
  A211771.P2908802160452686432.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A211771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212054.P6228339497904547609

`A211059(A028310(n))-A196227(n)`
-/

namespace A212054.P6228339497904547609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (A028310 n).toNat - A196227 n

end

end A212054.P6228339497904547609

noncomputable section

/-- A212054: Number of (w,x,y,z) with all terms in {1,...,n} and w*x>y*z+1.

Offset 0, canonical program `A212054.P6228339497904547609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A212054 (n : ℕ) : ℤ :=
  A212054.P6228339497904547609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A212054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216651.P4247305366476539235

`A070089(n+2)-A070089(n+1)`
-/

namespace A216651.P4247305366476539235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 2) - A070089 (n + 1)

end

end A216651.P4247305366476539235

noncomputable section

/-- A216651: Lengths of decreasing blocks of A006530, the greatest prime factor of n, starting from the second term.

Offset 1, canonical program `A216651.P4247305366476539235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216651 (n : ℕ) : ℤ :=
  A216651.P4247305366476539235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216965.P13115869739118727536

`p?[A305801(2*(n+1))%A305800(2*(n+2))]`
-/

namespace A216965.P13115869739118727536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305801 (2 * (n + 1))) (A305800 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216965.P13115869739118727536

noncomputable section

/-- A216965: Primes p such that nonprime(p) is odd, where nonprime(1) = 0.

Offset 1, canonical program `A216965.P13115869739118727536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. -/
def A216965 (n : ℕ) : ℤ :=
  A216965.P13115869739118727536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. -/
def A216965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219028.P14180676015968789505

`A057000(A039915(n+1))`
-/

namespace A219028.P14180676015968789505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (A039915 (n + 1)).toNat

end

end A219028.P14180676015968789505

noncomputable section

/-- A219028: Number of non-primitive roots for prime(n), less than prime(n).

Offset 1, canonical program `A219028.P14180676015968789505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A219028 (n : ℕ) : ℤ :=
  A219028.P14180676015968789505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A219028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219647.P16831968749245997982

`n+A219646(n)`
-/

namespace A219647.P16831968749245997982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A219646 n

end

end A219647.P16831968749245997982

noncomputable section

/-- A219647: Positions of zeros in A219649.

Offset 0, canonical program `A219647.P16831968749245997982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219647 (n : ℕ) : ℤ :=
  A219647.P16831968749245997982.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219651.P5835350949150730882

`n-A034968(n)`
-/

namespace A219651.P5835350949150730882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A034968 n

end

end A219651.P5835350949150730882

noncomputable section

/-- A219651: a(n) = n minus (sum of digits in factorial base expansion of n).

Offset 0, canonical program `A219651.P5835350949150730882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219651 (n : ℕ) : ℤ :=
  A219651.P5835350949150730882.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219839.P1850322905401694183

`floor(A176095(n+1)/2)`
-/

namespace A219839.P1850322905401694183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176095 (n + 1) : ℚ) / 2⌋

end

end A219839.P1850322905401694183

noncomputable section

/-- A219839: a(n) is the number of odd integers in 2..(n-1) that have a common factor (other than 1) with n.

Offset 1, canonical program `A219839.P1850322905401694183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219839 (n : ℕ) : ℤ :=
  A219839.P1850322905401694183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226225.P11292451434803138646

`A129438(n)*A130731(n)`
-/

namespace A226225.P11292451434803138646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 n * A130731 n

end

end A226225.P11292451434803138646

noncomputable section

/-- A226225: Expansion of phi(q) * phi(q^8) in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A226225.P11292451434803138646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226225 (n : ℕ) : ℤ :=
  A226225.P11292451434803138646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226240.P5796431811651741051

`(n%2+1)*A129438(n)`
-/

namespace A226240.P5796431811651741051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A129438 n

end

end A226240.P5796431811651741051

noncomputable section

/-- A226240: Expansion of phi(q^4) * phi(q^8) + 2 * q *phi(q^2) * psi(q^8) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A226240.P5796431811651741051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A226240 (n : ℕ) : ℤ :=
  A226240.P5796431811651741051.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A226240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227130.P3624731333316804244

`lt[0, A010673(A131421(n+1)-A060130(n))]`
-/

namespace A227130.P3624731333316804244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A131421 (n + 1) - A060130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227130.P3624731333316804244

noncomputable section

/-- A227130: Numbers k for which there is an even number of nonzero digits when k is written in the factorial base (A007623).

Offset 1, canonical program `A227130.P3624731333316804244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5663 terms. -/
def A227130 (n : ℕ) : ℤ :=
  (A227130.P3624731333316804244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5663 terms. -/
def A227130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227148.P3238414022105672298

`A000035(A034968(2*n))+2*n`
-/

namespace A227148.P3238414022105672298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A034968 (2 * n)).toNat + (2 * n : ℤ)

end

end A227148.P3238414022105672298

noncomputable section

/-- A227148: Numbers k for which the sum of digits is even when k is written in the factorial base (A007623).

Offset 1, canonical program `A227148.P3238414022105672298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A227148 (n : ℕ) : ℤ :=
  A227148.P3238414022105672298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A227148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227149.P2907852417723426036

`eq[1, A019426(A034968(n)+1)]`
-/

namespace A227149.P2907852417723426036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A034968 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227149.P2907852417723426036

noncomputable section

/-- A227149: Numbers k for which the sum of digits is odd when k is written in the factorial base (A007623).

Offset 1, canonical program `A227149.P2907852417723426036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227149 (n : ℕ) : ℤ :=
  (A227149.P2907852417723426036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227191.P7612856529609937237

`n+1-A227153(n+1)`
-/

namespace A227191.P7612856529609937237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A227153 (n + 1)

end

end A227191.P7612856529609937237

noncomputable section

/-- A227191: a(n) = n minus (product of nonzero digits in factorial base representation of n).

Offset 1, canonical program `A227191.P7612856529609937237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227191 (n : ℕ) : ℤ :=
  A227191.P7612856529609937237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228822.P6281530338051954029

`A054055(n)-A055642(n)`
-/

namespace A228822.P6281530338051954029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - A055642 n

end

end A228822.P6281530338051954029

noncomputable section

/-- A228822: Largest digit of n minus the number of digits of n.

Offset 0, canonical program `A228822.P6281530338051954029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228822 (n : ℕ) : ℤ :=
  A228822.P6281530338051954029.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230419.P3694317805320617839

`A034968(A025581(n))-A034968(A002262(n))`
-/

namespace A230419.P3694317805320617839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A025581 n).toNat - A034968 (A002262 n).toNat

end

end A230419.P3694317805320617839

noncomputable section

/-- A230419: Square array A(n,k) = difference of digit sums in factorial base representations (A007623) of n and k, n>=0, k>=0, read by antidiagonals; A(n,k) = A034968(n)-A034968(k).

Offset 0, canonical program `A230419.P3694317805320617839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230419 (n : ℕ) : ℤ :=
  A230419.P3694317805320617839.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232094.P2245050724957225248

`A060130(A000217(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232094.P2245050724957225248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A000217 n).toNat

end

end A232094.P2245050724957225248

noncomputable section

/-- A232094: a(n) = A060130(A000217(n)); number of nonzero digits in factorial base representation (A007623) of 0+1+2+...+n.

Offset 0, canonical program `A232094.P2245050724957225248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232094 (n : ℕ) : ℤ :=
  A232094.P2245050724957225248.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232095.P10152144582324022357

`A034968(A000217(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232095.P10152144582324022357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A000217 n).toNat

end

end A232095.P10152144582324022357

noncomputable section

/-- A232095: Minimal number of factorials which add to 0+1+2+...+n; a(n) = A034968(A000217(n)).

Offset 0, canonical program `A232095.P10152144582324022357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232095 (n : ℕ) : ℤ :=
  A232095.P10152144582324022357.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232499.P12591052901024712855

`record[A237526(abs(2-n))]`
-/

namespace A232499.P12591052901024712855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232499.P12591052901024712855

noncomputable section

/-- A232499: Number of unit squares, aligned with a Cartesian grid, completely within the first quadrant of a circle centered at the origin ordered by increasing radius.

Offset 1, canonical program `A232499.P12591052901024712855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A232499 (n : ℕ) : ℤ :=
  A232499.P12591052901024712855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A232499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244554.P4002939539755767008

`A243747(2*(n+1))`
-/

namespace A244554.P4002939539755767008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243747 (2 * (n + 1))

end

end A244554.P4002939539755767008

noncomputable section

/-- A244554: Expansion of phi(q) * (phi(q) - phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A244554.P4002939539755767008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244554 (n : ℕ) : ℤ :=
  A244554.P4002939539755767008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244989.P3305847309718885710

`n+1-A244988(n+1)`
-/

namespace A244989.P3305847309718885710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A244988 (n + 1)

end

end A244989.P3305847309718885710

noncomputable section

/-- A244989: Partial sums of A244992: a(1) = 0, and for n >= 1, a(n) = A244992(n) + a(n-1); Inverse function for A244991.

Offset 1, canonical program `A244989.P3305847309718885710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244989 (n : ℕ) : ℤ :=
  A244989.P3305847309718885710.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247133.P10561037915194657674

`A033999(n)*A186742(n)`
-/

namespace A247133.P10561037915194657674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A186742 n

end

end A247133.P10561037915194657674

noncomputable section

/-- A247133: Expansion of f(-x, -x^11) in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A247133.P10561037915194657674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247133 (n : ℕ) : ℤ :=
  A247133.P10561037915194657674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248805.P1988173767871098279

`A156257(n+1)-A074292(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248805.P1988173767871098279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156257 (n + 1) - A074292 (n + 1)

end

end A248805.P1988173767871098279

noncomputable section

/-- A248805: The difference A156257(n)-A074292(n).

Offset 1, canonical program `A248805.P1988173767871098279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156257, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248805 (n : ℕ) : ℤ :=
  A248805.P1988173767871098279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156257, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249140.P13605386914329055997

`A003958(A002808(n+1))`
-/

namespace A249140.P13605386914329055997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A002808 (n + 1)).toNat

end

end A249140.P13605386914329055997

noncomputable section

/-- A249140: To obtain a(n), write the n-th composite number as a product of primes, subtract 1 from each prime and multiply.

Offset 1, canonical program `A249140.P13605386914329055997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249140 (n : ℕ) : ℤ :=
  A249140.P13605386914329055997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250222.P10068507283235786758

`A057000(2*(n+1))`
-/

namespace A250222.P10068507283235786758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (2 * (n + 1))

end

end A250222.P10068507283235786758

noncomputable section

/-- A250222: a(n) = phi(2n+1) - phi(2n), where phi is A000010.

Offset 1, canonical program `A250222.P10068507283235786758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A250222 (n : ℕ) : ℤ :=
  A250222.P10068507283235786758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A250222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257510.P6240819439116695136

`A084558(n+1)-A060130(n+1)`
-/

namespace A257510.P6240819439116695136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (n + 1) - A060130 (n + 1)

end

end A257510.P6240819439116695136

noncomputable section

/-- A257510: Number of nonleading zeros in factorial base representation of n (A007623).

Offset 1, canonical program `A257510.P6240819439116695136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060130, A084558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257510 (n : ℕ) : ℤ :=
  A257510.P6240819439116695136.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060130, A084558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257680.P15970174922144783842

`round(atan(A257511(n)))`
-/

namespace A257680.P15970174922144783842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A257511 n : ℝ))

end

end A257680.P15970174922144783842

noncomputable section

/-- A257680: Characteristic function for A256450: 1 if there is at least one 1-digit present in the factorial representation of n (A007623), otherwise 0.

Offset 0, canonical program `A257680.P15970174922144783842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257680 (n : ℕ) : ℤ :=
  A257680.P15970174922144783842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261082.P8170488330143915318

`A261081(n)+1`
-/

namespace A261082.P8170488330143915318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261081 n + 1

end

end A261082.P8170488330143915318

noncomputable section

/-- A261082: a(n) = number of steps required to reach 0 from F(n+2) by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

Offset 0, canonical program `A261082.P8170488330143915318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261082 (n : ℕ) : ℤ :=
  A261082.P8170488330143915318.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262725.P4929212033244102736

`(-1)^A034968(n)`
-/

namespace A262725.P4929212033244102736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A034968 n : ℤ)

end

end A262725.P4929212033244102736

noncomputable section

/-- A262725: The unique function f with f(1)=1 and f(jD!+k)=(-1)^j f(k) for all D, j=1..D, and k=1..D!.

Offset 1, canonical program `A262725.P4929212033244102736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A262725.P4929212033244102736.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275156.P8746114165436462758

`∩[A080681(n+1)-1, A080681(n+1)]`
-/

namespace A275156.P8746114165436462758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275156.P8746114165436462758

noncomputable section

/-- A275156: The 108 numbers n such that n(n+1) is 17-smooth.

Offset 1, canonical program `A275156.P8746114165436462758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A275156 (n : ℕ) : ℤ :=
  (A275156.P8746114165436462758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A275156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276112.P8212586368584105175

`A071562(n+2)-1`
-/

namespace A276112.P8212586368584105175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 2) - 1

end

end A276112.P8212586368584105175

noncomputable section

/-- A276112: Numbers with precipice 1: descending by the main diagonal of the pyramid described in A245092, the height difference between the level a(n) (starting from the top) and the level of the next terrace is equal to 1.

Offset 1, canonical program `A276112.P8212586368584105175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276112 (n : ℕ) : ℤ :=
  A276112.P8212586368584105175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276555.P9709208659877672579

`a(A243291(n+1)-1)+1` with `a(0)=0`
-/

namespace A276555.P9709208659877672579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A243291 (n + 1) - 1).toNat + 1

end

end A276555.P9709208659877672579

noncomputable section

/-- A276555: Number of steps to reach 1 when starting from n and iterating the map x -> x - A061395(x).

Offset 1, canonical program `A276555.P9709208659877672579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276555 (n : ℕ) : ℤ :=
  (A276555.P9709208659877672579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276793.P6692856727762475709

`(A080843(n)-1)*(A080843(n)-2)/2`
-/

namespace A276793.P6692856727762475709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A080843 n - 1) * (A080843 n - 2) : ℚ) / 2

end

end A276793.P6692856727762475709

noncomputable section

/-- A276793: Indicator function for A003144.

Offset 1, canonical program `A276793.P6692856727762475709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276793 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276793.P6692856727762475709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280223.P8560381770176027686

`A071562(A348110(n+1)+1)-(n+1)`
-/

namespace A280223.P8560381770176027686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A348110 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A280223.P8560381770176027686

noncomputable section

/-- A280223: Distance of n to the next number with middle divisors.

Offset 1, canonical program `A280223.P8560381770176027686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280223 (n : ℕ) : ℤ :=
  A280223.P8560381770176027686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280800.P15800914194620614988

`A049501(A051953(n+1))`
-/

namespace A280800.P15800914194620614988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A051953 (n + 1)).toNat

end

end A280800.P15800914194620614988

noncomputable section

/-- A280800: a(n) = A049501(cototient(n)).

Offset 1, canonical program `A280800.P15800914194620614988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280800 (n : ℕ) : ℤ :=
  A280800.P15800914194620614988.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282720.P8202406451560366855

`∑[A007306(n)]-1`
-/

namespace A282720.P8202406451560366855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A282720.P8202406451560366855

noncomputable section

/-- A282720: Number of nonzero terms in first n rows of the base-2 generalized Pascal triangle P_2 (see A282714).

Offset 0, canonical program `A282720.P8202406451560366855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282720 (n : ℕ) : ℤ :=
  A282720.P8202406451560366855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283973.P12202427252811082316

`lt[A283988(n+1), 1]+1`
-/

namespace A283973.P12202427252811082316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283988 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283973.P12202427252811082316

noncomputable section

/-- A283973: Numbers n such that A007306(n) = A283986(n); positions of zeros in A283988.

Offset 1, canonical program `A283973.P12202427252811082316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A283973 (n : ℕ) : ℤ :=
  (A283973.P12202427252811082316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A283973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283974.P17363378362124844892

`comp[lt[A283988(n+1), 1]]+1`
-/

namespace A283974.P17363378362124844892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283988 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A283974.P17363378362124844892

noncomputable section

/-- A283974: Numbers n for which A002487(n-1) AND A002487(n) > 0 where AND is bitwise-and (A004198).

Offset 1, canonical program `A283974.P17363378362124844892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283974 (n : ℕ) : ℤ :=
  (A283974.P17363378362124844892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283987.P9700574852503741046

`A283977(2*(n+1)-1)`
-/

namespace A283987.P9700574852503741046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * (n + 1) - 1)

end

end A283987.P9700574852503741046

noncomputable section

/-- A283987: a(n) = A002487(n-1) XOR A002487(n), where XOR is bitwise-xor (A003987).

Offset 1, canonical program `A283987.P9700574852503741046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283987 (n : ℕ) : ℤ :=
  A283987.P9700574852503741046.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286604.P16261278403836028950

`(n+1)%A034968(n+1)`
-/

namespace A286604.P16261278403836028950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A034968 (n + 1))

end

end A286604.P16261278403836028950

noncomputable section

/-- A286604: a(n) = n mod sum of digits of n in factorial base.

Offset 1, canonical program `A286604.P16261278403836028950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286604 (n : ℕ) : ℤ :=
  A286604.P16261278403836028950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288002.P13918482005494738107

`A007306(n+1)-A287896(n+1)`
-/

namespace A288002.P13918482005494738107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A287896 (n + 1)

end

end A288002.P13918482005494738107

noncomputable section

/-- A288002: L-fusc, sequence l of the mutual diatomic recurrence pair: l(1)=0, r(1)=1, l(2n) = l(n), r(2n) = r(n), l(2n+1) = l(n)+r(n), r(2n+1) = l(n+1)+r(n+1), where r(n) = A288003(n).

Offset 1, canonical program `A288002.P13918482005494738107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288002 (n : ℕ) : ℤ :=
  A288002.P13918482005494738107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289494.P5014918227577049287

`abs(A101909(n+1)-A289493(n+1))`
-/

namespace A289494.P5014918227577049287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101909 (n + 1) - A289493 (n + 1)|

end

end A289494.P5014918227577049287

noncomputable section

/-- A289494: Number of primes in the interval [3n, 4n].

Offset 1, canonical program `A289494.P5014918227577049287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289494 (n : ℕ) : ℤ :=
  A289494.P5014918227577049287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291179.P5775307500960395627

`A057427(C(A174058(n+1), A333242(n+1)))+n`
-/

namespace A291179.P5775307500960395627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A174058 (n + 1)).toNat (A333242 (n + 1)).toNat) + (n : ℤ)

end

end A291179.P5775307500960395627

noncomputable section

/-- A291179: Numbers in at least one Fibonacci sequence starting with two 1-digit numbers.

Offset 1, canonical program `A291179.P5775307500960395627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A291179 (n : ℕ) : ℤ :=
  A291179.P5775307500960395627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A291179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294612.P4833185872788990948

`A007504(n+1)/A024450(n+1)*A296199(n+1)`
-/

namespace A294612.P4833185872788990948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A024450 (n + 1) : ℚ) * (A296199 (n + 1) : ℚ)

end

end A294612.P4833185872788990948

noncomputable section

/-- A294612: Denominator of the contraharmonic mean of the first n primes.

Offset 1, canonical program `A294612.P4833185872788990948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294612.P4833185872788990948.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297167.P13113550866660970867

`A252464(n+1)-A001221(n+1)`
-/

namespace A297167.P13113550866660970867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A001221 (n + 1)

end

end A297167.P13113550866660970867

noncomputable section

/-- A297167: a(1) = 0, for n > 1, a(n) = -1 + the excess of n (A046660) + the index of the largest prime factor (A061395).

Offset 1, canonical program `A297167.P13113550866660970867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A252464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297167 (n : ℕ) : ℤ :=
  A297167.P13113550866660970867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A252464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297616.P7077646546483356359

`∑[round(A140254(n+1)/(n+1))]`
-/

namespace A297616.P7077646546483356359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A140254 (n + 1) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297616.P7077646546483356359

noncomputable section

/-- A297616: a(n) is the number of connected components in the graph with vertices 1..n and adjacency criterion i and j not coprime.

Offset 1, canonical program `A297616.P7077646546483356359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297616 (n : ℕ) : ℤ :=
  A297616.P7077646546483356359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299233.P3070177688433003518

`2*n+1-A002265(A080543(n+1))`
-/

namespace A299233.P3070177688433003518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A002265 (A080543 (n + 1)).toNat

end

end A299233.P3070177688433003518

noncomputable section

/-- A299233: Ranks of {2,3}-power towers that end with 2; see Comments.

Offset 1, canonical program `A299233.P3070177688433003518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A299233 (n : ℕ) : ℤ :=
  A299233.P3070177688433003518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A299233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301593.P6623717910831163898

`A034968((n+1)*C(A060130(n+1), A034968(n+1)))`
-/

namespace A301593.P6623717910831163898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 ((n + 1) * Nat.choose (A060130 (n + 1)).toNat (A034968 (n + 1)).toNat)

end

end A301593.P6623717910831163898

noncomputable section

/-- A301593: n can be represented the sum of a(n) distinct factorials. (If there is no such representation, a(n) = 0.)

Offset 1, canonical program `A301593.P6623717910831163898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301593 (n : ℕ) : ℤ :=
  A301593.P6623717910831163898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308442.P6666424184122599892

`ceil(A192618(n+1)/2)`
-/

namespace A308442.P6666424184122599892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A192618 (n + 1) : ℚ) / 2⌉

end

end A308442.P6666424184122599892

noncomputable section

/-- A308442: Primes of the form (p^k+1)/2 where p is prime and k > 1.

Offset 1, canonical program `A308442.P6666424184122599892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A308442 (n : ℕ) : ℤ :=
  A308442.P6666424184122599892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A308442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309256.P1094537150064723946

`n+1-A007306(n)`
-/

namespace A309256.P1094537150064723946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007306 n

end

end A309256.P1094537150064723946

noncomputable section

/-- A309256: a(n) = n + 1 - Sum_{k=0..n} (Stirling2(n,k) mod 2).

Offset 0, canonical program `A309256.P1094537150064723946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309256 (n : ℕ) : ℤ :=
  A309256.P1094537150064723946.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318322.P15992978516204358098

`∑{e}[n+1, A007306(#)]`
-/

namespace A318322.P15992978516204358098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007306 (Nat.factorization (f1 n) p)

end

end A318322.P15992978516204358098

noncomputable section

/-- A318322: Additive with a(p^e) = A007306(e).

Offset 1, canonical program `A318322.P15992978516204358098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318322 (n : ℕ) : ℤ :=
  A318322.P15992978516204358098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318446.P15456378117456021358

`A318448(n+1)+A007429(n+1)`
-/

namespace A318446.P15456378117456021358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318448 (n + 1) + A007429 (n + 1)

end

end A318446.P15456378117456021358

noncomputable section

/-- A318446: Inverse Möbius transform of A005187: a(n) = Sum_{d|n} A005187(d).

Offset 1, canonical program `A318446.P15456378117456021358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A318448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318446 (n : ℕ) : ℤ :=
  A318446.P15456378117456021358.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A318448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318446.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319529.P1117598042908344676

`2*lt[A348327(2*n+1), 1]+1`
-/

namespace A319529.P1117598042908344676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A319529.P1117598042908344676

noncomputable section

/-- A319529: Odd numbers that have middle divisors.

Offset 1, canonical program `A319529.P1117598042908344676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5445 terms. -/
def A319529 (n : ℕ) : ℤ :=
  (A319529.P1117598042908344676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5445 terms. -/
def A319529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319711.P4258072044163212966

`∑{d}[n+1, A034968(#%(n+1))]`
-/

namespace A319711.P4258072044163212966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034968 (d % (n + 1))

end

end A319711.P4258072044163212966

noncomputable section

/-- A319711: Sum of A034968(d) over proper divisors d of n, where A034968 gives the sum of digits in factorial base.

Offset 1, canonical program `A319711.P4258072044163212966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319711 (n : ℕ) : ℤ :=
  A319711.P4258072044163212966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319801.P2334632365175691862

`comp[or(n, A348327(n+1))]+1`
-/

namespace A319801.P2334632365175691862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A348327 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319801.P2334632365175691862

noncomputable section

/-- A319801: Odd numbers without middle divisors.

Offset 1, canonical program `A319801.P2334632365175691862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319801 (n : ℕ) : ℤ :=
  (A319801.P2334632365175691862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319802.P14391175377016966646

`2*A348471(n+1)`
-/

namespace A319802.P14391175377016966646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348471 (n + 1)

end

end A319802.P14391175377016966646

noncomputable section

/-- A319802: Even numbers without middle divisors.

Offset 1, canonical program `A319802.P14391175377016966646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319802 (n : ℕ) : ℤ :=
  A319802.P14391175377016966646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319993.P711255343025282325

`A319997(n+1)/A173557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319993.P711255343025282325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A319993.P711255343025282325

noncomputable section

/-- A319993: a(n) = A319997(n) / A173557(n).

Offset 1, canonical program `A319993.P711255343025282325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319993 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319993.P711255343025282325.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321544.P13685944617958708160

`2*A051002(n+1)-A001160(n+1)`
-/

namespace A321544.P13685944617958708160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051002 (n + 1) - A001160 (n + 1)

end

end A321544.P13685944617958708160

noncomputable section

/-- A321544: a(n) = Sum_{d|n} (-1)^(d-1)*d^5.

Offset 1, canonical program `A321544.P13685944617958708160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321544 (n : ℕ) : ℤ :=
  A321544.P13685944617958708160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322581.P15493543185383869202

`A003958(n+1)+A097945(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322581.P15493543185383869202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + A097945 (n + 1)

end

end A322581.P15493543185383869202

noncomputable section

/-- A322581: Sum of A003958 and its Dirichlet inverse: a(n) = A003958(n) + A097945(n).

Offset 1, canonical program `A322581.P15493543185383869202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A097945, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322581 (n : ℕ) : ℤ :=
  A322581.P15493543185383869202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A097945, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322581.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322582.P8560399753878851377

`n+1-A003958(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322582.P8560399753878851377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003958 (n + 1)

end

end A322582.P8560399753878851377

noncomputable section

/-- A322582: a(n) = n - A003958(n), where A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A322582.P8560399753878851377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322582 (n : ℕ) : ℤ :=
  A322582.P8560399753878851377.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323159.P15063359225251792079

`gcd(A034448(n+1), A048250(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323159.P15063359225251792079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1)) (A048250 (n + 1))

end

end A323159.P15063359225251792079

noncomputable section

/-- A323159: Greatest common divisor of product (1+(p^e)) and product (1+p), where p ranges over prime factors of n, with e corresponding exponent; a(n) = gcd(A034448(n), A048250(n)).

Offset 1, canonical program `A323159.P15063359225251792079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323159 (n : ℕ) : ℤ :=
  (A323159.P15063359225251792079.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323163.P4975270130842201010

`gcd(A034448(n+1), A003557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323163.P4975270130842201010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1)) (A003557 (n + 1))

end

end A323163.P4975270130842201010

noncomputable section

/-- A323163: Greatest common divisor of product (1+(p^e)) and product p^(e-1), where p ranges over prime factors of n, with e corresponding exponent; a(n) = gcd(A034448(n), A003557(n)).

Offset 1, canonical program `A323163.P4975270130842201010`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323163 (n : ℕ) : ℤ :=
  (A323163.P4975270130842201010.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324044.P16013423005150912487

`A003958(n+1)-A033879(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324044.P16013423005150912487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) - A033879 (n + 1)

end

end A324044.P16013423005150912487

noncomputable section

/-- A324044: a(n) = A003958(n) - A033879(n).

Offset 1, canonical program `A324044.P16013423005150912487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324044 (n : ℕ) : ℤ :=
  A324044.P16013423005150912487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324639.P17877870540520381496

`eq[(A318466(n+1)-A318467(n+1))/2, A318458(n+1)]+1`
-/

namespace A324639.P17877870540520381496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318466 (n + 1) - A318467 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A324639.P17877870540520381496

noncomputable section

/-- A324639: Numbers k such that bitand(2k,sigma(k)) = 2*bitand(k,sigma(k)-k), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324639.P17877870540520381496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. -/
def A324639 (n : ℕ) : ℤ :=
  (A324639.P17877870540520381496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. -/
def A324639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324658.P12557822130857951693

`n+1-A324659(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324658.P12557822130857951693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A324659 (n + 1)

end

end A324658.P12557822130857951693

noncomputable section

/-- A324658: a(n) = n - A324659(n), where A324659(n) is half of bitwise-AND of 2*n and sigma(n).

Offset 1, canonical program `A324658.P12557822130857951693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324658 (n : ℕ) : ℤ :=
  A324658.P12557822130857951693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325134.P8946370293622767949

`A252464(n+1)+1`
-/

namespace A325134.P8946370293622767949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + 1

end

end A325134.P8946370293622767949

noncomputable section

/-- A325134: a(1) = 1; a(n) = number of prime factors of n counted with multiplicity plus the largest prime index of n.

Offset 1, canonical program `A325134.P8946370293622767949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325134 (n : ℕ) : ℤ :=
  A325134.P8946370293622767949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325973.P1592013717773654083

`(A034448(n+1)+A048250(n+1))/2`
-/

namespace A325973.P1592013717773654083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) + A048250 (n + 1) : ℚ) / 2

end

end A325973.P1592013717773654083

noncomputable section

/-- A325973: Arithmetic mean of {sum of unitary divisors} and {sum of squarefree divisors}: a(n) = (1/2) * (A034448(n) + A048250(n)).

Offset 1, canonical program `A325973.P1592013717773654083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325973 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325973.P1592013717773654083.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330137.P857110562729131261

`∩[A080671(n+1), A279622(n+1)]`
-/

namespace A330137.P857110562729131261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330137.P857110562729131261

noncomputable section

/-- A330137: Numbers m such that 1 < gcd(m, 30) < m and m does not divide 30^e for e >= 0.

Offset 1, canonical program `A330137.P857110562729131261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7288 terms. -/
def A330137 (n : ℕ) : ℤ :=
  (A330137.P857110562729131261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7288 terms. -/
def A330137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331895.P11168448018872663609

`∩[A331893(n+1), A331894(n+1)]`
-/

namespace A331895.P11168448018872663609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P11168448018872663609

noncomputable section

/-- A331895: Positive numbers k such that the binary and negabinary representations of k and the negabinary representation of -k are all palindromic.

Offset 1, canonical program `A331895.P11168448018872663609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A331895 (n : ℕ) : ℤ :=
  (A331895.P11168448018872663609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A331895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333787.P7563771657480233851

`A003958(n+1)*A006519(n+1)`
-/

namespace A333787.P7563771657480233851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A006519 (n + 1)

end

end A333787.P7563771657480233851

noncomputable section

/-- A333787: Fully multiplicative with a(2) = 2 and a(p) = p-1 for odd primes p.

Offset 1, canonical program `A333787.P7563771657480233851`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333787 (n : ℕ) : ℤ :=
  A333787.P7563771657480233851.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338247.P17670720856560393177

`A338245(A338245(n))`
-/

namespace A338247.P17670720856560393177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338245 (A338245 n).toNat

end

end A338247.P17670720856560393177

noncomputable section

/-- A338247: Inverse permutation to A338245.

Offset 0, canonical program `A338247.P17670720856560393177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338247 (n : ℕ) : ℤ :=
  A338247.P17670720856560393177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340081.P14898792459419955035

`gcd(n, A003958(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340081.P14898792459419955035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003958 (n + 1))

end

end A340081.P14898792459419955035

noncomputable section

/-- A340081: a(n) = gcd(n-1, A003958(n)).

Offset 1, canonical program `A340081.P14898792459419955035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340081 (n : ℕ) : ℤ :=
  (A340081.P14898792459419955035.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341629.P10620741224943255080

`A331281(∏{p}[n+1, #])`
-/

namespace A341629.P10620741224943255080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A341629.P10620741224943255080

noncomputable section

/-- A341629: Characteristic function of A055932: a(n) = 1 if n is a number all of whose prime divisors are consecutive primes starting at 2, otherwise 0.

Offset 1, canonical program `A341629.P10620741224943255080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341629 (n : ℕ) : ℤ :=
  A341629.P10620741224943255080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343440.P31135175070880535

`∑{d}[A003557(n+1), A000740((n+1)/#)]`
-/

namespace A343440.P31135175070880535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343440.P31135175070880535

noncomputable section

/-- A343440: a(n) = Sum_{d|n, gcd(d, n/d) = 1} (-1)^omega(n/d) * 2^(d-1).

Offset 1, canonical program `A343440.P31135175070880535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A343440 (n : ℕ) : ℤ :=
  A343440.P31135175070880535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A343440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346867.P16453727210105736092

`A000203(A071562(n+1))`
-/

namespace A346867.P16453727210105736092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A071562 (n + 1)).toNat

end

end A346867.P16453727210105736092

noncomputable section

/-- A346867: Sum of divisors of the numbers that have middle divisors.

Offset 1, canonical program `A346867.P16453727210105736092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346867 (n : ℕ) : ℤ :=
  A346867.P16453727210105736092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346867.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347382.P9157316412378823865

`A252464(n+1)-A252464(A000593(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347382.P9157316412378823865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (A000593 (n + 1)).toNat

end

end A347382.P9157316412378823865

noncomputable section

/-- A347382: a(n) = A252464(n) - A252464(A000593(n)).

Offset 1, canonical program `A347382.P9157316412378823865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347382 (n : ℕ) : ℤ :=
  A347382.P9157316412378823865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348928.P1977074338902689538

`gcd(n+1, A003958(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348928.P1977074338902689538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003958 (n + 1))

end

end A348928.P1977074338902689538

noncomputable section

/-- A348928: a(n) = gcd(n, A003958(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e.

Offset 1, canonical program `A348928.P1977074338902689538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348928 (n : ℕ) : ℤ :=
  (A348928.P1977074338902689538.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351442.P14048376927472810043

`A003958(A000203(n+1))`
-/

namespace A351442.P14048376927472810043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000203 (n + 1)).toNat

end

end A351442.P14048376927472810043

noncomputable section

/-- A351442: a(n) = A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351442.P14048376927472810043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351442 (n : ℕ) : ℤ :=
  A351442.P14048376927472810043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352033.P10755563011180066533

`A051002(n+1)-(n+1)^5*A000035(n+1)`
-/

namespace A352033.P10755563011180066533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051002 (n + 1) - ((n + 1) ^ 5 : ℤ) * A000035 (n + 1)

end

end A352033.P10755563011180066533

noncomputable section

/-- A352033: Sum of the 5th powers of the odd proper divisors of n.

Offset 1, canonical program `A352033.P10755563011180066533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352033 (n : ℕ) : ℤ :=
  A352033.P10755563011180066533.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352051.P15218436939402893896

`A051002(n+1)*A006519(n+1)^5-A000035(n+1)`
-/

namespace A352051.P15218436939402893896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051002 (n + 1) * A006519 (n + 1) ^ 5 - A000035 (n + 1)

end

end A352051.P15218436939402893896

noncomputable section

/-- A352051: Sum of the 5th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352051.P15218436939402893896`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352051 (n : ℕ) : ℤ :=
  A352051.P15218436939402893896.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353375.P197900174002010438

`A000005(n+1)-A353376(n+1)`
-/

namespace A353375.P197900174002010438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353376 (n + 1)

end

end A353375.P197900174002010438

noncomputable section

/-- A353375: Number of divisors of n that are not in A345452.

Offset 1, canonical program `A353375.P197900174002010438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353375 (n : ℕ) : ℤ :=
  A353375.P197900174002010438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354760.P8419242829746623981

`1+a(n-A054055(n))` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354760.P8419242829746623981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A054055 n).toNat

end

end A354760.P8419242829746623981

noncomputable section

/-- A354760: a(0) = 0; for n >= 1, a(n) = a(n - A054055(n)) + 1.

Offset 0, canonical program `A354760.P8419242829746623981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354760 (n : ℕ) : ℤ :=
  (A354760.P8419242829746623981.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355280.P12882028884349807086

`A007088(A033015(n+1))`
-/

namespace A355280.P12882028884349807086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A033015 (n + 1)).toNat

end

end A355280.P12882028884349807086

noncomputable section

/-- A355280: Binary numbers (digits in {0, 1}) with no run of digits with length < 2.

Offset 1, canonical program `A355280.P12882028884349807086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A033015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355280 (n : ℕ) : ℤ :=
  A355280.P12882028884349807086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A033015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356845.P13701475926047040906

`eq[ϕ/a(n-1), A137794(n+1)]+1` with `a(0)=1`
-/

namespace A356845.P13701475926047040906
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A356845.P13701475926047040906

noncomputable section

/-- A356845: Odd numbers with gapless prime indices.

Offset 1, canonical program `A356845.P13701475926047040906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5385 terms. -/
def A356845 (n : ℕ) : ℤ :=
  (A356845.P13701475926047040906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5385 terms. -/
def A356845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358976.P7223524224958330645

`eq[1, gcd(n, A034968(n))]`
-/

namespace A358976.P7223524224958330645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A034968 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358976.P7223524224958330645

noncomputable section

/-- A358976: Numbers that are coprime to the sum of their factorial base digits (A034968).

Offset 1, canonical program `A358976.P7223524224958330645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6064 terms. -/
def A358976 (n : ℕ) : ℤ :=
  (A358976.P7223524224958330645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6064 terms. -/
def A358976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360720.P1092030022091777669

`A034448(n+1)/A092261(n+1)`
-/

namespace A360720.P1092030022091777669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ)

end

end A360720.P1092030022091777669

noncomputable section

/-- A360720: a(n) is the sum of unitary divisors of n that are powerful (A001694).

Offset 1, canonical program `A360720.P1092030022091777669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A092261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360720 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360720.P1092030022091777669.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A092261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366959.P2192269047836251233

`eq[A054054(n)+2, A054055(n)]`
-/

namespace A366959.P2192269047836251233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366959.P2192269047836251233

noncomputable section

/-- A366959: Numbers whose difference between the largest and smallest digits is equal to 2.

Offset 1, canonical program `A366959.P2192269047836251233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A366959 (n : ℕ) : ℤ :=
  (A366959.P2192269047836251233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A366959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366962.P16010517358609303097

`eq[A054054(n)+2, A054055(n)-3]`
-/

namespace A366962.P16010517358609303097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366962.P16010517358609303097

noncomputable section

/-- A366962: Numbers whose difference between the largest and smallest digits is equal to 5.

Offset 1, canonical program `A366962.P16010517358609303097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A366962 (n : ℕ) : ℤ :=
  (A366962.P16010517358609303097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A366962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368342.P15145048510541553360

`∑[A034968(floor(n²/(n+1)))]`
-/

namespace A368342.P15145048510541553360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368342.P15145048510541553360

noncomputable section

/-- A368342: Sum of digits of the numbers 0..n-1 in factorial base (A108731).

Offset 0, canonical program `A368342.P15145048510541553360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368342 (n : ℕ) : ℤ :=
  A368342.P15145048510541553360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368739.P7919696125845404475

`A000034(n)*A062803(n+1)`
-/

namespace A368739.P7919696125845404475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A062803 (n + 1)

end

end A368739.P7919696125845404475

noncomputable section

/-- A368739: a(n) = Sum_{k = 1..n} gcd(4*k, n).

Offset 1, canonical program `A368739.P7919696125845404475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368739 (n : ℕ) : ℤ :=
  A368739.P7919696125845404475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372429.P17746023410303381127

`A227192(A338524(n+1))`
-/

namespace A372429.P17746023410303381127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227192 (A338524 (n + 1)).toNat

end

end A372429.P17746023410303381127

noncomputable section

/-- A372429: Sum of binary indices of prime(n). Sum of positions of ones in the reversed binary expansion of prime(n).

Offset 1, canonical program `A372429.P17746023410303381127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A372429 (n : ℕ) : ℤ :=
  A372429.P17746023410303381127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A372429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374466.P2704209594539488434

`A066829(n+1)*(1-A359464(n+1))`
-/

namespace A374466.P2704209594539488434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * (1 - A359464 (n + 1))

end

end A374466.P2704209594539488434

noncomputable section

/-- A374466: a(n) = 1 if n is the product of an odd number of primes and the total number of 1-bits in the exponents of its prime factorization is odd, otherwise 0.

Offset 1, canonical program `A374466.P2704209594539488434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374466 (n : ℕ) : ℤ :=
  A374466.P2704209594539488434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374468.P16396236909376006343

`A034968(n)%2`
-/

namespace A374468.P16396236909376006343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034968 n) 2

end

end A374468.P16396236909376006343

noncomputable section

/-- A374468: Parity of the digit sum of n in factorial base.

Offset 0, canonical program `A374468.P16396236909376006343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374468 (n : ℕ) : ℤ :=
  A374468.P16396236909376006343.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374471.P2134863705312420223

`A065043(n+1)*A359464(n+1)`
-/

namespace A374471.P2134863705312420223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A359464 (n + 1)

end

end A374471.P2134863705312420223

noncomputable section

/-- A374471: a(n) = 1 if bigomega(n) and A064547(n) are both even, otherwise 0, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374471.P2134863705312420223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374471 (n : ℕ) : ℤ :=
  A374471.P2134863705312420223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378200.P9582015431075575270

`A056023(A381664(A381664(n+1)))`
-/

namespace A378200.P9582015431075575270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A381664 (A381664 (n + 1)).toNat).toNat

end

end A378200.P9582015431075575270

noncomputable section

/-- A378200: Square array read by upward antidiagonals: T(n,k) = ((k + n - 1)^2 + (k - n + 1)*(-1)^n + (1 - k - n)*(-1)^k + (1 - k - n)*(-1)^(k + n) + 2)/2.

Offset 1, canonical program `A378200.P9582015431075575270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378200 (n : ℕ) : ℤ :=
  A378200.P9582015431075575270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378298.P155601813315861815

`(A062803(n+1)-(n+1))/2`
-/

namespace A378298.P155601813315861815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062803 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A378298.P155601813315861815

noncomputable section

/-- A378298: Number of solutions that satisfy the congruence: i^2 == j^2 (mod n) with 1 <= i < j <= n.

Offset 1, canonical program `A378298.P155601813315861815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378298.P155601813315861815.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378705.P16790697538674376241

`A381664(A056023(n+1))`
-/

namespace A378705.P16790697538674376241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A056023 (n + 1)).toNat

end

end A378705.P16790697538674376241

noncomputable section

/-- A378705: Inverse permutation to A378200.

Offset 1, canonical program `A378705.P16790697538674376241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378705 (n : ℕ) : ℤ :=
  A378705.P16790697538674376241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381017.P10834525739329830361

`p?[A000328(n)]`
-/

namespace A381017.P10834525739329830361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P10834525739329830361

noncomputable section

/-- A381017: Prime terms of A000328.

Offset 1, canonical program `A381017.P10834525739329830361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A381017 (n : ℕ) : ℤ :=
  A381017.P10834525739329830361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A381017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381018.P990383455539555304

`∑[A010051(A000328(n+1))]`
-/

namespace A381018.P990383455539555304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381018.P990383455539555304

noncomputable section

/-- A381018: a(n) is the number of primes in A000328 for r <= n.

Offset 1, canonical program `A381018.P990383455539555304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A381018 (n : ℕ) : ℤ :=
  A381018.P990383455539555304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A381018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160892.P12129593318586188066

`15*A160889(n+1)`
-/

namespace A160892.P12129593318586188066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A160889 (n + 1)

end

end A160892.P12129593318586188066

noncomputable section

/-- A160892: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 4.

Offset 1, canonical program `A160892.P12129593318586188066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160892 (n : ℕ) : ℤ :=
  A160892.P12129593318586188066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160894.P7293678197695022492

`31*A160891(n+1)`
-/

namespace A160894.P7293678197695022492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * A160891 (n + 1)

end

end A160894.P7293678197695022492

noncomputable section

/-- A160894: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 5.

Offset 1, canonical program `A160894.P7293678197695022492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160894 (n : ℕ) : ℤ :=
  A160894.P7293678197695022492.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160896.P15933310030781691343

`63*A160893(n+1)`
-/

namespace A160896.P15933310030781691343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  63 * A160893 (n + 1)

end

end A160896.P15933310030781691343

noncomputable section

/-- A160896: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 6.

Offset 1, canonical program `A160896.P15933310030781691343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160896 (n : ℕ) : ℤ :=
  A160896.P15933310030781691343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160898.P5753092248200493020

`127*A160895(n+1)`
-/

namespace A160898.P5753092248200493020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  127 * A160895 (n + 1)

end

end A160898.P5753092248200493020

noncomputable section

/-- A160898: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 7.

Offset 1, canonical program `A160898.P5753092248200493020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160898 (n : ℕ) : ℤ :=
  A160898.P5753092248200493020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160898.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160913.P16731336130938992374

`255*A160897(n+1)`
-/

namespace A160913.P16731336130938992374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  255 * A160897 (n + 1)

end

end A160913.P16731336130938992374

noncomputable section

/-- A160913: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 8.

Offset 1, canonical program `A160913.P16731336130938992374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160913 (n : ℕ) : ℤ :=
  A160913.P16731336130938992374.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160956.P1802841215077054632

`511*A160908(n+1)`
-/

namespace A160956.P1802841215077054632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  511 * A160908 (n + 1)

end

end A160956.P1802841215077054632

noncomputable section

/-- A160956: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 9.

Offset 1, canonical program `A160956.P1802841215077054632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160956 (n : ℕ) : ℤ :=
  A160956.P1802841215077054632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160972.P10328099809638499813

`A160895(n+1)*A351301(n+1)`
-/

namespace A160972.P10328099809638499813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160895 (n + 1) * A351301 (n + 1)

end

end A160972.P10328099809638499813

noncomputable section

/-- A160972: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 13.

Offset 1, canonical program `A160972.P10328099809638499813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160972 (n : ℕ) : ℤ :=
  A160972.P10328099809638499813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161025.P16166816335795081500

`A160897(n+1)*A351302(n+1)`
-/

namespace A161025.P16166816335795081500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160897 (n + 1) * A351302 (n + 1)

end

end A161025.P16166816335795081500

noncomputable section

/-- A161025: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 15.

Offset 1, canonical program `A161025.P16166816335795081500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161025 (n : ℕ) : ℤ :=
  A161025.P16166816335795081500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161025.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163367.P9673601605386703646

`A163109(A000203(n+1))`
-/

namespace A163367.P9673601605386703646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A000203 (n + 1)).toNat

end

end A163367.P9673601605386703646

noncomputable section

/-- A163367: a(n) = phi(tau(sigma(n))).

Offset 1, canonical program `A163367.P9673601605386703646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163367 (n : ℕ) : ℤ :=
  A163367.P9673601605386703646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163370.P12104747462105857956

`A062401(Δ[A002088(n)])`
-/

namespace A163370.P12104747462105857956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (f1 (n + 1) - f1 n).toNat

end

end A163370.P12104747462105857956

noncomputable section

/-- A163370: a(n) = phi(sigma(phi(n))).

Offset 1, canonical program `A163370.P12104747462105857956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163370 (n : ℕ) : ℤ :=
  A163370.P12104747462105857956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163371.P16183247952537498985

`A062821(A000203(n+1))`
-/

namespace A163371.P16183247952537498985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A000203 (n + 1)).toNat

end

end A163371.P16183247952537498985

noncomputable section

/-- A163371: a(n) = tau(phi(sigma(n))).

Offset 1, canonical program `A163371.P16183247952537498985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163371 (n : ℕ) : ℤ :=
  A163371.P16183247952537498985.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163373.P3735278863106384041

`A000010(A062401(n+1))`
-/

namespace A163373.P3735278863106384041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062401 (n + 1)).toNat

end

end A163373.P3735278863106384041

noncomputable section

/-- A163373: a(n) = phi(phi(sigma(n))).

Offset 1, canonical program `A163373.P3735278863106384041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163373 (n : ℕ) : ℤ :=
  A163373.P3735278863106384041.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163374.P7637100482057342679

`A000005(A062821(n+1))`
-/

namespace A163374.P7637100482057342679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062821 (n + 1)).toNat

end

end A163374.P7637100482057342679

noncomputable section

/-- A163374: a(n) = tau(tau(phi(n))).

Offset 1, canonical program `A163374.P7637100482057342679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163374 (n : ℕ) : ℤ :=
  A163374.P7637100482057342679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163375.P7213339150146037673

`A000203(A062821(n+1))`
-/

namespace A163375.P7213339150146037673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062821 (n + 1)).toNat

end

end A163375.P7213339150146037673

noncomputable section

/-- A163375: a(n) = sigma(tau(phi(n))).

Offset 1, canonical program `A163375.P7213339150146037673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163375 (n : ℕ) : ℤ :=
  A163375.P7213339150146037673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163376.P15642499836636086910

`A000010(A062821(n+1))`
-/

namespace A163376.P15642499836636086910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062821 (n + 1)).toNat

end

end A163376.P15642499836636086910

noncomputable section

/-- A163376: a(n) = phi(tau(phi(n))).

Offset 1, canonical program `A163376.P15642499836636086910`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163376 (n : ℕ) : ℤ :=
  A163376.P15642499836636086910.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163377.P12471734662578435157

`A062821(A000005(n+1))`
-/

namespace A163377.P12471734662578435157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A000005 (n + 1)).toNat

end

end A163377.P12471734662578435157

noncomputable section

/-- A163377: a(n) = tau(phi(tau(n))).

Offset 1, canonical program `A163377.P12471734662578435157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163377 (n : ℕ) : ℤ :=
  A163377.P12471734662578435157.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163377.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A171453.P4881999374342782724

`A008475(n+1)-A067240(n+1)`
-/

namespace A171453.P4881999374342782724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A067240 (n + 1)

end

end A171453.P4881999374342782724

noncomputable section

/-- A171453: a(n) = sum_i p_i^(e_i-1) where n = product_i p_i^e_i is the prime number decomposition of n.

Offset 1, canonical program `A171453.P4881999374342782724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A067240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171453 (n : ℕ) : ℤ :=
  A171453.P4881999374342782724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A067240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171815.P11809366983025997243

`p?[A171743(n+1)+1]-1`
-/

namespace A171815.P11809366983025997243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171743 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A171815.P11809366983025997243

noncomputable section

/-- A171815: Values of A171743 that are 1 less than a prime, listed in the order in which they appear.

Offset 1, canonical program `A171815.P11809366983025997243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A171815 (n : ℕ) : ℤ :=
  A171815.P11809366983025997243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A171815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173743.P4929656854599200138

`eq[A034444(n+1), A163109(n+1)]+1`
-/

namespace A173743.P4929656854599200138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173743.P4929656854599200138

noncomputable section

/-- A173743: Numbers k such that phi(tau(k)) = tau(rad(k)).

Offset 1, canonical program `A173743.P4929656854599200138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A173743 (n : ℕ) : ℤ :=
  (A173743.P4929656854599200138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A173743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176841.P12208208766662245832

`a(n-A163109(n+1))+1` with `a(0)=0`
-/

namespace A176841.P12208208766662245832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A163109 (n + 1)).toNat + 1

end

end A176841.P12208208766662245832

noncomputable section

/-- A176841: a(n) is the number of iterations of f(n) = n-phi(tau(n)) needed to reach 1.

Offset 1, canonical program `A176841.P12208208766662245832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176841 (n : ℕ) : ℤ :=
  (A176841.P12208208766662245832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177754.P10245631934257037110

`∑[A047994(n+1)]`
-/

namespace A177754.P10245631934257037110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P10245631934257037110

noncomputable section

/-- A177754: Partial sums of A047994.

Offset 1, canonical program `A177754.P10245631934257037110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177754 (n : ℕ) : ℤ :=
  A177754.P10245631934257037110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180117.P7084962965851303768

`∩[A014612(n+1)-2, A014612(n+1)]`
-/

namespace A180117.P7084962965851303768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180117.P7084962965851303768

noncomputable section

/-- A180117: Numbers n such that n and n+2 are both divisible by exactly 3 primes (counted with multiplicity).

Offset 1, canonical program `A180117.P7084962965851303768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180117 (n : ℕ) : ℤ :=
  (A180117.P7084962965851303768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180263.P12558440102138560603

`record[A000265(A050796(n+1))]`
-/

namespace A180263.P12558440102138560603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A050796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180263.P12558440102138560603

noncomputable section

/-- A180263: Odd k such that (k^2 + 1)/2 is not prime.

Offset 1, canonical program `A180263.P12558440102138560603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A180263 (n : ℕ) : ℤ :=
  A180263.P12558440102138560603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A180263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180292.P7000983173683337364

`A072277(n+3)-A262086(n+1)^C(2, n+1)`
-/

namespace A180292.P7000983173683337364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072277 (n + 3) - A262086 (n + 1) ^ Nat.choose 2 (n + 1)

end

end A180292.P7000983173683337364

noncomputable section

/-- A180292: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-2.

Offset 3, canonical program `A180292.P7000983173683337364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A180292 (n : ℕ) : ℤ :=
  A180292.P7000983173683337364.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A180292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181056.P13558356157106021504

`A000040(A065449(n+1))`
-/

namespace A181056.P13558356157106021504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065449 (n + 1)).toNat

end

end A181056.P13558356157106021504

noncomputable section

/-- A181056: a(n) = prime(phi(Fibonacci(n))).

Offset 1, canonical program `A181056.P13558356157106021504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181056 (n : ℕ) : ℤ :=
  A181056.P13558356157106021504.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181794.P10753813683387248145

`∩[A120351(n+1), A348005(n+1)]`
-/

namespace A181794.P10753813683387248145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181794.P10753813683387248145

noncomputable section

/-- A181794: Numbers n such that the number of even divisors of n is an even divisor of n.

Offset 1, canonical program `A181794.P10753813683387248145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3309 terms. -/
def A181794 (n : ℕ) : ℤ :=
  (A181794.P10753813683387248145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3309 terms. -/
def A181794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182570.P16827199781017962522

`p?[A179243(n+1)]`
-/

namespace A182570.P16827199781017962522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182570.P16827199781017962522

noncomputable section

/-- A182570: Primes that have three terms in their Zeckendorf representation.

Offset 1, canonical program `A182570.P16827199781017962522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A182570 (n : ℕ) : ℤ :=
  A182570.P16827199781017962522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A182570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182571.P14148324421551641499

`p?[A179244(n+1)]`
-/

namespace A182571.P14148324421551641499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182571.P14148324421551641499

noncomputable section

/-- A182571: Primes that have four terms in their Zeckendorf representation.

Offset 1, canonical program `A182571.P14148324421551641499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A182571 (n : ℕ) : ℤ :=
  A182571.P14148324421551641499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A182571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182817.P14309563797210267358

`A182816(A018252(n+1))`
-/

namespace A182817.P14309563797210267358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (A018252 (n + 1)).toNat

end

end A182817.P14309563797210267358

noncomputable section

/-- A182817: Number of elements k in Z/mZ such that k^m=k, for nonprime m = A018252(n).

Offset 1, canonical program `A182817.P14309563797210267358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A182816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182817 (n : ℕ) : ℤ :=
  A182817.P14309563797210267358.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A182816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184810.P4952026747299435353

`comp[A184811(n+1)-1]+1`
-/

namespace A184810.P4952026747299435353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184811 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184810.P4952026747299435353

noncomputable section

/-- A184810: Numbers m such that prime(m) has the form floor(k*r), where r=sqrt(2/3); complement of A184811.

Offset 1, canonical program `A184810.P4952026747299435353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184810 (n : ℕ) : ℤ :=
  (A184810.P4952026747299435353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184859.P13303099330725981754

`A000040(A184861(n+1))`
-/

namespace A184859.P13303099330725981754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184861 (n + 1)).toNat

end

end A184859.P13303099330725981754

noncomputable section

/-- A184859: Primes of the form floor(kr+h), where r=(1+sqrt(5))/2 and h=1/2.

Offset 1, canonical program `A184859.P13303099330725981754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. -/
def A184859 (n : ℕ) : ℤ :=
  A184859.P13303099330725981754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. -/
def A184859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189393.P13947967965399185248

`(n+1)*A053191(n+1)`
-/

namespace A189393.P13947967965399185248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053191 (n + 1)

end

end A189393.P13947967965399185248

noncomputable section

/-- A189393: a(n) = phi(n^4).

Offset 1, canonical program `A189393.P13947967965399185248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189393 (n : ℕ) : ℤ :=
  A189393.P13947967965399185248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191414.P14543827223812260222

`A034448(n+1)*A047994(n+1)`
-/

namespace A191414.P14543827223812260222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) * A047994 (n + 1)

end

end A191414.P14543827223812260222

noncomputable section

/-- A191414: Unitary Jordan function J_2^*(n).

Offset 1, canonical program `A191414.P14543827223812260222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A191414 (n : ℕ) : ℤ :=
  A191414.P14543827223812260222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A191414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194532.P2568676926494303915

`A069091(n+1)/A007434(n+1)`
-/

namespace A194532.P2568676926494303915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ)

end

end A194532.P2568676926494303915

noncomputable section

/-- A194532: Jordan function ratio J_6(n)/J_2(n).

Offset 1, canonical program `A194532.P2568676926494303915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A194532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A194532.P2568676926494303915.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A194532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A200905.P4388094907414912323

`3*(A121048(n+1)-(n+1))`
-/

namespace A200905.P4388094907414912323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A121048 (n + 1) - (n + 1 : ℤ))

end

end A200905.P4388094907414912323

noncomputable section

/-- A200905: a(n) = 3*phi(n), where phi (A000010) is the Euler totient function.

Offset 1, canonical program `A200905.P4388094907414912323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200905 (n : ℕ) : ℤ :=
  A200905.P4388094907414912323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209323.P18282624142862054047

`∑{e}[A014612(n+1), A007318(#)]`
-/

namespace A209323.P18282624142862054047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)

end

end A209323.P18282624142862054047

noncomputable section

/-- A209323: Values of omega(n) (A001221) as n runs through the triprimes (A014612).

Offset 1, canonical program `A209323.P18282624142862054047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209323 (n : ℕ) : ℤ :=
  A209323.P18282624142862054047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211410.P5242894833094007403

`∩[A014612(n+1), A221865(n+1)]`
-/

namespace A211410.P5242894833094007403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211410.P5242894833094007403

noncomputable section

/-- A211410: Chen triprimes, triprimes (A014612) m such that m+2 is either prime or semiprime.

Offset 1, canonical program `A211410.P5242894833094007403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2947 terms. -/
def A211410 (n : ℕ) : ℤ :=
  (A211410.P5242894833094007403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2947 terms. -/
def A211410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212177.P15343509916105935241

`A056170(A013929(n+1))`
-/

namespace A212177.P15343509916105935241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A013929 (n + 1)).toNat

end

end A212177.P15343509916105935241

noncomputable section

/-- A212177: Number of exponents >= 2 in the canonical prime factorization of the n-th nonsquarefree number (A013929(n)).

Offset 1, canonical program `A212177.P15343509916105935241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A212177 (n : ℕ) : ℤ :=
  A212177.P15343509916105935241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A212177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212181.P2436523797786551846

`A000265(A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212181.P2436523797786551846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000005 (n + 1)).toNat

end

end A212181.P2436523797786551846

noncomputable section

/-- A212181: Largest odd divisor of tau(n): a(n) = A000265(A000005(n)).

Offset 1, canonical program `A212181.P2436523797786551846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A212181 (n : ℕ) : ℤ :=
  A212181.P2436523797786551846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A212181.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213514.P4233426757645372914

`A233583(A002808(n+1))%A073256(n+1)`
-/

namespace A213514.P4233426757645372914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A002808 (n + 1)).toNat) (A073256 (n + 1))

end

end A213514.P4233426757645372914

noncomputable section

/-- A213514: For composite n, remainder of n - 1 when divided by phi(n), where phi(n) is the totient function (A000010).

Offset 1, canonical program `A213514.P4233426757645372914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A213514 (n : ℕ) : ℤ :=
  A213514.P4233426757645372914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A213514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213642.P6358489440238174870

`A000040(A000265(n+1))`
-/

namespace A213642.P6358489440238174870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000265 (n + 1)).toNat

end

end A213642.P6358489440238174870

noncomputable section

/-- A213642: a(n) = prime(odd part of n).

Offset 1, canonical program `A213642.P6358489440238174870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A213642 (n : ℕ) : ℤ :=
  A213642.P6358489440238174870.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A213642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213671.P11115635283737544638

`A000265((n+1)²-(n+1)+2)`
-/

namespace A213671.P11115635283737544638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 2).toNat

end

end A213671.P11115635283737544638

noncomputable section

/-- A213671: The odd part of n^2 - n + 2.

Offset 1, canonical program `A213671.P11115635283737544638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213671 (n : ℕ) : ℤ :=
  A213671.P11115635283737544638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214979.P11630726130086561855

`A179180(n+1)-A214977(n+1)`
-/

namespace A214979.P11630726130086561855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179180 (n + 1) - A214977 (n + 1)

end

end A214979.P11630726130086561855

noncomputable section

/-- A214979: A179180 - A214977.

Offset 1, canonical program `A214979.P11630726130086561855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214979 (n : ℕ) : ℤ :=
  A214979.P11630726130086561855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216412.P4166279177706564649

`A000010(A039771(n+1))`
-/

namespace A216412.P4166279177706564649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039771 (n + 1)).toNat

end

end A216412.P4166279177706564649

noncomputable section

/-- A216412: The cubes arising in A039771.

Offset 1, canonical program `A216412.P4166279177706564649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A039771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216412 (n : ℕ) : ℤ :=
  A216412.P4166279177706564649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A039771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225091.P1547395261014293833

`A000265(A066003(n))`
-/

namespace A225091.P1547395261014293833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A066003 n).toNat

end

end A225091.P1547395261014293833

noncomputable section

/-- A225091: The odd part of the digit sum of 7^n.

Offset 0, canonical program `A225091.P1547395261014293833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A066003, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225091 (n : ℕ) : ℤ :=
  A225091.P1547395261014293833.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A066003, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226384.P3146837539781542249

`eq[A003958(n+1), A007947(A000010(n+1))]+1`
-/

namespace A226384.P3146837539781542249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226384.P3146837539781542249

noncomputable section

/-- A226384: Numbers k such that rad(phi(k)) = phi(rad(k)).

Offset 1, canonical program `A226384.P3146837539781542249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A226384 (n : ℕ) : ℤ :=
  (A226384.P3146837539781542249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A226384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226386.P1965072438224400353

`lt[A080400(n+1), A173557(n+1)]+1`
-/

namespace A226386.P1965072438224400353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226386.P1965072438224400353

noncomputable section

/-- A226386: Numbers n such that rad(phi(n)) < phi(rad(n)), where rad(n) is the squarefree kernel of n, and phi is Euler's totient function.

Offset 1, canonical program `A226386.P1965072438224400353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226386 (n : ℕ) : ℤ :=
  (A226386.P1965072438224400353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226953.P559492349388349855

`eq[A163109(n+1)², A062821(n+1)]+1`
-/

namespace A226953.P559492349388349855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226953.P559492349388349855

noncomputable section

/-- A226953: Leap year numbers: numbers n such that tau(phi(n)) = phi(tau(n))^2, where tau(n) is the number of divisors of n and phi(n) the Euler totient function.

Offset 1, canonical program `A226953.P559492349388349855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A226953 (n : ℕ) : ℤ :=
  (A226953.P559492349388349855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A226953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228233.P17833368769692923615

`A228232(n+1)+2*A066490(n+1)`
-/

namespace A228233.P17833368769692923615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1) + 2 * A066490 (n + 1)

end

end A228233.P17833368769692923615

noncomputable section

/-- A228233: Number of Gaussian primes of norm less than or equal to n in the first quadrant.

Offset 1, canonical program `A228233.P17833368769692923615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228233 (n : ℕ) : ℤ :=
  A228233.P17833368769692923615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228234.P17208772115777883169

`A077766(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A228234.P17208772115777883169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A077766 n + a (n - 1)

end

end A228234.P17208772115777883169

noncomputable section

/-- A228234: Number of strict Gaussian primes of norm less than or equal to n in the first quadrant on or below the first diagonal.

Offset 1, canonical program `A228234.P17208772115777883169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228234 (n : ℕ) : ℤ :=
  A228234.P17208772115777883169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228947.P4335442310424960471

`A051612(n+1)-(n+1)`
-/

namespace A228947.P4335442310424960471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - (n + 1 : ℤ)

end

end A228947.P4335442310424960471

noncomputable section

/-- A228947: a(n) = sigma(n) - phi(n) - n.

Offset 1, canonical program `A228947.P4335442310424960471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228947 (n : ℕ) : ℤ :=
  A228947.P4335442310424960471.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229802.P2100397921254206650

`A227216(2*(n+1))-A227216(A000265(n+1))`
-/

namespace A229802.P2100397921254206650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 (2 * (n + 1)) - A227216 (A000265 (n + 1)).toNat

end

end A229802.P2100397921254206650

noncomputable section

/-- A229802: Expansion of q * f(-q, -q^4)^5 / f(-q)^3 in powers of q where f() is a Ramanujan theta function.

Offset 1, canonical program `A229802.P2100397921254206650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A229802 (n : ℕ) : ℤ :=
  A229802.P2100397921254206650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A229802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236999.P18015192940983009174

`A000265(A034856(n+1))`
-/

namespace A236999.P18015192940983009174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A034856 (n + 1)).toNat

end

end A236999.P18015192940983009174

noncomputable section

/-- A236999: Odd part of n*(n+3)/2-1 (A034856).

Offset 1, canonical program `A236999.P18015192940983009174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236999 (n : ℕ) : ℤ :=
  A236999.P18015192940983009174.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238949.P10522096884235985667

`A001221(n+1)+A056170(n+1)`
-/

namespace A238949.P10522096884235985667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A056170 (n + 1)

end

end A238949.P10522096884235985667

noncomputable section

/-- A238949: Degree of divisor lattice D(n).

Offset 1, canonical program `A238949.P10522096884235985667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238949 (n : ℕ) : ℤ :=
  A238949.P10522096884235985667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239289.P2942217961056571404

`comp[A014612(n+1)-1]+1`
-/

namespace A239289.P2942217961056571404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A239289.P2942217961056571404

noncomputable section

/-- A239289: Numbers that are not the product of three (not necessarily distinct) primes.

Offset 1, canonical program `A239289.P2942217961056571404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239289 (n : ℕ) : ℤ :=
  (A239289.P2942217961056571404.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240877.P3561136259224989296

`a(n-1)+A046151(n)+1` with `a(0)=1`
-/

namespace A240877.P3561136259224989296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A046151 n + 1)

end

end A240877.P3561136259224989296

noncomputable section

/-- A240877: Sum of the denominators of the Farey series of order n (A006843).

Offset 0, canonical program `A240877.P3561136259224989296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240877 (n : ℕ) : ℤ :=
  A240877.P3561136259224989296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240960.P3834821827547813831

`filter[A062972(n+1), A296211(#)]`
-/

namespace A240960.P3834821827547813831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A240960.P3834821827547813831

noncomputable section

/-- A240960: Numbers m such that sigma(m) - phi(m) = tau(m)^omega(m), where sigma=A000203, phi=A000010, tau=A000005 and omega=A001221.

Offset 1, canonical program `A240960.P3834821827547813831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240960 (n : ℕ) : ℤ :=
  A240960.P3834821827547813831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241194.P2614168708065509877

`A076512(A006093(n+1))`
-/

namespace A241194.P2614168708065509877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A006093 (n + 1)).toNat

end

end A241194.P2614168708065509877

noncomputable section

/-- A241194: Numerator of phi(p-1)/(p-1), where phi is Euler's totient function and p = prime(n).

Offset 1, canonical program `A241194.P2614168708065509877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A076512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A241194 (n : ℕ) : ℤ :=
  A241194.P2614168708065509877.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A076512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A241194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241195.P7791902164886545125

`A109395(A006093(n+1))`
-/

namespace A241195.P7791902164886545125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A006093 (n + 1)).toNat

end

end A241195.P7791902164886545125

noncomputable section

/-- A241195: Denominator of phi(prime(n)-1)/(prime(n)-1), where phi is Euler's totient function and prime(n) is the n-th prime.

Offset 1, canonical program `A241195.P7791902164886545125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A109395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A241195 (n : ℕ) : ℤ :=
  A241195.P7791902164886545125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A109395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A241195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242082.P757020989962679087

`A159917(lt[2, (n-and(n, 3*n))/2])`
-/

namespace A242082.P757020989962679087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land n (3 * n) : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A242082.P757020989962679087

noncomputable section

/-- A242082: Nim sequence of game on n counters whose legal moves are removing some number of counters in A027941.

Offset 0, canonical program `A242082.P757020989962679087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A242082 (n : ℕ) : ℤ :=
  A242082.P757020989962679087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A242082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243305.P11485261021790212205

`A066781(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243305.P11485261021790212205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) + 1

end

end A243305.P11485261021790212205

noncomputable section

/-- A243305: a(n) = 2^phi(n)+1 = A066781(n)+1.

Offset 1, canonical program `A243305.P11485261021790212205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243305 (n : ℕ) : ℤ :=
  A243305.P11485261021790212205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243306.P11123591734652521989

`A066781(n+1)-A000010(n+1)`
-/

namespace A243306.P11123591734652521989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) - A000010 (n + 1)

end

end A243306.P11123591734652521989

noncomputable section

/-- A243306: 2^phi(n) - phi(n).

Offset 1, canonical program `A243306.P11123591734652521989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A066781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243306 (n : ℕ) : ℤ :=
  A243306.P11123591734652521989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A066781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243307.P15340824748724089513

`A066781(n+1)+A000010(n+1)`
-/

namespace A243307.P15340824748724089513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) + A000010 (n + 1)

end

end A243307.P15340824748724089513

noncomputable section

/-- A243307: a(n) = 2^phi(n) + phi(n).

Offset 1, canonical program `A243307.P15340824748724089513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A066781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243307 (n : ℕ) : ℤ :=
  A243307.P15340824748724089513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A066781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243997.P13681003671720194849

`∑{d}[A046520(n+1), A007431(#)]`
-/

namespace A243997.P13681003671720194849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A243997.P13681003671720194849

noncomputable section

/-- A243997: a(n) = phi(sigma(n) - phi(n) - d(n)), where phi(n) is the Euler totient function, sigma(n) the sum of divisors of n and d(n) the number of divisors of n.

Offset 1, canonical program `A243997.P13681003671720194849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A243997 (n : ℕ) : ℤ :=
  A243997.P13681003671720194849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A243997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245199.P15657518765040660811

`∩[A036436(n+1), A039770(n+1)]`
-/

namespace A245199.P15657518765040660811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245199.P15657518765040660811

noncomputable section

/-- A245199: Numbers n where phi(n) and tau(n) are perfect squares.

Offset 1, canonical program `A245199.P15657518765040660811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A245199 (n : ℕ) : ℤ :=
  (A245199.P15657518765040660811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A245199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245202.P1209277125421135516

`eq[1, A007913(A073757(n+1)+1)]+1`
-/

namespace A245202.P1209277125421135516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A073757 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245202.P1209277125421135516

noncomputable section

/-- A245202: Numbers k such that tau(k) + phi(k) is a perfect square.

Offset 1, canonical program `A245202.P1209277125421135516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A245202 (n : ℕ) : ℤ :=
  (A245202.P1209277125421135516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A245202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245588.P14787650861621797003

`A291711(A026351(n))-1`
-/

namespace A245588.P14787650861621797003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291711 (A026351 n).toNat - 1

end

end A245588.P14787650861621797003

noncomputable section

/-- A245588: The minimal number of coins needed to make change for n units in a currency system with coins of value 1,2,5,13,34,89,...,Fibonacci(2k-1).

Offset 0, canonical program `A245588.P14787650861621797003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6181 terms. -/
def A245588 (n : ℕ) : ℤ :=
  A245588.P14787650861621797003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6181 terms. -/
def A245588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247074.P11215480859319137546

`(A109606(n+1)+1)/A063994(n+1)`
-/

namespace A247074.P11215480859319137546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A063994 (n + 1) : ℚ)

end

end A247074.P11215480859319137546

noncomputable section

/-- A247074: a(n) = phi(n)/(Product_{primes p dividing n } gcd(p - 1, n - 1)).

Offset 1, canonical program `A247074.P11215480859319137546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A247074.P11215480859319137546.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249017.P1336065343539493697

`record[A055460(n+1)]`
-/

namespace A249017.P1336065343539493697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249017.P1336065343539493697

noncomputable section

/-- A249017: Records in A055460 (number of primes dividing the squarefree part of n!).

Offset 1, canonical program `A249017.P1336065343539493697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4799 terms. -/
def A249017 (n : ℕ) : ℤ :=
  A249017.P1336065343539493697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4799 terms. -/
def A249017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249428.P3847306228098961032

`eq[A062790(n+1), A093148(n)]`
-/

namespace A249428.P3847306228098961032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P3847306228098961032

noncomputable section

/-- A249428: Numbers n such that A249151(2n+1) = n.

Offset 1, canonical program `A249428.P3847306228098961032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A249428 (n : ℕ) : ℤ :=
  (A249428.P3847306228098961032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A249428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253473.P17226977604656821504

`A049820(A073256(n+1))`
-/

namespace A253473.P17226977604656821504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A073256 (n + 1)).toNat

end

end A253473.P17226977604656821504

noncomputable section

/-- A253473: a(n) = phi(c(n)) - tau(phi(c(n))), where c(n) is the n-th composite number.

Offset 1, canonical program `A253473.P17226977604656821504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, A073256, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253473 (n : ℕ) : ℤ :=
  A253473.P17226977604656821504.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, A073256, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253721.P2198442329802579597

`A010879(A014612(n+1))`
-/

namespace A253721.P2198442329802579597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A014612 (n + 1)).toNat

end

end A253721.P2198442329802579597

noncomputable section

/-- A253721: Triprimes modulo 10.

Offset 1, canonical program `A253721.P2198442329802579597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253721 (n : ℕ) : ℤ :=
  A253721.P2198442329802579597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256450.P2961887337842134831

`lt[0, A257511(n)]`
-/

namespace A256450.P2961887337842134831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256450.P2961887337842134831

noncomputable section

/-- A256450: Numbers that have at least one 1-digit in their factorial base representation (A007623).

Offset 0, canonical program `A256450.P2961887337842134831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9360 terms. -/
def A256450 (n : ℕ) : ℤ :=
  (A256450.P2961887337842134831.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9360 terms. -/
def A256450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256505.P5590298832183813363

`A102560(n)*A258764(n)`
-/

namespace A256505.P5590298832183813363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A258764 n

end

end A256505.P5590298832183813363

noncomputable section

/-- A256505: Expansion of phi(x^3) * phi(-x^48) / chi(-x^16) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A256505.P5590298832183813363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256505 (n : ℕ) : ℤ :=
  A256505.P5590298832183813363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259897.P2407533474827309403

`val(A066973(round(sqrt(n²+1))), 2)`
-/

namespace A259897.P2407533474827309403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066973 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat 2

end

end A259897.P2407533474827309403

noncomputable section

/-- A259897: a(n) is the 2-adic valuation of phi(binomial(2*n,n)).

Offset 0, canonical program `A259897.P2407533474827309403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259897 (n : ℕ) : ℤ :=
  (A259897.P2407533474827309403.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260658.P2171500633036475055

`(-1)^n*A000265(9*n+5)`
-/

namespace A260658.P2171500633036475055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000265 (9 * n + 5)

end

end A260658.P2171500633036475055

noncomputable section

/-- A260658: Numerators of a BBP-like formula for 4*Pi/sqrt(27).

Offset 0, canonical program `A260658.P2171500633036475055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260658 (n : ℕ) : ℤ :=
  A260658.P2171500633036475055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261090.P12363886356026085992

`A261091(n+1)-A261091(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261090.P12363886356026085992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261091 (n + 1) - A261091 n

end

end A261090.P12363886356026085992

noncomputable section

/-- A261090: First differences of A261091: a(n) = A261091(n+1) - A261091(n).

Offset 0, canonical program `A261090.P12363886356026085992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261090 (n : ℕ) : ℤ :=
  A261090.P12363886356026085992.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261093.P14586296269946193917

`∑[A261092(n)]-1`
-/

namespace A261093.P14586296269946193917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261093.P14586296269946193917

noncomputable section

/-- A261093: a(n) = number of nonzero terms of A219640 <= n.

Offset 0, canonical program `A261093.P14586296269946193917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261093 (n : ℕ) : ℤ :=
  A261093.P14586296269946193917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262406.P13591506646915870537

`record[∏{p}[A039770(n+1), #]]`
-/

namespace A262406.P13591506646915870537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262406.P13591506646915870537

noncomputable section

/-- A262406: Squarefree k such that phi(k) is a perfect square.

Offset 1, canonical program `A262406.P13591506646915870537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3694 terms. -/
def A262406 (n : ℕ) : ℤ :=
  (A262406.P13591506646915870537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3694 terms. -/
def A262406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263297.P13367388864379357855

`A061395(A000265(n+1)*A105560(n+1))`
-/

namespace A263297.P13367388864379357855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000265 (n + 1) * A105560 (n + 1)).toNat

end

end A263297.P13367388864379357855

noncomputable section

/-- A263297: The greater of bigomega(n) and maximal prime index in the prime factorization of n.

Offset 1, canonical program `A263297.P13367388864379357855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6074 terms. -/
def A263297 (n : ℕ) : ℤ :=
  A263297.P13367388864379357855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6074 terms. -/
def A263297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264810.P5749480952070146331

`∑[A264739(n+1)]`
-/

namespace A264810.P5749480952070146331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P5749480952070146331

noncomputable section

/-- A264810: Number of numbers k <= n such that phi(m) = k for some m.

Offset 1, canonical program `A264810.P5749480952070146331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264810 (n : ℕ) : ℤ :=
  A264810.P5749480952070146331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266295.P15302427151285831677

`A000265(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A266295.P15302427151285831677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7] fun n a =>
  A000265 (a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4)).toNat

end

end A266295.P15302427151285831677

noncomputable section

/-- A266295: 2-free tetranacci sequence beginning 1,3,5,7.

Offset 1, canonical program `A266295.P15302427151285831677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266295 (n : ℕ) : ℤ :=
  A266295.P15302427151285831677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267895.P4751703947180070628

`eq[2, A000005(A000005(A000265(n+1)))]+1`
-/

namespace A267895.P4751703947180070628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267895.P4751703947180070628

noncomputable section

/-- A267895: Numbers whose number of odd divisors is prime.

Offset 1, canonical program `A267895.P4751703947180070628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267895 (n : ℕ) : ℤ :=
  (A267895.P4751703947180070628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270968.P12727451645434044411

`A000265(A017341(n))`
-/

namespace A270968.P12727451645434044411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017341 n).toNat

end

end A270968.P12727451645434044411

noncomputable section

/-- A270968: Reduced 5x+1 function R applied to the odd integers: a(n) = R(2n-1), where R(k) = (5k+1)/2^r, with r as large as possible.

Offset 1, canonical program `A270968.P12727451645434044411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270968 (n : ℕ) : ℤ :=
  A270968.P12727451645434044411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273060.P12650829157669879632

`A048855(n+1)/A000010(n+1)`
-/

namespace A273060.P12650829157669879632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048855 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A273060.P12650829157669879632

noncomputable section

/-- A273060: a(n) = phi(n!)/phi(n).

Offset 1, canonical program `A273060.P12650829157669879632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A273060.P12650829157669879632.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274139.P8346514154262221856

`2^A000265(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274139.P8346514154262221856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000265 (n + 1) : ℤ)

end

end A274139.P8346514154262221856

noncomputable section

/-- A274139: a(n) = 2^A000265(n) = 2^numerator(n/2^n), a sequence related to Oresme numbers.

Offset 1, canonical program `A274139.P8346514154262221856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274139 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A274139.P8346514154262221856.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275059.P1792862244400861378

`floor(sqrt(p?[A264724(n+1)]))`
-/

namespace A275059.P1792862244400861378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275059.P1792862244400861378

noncomputable section

/-- A275059: Numbers n such that A000010(n) + n^2 is a prime.

Offset 1, canonical program `A275059.P1792862244400861378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A275059 (n : ℕ) : ℤ :=
  A275059.P1792862244400861378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A275059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277812.P16669805082078659615

`A003188(A000265(A006068(n+1)))`
-/

namespace A277812.P16669805082078659615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A000265 (A006068 (n + 1)).toNat).toNat

end

end A277812.P16669805082078659615

noncomputable section

/-- A277812: a(n) = the first odious number encountered when starting from k = n and iterating the map k -> A003188(A006068(k)/2).

Offset 1, canonical program `A277812.P16669805082078659615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A277812 (n : ℕ) : ℤ :=
  A277812.P16669805082078659615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A277812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280131.P12740549784646320561

`∑[A029940(n+1)]`
-/

namespace A280131.P12740549784646320561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280131.P12740549784646320561

noncomputable section

/-- A280131: Partial sums of A029940 (Product_{d|n} phi(d)).

Offset 1, canonical program `A280131.P12740549784646320561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A280131 (n : ℕ) : ℤ :=
  A280131.P12740549784646320561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A280131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280184.P6105905186965531621

`∑{d}[n+1, A160891(#)]`
-/

namespace A280184.P6105905186965531621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160891 d

end

end A280184.P6105905186965531621

noncomputable section

/-- A280184: Number of cyclic subgroups of the group C_n x C_n x C_n x C_n, where C_n is the cyclic group of order n.

Offset 1, canonical program `A280184.P6105905186965531621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280184 (n : ℕ) : ℤ :=
  A280184.P6105905186965531621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280726.P4396404061775602210

`A049501(A000010(n+1))`
-/

namespace A280726.P4396404061775602210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A000010 (n + 1)).toNat

end

end A280726.P4396404061775602210

noncomputable section

/-- A280726: a(n) = A049501(phi(n)).

Offset 1, canonical program `A280726.P4396404061775602210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049501, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280726 (n : ℕ) : ℤ :=
  A280726.P4396404061775602210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049501, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280729.P13621898540149842299

`2*A005097(n+1)-A098006(n+2)`
-/

namespace A280729.P13621898540149842299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005097 (n + 1) - A098006 (n + 2)

end

end A280729.P13621898540149842299

noncomputable section

/-- A280729: (p-1)/2 + phi(p-1) as p runs through the odd primes.

Offset 1, canonical program `A280729.P13621898540149842299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280729 (n : ℕ) : ℤ :=
  A280729.P13621898540149842299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280878.P12461695525565810277

`∩[A280877(n+1), A100490(n)]`
-/

namespace A280878.P12461695525565810277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280878.P12461695525565810277

noncomputable section

/-- A280878: Occurrences of decrease of the probability density P(n) of coprime numbers k,m, satisfying 1 <= k <= a(n) and 1 <= m <= a(n), and a(n) congruent to 1(mod 2) and a(n) congruent to {3,9,21,27}(mod 30).

Offset 1, canonical program `A280878.P12461695525565810277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A280878 (n : ℕ) : ℤ :=
  (A280878.P12461695525565810277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A280878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281392.P7903200098704454459

`A086784(n)+a(A000265(n)-1)+1` with `a(0)=0`
-/

namespace A281392.P7903200098704454459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086784 n + (a (A000265 n - 1).toNat + 1)

end

end A281392.P7903200098704454459

noncomputable section

/-- A281392: Number of occurrences of "01" as a subsequence in the binary expansion of n.

Offset 0, canonical program `A281392.P7903200098704454459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281392 (n : ℕ) : ℤ :=
  A281392.P7903200098704454459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281785.P16696734962775317770

`A061347(n+1)*A116607(A000265(n+1))`
-/

namespace A281785.P16696734962775317770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A116607 (A000265 (n + 1)).toNat

end

end A281785.P16696734962775317770

noncomputable section

/-- A281785: a(n) is multiplicative with a(2^e) = 1, a(3^e) = -8 if e>0, a(p^e) = (p^(e+1) - 1) / (p - 1) if p>3.

Offset 1, canonical program `A281785.P16696734962775317770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281785 (n : ℕ) : ℤ :=
  A281785.P16696734962775317770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282717.P78600112669793230

`∏{e}[A277331(n), #+1]`
-/

namespace A282717.P78600112669793230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A282717.P78600112669793230

noncomputable section

/-- A282717: Number of nonzero entries in row n of A282716.

Offset 0, canonical program `A282717.P78600112669793230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A282717 (n : ℕ) : ℤ :=
  (A282717.P78600112669793230.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A282717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283794.P5491480845354649629

`A288931(Δ[n²])-n`
-/

namespace A283794.P5491480845354649629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A283794.P5491480845354649629

noncomputable section

/-- A283794: Positions of 1 in A288375; complement of A288625.

Offset 1, canonical program `A283794.P5491480845354649629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A283794 (n : ℕ) : ℤ :=
  A283794.P5491480845354649629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A283794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286572.P16582161449152449290

`1/2*(2+(A053574(n+1)+A000203(n+1))²-A053574(n+1)-3*A000203(n+1))`
-/

namespace A286572.P16582161449152449290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A053574 (n + 1) + A000203 (n + 1)) ^ 2 - A053574 (n + 1) - 3 * A000203 (n + 1) : ℚ)

end

end A286572.P16582161449152449290

noncomputable section

/-- A286572: Compound filter (2-adic valuation of phi(n) & sigma(n)): a(n) = P(A053574(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286572.P16582161449152449290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286572 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286572.P16582161449152449290.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286572.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289336.P13059549218811230367

`Δ[A160664(n)]/A009223(n+1)`
-/

namespace A289336.P13059549218811230367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289336.P13059549218811230367

noncomputable section

/-- A289336: a(n) = numerator of (sigma(n) / phi(n)).

Offset 1, canonical program `A289336.P13059549218811230367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289336 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289336.P13059549218811230367.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290258.P9500743634387484747

`A277335(n+1)`
-/

namespace A290258.P9500743634387484747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 (n + 1)

end

end A290258.P9500743634387484747

noncomputable section

/-- A290258: Triangle read by rows: row n (>=2) contains in increasing order the integers for which the binary representation has length n and all runs of 1's have even length.

Offset 2, canonical program `A290258.P9500743634387484747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290258 (n : ℕ) : ℤ :=
  A290258.P9500743634387484747.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291549.P17778341340060570744

`∩[A039770(n+1), A291167(n+1)]`
-/

namespace A291549.P17778341340060570744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291549.P17778341340060570744

noncomputable section

/-- A291549: Numbers n such that both phi(n) and psi(n) are perfect squares.

Offset 1, canonical program `A291549.P17778341340060570744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A291549 (n : ℕ) : ℤ :=
  (A291549.P17778341340060570744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A291549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291784.P16578059245399966389

`∑{d}[n+1, A271102(#)*A378542((n+1)/#)]`
-/

namespace A291784.P16578059245399966389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A378542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P16578059245399966389

noncomputable section

/-- A291784: a(n) = (psi(n) + phi(n))/2.

Offset 1, canonical program `A291784.P16578059245399966389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291784 (n : ℕ) : ℤ :=
  A291784.P16578059245399966389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292441.P17800705899153561225

`A056043(2*gcd(n, C(2, n)))`
-/

namespace A292441.P17800705899153561225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (2 * Nat.gcd n (Nat.choose 2 n))

end

end A292441.P17800705899153561225

noncomputable section

/-- A292441: Largest m such that m^2 divides A000984(n).

Offset 0, canonical program `A292441.P17800705899153561225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3009 terms. -/
def A292441 (n : ℕ) : ℤ :=
  A292441.P17800705899153561225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3009 terms. -/
def A292441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292770.P13773517797988369441

`A027656(A065387(n+1))-1`
-/

namespace A292770.P13773517797988369441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A065387 (n + 1)).toNat - 1

end

end A292770.P13773517797988369441

noncomputable section

/-- A292770: If sigma(n)+phi(n) is even then a(n) = (sigma(n)+phi(n))/2 otherwise -1.

Offset 1, canonical program `A292770.P13773517797988369441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A292770 (n : ℕ) : ℤ :=
  A292770.P13773517797988369441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A292770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292771.P12174660936694892643

`A027656(A051612(n+1))-1`
-/

namespace A292771.P12174660936694892643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A051612 (n + 1)).toNat - 1

end

end A292771.P12174660936694892643

noncomputable section

/-- A292771: If sigma(n)-phi(n) is even then (sigma(n)-phi(n))/2 otherwise -1.

Offset 1, canonical program `A292771.P12174660936694892643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A292771 (n : ℕ) : ℤ :=
  A292771.P12174660936694892643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A292771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295301.P7286222127240886749

`n+1-A062401(n+1)`
-/

namespace A295301.P7286222127240886749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062401 (n + 1)

end

end A295301.P7286222127240886749

noncomputable section

/-- A295301: a(n) = n - phi(sigma(n)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295301.P7286222127240886749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295301 (n : ℕ) : ℤ :=
  A295301.P7286222127240886749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295310.P15878343265230964827

`gcd(n+1, A062401(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295310.P15878343265230964827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A062401 (n + 1))

end

end A295310.P15878343265230964827

noncomputable section

/-- A295310: a(n) = gcd(n, A062401(n)), where A062401(n) = phi(sigma(n)).

Offset 1, canonical program `A295310.P15878343265230964827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295310 (n : ℕ) : ℤ :=
  (A295310.P15878343265230964827.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295314.P2490447409591246023

`A000203(n+1)/A295313(n+1)`
-/

namespace A295314.P2490447409591246023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A295313 (n + 1) : ℚ)

end

end A295314.P2490447409591246023

noncomputable section

/-- A295314: a(n) = sigma(n) / gcd(sigma(n), phi(sigma(n))).

Offset 1, canonical program `A295314.P2490447409591246023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295313, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295314 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295314.P2490447409591246023.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295313, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295315.P724021200967414565

`A062401(n+1)/A295313(n+1)`
-/

namespace A295315.P724021200967414565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A295313 (n + 1) : ℚ)

end

end A295315.P724021200967414565

noncomputable section

/-- A295315: a(n) = phi(sigma(n)) / gcd(sigma(n), phi(sigma(n))).

Offset 1, canonical program `A295315.P724021200967414565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295315.P724021200967414565.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295884.P5953786868987589474

`A056170(A062378(n+1))`
-/

namespace A295884.P5953786868987589474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A062378 (n + 1)).toNat

end

end A295884.P5953786868987589474

noncomputable section

/-- A295884: Number of exponents larger than 3 in the prime factorization of n.

Offset 1, canonical program `A295884.P5953786868987589474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A062378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295884 (n : ℕ) : ℤ :=
  A295884.P5953786868987589474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A062378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295897.P10527860566330288964

`floor(A277335(n)/2)`
-/

namespace A295897.P10527860566330288964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277335 n : ℚ) / 2⌋

end

end A295897.P10527860566330288964

noncomputable section

/-- A295897: Numbers in whose binary expansion there are no 1-runs of odd length followed by a 0 to their right.

Offset 1, canonical program `A295897.P10527860566330288964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295897 (n : ℕ) : ℤ :=
  A295897.P10527860566330288964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296079.P15018280529446540256

`A010051(A039649(n+1))`
-/

namespace A296079.P15018280529446540256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A039649 (n + 1)).toNat

end

end A296079.P15018280529446540256

noncomputable section

/-- A296079: a(n) = 1 if 1+phi(n) is prime, 0 otherwise, where phi = A000010, Euler totient function.

Offset 1, canonical program `A296079.P15018280529446540256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A039649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A296079 (n : ℕ) : ℤ :=
  A296079.P15018280529446540256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A039649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A296079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296206.P7932008658707431913

`xor(A011262(A011262(n+1)), A063658(n+1))`
-/

namespace A296206.P7932008658707431913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011262 (A011262 (n + 1)).toNat) (A063658 (n + 1))

end

end A296206.P7932008658707431913

noncomputable section

/-- A296206: Xor-Moebius transform applied twice to natural numbers.

Offset 1, canonical program `A296206.P7932008658707431913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A296206 (n : ℕ) : ℤ :=
  A296206.P7932008658707431913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A296206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296442.P15214103420429711918

`A008952(A000040(n+1))-A019590(n+1)`
-/

namespace A296442.P15214103420429711918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (A000040 (n + 1)).toNat - A019590 (n + 1)

end

end A296442.P15214103420429711918

noncomputable section

/-- A296442: Initial digit of n-th Mersenne number.

Offset 1, canonical program `A296442.P15214103420429711918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A296442 (n : ℕ) : ℤ :=
  A296442.P15214103420429711918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A296442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297115.P17041612972225485539

`A083254(n+1)-A297114(n+1)`
-/

namespace A297115.P17041612972225485539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) - A297114 (n + 1)

end

end A297115.P17041612972225485539

noncomputable section

/-- A297115: Möbius transform of A000120, binary weight of n.

Offset 1, canonical program `A297115.P17041612972225485539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297115 (n : ℕ) : ℤ :=
  A297115.P17041612972225485539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297153.P15480407933502326326

`xor(A083254(n+1)+A074057(n+3), A074057(n+3))`
-/

namespace A297153.P15480407933502326326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083254 (n + 1) + A074057 (n + 3)) (A074057 (n + 3))

end

end A297153.P15480407933502326326

noncomputable section

/-- A297153: Reversing binary representation of A083254(n), 2*phi(n) - n.

Offset 1, canonical program `A297153.P15480407933502326326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297153 (n : ℕ) : ℤ :=
  A297153.P15480407933502326326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297159.P14029420522089976832

`A033879(n+1)-A083254(n+1)`
-/

namespace A297159.P14029420522089976832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - A083254 (n + 1)

end

end A297159.P14029420522089976832

noncomputable section

/-- A297159: a(n) = 3*n - 2*phi(n) - sigma(n); Difference between the deficiency of n and its Moebius-transform.

Offset 1, canonical program `A297159.P14029420522089976832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297159 (n : ℕ) : ℤ :=
  A297159.P14029420522089976832.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298207.P6466011691375944331

`∪[A008578(n+1), A014612(n+1)]`
-/

namespace A298207.P6466011691375944331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298207.P6466011691375944331

noncomputable section

/-- A298207: Numbers that are a product of zero, one, or three (not necessarily distinct) prime numbers.

Offset 1, canonical program `A298207.P6466011691375944331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298207 (n : ℕ) : ℤ :=
  (A298207.P6466011691375944331.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298735.P15480129147772865535

`A046951(A000265(n+1))`
-/

namespace A298735.P15480129147772865535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000265 (n + 1)).toNat

end

end A298735.P15480129147772865535

noncomputable section

/-- A298735: Number of odd squares dividing n.

Offset 1, canonical program `A298735.P15480129147772865535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A298735 (n : ℕ) : ℤ :=
  A298735.P15480129147772865535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A298735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299149.P8105708395331444992

`A000265((n+1)*A317848(n+1))`
-/

namespace A299149.P8105708395331444992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1 : ℤ) * A317848 (n + 1)).toNat

end

end A299149.P8105708395331444992

noncomputable section

/-- A299149: Numerators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299149.P8105708395331444992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A317848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A299149 (n : ℕ) : ℤ :=
  A299149.P8105708395331444992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A317848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A299149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300720.P15695279460942759688

`A010848(n+1)-A300718(n+1)`
-/

namespace A300720.P15695279460942759688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) - A300718 (n + 1)

end

end A300720.P15695279460942759688

noncomputable section

/-- A300720: Difference between A010848 and its Möbius transform.

Offset 1, canonical program `A300720.P15695279460942759688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010848, A300718, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300720 (n : ℕ) : ℤ :=
  A300720.P15695279460942759688.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010848, A300718, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301631.P6121766463098486196

`A000108(n)*A000265(n+1)²-A075101(n+1)²/4`
-/

namespace A301631.P6121766463098486196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n * A000265 (n + 1) ^ 2 : ℚ) - (A075101 (n + 1) ^ 2 : ℚ) / 4

end

end A301631.P6121766463098486196

noncomputable section

/-- A301631: Numerator of population variance of n-th row of Pascal's triangle.

Offset 0, canonical program `A301631.P6121766463098486196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301631 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A301631.P6121766463098486196.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301631.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303973.P17946534861844191776

`∑{d}[n+1, A053191(#)*A303385((n+1)/#)]`
-/

namespace A303973.P17946534861844191776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A303385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303973.P17946534861844191776

noncomputable section

/-- A303973: Total volume of all rectangular prisms with dimensions (p,p,q) such that n = p + q, p divides q and p < q.

Offset 1, canonical program `A303973.P17946534861844191776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303973 (n : ℕ) : ℤ :=
  A303973.P17946534861844191776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306528.P17599500303172333272

`eq[A109395(n+1), A332881(n+1)]+1`
-/

namespace A306528.P17599500303172333272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A306528.P17599500303172333272

noncomputable section

/-- A306528: Numbers k such that gcd(k, phi(k)) = gcd(k, psi(k)).

Offset 1, canonical program `A306528.P17599500303172333272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306528 (n : ℕ) : ℤ :=
  (A306528.P17599500303172333272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306908.P12427580242854678339

`∩[A033992(n+1), A039770(n+1)]`
-/

namespace A306908.P12427580242854678339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306908.P12427580242854678339

noncomputable section

/-- A306908: Numbers k with exactly three distinct prime factors and such that phi(k) is a square.

Offset 1, canonical program `A306908.P12427580242854678339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A306908 (n : ℕ) : ℤ :=
  (A306908.P12427580242854678339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A306908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308707.P4533318601550812062

`gcd(n+1, A065387(n+1))`
-/

namespace A308707.P4533318601550812062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A065387 (n + 1))

end

end A308707.P4533318601550812062

noncomputable section

/-- A308707: a(n) = gcd(n, phi(n) + sigma(n)), where phi is A000010 and sigma is A000203.

Offset 1, canonical program `A308707.P4533318601550812062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308707 (n : ℕ) : ℤ :=
  (A308707.P4533318601550812062.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317625.P3423125929766715326

`∑[1-A092843(n+1)+n]`
-/

namespace A317625.P3423125929766715326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A092843 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317625.P3423125929766715326

noncomputable section

/-- A317625: a(n) = Sum_{k=1..n} phi(floor(n/k)) where phi is the Euler totient function.

Offset 1, canonical program `A317625.P3423125929766715326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317625 (n : ℕ) : ℤ :=
  A317625.P3423125929766715326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318623.P8445472304262394545

`((1-A000265(n+1))^26)%(n+1)`
-/

namespace A318623.P8445472304262394545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - A000265 (n + 1)) ^ 26) (n + 1 : ℤ)

end

end A318623.P8445472304262394545

noncomputable section

/-- A318623: a(n) = 2^phi(n) mod n.

Offset 1, canonical program `A318623.P8445472304262394545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7018 terms. -/
def A318623 (n : ℕ) : ℤ :=
  A318623.P8445472304262394545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7018 terms. -/
def A318623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318827.P13132308658619953829

`n+1-A049559(n+1)`
-/

namespace A318827.P13132308658619953829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049559 (n + 1)

end

end A318827.P13132308658619953829

noncomputable section

/-- A318827: a(n) = n - gcd(n - 1, phi(n)).

Offset 1, canonical program `A318827.P13132308658619953829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318827 (n : ℕ) : ℤ :=
  A318827.P13132308658619953829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318829.P17686825492943057174

`A063994(n+1)/A049559(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318829.P17686825492943057174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ)

end

end A318829.P17686825492943057174

noncomputable section

/-- A318829: a(n) = A063994(n) / A049559(n) = (1/gcd(n-1, phi(n))) * Product_{primes p dividing n} gcd(p-1, n-1).

Offset 1, canonical program `A318829.P17686825492943057174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318829.P17686825492943057174.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319087.P11873426032925542692

`∑[A053191(n+1)]`
-/

namespace A319087.P11873426032925542692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P11873426032925542692

noncomputable section

/-- A319087: a(n) = Sum_{k=1..n} k^2*phi(k), where phi is the Euler totient function A000010.

Offset 1, canonical program `A319087.P11873426032925542692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319087 (n : ℕ) : ℤ :=
  A319087.P11873426032925542692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319659.P863151469873212101

`log2(A003640(n+1))`
-/

namespace A319659.P863151469873212101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003640 (n + 1) : ℝ)

end

end A319659.P863151469873212101

noncomputable section

/-- A319659: 2-rank of the class group of imaginary quadratic field with discriminant -k, k = A003657(n).

Offset 1, canonical program `A319659.P863151469873212101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319659.P863151469873212101.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319676.P6719959262025814008

`lcm(n+1, A047994(n+1))/(n+1)`
-/

namespace A319676.P6719959262025814008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A047994 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A319676.P6719959262025814008

noncomputable section

/-- A319676: Numerator of A047994(n)/n where A047994 is the unitary totient function.

Offset 1, canonical program `A319676.P6719959262025814008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319676 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319676.P6719959262025814008.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319998.P4025482794031375230

`A000010(n+1)-A319997(n+1)`
-/

namespace A319998.P4025482794031375230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A319997 (n + 1)

end

end A319998.P4025482794031375230

noncomputable section

/-- A319998: a(n) = Sum_{d|n, d is even} mu(n/d)*d, where mu(n) is Moebius function A008683.

Offset 1, canonical program `A319998.P4025482794031375230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319998 (n : ℕ) : ℤ :=
  A319998.P4025482794031375230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321167.P10161724176455158981

`∏{e}[n+1, A047994(#)]`
-/

namespace A321167.P10161724176455158981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A047994 (Nat.factorization (f1 n) p)

end

end A321167.P10161724176455158981

noncomputable section

/-- A321167: The e-unitary Euler function: a(1) = 1, a(n) = Product uphi(e(i)) for n = Product p(i)^e(i), where uphi is the unitary totient function (A047994).

Offset 1, canonical program `A321167.P10161724176455158981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321167 (n : ℕ) : ℤ :=
  A321167.P10161724176455158981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321550.P13648365977055260050

`2*A013959(A000265(n+1))-A013959(n+1)`
-/

namespace A321550.P13648365977055260050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013959 (A000265 (n + 1)).toNat - A013959 (n + 1)

end

end A321550.P13648365977055260050

noncomputable section

/-- A321550: a(n) = Sum_{d|n} (-1)^(d-1)*d^11.

Offset 1, canonical program `A321550.P13648365977055260050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321550 (n : ℕ) : ℤ :=
  A321550.P13648365977055260050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321810.P12349094334803389434

`A013954(A000265(n+1))`
-/

namespace A321810.P12349094334803389434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (A000265 (n + 1)).toNat

end

end A321810.P12349094334803389434

noncomputable section

/-- A321810: Sum of 6th powers of odd divisors of n.

Offset 1, canonical program `A321810.P12349094334803389434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321810 (n : ℕ) : ℤ :=
  A321810.P12349094334803389434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321811.P8939995854044414177

`A013955(A000265(n+1))`
-/

namespace A321811.P8939995854044414177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013955 (A000265 (n + 1)).toNat

end

end A321811.P8939995854044414177

noncomputable section

/-- A321811: Sum of 7th powers of odd divisors of n.

Offset 1, canonical program `A321811.P8939995854044414177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321811 (n : ℕ) : ℤ :=
  A321811.P8939995854044414177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321811.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321812.P13373836646123341388

`A013956(A000265(n+1))`
-/

namespace A321812.P13373836646123341388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013956 (A000265 (n + 1)).toNat

end

end A321812.P13373836646123341388

noncomputable section

/-- A321812: Sum of 8th powers of odd divisors of n.

Offset 1, canonical program `A321812.P13373836646123341388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321812 (n : ℕ) : ℤ :=
  A321812.P13373836646123341388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321813.P7308859813220665967

`A013957(A000265(n+1))`
-/

namespace A321813.P7308859813220665967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013957 (A000265 (n + 1)).toNat

end

end A321813.P7308859813220665967

noncomputable section

/-- A321813: Sum of 9th powers of odd divisors of n.

Offset 1, canonical program `A321813.P7308859813220665967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321813 (n : ℕ) : ℤ :=
  A321813.P7308859813220665967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321814.P1566758576426474649

`A013958(A000265(n+1))`
-/

namespace A321814.P1566758576426474649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013958 (A000265 (n + 1)).toNat

end

end A321814.P1566758576426474649

noncomputable section

/-- A321814: Sum of 10th powers of odd divisors of n.

Offset 1, canonical program `A321814.P1566758576426474649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321814 (n : ℕ) : ℤ :=
  A321814.P1566758576426474649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321815.P3885244428543788558

`A013959(A000265(n+1))`
-/

namespace A321815.P3885244428543788558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013959 (A000265 (n + 1)).toNat

end

end A321815.P3885244428543788558

noncomputable section

/-- A321815: Sum of 11th powers of odd divisors of n.

Offset 1, canonical program `A321815.P3885244428543788558`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321815 (n : ℕ) : ℤ :=
  A321815.P3885244428543788558.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321815.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321816.P6005944185191397818

`A013960(A000265(n+1))`
-/

namespace A321816.P6005944185191397818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (A000265 (n + 1)).toNat

end

end A321816.P6005944185191397818

noncomputable section

/-- A321816: Sum of 12th powers of odd divisors of n.

Offset 1, canonical program `A321816.P6005944185191397818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321816 (n : ℕ) : ℤ :=
  A321816.P6005944185191397818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321822.P16781590860431614431

`Δ[A005811(n)]*A321830(A000265(n+1))`
-/

namespace A321822.P16781590860431614431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A321830 (A000265 (n + 1)).toNat

end

end A321822.P16781590860431614431

noncomputable section

/-- A321822: a(n) = Sum_{d|n, d==1 mod 4} d^6 - Sum_{d|n, d==3 mod 4} d^6.

Offset 1, canonical program `A321822.P16781590860431614431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321822 (n : ℕ) : ℤ :=
  A321822.P16781590860431614431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321824.P5077356996736192432

`A112347(n+1)*A321832(A000265(n+1))`
-/

namespace A321824.P5077356996736192432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 (n + 1) * A321832 (A000265 (n + 1)).toNat

end

end A321824.P5077356996736192432

noncomputable section

/-- A321824: a(n) = Sum_{d|n, d==1 mod 4} d^8 - Sum_{d|n, d==3 mod 4} d^8.

Offset 1, canonical program `A321824.P5077356996736192432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321824 (n : ℕ) : ℤ :=
  A321824.P5077356996736192432.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321825.P11819625589540989309

`Δ[A005811(n)]*A321833(A000265(n+1))`
-/

namespace A321825.P11819625589540989309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A321833 (A000265 (n + 1)).toNat

end

end A321825.P11819625589540989309

noncomputable section

/-- A321825: a(n) = Sum_{d|n, d==1 (mod 4)} d^9 - Sum_{d|n, d==3 (mod 4)} d^9.

Offset 1, canonical program `A321825.P11819625589540989309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321825 (n : ℕ) : ℤ :=
  A321825.P11819625589540989309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321828.P17421371183857854868

`A033999(A025480(n))*A321836(A000265(n+1))`
-/

namespace A321828.P17421371183857854868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025480 n).toNat * A321836 (A000265 (n + 1)).toNat

end

end A321828.P17421371183857854868

noncomputable section

/-- A321828: a(n) = Sum_{d|n, d==1 mod 4} d^12 - Sum_{d|n, d==3 mod 4} d^12.

Offset 1, canonical program `A321828.P17421371183857854868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321828 (n : ℕ) : ℤ :=
  A321828.P17421371183857854868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323399.P15061214207658318257

`A007434(n+1)+A046970(n+1)`
-/

namespace A323399.P15061214207658318257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) + A046970 (n + 1)

end

end A323399.P15061214207658318257

noncomputable section

/-- A323399: Sum of Jordan function J_2(n), A007434 and its Dirichlet inverse, A046970.

Offset 1, canonical program `A323399.P15061214207658318257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A046970, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323399 (n : ℕ) : ℤ :=
  A323399.P15061214207658318257.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A046970, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323399.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323406.P6021964609825623962

`gcd(A047994(n+1), A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323406.P6021964609825623962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047994 (n + 1)) (A034448 (n + 1))

end

end A323406.P6021964609825623962

noncomputable section

/-- A323406: Greatest common divisor of Product (p_i^e_i)-1 and Product (p_i^e_i)+1, when n = Product (p_i^e_i): a(n) = gcd(A047994(n), A034448(n)).

Offset 1, canonical program `A323406.P6021964609825623962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323406 (n : ℕ) : ℤ :=
  (A323406.P6021964609825623962.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323406.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323409.P15899352784078456227

`gcd(n+1, A047994(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323409.P15899352784078456227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A047994 (n + 1))

end

end A323409.P15899352784078456227

noncomputable section

/-- A323409: Greatest common divisor of Product (p_i^e_i)-1 and n, when n = Product (p_i^e_i); a(n) = gcd(n, A047994(n)).

Offset 1, canonical program `A323409.P15899352784078456227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323409 (n : ℕ) : ℤ :=
  (A323409.P15899352784078456227.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323410.P6927638298555409235

`n+1-A047994(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323410.P6927638298555409235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A047994 (n + 1)

end

end A323410.P6927638298555409235

noncomputable section

/-- A323410: Unitary analog of cototient function A051953: a(n) = n - A047994(n).

Offset 1, canonical program `A323410.P6927638298555409235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323410 (n : ℕ) : ℤ :=
  A323410.P6927638298555409235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324048.P2740531755121187895

`A000203(n+1)-A083254(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324048.P2740531755121187895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A083254 (n + 1)

end

end A324048.P2740531755121187895

noncomputable section

/-- A324048: a(n) = A000203(n) - A083254(n) = n + sigma(n) - 2*phi(n).

Offset 1, canonical program `A324048.P2740531755121187895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324048 (n : ℕ) : ℤ :=
  A324048.P2740531755121187895.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324050.P4688166954402356267

`record[n+1-A318840(n+1)]`
-/

namespace A324050.P4688166954402356267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324050.P4688166954402356267

noncomputable section

/-- A324050: Numbers satisfying Korselt's criterion: squarefree numbers n such that for every prime divisor p of n, p-1 divides n-1.

Offset 1, canonical program `A324050.P4688166954402356267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6559 terms. -/
def A324050 (n : ℕ) : ℤ :=
  A324050.P4688166954402356267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6559 terms. -/
def A324050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324182.P8996620141129556705

`A083254(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324182.P8996620141129556705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A163511 n).toNat

end

end A324182.P8996620141129556705

noncomputable section

/-- A324182: a(n) = A083254(A163511(n)), where A083254(n) = 2*phi(n) - n, the Möbius transform of the deficiency of n.

Offset 0, canonical program `A324182.P8996620141129556705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324182 (n : ℕ) : ℤ :=
  A324182.P8996620141129556705.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324378.P5229486026381007195

`A000265(1+A005187(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324378.P5229486026381007195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A005187 n).toNat

end

end A324378.P5229486026381007195

noncomputable section

/-- A324378: a(n) = A000265(1+A005187(n)).

Offset 0, canonical program `A324378.P5229486026381007195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324378 (n : ℕ) : ℤ :=
  A324378.P5229486026381007195.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324521.P9856326808181224407

`record[(n+2)*A331281(n+2)]`
-/

namespace A324521.P9856326808181224407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A331281 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324521.P9856326808181224407

noncomputable section

/-- A324521: Numbers > 1 where the maximum prime index is less than or equal to the number of prime factors counted with multiplicity.

Offset 1, canonical program `A324521.P9856326808181224407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A324521 (n : ℕ) : ℤ :=
  A324521.P9856326808181224407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A324521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324562.P16997009951451606243

`lt[A331282(n+2), 1]+2`
-/

namespace A324562.P16997009951451606243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A324562.P16997009951451606243

noncomputable section

/-- A324562: Numbers > 1 where the maximum prime index is greater than or equal to the number of prime factors counted with multiplicity.

Offset 1, canonical program `A324562.P16997009951451606243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324562 (n : ℕ) : ℤ :=
  (A324562.P16997009951451606243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326056.P1492137726313948475

`gcd(A326054(n+1), A326055(n+1))`
-/

namespace A326056.P1492137726313948475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326054 (n + 1)) (A326055 (n + 1))

end

end A326056.P1492137726313948475

noncomputable section

/-- A326056: a(n) = gcd(sigma(n)-A008833(n)-n, n-A008833(n)), where sigma is the sum of divisors of n, and A008833 is the largest square dividing n.

Offset 1, canonical program `A326056.P1492137726313948475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326054, A326055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326056 (n : ℕ) : ℤ :=
  (A326056.P1492137726313948475.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326054, A326055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329153.P12855634014752564158

`A047994(n+1)+a(A047994(n+1)-1)` with `a(0)=0`
-/

namespace A329153.P12855634014752564158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047994 (n + 1) + a (A047994 (n + 1) - 1).toNat

end

end A329153.P12855634014752564158

noncomputable section

/-- A329153: Sum of the iterated unitary totient function (A047994).

Offset 1, canonical program `A329153.P12855634014752564158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329153 (n : ℕ) : ℤ :=
  A329153.P12855634014752564158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331176.P12674402394166952486

`n+1-A109395(n+1)`
-/

namespace A331176.P12674402394166952486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A109395 (n + 1)

end

end A331176.P12674402394166952486

noncomputable section

/-- A331176: a(n) = n - n/gcd(n, phi(n)), where phi is Euler totient function.

Offset 1, canonical program `A331176.P12674402394166952486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331176 (n : ℕ) : ℤ :=
  A331176.P12674402394166952486.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331176.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331273.P10558890110751531057

`A072911(n+1)+a(A072911(n+1)-1)` with `a(0)=0`
-/

namespace A331273.P10558890110751531057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A072911 (n + 1) + a (A072911 (n + 1) - 1).toNat

end

end A331273.P10558890110751531057

noncomputable section

/-- A331273: Sum of the iterated exponential totient function (A072911).

Offset 1, canonical program `A331273.P10558890110751531057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331273 (n : ℕ) : ℤ :=
  A331273.P10558890110751531057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331739.P457850794578440847

`n+1-A000265(n+1)`
-/

namespace A331739.P457850794578440847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000265 (n + 1)

end

end A331739.P457850794578440847

noncomputable section

/-- A331739: a(n) is n minus its largest odd divisor.

Offset 1, canonical program `A331739.P457850794578440847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331739 (n : ℕ) : ℤ :=
  A331739.P457850794578440847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331739.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332459.P6725409599280855391

`A000265(A088580(n+1))`
-/

namespace A332459.P6725409599280855391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A088580 (n + 1)).toNat

end

end A332459.P6725409599280855391

noncomputable section

/-- A332459: Odd part of 1+sigma(n).

Offset 1, canonical program `A332459.P6725409599280855391`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332459 (n : ℕ) : ℤ :=
  A332459.P6725409599280855391.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333170.P5470037590830885907

`∑[A333169(n)]`
-/

namespace A333170.P5470037590830885907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P5470037590830885907

noncomputable section

/-- A333170: a(n) = Sum_{k=0..n} phi(k^2 + 1), where phi is the Euler totient function (A000010).

Offset 0, canonical program `A333170.P5470037590830885907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333170 (n : ℕ) : ℤ :=
  A333170.P5470037590830885907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333576.P11836017096323049674

`ceil((n+1)/2*A047994(n+1))`
-/

namespace A333576.P11836017096323049674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A047994 (n + 1) : ℚ)⌉

end

end A333576.P11836017096323049674

noncomputable section

/-- A333576: a(1) = 1; thereafter a(n) = n * uphi(n) / 2.

Offset 1, canonical program `A333576.P11836017096323049674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333576 (n : ℕ) : ℤ :=
  A333576.P11836017096323049674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333645.P13636423254639746421

`∑{d}[n+1, A047994(#)]`
-/

namespace A333645.P13636423254639746421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047994 d

end

end A333645.P13636423254639746421

noncomputable section

/-- A333645: a(n) = Sum_{d|n} uphi(d).

Offset 1, canonical program `A333645.P13636423254639746421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333645 (n : ℕ) : ℤ :=
  A333645.P13636423254639746421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333823.P3824260530256834123

`∑{d}[A000265(n+1), ((n+1)/#)^#]`
-/

namespace A333823.P3824260530256834123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ d

end

end A333823.P3824260530256834123

noncomputable section

/-- A333823: a(n) = Sum_{d|n, d odd} (n/d)^d.

Offset 1, canonical program `A333823.P3824260530256834123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A333823 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333823.P3824260530256834123.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A333823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335341.P15141081390874697399

`A047994(n+1)/A173557(n+1)`
-/

namespace A335341.P15141081390874697399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A335341.P15141081390874697399

noncomputable section

/-- A335341: Sum of divisors of A003557(n).

Offset 1, canonical program `A335341.P15141081390874697399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335341.P15141081390874697399.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335858.P3204271633163649755

`A056539(A180200(n))`
-/

namespace A335858.P3204271633163649755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A180200 n).toNat

end

end A335858.P3204271633163649755

noncomputable section

/-- A335858: Nonnegative integers ordered by binary length and then lexicographically by run lengths (considering least significant runs first).

Offset 0, canonical program `A335858.P3204271633163649755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056539, A180200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335858 (n : ℕ) : ℤ :=
  A335858.P3204271633163649755.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056539, A180200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335858.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336113.P9746994483615630298

`A017665(A000265(n+1))`
-/

namespace A336113.P9746994483615630298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A000265 (n + 1)).toNat

end

end A336113.P9746994483615630298

noncomputable section

/-- A336113: a(n) is the numerator of Sum_{odd d|n} 1/d.

Offset 1, canonical program `A336113.P9746994483615630298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336113 (n : ℕ) : ℤ :=
  A336113.P9746994483615630298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336466.P16200719452775638290

`A000265(A003958(n+1))`
-/

namespace A336466.P16200719452775638290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (n + 1)).toNat

end

end A336466.P16200719452775638290

noncomputable section

/-- A336466: Fully multiplicative with a(p) = A000265(p-1) for any prime p, where A000265(k) gives the odd part of k.

Offset 1, canonical program `A336466.P16200719452775638290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336466 (n : ℕ) : ℤ :=
  A336466.P16200719452775638290.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336475.P10953969543612210911

`A000265(n+1)*A001227(n+1)`
-/

namespace A336475.P10953969543612210911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A001227 (n + 1)

end

end A336475.P10953969543612210911

noncomputable section

/-- A336475: Multiplicative with a(2^e) = 1, and for odd primes p, a(p^e) = (e+1)*p^e.

Offset 1, canonical program `A336475.P10953969543612210911`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336475 (n : ℕ) : ℤ :=
  A336475.P10953969543612210911.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336651.P16001873672567347965

`A000265(n+1)/A204455(n+1)`
-/

namespace A336651.P16001873672567347965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A204455 (n + 1) : ℚ)

end

end A336651.P16001873672567347965

noncomputable section

/-- A336651: Odd part of n divided by its largest squarefree divisor.

Offset 1, canonical program `A336651.P16001873672567347965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A204455, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336651.P16001873672567347965.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A204455, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336652.P8676993965234657329

`A057723(A000265(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336652.P8676993965234657329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A000265 (n + 1)).toNat

end

end A336652.P8676993965234657329

noncomputable section

/-- A336652: Sum of positive divisors of odd part of n that are divisible by every (odd) prime dividing it: a(n) = A057723(A000265(n)).

Offset 1, canonical program `A336652.P8676993965234657329`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336652 (n : ℕ) : ℤ :=
  A336652.P8676993965234657329.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336698.P8308488466792626664

`A000265(1+A000265(A000203(n+1)))`
-/

namespace A336698.P8308488466792626664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A000265 (A000203 (n + 1)).toNat).toNat

end

end A336698.P8308488466792626664

noncomputable section

/-- A336698: a(n) = A000265(1+A000265(sigma(n))), where A000265(k) gives the odd part of k.

Offset 1, canonical program `A336698.P8308488466792626664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336698 (n : ℕ) : ℤ :=
  A336698.P8308488466792626664.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336715.P8758040222245764786

`record[gcd(n+1, A062355(n+1))]`
-/

namespace A336715.P8758040222245764786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A062355 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336715.P8758040222245764786

noncomputable section

/-- A336715: Numbers m that divide the product phi(m) * tau(m), where tau is the number of divisors function (A000005) and phi is the Euler totient function (A000010).

Offset 1, canonical program `A336715.P8758040222245764786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A336715 (n : ℕ) : ℤ :=
  (A336715.P8758040222245764786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A336715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337195.P206722843149984959

`A007814(1+A000265(A000203(n+1)))`
-/

namespace A337195.P206722843149984959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A000265 (A000203 (n + 1)).toNat).toNat

end

end A337195.P206722843149984959

noncomputable section

/-- A337195: The 2-adic valuation of 1+A000265(sigma(n)), where A000265 gives the odd part.

Offset 1, canonical program `A337195.P206722843149984959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337195 (n : ℕ) : ℤ :=
  A337195.P206722843149984959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337319.P230640024219586560

`A145037(A000265(n+1))`
-/

namespace A337319.P230640024219586560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A000265 (n + 1)).toNat

end

end A337319.P230640024219586560

noncomputable section

/-- A337319: a(n) = Sum_{i = 1..floor(log_2(n))+1} g(frac(n/2^i)), where g(t) = [0 if t = 0, -1 if 0 < t < 1/2, 1 if t >= 1/2], and where frac(x) denotes the fractional part.

Offset 1, canonical program `A337319.P230640024219586560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A145037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337319 (n : ℕ) : ℤ :=
  A337319.P230640024219586560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A145037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337532.P17091941672721247953

`A000217(A000005(A000265(n+1)))+A000217(A000005(A000265(n+1))*A007814(n+1))`
-/

namespace A337532.P17091941672721247953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (A000265 (n + 1)).toNat).toNat + A000217 (A000005 (A000265 (n + 1)).toNat * A007814 (n + 1)).toNat

end

end A337532.P17091941672721247953

noncomputable section

/-- A337532: a(n) = Sum_{d1|n, d2|n, d1<=d2} [(d1 mod 2) = (d2 mod 2)], where [ ] is the Iverson bracket.

Offset 1, canonical program `A337532.P17091941672721247953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337532 (n : ℕ) : ℤ :=
  A337532.P17091941672721247953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337637.P9892417587625479301

`∑[A095076(A095076(n)+n)]`
-/

namespace A337637.P9892417587625479301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 (A095076 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337637.P9892417587625479301

noncomputable section

/-- A337637: Number of numbers k <= n such that both k and k+1 are in A020899.

Offset 0, canonical program `A337637.P9892417587625479301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337637 (n : ℕ) : ℤ :=
  A337637.P9892417587625479301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338997.P11030735736865663900

`∑{d}[n+1, A000578(A065387(#)-A000203(#))]`
-/

namespace A338997.P11030735736865663900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (A065387 d - A000203 d).toNat

end

end A338997.P11030735736865663900

noncomputable section

/-- A338997: Number of (i,j,k) in {1,2,...,n}^3 such that gcd(n,i) = gcd(n,j) = gcd(n,k).

Offset 1, canonical program `A338997.P11030735736865663900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338997 (n : ℕ) : ℤ :=
  A338997.P11030735736865663900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340195.P5948241727633577160

`∑{d}[n+1, A049559(#)]`
-/

namespace A340195.P5948241727633577160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049559 d

end

end A340195.P5948241727633577160

noncomputable section

/-- A340195: a(n) = Sum_{divisors d of n} A049559(d), where A049559(x) = gcd(phi(x), x-1).

Offset 1, canonical program `A340195.P5948241727633577160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340195 (n : ℕ) : ℤ :=
  A340195.P5948241727633577160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340363.P15438000431600784952

`A010055(A000265(n+1))`
-/

namespace A340363.P15438000431600784952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A000265 (n + 1)).toNat

end

end A340363.P15438000431600784952

noncomputable section

/-- A340363: a(n) = 1 if n is of the form of 2^i * p^j, with p an odd prime and i, j >= 0, otherwise 0.

Offset 1, canonical program `A340363.P15438000431600784952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A010055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340363 (n : ℕ) : ℤ :=
  A340363.P15438000431600784952.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A010055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340371.P1048024966072458263

`A080339(A000265(n+1))`
-/

namespace A340371.P1048024966072458263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A000265 (n + 1)).toNat

end

end A340371.P1048024966072458263

noncomputable section

/-- A340371: a(n) = 1 if the odd part of n is noncomposite, 0 otherwise.

Offset 1, canonical program `A340371.P1048024966072458263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A080339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340371 (n : ℕ) : ℤ :=
  A340371.P1048024966072458263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A080339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340625.P16415255426781792317

`∑{d}[A000265(n+1), C((n+1)/#, #)]`
-/

namespace A340625.P16415255426781792317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat d

end

end A340625.P16415255426781792317

noncomputable section

/-- A340625: a(n) = Sum_{d|n, d odd, d <= n/d} binomial(n/d, d).

Offset 1, canonical program `A340625.P16415255426781792317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340625 (n : ℕ) : ℤ :=
  (A340625.P16415255426781792317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341042.P18512117435657618

`A000026(A000265(n+1))`
-/

namespace A341042.P18512117435657618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A000265 (n + 1)).toNat

end

end A341042.P18512117435657618

noncomputable section

/-- A341042: Multiplicative projection of odd part of n.

Offset 1, canonical program `A341042.P18512117435657618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000026, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341042 (n : ℕ) : ℤ :=
  A341042.P18512117435657618.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000026, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341637.P17841747577696117081

`∑{d}[n+1, #*A062952((n+1)/#)]`
-/

namespace A341637.P17841747577696117081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A062952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341637.P17841747577696117081

noncomputable section

/-- A341637: a(n) = Sum_{d|n} phi(d) * sigma(d) * sigma(n/d).

Offset 1, canonical program `A341637.P17841747577696117081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341637 (n : ℕ) : ℤ :=
  A341637.P17841747577696117081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341638.P13451584089869912517

`∑{d}[n+1, A062952(#)]`
-/

namespace A341638.P13451584089869912517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062952 d

end

end A341638.P13451584089869912517

noncomputable section

/-- A341638: a(n) = Sum_{d|n} phi(d) * sigma(d) * tau(n/d).

Offset 1, canonical program `A341638.P13451584089869912517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341638 (n : ℕ) : ℤ :=
  A341638.P13451584089869912517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341915.P11187009111869223306

`A003188(A056539(n))`
-/

namespace A341915.P11187009111869223306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A056539 n).toNat

end

end A341915.P11187009111869223306

noncomputable section

/-- A341915: For any nonnegative number n with runs in binary expansion (r_1, ..., r_w), a(n) = Sum_{k = 1..w} 2^(r_1 + ... + r_k - 1).

Offset 0, canonical program `A341915.P11187009111869223306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341915 (n : ℕ) : ℤ :=
  A341915.P11187009111869223306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342534.P15358775689638602389

`∑{d}[n+1, A007431(#)*A029939((n+1)/#)]`
-/

namespace A342534.P15358775689638602389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A029939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342534.P15358775689638602389

noncomputable section

/-- A342534: a(n) = Sum_{k=1..n} phi(gcd(k, n))^2.

Offset 1, canonical program `A342534.P15358775689638602389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342534 (n : ℕ) : ℤ :=
  A342534.P15358775689638602389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343229.P18291780148970798749

`A289831(A060373(n))`
-/

namespace A343229.P18291780148970798749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060373 n).toNat

end

end A343229.P18291780148970798749

noncomputable section

/-- A343229: A binary encoding of the digits "-1" in balanced ternary representation of n.

Offset 0, canonical program `A343229.P18291780148970798749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060373, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343229 (n : ℕ) : ℤ :=
  A343229.P18291780148970798749.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060373, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344219.P2090989052706791949

`∑{d}[n+1, A160893(#)]`
-/

namespace A344219.P2090989052706791949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160893 d

end

end A344219.P2090989052706791949

noncomputable section

/-- A344219: Number of cyclic subgroups of the group (C_n)^5, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344219.P2090989052706791949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344219 (n : ℕ) : ℤ :=
  A344219.P2090989052706791949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344302.P10940073991271623497

`∑{d}[n+1, A160895(#)]`
-/

namespace A344302.P10940073991271623497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160895 d

end

end A344302.P10940073991271623497

noncomputable section

/-- A344302: Number of cyclic subgroups of the group (C_n)^6, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344302.P10940073991271623497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344302 (n : ℕ) : ℤ :=
  A344302.P10940073991271623497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344303.P10862142479984927964

`∑{d}[n+1, A160897(#)]`
-/

namespace A344303.P10862142479984927964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160897 d

end

end A344303.P10862142479984927964

noncomputable section

/-- A344303: Number of cyclic subgroups of the group (C_n)^7, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344303.P10862142479984927964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344303 (n : ℕ) : ℤ :=
  A344303.P10862142479984927964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344304.P9807031551801676204

`∑{d}[n+1, A160908(#)]`
-/

namespace A344304.P9807031551801676204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160908 d

end

end A344304.P9807031551801676204

noncomputable section

/-- A344304: Number of cyclic subgroups of the group (C_n)^8, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344304.P9807031551801676204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344304 (n : ℕ) : ℤ :=
  A344304.P9807031551801676204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344305.P3366532404829955855

`∑{d}[n+1, A160953(#)]`
-/

namespace A344305.P3366532404829955855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160953 d

end

end A344305.P3366532404829955855

noncomputable section

/-- A344305: Number of cyclic subgroups of the group (C_n)^9, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344305.P3366532404829955855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344305 (n : ℕ) : ℤ :=
  A344305.P3366532404829955855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344306.P17542131722112190094

`∑{d}[n+1, A160957(#)]`
-/

namespace A344306.P17542131722112190094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160957 d

end

end A344306.P17542131722112190094

noncomputable section

/-- A344306: Number of cyclic subgroups of the group (C_n)^10, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344306.P17542131722112190094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344306 (n : ℕ) : ℤ :=
  A344306.P17542131722112190094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345937.P12534204901955045802

`gcd(n, A047994(n+1))`
-/

namespace A345937.P12534204901955045802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A047994 (n + 1))

end

end A345937.P12534204901955045802

noncomputable section

/-- A345937: a(n) = gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345937.P12534204901955045802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345937 (n : ℕ) : ℤ :=
  (A345937.P12534204901955045802.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346760.P5222044433833628232

`(A059376(n+1)-3*A007434(n+1)+2*A000010(n+1))/6`
-/

namespace A346760.P5222044433833628232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) - 3 * A007434 (n + 1) + 2 * A000010 (n + 1) : ℚ) / 6

end

end A346760.P5222044433833628232

noncomputable section

/-- A346760: a(n) = Sum_{d|n} mu(n/d) * binomial(d,3).

Offset 1, canonical program `A346760.P5222044433833628232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346760 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346760.P5222044433833628232.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346761.P16965742112610444180

`(A059377(n+1)-6*A059376(n+1)+11*A007434(n+1)-6*A000010(n+1))/24`
-/

namespace A346761.P16965742112610444180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) - 6 * A059376 (n + 1) + 11 * A007434 (n + 1) - 6 * A000010 (n + 1) : ℚ) / 24

end

end A346761.P16965742112610444180

noncomputable section

/-- A346761: a(n) = Sum_{d|n} mu(n/d) * binomial(d,4).

Offset 1, canonical program `A346761.P16965742112610444180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346761.P16965742112610444180.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347133.P11442822717717794057

`∑{d}[n+1, A349394(#)*A369894((n+1)/#)]`
-/

namespace A347133.P11442822717717794057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349394 d * A369894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347133.P11442822717717794057

noncomputable section

/-- A347133: a(n) = Sum_{d|n} A003415(n/d) * A069359(d).

Offset 1, canonical program `A347133.P11442822717717794057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347133 (n : ℕ) : ℤ :=
  A347133.P11442822717717794057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347385.P6954403012432524974

`A001615(A000265(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347385.P6954403012432524974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A000265 (n + 1)).toNat

end

end A347385.P6954403012432524974

noncomputable section

/-- A347385: Dedekind psi function applied to the odd part of n: a(n) = A001615(A000265(n)).

Offset 1, canonical program `A347385.P6954403012432524974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347385 (n : ℕ) : ℤ :=
  A347385.P6954403012432524974.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348097.P16199017349381684825

`eq[A056169(n+1), A056170(n+1)]+1`
-/

namespace A348097.P16199017349381684825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348097.P16199017349381684825

noncomputable section

/-- A348097: Numbers having equally many unitary and nonunitary prime divisors.

Offset 1, canonical program `A348097.P16199017349381684825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A348097 (n : ℕ) : ℤ :=
  (A348097.P16199017349381684825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A348097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348121.P4983876733815640948

`lt[A056169(n+1), A056170(n+1)]+1`
-/

namespace A348121.P4983876733815640948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348121.P4983876733815640948

noncomputable section

/-- A348121: Numbers having more nonunitary than unitary prime divisors.

Offset 1, canonical program `A348121.P4983876733815640948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A348121 (n : ℕ) : ℤ :=
  (A348121.P4983876733815640948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A348121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348194.P2542258842268044495

`A077767(n+1)-A077766(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348194.P2542258842268044495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (n + 1) - A077766 (n + 1)

end

end A348194.P2542258842268044495

noncomputable section

/-- A348194: a(n) = A077767(n) - A077766(n).

Offset 1, canonical program `A348194.P2542258842268044495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077766, A077767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348194 (n : ℕ) : ℤ :=
  A348194.P2542258842268044495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077766, A077767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348762.P12887282092891507356

`A000265((n+1)*(n+17))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348762.P12887282092891507356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1) * (n + 17))

end

end A348762.P12887282092891507356

noncomputable section

/-- A348762: a(n) = A000265((n-8)*(n+8)).

Offset 9, canonical program `A348762.P12887282092891507356`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348762 (n : ℕ) : ℤ :=
  A348762.P12887282092891507356.a (n - 9)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348841.P490662357377440860

`A000720(n+1)-A055460(n+1)`
-/

namespace A348841.P490662357377440860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A055460 (n + 1)

end

end A348841.P490662357377440860

noncomputable section

/-- A348841: Number of primes with even exponents >= 2 in the prime power factorization of n!, for n >= 1.

Offset 1, canonical program `A348841.P490662357377440860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A055460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348841 (n : ℕ) : ℤ :=
  A348841.P490662357377440860.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A055460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349138.P8801393356759692262

`∑{d}[n+1, A349137(#)]`
-/

namespace A349138.P8801393356759692262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349137 d

end

end A349138.P8801393356759692262

noncomputable section

/-- A349138: Inverse Möbius transform of A349137, where A349137(n) = phi(A003602(n)).

Offset 1, canonical program `A349138.P8801393356759692262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349138 (n : ℕ) : ℤ :=
  A349138.P8801393356759692262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349338.P1568544451792940700

`A000010(n+1)+A117494(n+1)`
-/

namespace A349338.P1568544451792940700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A117494 (n + 1)

end

end A349338.P1568544451792940700

noncomputable section

/-- A349338: Dirichlet convolution of A000010 (Euler totient phi) with A080339 (characteristic function of noncomposite numbers).

Offset 1, canonical program `A349338.P1568544451792940700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349338 (n : ℕ) : ℤ :=
  A349338.P1568544451792940700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350342.P14469462587994129721

`filter[A003277(n+1), A325964(#)]`
-/

namespace A350342.P14469462587994129721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A350342.P14469462587994129721

noncomputable section

/-- A350342: Numbers k such that k^2 is an abelian order.

Offset 1, canonical program `A350342.P14469462587994129721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8068 terms. -/
def A350342 (n : ℕ) : ℤ :=
  A350342.P14469462587994129721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8068 terms. -/
def A350342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351565.P4204189420348850380

`A000265(A003602(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351565.P4204189420348850380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003602 (n + 1)).toNat

end

end A351565.P4204189420348850380

noncomputable section

/-- A351565: Odd part of Kimberling's paraphrase of the binary number system: a(n) = A000265(A003602(n)).

Offset 1, canonical program `A351565.P4204189420348850380`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351565 (n : ℕ) : ℤ :=
  A351565.P4204189420348850380.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351715.P1671394502304081214

`A351714(lt[Δ[A351714(n+1)], 2]+1)`
-/

namespace A351715.P1671394502304081214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351714 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351714 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A351715.P1671394502304081214

noncomputable section

/-- A351715: Numbers k such that k and k + 1 are both Lucas-Niven numbers (A351714).

Offset 1, canonical program `A351715.P1671394502304081214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 785 terms. -/
def A351715 (n : ℕ) : ℤ :=
  A351715.P1671394502304081214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 785 terms. -/
def A351715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353276.P4699711645647838418

`A110088(n+1)-A051612(n+1)`
-/

namespace A353276.P4699711645647838418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110088 (n + 1) - A051612 (n + 1)

end

end A353276.P4699711645647838418

noncomputable section

/-- A353276: a(n) = phi(n) + tau(n)^omega(n) - sigma(n).

Offset 1, canonical program `A353276.P4699711645647838418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A110088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353276 (n : ℕ) : ℤ :=
  A353276.P4699711645647838418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A110088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353329.P10991015569382708285

`A353352(2*(n+1))-A353352(A000265(n+1))`
-/

namespace A353329.P10991015569382708285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (2 * (n + 1)) - A353352 (A000265 (n + 1)).toNat

end

end A353329.P10991015569382708285

noncomputable section

/-- A353329: Number of divisors d of n for which A332823(d) is negative (-1).

Offset 1, canonical program `A353329.P10991015569382708285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353329 (n : ℕ) : ℤ :=
  A353329.P10991015569382708285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353636.P9241397115263292708

`A062401(n+1)-A000010(n+1)`
-/

namespace A353636.P9241397115263292708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) - A000010 (n + 1)

end

end A353636.P9241397115263292708

noncomputable section

/-- A353636: Difference between phi(sigma(n)) and phi(n).

Offset 1, canonical program `A353636.P9241397115263292708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353636 (n : ℕ) : ℤ :=
  A353636.P9241397115263292708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353643.P5389742288665032552

`gcd(A000010(n+1), A062401(n+1))`
-/

namespace A353643.P5389742288665032552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A062401 (n + 1))

end

end A353643.P5389742288665032552

noncomputable section

/-- A353643: The greatest common divisor of phi(n) and phi(sigma(n)).

Offset 1, canonical program `A353643.P5389742288665032552`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353643 (n : ℕ) : ℤ :=
  (A353643.P5389742288665032552.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353670.P11477558282565807478

`A010051(A000265(n+1))`
-/

namespace A353670.P11477558282565807478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000265 (n + 1)).toNat

end

end A353670.P11477558282565807478

noncomputable section

/-- A353670: a(n) = 1 if the odd part of n is a prime, otherwise 0.

Offset 1, canonical program `A353670.P11477558282565807478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353670 (n : ℕ) : ℤ :=
  A353670.P11477558282565807478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354032.P602465853701711207

`A121262(A065387(n+1)+2)`
-/

namespace A354032.P602465853701711207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A065387 (n + 1) + 2).toNat

end

end A354032.P602465853701711207

noncomputable section

/-- A354032: a(n) = 1 if phi(n)+sigma(n) == 2 (mod 4), otherwise 0.

Offset 1, canonical program `A354032.P602465853701711207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354032 (n : ℕ) : ℤ :=
  A354032.P602465853701711207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355451.P3968050885105735617

`A059841(n+1)*(1-A264739(n+1))`
-/

namespace A355451.P3968050885105735617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * (1 - A264739 (n + 1))

end

end A355451.P3968050885105735617

noncomputable section

/-- A355451: a(n) = 1 if n is even and phi(x) = n has no solutions, otherwise 0.

Offset 1, canonical program `A355451.P3968050885105735617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355451 (n : ℕ) : ℤ :=
  A355451.P3968050885105735617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356489.P775976207819050800

`A000265(A077063(n+1))`
-/

namespace A356489.P775976207819050800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A077063 (n + 1)).toNat

end

end A356489.P775976207819050800

noncomputable section

/-- A356489: a(n) = A000265(rad(prime(n)-1)), rad = A007947.

Offset 1, canonical program `A356489.P775976207819050800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A077063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356489 (n : ℕ) : ℤ :=
  A356489.P775976207819050800.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A077063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356637.P751081540588102754

`A000265(A263931(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356637.P751081540588102754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A263931 n).toNat

end

end A356637.P751081540588102754

noncomputable section

/-- A356637: a(n) = A000265(A263931(n)).

Offset 0, canonical program `A356637.P751081540588102754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356637 (n : ℕ) : ℤ :=
  A356637.P751081540588102754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357669.P7459688075800984872

`A000005(n+1)/A056671(n+1)`
-/

namespace A357669.P7459688075800984872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A357669.P7459688075800984872

noncomputable section

/-- A357669: a(n) is the number of divisors of the powerful part of n.

Offset 1, canonical program `A357669.P7459688075800984872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357669.P7459688075800984872.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358061.P13972673680115757593

`A349137(Δ[n²])%∏{e}[n+1, #+1]`
-/

namespace A358061.P13972673680115757593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A358061.P13972673680115757593

noncomputable section

/-- A358061: a(n) = phi(n) mod tau(n).

Offset 1, canonical program `A358061.P13972673680115757593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358061 (n : ℕ) : ℤ :=
  A358061.P13972673680115757593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360944.P4031922297665866421

`eq[2, A035214(sqrt(A127473(n+1)))]+1`
-/

namespace A360944.P4031922297665866421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P4031922297665866421

noncomputable section

/-- A360944: Numbers m such that phi(m) is a triangular number, where phi is the Euler totient function (A000010).

Offset 1, canonical program `A360944.P4031922297665866421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A360944 (n : ℕ) : ℤ :=
  (A360944.P4031922297665866421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A360944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361148.P11997387026738742793

`A349137(Δ[n²])²²`
-/

namespace A361148.P11997387026738742793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A361148.P11997387026738742793

noncomputable section

/-- A361148: a(n) = phi(n)^4.

Offset 1, canonical program `A361148.P11997387026738742793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361148 (n : ℕ) : ℤ :=
  A361148.P11997387026738742793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362414.P9769977352830913817

`gcd(n+1, A127473(n+1))/A009195(n+1)`
-/

namespace A362414.P9769977352830913817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A127473 (n + 1)) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A362414.P9769977352830913817

noncomputable section

/-- A362414: a(n) = gcd(n, phi(n)^2) / gcd(n, phi(n)).

Offset 1, canonical program `A362414.P9769977352830913817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362414 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362414.P9769977352830913817.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363270.P16204240149667197490

`A000265(A085062(n+1))`
-/

namespace A363270.P16204240149667197490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A085062 (n + 1)).toNat

end

end A363270.P16204240149667197490

noncomputable section

/-- A363270: The result, starting from n, of Collatz steps x -> (3x+1)/2 while odd, followed by x -> x/2 while even.

Offset 1, canonical program `A363270.P16204240149667197490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4094 terms. -/
def A363270 (n : ℕ) : ℤ :=
  A363270.P16204240149667197490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4094 terms. -/
def A363270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363969.P17338355453766122660

`∑{d}[A000265(n+1), A363268(#)]`
-/

namespace A363969.P17338355453766122660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A363268 d

end

end A363969.P17338355453766122660

noncomputable section

/-- A363969: Expansion of Sum_{k>0} k^2 * x^(2*k-1) / (1 - x^(2*k-1)).

Offset 1, canonical program `A363969.P17338355453766122660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363969 (n : ℕ) : ℤ :=
  A363969.P17338355453766122660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363974.P1318836168123044624

`∑{d}[A000265(n+1), A008805(#)]`
-/

namespace A363974.P1318836168123044624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008805 d

end

end A363974.P1318836168123044624

noncomputable section

/-- A363974: Expansion of Sum_{k>0} x^k / (1 - x^(2*k))^3.

Offset 1, canonical program `A363974.P1318836168123044624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363974 (n : ℕ) : ℤ :=
  A363974.P1318836168123044624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364933.P7847543960833524069

`A109606(n+1)-A055631(n+1)`
-/

namespace A364933.P7847543960833524069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A055631 (n + 1)

end

end A364933.P7847543960833524069

noncomputable section

/-- A364933: a(n) = Sum_{k=1..n} A191898(n,k)*[A191904(n,k) = A191898(n,k)].

Offset 1, canonical program `A364933.P7847543960833524069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364933 (n : ℕ) : ℤ :=
  A364933.P7847543960833524069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365207.P8652609855473738591

`A000005(A006519(n+1))*A034444(A000265(n+1))`
-/

namespace A365207.P8652609855473738591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (n + 1)).toNat * A034444 (A000265 (n + 1)).toNat

end

end A365207.P8652609855473738591

noncomputable section

/-- A365207: The number of divisors d of n such that gcd(d, n/d) is a power of 2 (A000079).

Offset 1, canonical program `A365207.P8652609855473738591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000265, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365207 (n : ℕ) : ℤ :=
  A365207.P8652609855473738591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000265, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365207.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365403.P12086530719845818001

`A034448(A008833(n+1))`
-/

namespace A365403.P12086530719845818001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A008833 (n + 1)).toNat

end

end A365403.P12086530719845818001

noncomputable section

/-- A365403: The sum of the unitary divisors of the largest square dividing n.

Offset 1, canonical program `A365403.P12086530719845818001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365403 (n : ℕ) : ℤ :=
  A365403.P12086530719845818001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365479.P18110182428755733630

`A034448(A053143(n+1))`
-/

namespace A365479.P18110182428755733630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A053143 (n + 1)).toNat

end

end A365479.P18110182428755733630

noncomputable section

/-- A365479: The sum of unitary divisors of the smallest square divisible by n.

Offset 1, canonical program `A365479.P18110182428755733630`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053143, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365479 (n : ℕ) : ℤ :=
  A365479.P18110182428755733630.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053143, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365480.P17885018013018802404

`A034448(A356191(n+1))`
-/

namespace A365480.P17885018013018802404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A356191 (n + 1)).toNat

end

end A365480.P17885018013018802404

noncomputable section

/-- A365480: The sum of unitary divisors of the smallest exponentially odd number that is divisible by n.

Offset 1, canonical program `A365480.P17885018013018802404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365480 (n : ℕ) : ℤ :=
  A365480.P17885018013018802404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365481.P15972736645775399503

`A034448(A019554(n+1))`
-/

namespace A365481.P15972736645775399503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A019554 (n + 1)).toNat

end

end A365481.P15972736645775399503

noncomputable section

/-- A365481: The sum of unitary divisors of the smallest number whose square is divisible by n.

Offset 1, canonical program `A365481.P15972736645775399503`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365481 (n : ℕ) : ℤ :=
  A365481.P15972736645775399503.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366250.P1848522872160911425

`filter[A391319(n+1), A380439(#)]`
-/

namespace A366250.P1848522872160911425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A366250.P1848522872160911425

noncomputable section

/-- A366250: Numbers k that are not powerful and do not have a strictly superior squarefree divisor.

Offset 1, canonical program `A366250.P1848522872160911425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A366250 (n : ℕ) : ℤ :=
  A366250.P1848522872160911425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A366250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366608.P1002265853707931672

`A053285(2*n)`
-/

namespace A366608.P1002265853707931672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053285 (2 * n)

end

end A366608.P1002265853707931672

noncomputable section

/-- A366608: a(n) = phi(4^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366608.P1002265853707931672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366608 (n : ℕ) : ℤ :=
  A366608.P1002265853707931672.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366658.P16706741294913406214

`A053285(3*n)`
-/

namespace A366658.P16706741294913406214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053285 (3 * n)

end

end A366658.P16706741294913406214

noncomputable section

/-- A366658: a(n) = phi(8^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366658.P16706741294913406214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366658 (n : ℕ) : ℤ :=
  A366658.P16706741294913406214.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366663.P12097496331306047741

`A295500(2*(n+1))`
-/

namespace A366663.P12097496331306047741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295500 (2 * (n + 1))

end

end A366663.P12097496331306047741

noncomputable section

/-- A366663: a(n) = phi(9^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A366663.P12097496331306047741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366663 (n : ℕ) : ℤ :=
  A366663.P12097496331306047741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366667.P18363183813397785951

`A366579(2*n)`
-/

namespace A366667.P18363183813397785951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366579 (2 * n)

end

end A366667.P18363183813397785951

noncomputable section

/-- A366667: a(n) = phi(9^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366667.P18363183813397785951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366667 (n : ℕ) : ℤ :=
  A366667.P18363183813397785951.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369718.P3306263792337587207

`A034448(A197863(n+1))`
-/

namespace A369718.P3306263792337587207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A197863 (n + 1)).toNat

end

end A369718.P3306263792337587207

noncomputable section

/-- A369718: The sum of unitary divisors of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A369718.P3306263792337587207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369718 (n : ℕ) : ℤ :=
  A369718.P3306263792337587207.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370650.P533710446170374147

`filter[A000379(n+1), A373975(#)]`
-/

namespace A370650.P533710446170374147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A370650.P533710446170374147

noncomputable section

/-- A370650: Numbers whose number of infinitary divisors that are terms of A366242 is equal to the number of infinitary divisors that are terms of A366243.

Offset 1, canonical program `A370650.P533710446170374147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A370650 (n : ℕ) : ℤ :=
  A370650.P533710446170374147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A370650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370899.P10835421738952848629

`∑[(-1)^n*A047994(n+1)]`
-/

namespace A370899.P10835421738952848629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370899.P10835421738952848629

noncomputable section

/-- A370899: Partial alternating sums of the unitary totient function (A047994).

Offset 1, canonical program `A370899.P10835421738952848629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370899 (n : ℕ) : ℤ :=
  A370899.P10835421738952848629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371092.P362407384602994436

`floor((A000265(3*n+1)+5)/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371092.P362407384602994436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (3 * n + 1) + 5 : ℚ) / 6⌋

end

end A371092.P362407384602994436

noncomputable section

/-- A371092: a(n) = floor((A000265(3*n+1)+5)/6), where A000265 gives the odd part of its argument.

Offset 0, canonical program `A371092.P362407384602994436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371092 (n : ℕ) : ℤ :=
  A371092.P362407384602994436.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372930.P5262437990481401182

`∑{d}[n+1, A053191(#)*A372927((n+1)/#)]`
-/

namespace A372930.P5262437990481401182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A372927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372930.P5262437990481401182

noncomputable section

/-- A372930: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^5.

Offset 1, canonical program `A372930.P5262437990481401182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372930 (n : ℕ) : ℤ :=
  A372930.P5262437990481401182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373648.P8244611939884756043

`A296023(n+1)-1`
-/

namespace A373648.P8244611939884756043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296023 (n + 1) - 1

end

end A373648.P8244611939884756043

noncomputable section

/-- A373648: Integers k such that there are i groups of order k+i up to isomorphism, for i=1,2.

Offset 1, canonical program `A373648.P8244611939884756043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373648 (n : ℕ) : ℤ :=
  A373648.P8244611939884756043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373730.P14378342733449950770

`A000265(A017185(n))`
-/

namespace A373730.P14378342733449950770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017185 n).toNat

end

end A373730.P14378342733449950770

noncomputable section

/-- A373730: Reduced Collatz function R applied to the numbers 6n+1: a(n) = R(6n+1), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 0, canonical program `A373730.P14378342733449950770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373730 (n : ℕ) : ℤ :=
  A373730.P14378342733449950770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373864.P16710253182946225644

`A000265(A017257(n))`
-/

namespace A373864.P16710253182946225644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017257 n).toNat

end

end A373864.P16710253182946225644

noncomputable section

/-- A373864: Reduced Collatz function R applied to the numbers 6n+5: a(n) = R(6n+5), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 0, canonical program `A373864.P16710253182946225644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373864 (n : ℕ) : ℤ :=
  A373864.P16710253182946225644.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374469.P9574300939196503578

`A000265(A364255(n))`
-/

namespace A374469.P9574300939196503578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A364255 n).toNat

end

end A374469.P9574300939196503578

noncomputable section

/-- A374469: The odd part of gcd(n, A163511(n)).

Offset 0, canonical program `A374469.P9574300939196503578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374469 (n : ℕ) : ℤ :=
  A374469.P9574300939196503578.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375272.P13151626788742865521

`log2(A331109(n+1))`
-/

namespace A375272.P13151626788742865521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331109 (n + 1) : ℝ)

end

end A375272.P13151626788742865521

noncomputable section

/-- A375272: The number of factors of n of the form p^Fibonacci(k), where p is a prime and k >= 2, when the factorization is uniquely done using the dual Zeckendorf representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A375272.P13151626788742865521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375272.P13151626788742865521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375669.P4375013482018991559

`A051903(A000265(n+1))`
-/

namespace A375669.P4375013482018991559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000265 (n + 1)).toNat

end

end A375669.P4375013482018991559

noncomputable section

/-- A375669: The maximum exponent in the prime factorization of the largest odd divisor of n.

Offset 1, canonical program `A375669.P4375013482018991559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375669 (n : ℕ) : ℤ :=
  A375669.P4375013482018991559.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375766.P13293560451162268866

`A051903(A115063(n+1))`
-/

namespace A375766.P13293560451162268866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A115063 (n + 1)).toNat

end

end A375766.P13293560451162268866

noncomputable section

/-- A375766: The maximum exponent in the prime factorization of the numbers whose exponents in their prime factorization are all Fibonacci numbers.

Offset 1, canonical program `A375766.P13293560451162268866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A115063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375766 (n : ℕ) : ℤ :=
  A375766.P13293560451162268866.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A115063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378615.P10846133080896541724

`A368748(n)+a(n-1)` with `a(0)=1`
-/

namespace A378615.P10846133080896541724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A368748 n + a (n - 1)

end

end A378615.P10846133080896541724

noncomputable section

/-- A378615: Number of non prime powers <= prime(n).

Offset 1, canonical program `A378615.P10846133080896541724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378615 (n : ℕ) : ℤ :=
  A378615.P10846133080896541724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378987.P6480789479262422065

`A083254(2*n+1)`
-/

namespace A378987.P6480789479262422065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (2 * n + 1)

end

end A378987.P6480789479262422065

noncomputable section

/-- A378987: Odd bisection of A083254, where A083254(n) = 2*phi(n)-n.

Offset 1, canonical program `A378987.P6480789479262422065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378987 (n : ℕ) : ℤ :=
  A378987.P6480789479262422065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379213.P13710358421444218836

`∏{e}[A277331(n), A000045(#)]`
-/

namespace A379213.P13710358421444218836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A379213.P13710358421444218836

noncomputable section

/-- A379213: a(n) is the number of nonnegative integers m such that A184615(m) = A003714(n).

Offset 0, canonical program `A379213.P13710358421444218836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A379213 (n : ℕ) : ℤ :=
  A379213.P13710358421444218836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A379213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379717.P10074037294569084625

`A007434(A004709(n+1))`
-/

namespace A379717.P10074037294569084625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A004709 (n + 1)).toNat

end

end A379717.P10074037294569084625

noncomputable section

/-- A379717: The second Jordan totient function applied to the cubefree numbers.

Offset 1, canonical program `A379717.P10074037294569084625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379717 (n : ℕ) : ℤ :=
  A379717.P10074037294569084625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379832.P7411395680414309384

`A007434(A268335(n+1))`
-/

namespace A379832.P7411395680414309384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A268335 (n + 1)).toNat

end

end A379832.P7411395680414309384

noncomputable section

/-- A379832: The second Jordan totient function applied to the exponentially odd numbers.

Offset 1, canonical program `A379832.P7411395680414309384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379832 (n : ℕ) : ℤ :=
  A379832.P7411395680414309384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379833.P6496859754452473676

`A007434(A000290(n+1))`
-/

namespace A379833.P6496859754452473676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A000290 (n + 1)).toNat

end

end A379833.P6496859754452473676

noncomputable section

/-- A379833: The second Jordan totient function applied to the squares.

Offset 1, canonical program `A379833.P6496859754452473676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379833 (n : ℕ) : ℤ :=
  A379833.P6496859754452473676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382420.P7625293795778711111

`A056170(A046099(n+1))`
-/

namespace A382420.P7625293795778711111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A046099 (n + 1)).toNat

end

end A382420.P7625293795778711111

noncomputable section

/-- A382420: The number of non-unitary prime divisors of the noncubefree numbers.

Offset 1, canonical program `A382420.P7625293795778711111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382420 (n : ℕ) : ℤ :=
  A382420.P7625293795778711111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382660.P13276603593670196303

`A047994(A268335(n+1))`
-/

namespace A382660.P13276603593670196303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A268335 (n + 1)).toNat

end

end A382660.P13276603593670196303

noncomputable section

/-- A382660: The unitary totient function applied to the exponentially odd numbers (A268335).

Offset 1, canonical program `A382660.P13276603593670196303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382660 (n : ℕ) : ℤ :=
  A382660.P13276603593670196303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382662.P17606153397219342384

`A047994(A004709(n+1))`
-/

namespace A382662.P17606153397219342384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A004709 (n + 1)).toNat

end

end A382662.P17606153397219342384

noncomputable section

/-- A382662: The unitary totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382662.P17606153397219342384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382662 (n : ℕ) : ℤ :=
  A382662.P17606153397219342384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382966.P5975578079117178061

`A056170(A375072(n+1))`
-/

namespace A382966.P5975578079117178061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A375072 (n + 1)).toNat

end

end A382966.P5975578079117178061

noncomputable section

/-- A382966: The number of non-unitary prime divisors of the n-th biquadratefree number that is not cubefree.

Offset 1, canonical program `A382966.P5975578079117178061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A375072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382966 (n : ℕ) : ℤ :=
  A382966.P5975578079117178061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A375072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382968.P9973608297298639006

`A056170(A382967(n+1))`
-/

namespace A382968.P9973608297298639006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A382967 (n + 1)).toNat

end

end A382968.P9973608297298639006

noncomputable section

/-- A382968: The number of non-unitary prime divisors of the n-th biquadratefree number that is not squarefree.

Offset 1, canonical program `A382968.P9973608297298639006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A382967, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382968 (n : ℕ) : ℤ :=
  A382968.P9973608297298639006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A382967, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384048.P15247859992876317530

`A047994(A057521(n+1))*A055231(n+1)`
-/

namespace A384048.P15247859992876317530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A057521 (n + 1)).toNat * A055231 (n + 1)

end

end A384048.P15247859992876317530

noncomputable section

/-- A384048: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is squarefree.

Offset 1, canonical program `A384048.P15247859992876317530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A055231, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384048 (n : ℕ) : ℤ :=
  A384048.P15247859992876317530.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A055231, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384055.P10252134696873280874

`A047994(A006519(n+1))*A000265(n+1)`
-/

namespace A384055.P10252134696873280874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A006519 (n + 1)).toNat * A000265 (n + 1)

end

end A384055.P10252134696873280874

noncomputable section

/-- A384055: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is odd.

Offset 1, canonical program `A384055.P10252134696873280874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384055 (n : ℕ) : ℤ :=
  A384055.P10252134696873280874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384057.P11150408959898623205

`A047994(A065330(n+1))*A065331(n+1)`
-/

namespace A384057.P11150408959898623205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A065330 (n + 1)).toNat * A065331 (n + 1)

end

end A384057.P11150408959898623205

noncomputable section

/-- A384057: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 3-smooth number.

Offset 1, canonical program `A384057.P11150408959898623205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384057 (n : ℕ) : ℤ :=
  A384057.P11150408959898623205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384058.P8076363188625105423

`A047994(A065331(n+1))*A065330(n+1)`
-/

namespace A384058.P8076363188625105423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A065331 (n + 1)).toNat * A065330 (n + 1)

end

end A384058.P8076363188625105423

noncomputable section

/-- A384058: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 5-rough number (A007310).

Offset 1, canonical program `A384058.P8076363188625105423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384058 (n : ℕ) : ℤ :=
  A384058.P8076363188625105423.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384058.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A179188.P9691688414308048865

`record[A103391(A217139(n+1)-2)]`
-/

namespace A179188.P9691688414308048865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A217139 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P9691688414308048865

noncomputable section

/-- A179188: Numbers n such that phi(n) = phi(n+6), with Euler's totient function phi=A000010.

Offset 1, canonical program `A179188.P9691688414308048865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A179188 (n : ℕ) : ℤ :=
  A179188.P9691688414308048865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A179188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183764.P17512530686883695841

`∑[A180772(n+1)]+(n+2)²`
-/

namespace A183764.P17512530686883695841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 2) ^ 2 : ℤ)

end

end A183764.P17512530686883695841

noncomputable section

/-- A183764: Number of 2 X 2 singular 0..n matrices with a(1,1) <= a(1,2) <= a(2,1) <= a(2,2).

Offset 1, canonical program `A183764.P17512530686883695841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A183764 (n : ℕ) : ℤ :=
  A183764.P17512530686883695841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A183764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193386.P2341240866290404182

`A062821(n+1)-A193453(n+1)`
-/

namespace A193386.P2341240866290404182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A193453 (n + 1)

end

end A193386.P2341240866290404182

noncomputable section

/-- A193386: Number of even divisors of phi(n).

Offset 1, canonical program `A193386.P2341240866290404182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A193453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193386 (n : ℕ) : ℤ :=
  A193386.P2341240866290404182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A193453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193388.P4473864990657091494

`A062402(n+1)-A193454(n+1)`
-/

namespace A193388.P4473864990657091494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A193454 (n + 1)

end

end A193388.P4473864990657091494

noncomputable section

/-- A193388: Sum of even divisors of phi(n).

Offset 1, canonical program `A193388.P4473864990657091494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, A193454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193388 (n : ℕ) : ℤ :=
  A193388.P4473864990657091494.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, A193454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193800.P17352765723987985871

`(A379705(n+1)-(n+1))/2`
-/

namespace A193800.P17352765723987985871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379705 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A193800.P17352765723987985871

noncomputable section

/-- A193800: Least m > 0 such that (n+m)^2 - m^2 (= n^2 + 2*m*n) is a square.

Offset 1, canonical program `A193800.P17352765723987985871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A193800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A193800.P17352765723987985871.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A193800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221048.P1295286946370857410

`filter[A068919(n+1), A353676(#)]`
-/

namespace A221048.P1295286946370857410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A221048.P1295286946370857410

noncomputable section

/-- A221048: The odd semiprime numbers (A046315) which are orders of a non-Abelian group.

Offset 1, canonical program `A221048.P1295286946370857410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A221048 (n : ℕ) : ℤ :=
  A221048.P1295286946370857410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A221048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226944.P7176451047241022902

`record[A000977(n+1)%A069359(A000977(n+1))]`
-/

namespace A226944.P7176451047241022902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000977 (n + 1)) (A069359 (A000977 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226944.P7176451047241022902

noncomputable section

/-- A226944: Numbers k such that 1/k + Sum_{p|k} 1/p > 1.

Offset 1, canonical program `A226944.P7176451047241022902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A226944 (n : ℕ) : ℤ :=
  A226944.P7176451047241022902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A226944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231278.P12030104603106713402

`A007089(p?[A297250(n+1)])`
-/

namespace A231278.P12030104603106713402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A231278.P12030104603106713402

noncomputable section

/-- A231278: Not necessarily palindromic primes of which initial and terminal digits are identical, as written in base 3.

Offset 1, canonical program `A231278.P12030104603106713402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A231278 (n : ℕ) : ℤ :=
  A231278.P12030104603106713402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A231278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245379.P6502977345616114839

`filter[A007774(n+1), A336040(#)]`
-/

namespace A245379.P6502977345616114839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A245379.P6502977345616114839

noncomputable section

/-- A245379: Refactorable numbers with exactly two distinct prime divisors.

Offset 1, canonical program `A245379.P6502977345616114839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A245379 (n : ℕ) : ℤ :=
  A245379.P6502977345616114839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A245379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256617.P10891670028466202195

`filter[A007774(n+1), A137794(#)]`
-/

namespace A256617.P10891670028466202195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A256617.P10891670028466202195

noncomputable section

/-- A256617: Numbers having exactly two distinct prime factors, which are also adjacent prime numbers.

Offset 1, canonical program `A256617.P10891670028466202195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A256617 (n : ℕ) : ℤ :=
  A256617.P10891670028466202195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A256617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262870.P16818378714008051339

`A294146(n+1)+A294285(n+1)-A294283(n+1)`
-/

namespace A262870.P16818378714008051339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) + (A294285 (n + 1) - A294283 (n + 1))

end

end A262870.P16818378714008051339

noncomputable section

/-- A262870: Sum of the squarefree numbers appearing among the larger parts of the partitions of n into two parts.

Offset 1, canonical program `A262870.P16818378714008051339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262870 (n : ℕ) : ℤ :=
  A262870.P16818378714008051339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269758.P3897110207471360773

`A000079(A262978(n+1))`
-/

namespace A269758.P3897110207471360773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A262978 (n + 1)).toNat

end

end A269758.P3897110207471360773

noncomputable section

/-- A269758: Prime powers with squarefree neighbors.

Offset 1, canonical program `A269758.P3897110207471360773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A269758 (n : ℕ) : ℤ :=
  A269758.P3897110207471360773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A269758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294063.P13359154590265481169

`A294061(2*(n+1))`
-/

namespace A294063.P13359154590265481169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294061 (2 * (n + 1))

end

end A294063.P13359154590265481169

noncomputable section

/-- A294063: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the larger part squarefree.

Offset 1, canonical program `A294063.P13359154590265481169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294063 (n : ℕ) : ℤ :=
  A294063.P13359154590265481169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295496.P12825084809599148860

`A366623(n+1)/(n+1)`
-/

namespace A295496.P12825084809599148860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366623 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295496.P12825084809599148860

noncomputable section

/-- A295496: a(n) = phi(6^n-1)/n, where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295496.P12825084809599148860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A295496 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295496.P12825084809599148860.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A295496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319293.P13782557292742531831

`eq[1, dr(A050985(n+1)²)]+1`
-/

namespace A319293.P13782557292742531831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A050985 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319293.P13782557292742531831

noncomputable section

/-- A319293: Numbers of the form 27^i*(9*j +- 1).

Offset 1, canonical program `A319293.P13782557292742531831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319293 (n : ℕ) : ℤ :=
  (A319293.P13782557292742531831.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323916.P1875716498563365091

`∩[A007774(n+1), A063752(n+1)]`
-/

namespace A323916.P1875716498563365091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323916.P1875716498563365091

noncomputable section

/-- A323916: Numbers k with exactly two distinct prime divisors and such that cototient(k) is a square.

Offset 1, canonical program `A323916.P1875716498563365091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A323916 (n : ℕ) : ℤ :=
  (A323916.P1875716498563365091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A323916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324745.P1964975310352198901

`∩[A007774(n+1), A039770(n+1)]`
-/

namespace A324745.P1964975310352198901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324745.P1964975310352198901

noncomputable section

/-- A324745: Numbers k with exactly two distinct prime factors and such that phi(k) is a square.

Offset 1, canonical program `A324745.P1964975310352198901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A324745 (n : ℕ) : ℤ :=
  (A324745.P1964975310352198901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A324745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326040.P15308237361060723767

`A000203(n+1)-A326039(n+1)`
-/

namespace A326040.P15308237361060723767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A326039 (n + 1)

end

end A326040.P15308237361060723767

noncomputable section

/-- A326040: a(n) = sigma(n) - A008833(sigma(n)).

Offset 1, canonical program `A326040.P15308237361060723767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326039, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326040 (n : ℕ) : ℤ :=
  A326040.P15308237361060723767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326039, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335740.P3229018989197612016

`comp[A335738(n+1)-2]+2`
-/

namespace A335740.P3229018989197612016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335738 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A335740.P3229018989197612016

noncomputable section

/-- A335740: Factorize each integer m >= 2 as the product of powers of nonunit squarefree numbers with distinct exponents that are powers of 2. The sequence lists m such that the factor with the largest exponent is not a power of 2.

Offset 1, canonical program `A335740.P3229018989197612016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335740 (n : ℕ) : ℤ :=
  (A335740.P3229018989197612016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337132.P808422596746096956

`A147582(A343228(n)+1)`
-/

namespace A337132.P808422596746096956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (A343228 n + 1).toNat

end

end A337132.P808422596746096956

noncomputable section

/-- A337132: a(n) is the number of squares at distance n from the central square of a Vicsek fractal.

Offset 0, canonical program `A337132.P808422596746096956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A337132 (n : ℕ) : ℤ :=
  A337132.P808422596746096956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A337132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337287.P16808135169875612648

`A095096(eq[1, A095096(n+2)-A095096(n+1)]+1)`
-/

namespace A337287.P16808135169875612648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 2) - A095096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A337287.P16808135169875612648

noncomputable section

/-- A337287: Numbers k such that both k and k+1 are in A095096.

Offset 1, canonical program `A337287.P16808135169875612648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A337287 (n : ℕ) : ℤ :=
  A337287.P16808135169875612648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A337287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343465.P4491986218114601855

`3/(n+1)*A383000(n+1)`
-/

namespace A343465.P4491986218114601855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A383000 (n + 1) : ℚ)

end

end A343465.P4491986218114601855

noncomputable section

/-- A343465: a(n) = -(1/n) * Sum_{d|n} phi(n/d) * (-3)^d.

Offset 1, canonical program `A343465.P4491986218114601855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A343465 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343465.P4491986218114601855.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A343465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346620.P14772451308299098952

`∑[A007774(n+1)]`
-/

namespace A346620.P14772451308299098952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P14772451308299098952

noncomputable section

/-- A346620: Partial sums of A007774.

Offset 1, canonical program `A346620.P14772451308299098952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346620 (n : ℕ) : ℤ :=
  A346620.P14772451308299098952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348495.P4852488823322459190

`gcd(A018804(n+1), A347130(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348495.P4852488823322459190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018804 (n + 1)) (A347130 (n + 1))

end

end A348495.P4852488823322459190

noncomputable section

/-- A348495: a(n) = gcd(A018804(n), A347130(n)), where A347130 is the Dirichlet convolution of the identity function with the arithmetic derivative of n (A003415), and A018804 is Pillai's arithmetical function.

Offset 1, canonical program `A348495.P4852488823322459190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348495 (n : ℕ) : ℤ :=
  (A348495.P4852488823322459190.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349694.P3388148621130702801

`∑{d}[n+1, A345264(#)*A380163((n+1)/#)]`
-/

namespace A349694.P3388148621130702801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345264 d * A380163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349694.P3388148621130702801

noncomputable section

/-- A349694: Dirichlet convolution of the squarefree kernel function (A007947) with itself.

Offset 1, canonical program `A349694.P3388148621130702801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349694 (n : ℕ) : ℤ :=
  A349694.P3388148621130702801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351569.P8738686612960089184

`A000203(n+1)/A351568(n+1)`
-/

namespace A351569.P8738686612960089184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351568 (n + 1) : ℚ)

end

end A351569.P8738686612960089184

noncomputable section

/-- A351569: Sum of divisors of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A351569.P8738686612960089184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351569.P8738686612960089184.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353519.P6983840421202540414

`abs(A219009(n+1))`
-/

namespace A353519.P6983840421202540414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A219009 (n + 1)|

end

end A353519.P6983840421202540414

noncomputable section

/-- A353519: a(n) = 1 if n has an odd number of square divisors, otherwise 0.

Offset 1, canonical program `A353519.P6983840421202540414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353519 (n : ℕ) : ℤ :=
  A353519.P6983840421202540414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353578.P15899571528050790297

`4*A353579(n+1)-1`
-/

namespace A353578.P15899571528050790297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A353579 (n + 1) - 1

end

end A353578.P15899571528050790297

noncomputable section

/-- A353578: Numbers in the smallest subset of N containing 3 and closed under the mappings k->2k + 1, k->8k + 3, and k->16k + 3.

Offset 1, canonical program `A353578.P15899571528050790297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A353578 (n : ℕ) : ℤ :=
  A353578.P15899571528050790297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A353578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357685.P8590542068992344568

`∪[A087248(n+1), A357686(n+1)]`
-/

namespace A357685.P8590542068992344568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357685.P8590542068992344568

noncomputable section

/-- A357685: Numbers k such that A293228(k) > k.

Offset 1, canonical program `A357685.P8590542068992344568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357685 (n : ℕ) : ℤ :=
  (A357685.P8590542068992344568.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358346.P10429080455784404753

`A034448(A350389(n+1))`
-/

namespace A358346.P10429080455784404753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A350389 (n + 1)).toNat

end

end A358346.P10429080455784404753

noncomputable section

/-- A358346: a(n) is the sum of the unitary divisors of n that are exponentially odd (A268335).

Offset 1, canonical program `A358346.P10429080455784404753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358346 (n : ℕ) : ℤ :=
  A358346.P10429080455784404753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360162.P1996768474283540312

`A034448(A071974(n+1))`
-/

namespace A360162.P1996768474283540312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A071974 (n + 1)).toNat

end

end A360162.P1996768474283540312

noncomputable section

/-- A360162: a(n) is the sum of the square roots of the unitary divisors of n that are squares.

Offset 1, canonical program `A360162.P1996768474283540312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360162 (n : ℕ) : ℤ :=
  A360162.P1996768474283540312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360539.P1925901688017653991

`A050985(A058035(n+1))`
-/

namespace A360539.P1925901688017653991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A058035 (n + 1)).toNat

end

end A360539.P1925901688017653991

noncomputable section

/-- A360539: a(n) is the cubefree part of n: the largest unitary divisor of n that is a cubefree number (A004709).

Offset 1, canonical program `A360539.P1925901688017653991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360539 (n : ℕ) : ℤ :=
  A360539.P1925901688017653991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365402.P6850757992274722782

`A000005(A350389(n+1))`
-/

namespace A365402.P6850757992274722782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350389 (n + 1)).toNat

end

end A365402.P6850757992274722782

noncomputable section

/-- A365402: The number of divisors of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A365402.P6850757992274722782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365402 (n : ℕ) : ℤ :=
  A365402.P6850757992274722782.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365404.P8504261663982695233

`A034448(A000188(n+1))`
-/

namespace A365404.P8504261663982695233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000188 (n + 1)).toNat

end

end A365404.P8504261663982695233

noncomputable section

/-- A365404: The sum of the unitary divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365404.P8504261663982695233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365404 (n : ℕ) : ℤ :=
  A365404.P8504261663982695233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365498.P11326829355514865455

`A286324(n+1)/A368172(n+1)`
-/

namespace A365498.P11326829355514865455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286324 (n + 1) : ℚ) / (A368172 (n + 1) : ℚ)

end

end A365498.P11326829355514865455

noncomputable section

/-- A365498: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s - 1/p^(3*s)).

Offset 1, canonical program `A365498.P11326829355514865455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286324, A368172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365498 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365498.P11326829355514865455.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286324, A368172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367801.P16307762078431172026

`record[A350389(A270428(n+1))]`
-/

namespace A367801.P16307762078431172026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A270428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367801.P16307762078431172026

noncomputable section

/-- A367801: Numbers that are both exponentially odd (A268335) and exponentially odious (A270428).

Offset 1, canonical program `A367801.P16307762078431172026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A367801 (n : ℕ) : ℤ :=
  A367801.P16307762078431172026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A367801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368167.P14958017841539973394

`A350389(A057521(n+1))`
-/

namespace A368167.P14958017841539973394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A057521 (n + 1)).toNat

end

end A368167.P14958017841539973394

noncomputable section

/-- A368167: The largest unitary divisor of n that is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A368167.P14958017841539973394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368167 (n : ℕ) : ℤ :=
  A368167.P14958017841539973394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368471.P8379948987742590772

`A033634(A350389(n+1))`
-/

namespace A368471.P8379948987742590772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A350389 (n + 1)).toNat

end

end A368471.P8379948987742590772

noncomputable section

/-- A368471: a(n) is the sum of exponentially odd divisors of the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A368471.P8379948987742590772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368471 (n : ℕ) : ℤ :=
  A368471.P8379948987742590772.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370079.P12845110108102492018

`A005361(A350389(n+1))`
-/

namespace A370079.P12845110108102492018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A350389 (n + 1)).toNat

end

end A370079.P12845110108102492018

noncomputable section

/-- A370079: The product of the odd exponents of the prime factorization of n.

Offset 1, canonical program `A370079.P12845110108102492018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370079 (n : ℕ) : ℤ :=
  A370079.P12845110108102492018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374823.P1311388547321898954

`p?[A377121(n+1)]`
-/

namespace A374823.P1311388547321898954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A374823.P1311388547321898954

noncomputable section

/-- A374823: Primes p such that p-1 is refactorable.

Offset 1, canonical program `A374823.P1311388547321898954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A374823 (n : ℕ) : ℤ :=
  A374823.P1311388547321898954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A374823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375032.P9183128720752084141

`A051903(A350389(n+1))`
-/

namespace A375032.P9183128720752084141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350389 (n + 1)).toNat

end

end A375032.P9183128720752084141

noncomputable section

/-- A375032: The maximum odd exponent in the prime factorization of n, or 0 if no such exponent exists.

Offset 1, canonical program `A375032.P9183128720752084141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375032 (n : ℕ) : ℤ :=
  A375032.P9183128720752084141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375055.P17814751730417792502

`filter[A000977(n+1), A087049(#)]`
-/

namespace A375055.P17814751730417792502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A375055.P17814751730417792502

noncomputable section

/-- A375055: Nonsquarefree numbers k divisible by at least 3 distinct primes.

Offset 1, canonical program `A375055.P17814751730417792502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5131 terms. -/
def A375055 (n : ℕ) : ℤ :=
  A375055.P17814751730417792502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5131 terms. -/
def A375055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377844.P397277366577125668

`eq[1, A295662(n+1)]+1`
-/

namespace A377844.P397277366577125668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377844.P397277366577125668

noncomputable section

/-- A377844: Numbers that have a single odd exponent larger than 1 in their prime factorization.

Offset 1, canonical program `A377844.P397277366577125668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5748 terms. -/
def A377844 (n : ℕ) : ℤ :=
  (A377844.P397277366577125668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5748 terms. -/
def A377844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377990.P17241050129781097420

`A051027(A350388(n+1))*A051027(A350389(n+1))`
-/

namespace A377990.P17241050129781097420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A350388 (n + 1)).toNat * A051027 (A350389 (n + 1)).toNat

end

end A377990.P17241050129781097420

noncomputable section

/-- A377990: a(n) = sigma(sigma(A350388(n))) * sigma(sigma(A350389(n))), where A350388 and A350389 are the largest unitary divisor of n that is a square, and the largest unitary divisor of n that is an exponentially odd number, respectively.

Offset 1, canonical program `A377990.P17241050129781097420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990 (n : ℕ) : ℤ :=
  A377990.P17241050129781097420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379762.P18428336242211905384

`∩[A046386(n+1), A087248(n+1)]`
-/

namespace A379762.P18428336242211905384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P18428336242211905384

noncomputable section

/-- A379762: Products of 4 distinct prime numbers (or tetraprimes) that are abundant.

Offset 1, canonical program `A379762.P18428336242211905384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A379762 (n : ℕ) : ℤ :=
  (A379762.P18428336242211905384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A379762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380165.P2435245022523968233

`A000010(A350389(n+1))`
-/

namespace A380165.P2435245022523968233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A350389 (n + 1)).toNat

end

end A380165.P2435245022523968233

noncomputable section

/-- A380165: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A380165.P2435245022523968233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380165 (n : ℕ) : ℤ :=
  A380165.P2435245022523968233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384052.P2784021690662808847

`A047994(A350389(n+1))*A350388(n+1)`
-/

namespace A384052.P2784021690662808847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350389 (n + 1)).toNat * A350388 (n + 1)

end

end A384052.P2784021690662808847

noncomputable section

/-- A384052: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a square.

Offset 1, canonical program `A384052.P2784021690662808847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052 (n : ℕ) : ℤ :=
  A384052.P2784021690662808847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384054.P17702262864445494828

`A047994(A350388(n+1))*A350389(n+1)`
-/

namespace A384054.P17702262864445494828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350388 (n + 1)).toNat * A350389 (n + 1)

end

end A384054.P17702262864445494828

noncomputable section

/-- A384054: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is an exponentially odd number.

Offset 1, canonical program `A384054.P17702262864445494828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054 (n : ℕ) : ℤ :=
  A384054.P17702262864445494828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A187039.P14886503455944151269

`eq[A055076(n+1), A056624(n+1)]+1`
-/

namespace A187039.P14886503455944151269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A187039.P14886503455944151269

noncomputable section

/-- A187039: Numbers that have equal counts of even and odd exponents of primes in their factorization.

Offset 1, canonical program `A187039.P14886503455944151269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1068 terms. -/
def A187039 (n : ℕ) : ℤ :=
  (A187039.P14886503455944151269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1068 terms. -/
def A187039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189036.P5079595649764338634

`A086130(n+1)/A085731(n+1)`
-/

namespace A189036.P5079595649764338634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A189036.P5079595649764338634

noncomputable section

/-- A189036: a(n)= lcm(n,n')/gcd(n,n'), where n' is the arithmetic derivative of n.

Offset 1, canonical program `A189036.P5079595649764338634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189036 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189036.P5079595649764338634.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189100.P18316698109442666474

`A086130((n+1)!)/A085731((n+1)!)`
-/

namespace A189100.P18316698109442666474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (Nat.factorial (n + 1)) : ℚ) / (A085731 (Nat.factorial (n + 1)) : ℚ)

end

end A189100.P18316698109442666474

noncomputable section

/-- A189100: a(n) = lcm(n!,n!')/gcd(n!,n!'), where n!' is the arithmetic derivative of n! (A068311).

Offset 1, canonical program `A189100.P18316698109442666474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189100.P18316698109442666474.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189102.P17267493171597331933

`gcd(A000142(n+1), A068311(n+1))`
-/

namespace A189102.P17267493171597331933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (n + 1)) (A068311 (n + 1))

end

end A189102.P17267493171597331933

noncomputable section

/-- A189102: Greatest common divisor of n! and its arithmetic derivative.

Offset 1, canonical program `A189102.P17267493171597331933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068311, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189102 (n : ℕ) : ℤ :=
  (A189102.P17267493171597331933.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068311, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189103.P6469239265020943842

`lcm(A000142(n+1), A068311(n+1))`
-/

namespace A189103.P6469239265020943842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 (n + 1)) (A068311 (n + 1))

end

end A189103.P6469239265020943842

noncomputable section

/-- A189103: Least common multiple of n! and its arithmetic derivative.

Offset 1, canonical program `A189103.P6469239265020943842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068311, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189103 (n : ℕ) : ℤ :=
  (A189103.P6469239265020943842.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068311, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190116.P18352050044583738239

`A085731(n+1)*A086130(n+1)`
-/

namespace A190116.P18352050044583738239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1) * A086130 (n + 1)

end

end A190116.P18352050044583738239

noncomputable section

/-- A190116: a(n) = n*n', where n' is the arithmetic derivative (A003415) of n.

Offset 1, canonical program `A190116.P18352050044583738239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190116 (n : ℕ) : ℤ :=
  A190116.P18352050044583738239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190116.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190117.P179062767668595055

`∑[A068720(n+1)/2]`
-/

namespace A190117.P179062767668595055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068720 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P179062767668595055

noncomputable section

/-- A190117: a(n) = Sum_{k=1..n} k*k', where n' is the arithmetic derivative of n.

Offset 1, canonical program `A190117.P179062767668595055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190117.P179062767668595055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190119.P9883724251289863595

`∑[A086130(n+1)/(n+1)]`
-/

namespace A190119.P9883724251289863595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P9883724251289863595

noncomputable section

/-- A190119: a(n) = Sum_{k=1..n} lcm(k,k')/k, where k' is arithmetic derivative of k.

Offset 1, canonical program `A190119.P9883724251289863595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190119 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190119.P9883724251289863595.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212127.P1787608542594397849

`eq[0, A211991(n+1)]+1`
-/

namespace A212127.P1787608542594397849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212127.P1787608542594397849

noncomputable section

/-- A212127: Numbers n whose arithmetic derivative equals the sum of its proper divisors.

Offset 1, canonical program `A212127.P1787608542594397849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212127 (n : ℕ) : ℤ :=
  (A212127.P1787608542594397849.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232172.P5206875052303947786

`∑[A068346(n+1)]`
-/

namespace A232172.P5206875052303947786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232172.P5206875052303947786

noncomputable section

/-- A232172: Partial sums of second arithmetic derivative of natural numbers.

Offset 1, canonical program `A232172.P5206875052303947786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232172 (n : ℕ) : ℤ :=
  A232172.P5206875052303947786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240052.P5517115470621218941

`A068346(A006094(n+1))`
-/

namespace A240052.P5517115470621218941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A006094 (n + 1)).toNat

end

end A240052.P5517115470621218941

noncomputable section

/-- A240052: 2nd arithmetic derivative of products of 2 successive prime numbers (A006094).

Offset 1, canonical program `A240052.P5517115470621218941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240052 (n : ℕ) : ℤ :=
  A240052.P5517115470621218941.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240054.P9237913273188116088

`A099306(Δ[A061802(n)])`
-/

namespace A240054.P9237913273188116088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (f1 (n + 1) - f1 n).toNat

end

end A240054.P9237913273188116088

noncomputable section

/-- A240054: 4th arithmetic derivative of products of 2 successive prime numbers (A006094).

Offset 1, canonical program `A240054.P9237913273188116088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A240054 (n : ℕ) : ℤ :=
  A240054.P9237913273188116088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A240054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240086.P8018606740492469687

`A056169(n+1)+A055631(A085731(n+1))`
-/

namespace A240086.P8018606740492469687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + A055631 (A085731 (n + 1)).toNat

end

end A240086.P8018606740492469687

noncomputable section

/-- A240086: a(n) = Sum_{prime p|n} phi(gcd(p, n/p)) where phi is Euler's totient function.

Offset 1, canonical program `A240086.P8018606740492469687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240086 (n : ℕ) : ℤ :=
  A240086.P8018606740492469687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258644.P500966150776542853

`A099306(A003415(n))`
-/

namespace A258644.P500966150776542853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A003415 n).toNat

end

end A258644.P500966150776542853

noncomputable section

/-- A258644: Fourth arithmetic derivative of n.

Offset 0, canonical program `A258644.P500966150776542853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258644 (n : ℕ) : ℤ :=
  A258644.P500966150776542853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268398.P16108927674745858169

`∑[A085731(n+1)]`
-/

namespace A268398.P16108927674745858169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268398.P16108927674745858169

noncomputable section

/-- A268398: Partial sums of A085731.

Offset 1, canonical program `A268398.P16108927674745858169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268398 (n : ℕ) : ℤ :=
  A268398.P16108927674745858169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308993.P18444456858046890751

`A066990(A057521(n+1)*A071974(n+1))`
-/

namespace A308993.P18444456858046890751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A057521 (n + 1) * A071974 (n + 1)).toNat

end

end A308993.P18444456858046890751

noncomputable section

/-- A308993: Multiplicative with a(p) = 1 and a(p^e) = p^a(e) for any e > 1 and prime number p.

Offset 1, canonical program `A308993.P18444456858046890751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A308993 (n : ℕ) : ℤ :=
  A308993.P18444456858046890751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A308993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320585.P11050667382939563471

`p?[A320584(n+1)]`
-/

namespace A320585.P11050667382939563471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320585.P11050667382939563471

noncomputable section

/-- A320585: Primes whose first digit is prime.

Offset 1, canonical program `A320585.P11050667382939563471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A320585 (n : ℕ) : ℤ :=
  A320585.P11050667382939563471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A320585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328311.P6899217752375846038

`abs(A328310(A028310(n)+1)+1)`
-/

namespace A328311.P6899217752375846038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328310 (A028310 n + 1).toNat + 1|

end

end A328311.P6899217752375846038

noncomputable section

/-- A328311: a(n) = 1 + A051903(A003415(n)) - A051903(n), a(1) = 0 by convention.

Offset 1, canonical program `A328311.P6899217752375846038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328311 (n : ℕ) : ℤ :=
  A328311.P6899217752375846038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334871.P12161263468435973650

`A331740(n+1)+A299090(A000188(n+1))`
-/

namespace A334871.P12161263468435973650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1) + A299090 (A000188 (n + 1)).toNat

end

end A334871.P12161263468435973650

noncomputable section

/-- A334871: Number of steps needed to reach 1 when starting from n and iterating with A334870.

Offset 1, canonical program `A334871.P12161263468435973650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A334871 (n : ℕ) : ℤ :=
  A334871.P12161263468435973650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A334871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341625.P17225356341816704463

`round(n/(A129283(n)+1))`
-/

namespace A341625.P17225356341816704463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A129283 n + 1 : ℚ))

end

end A341625.P17225356341816704463

noncomputable section

/-- A341625: a(n) = 1 if the arithmetic derivative of n is less than n, otherwise 0.

Offset 0, canonical program `A341625.P17225356341816704463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341625 (n : ℕ) : ℤ :=
  A341625.P17225356341816704463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341995.P4102610596282420216

`A000212(C(2, A068346(n)))`
-/

namespace A341995.P4102610596282420216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (Nat.choose 2 (A068346 n).toNat)

end

end A341995.P4102610596282420216

noncomputable section

/-- A341995: a(n) = 1 if the arithmetic derivative (A003415) of n is a prime, otherwise 0.

Offset 0, canonical program `A341995.P4102610596282420216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341995 (n : ℕ) : ℤ :=
  A341995.P4102610596282420216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342416.P843424585705305861

`gcd(A173557(n+1), A342001(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342416.P843424585705305861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173557 (n + 1)) (A342001 (n + 1))

end

end A342416.P843424585705305861

noncomputable section

/-- A342416: a(n) = gcd(A173557(n), A342001(n)).

Offset 1, canonical program `A342416.P843424585705305861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342416 (n : ℕ) : ℤ :=
  (A342416.P843424585705305861.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342416.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342459.P620409289771443930

`gcd(A048250(n+1), A342001(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342459.P620409289771443930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (n + 1)) (A342001 (n + 1))

end

end A342459.P620409289771443930

noncomputable section

/-- A342459: a(n) = gcd(A048250(n), A342001(n)).

Offset 1, canonical program `A342459.P620409289771443930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342459 (n : ℕ) : ℤ :=
  (A342459.P620409289771443930.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343226.P9521065917047062783

`gcd(A000203(n+1), A129283(n+1))`
-/

namespace A343226.P9521065917047062783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A129283 (n + 1))

end

end A343226.P9521065917047062783

noncomputable section

/-- A343226: a(n) = gcd(sigma(n), n+A003415(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343226.P9521065917047062783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343226 (n : ℕ) : ℤ :=
  (A343226.P9521065917047062783.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344585.P15926427929207934664

`lt[A211991(round(acot(n)+n)), 0]`
-/

namespace A344585.P15926427929207934664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344585.P15926427929207934664

noncomputable section

/-- A344585: Numbers whose sum of proper divisors (A001065) is greater than their arithmetic derivative (A003415).

Offset 1, canonical program `A344585.P15926427929207934664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344585 (n : ℕ) : ℤ :=
  (A344585.P15926427929207934664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344756.P8531448200212779788

`A003415(n+2)/A340070(n+2)`
-/

namespace A344756.P8531448200212779788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344756.P8531448200212779788

noncomputable section

/-- A344756: a(n) = A003415(n) / gcd(A003415(n), A069359(n)).

Offset 2, canonical program `A344756.P8531448200212779788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A340070, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344756.P8531448200212779788.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A340070, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344757.P15343085714571016600

`A069359(n+2)/A340070(n+2)`
-/

namespace A344757.P15343085714571016600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069359 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344757.P15343085714571016600

noncomputable section

/-- A344757: a(n) = A069359(n) / gcd(A003415(n), A069359(n)).

Offset 2, canonical program `A344757.P15343085714571016600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069359, A340070, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344757.P15343085714571016600.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069359, A340070, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344998.P3443638615018705273

`A342001(n+1)*A344753(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344998.P3443638615018705273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) * A344753 (n + 1)

end

end A344998.P3443638615018705273

noncomputable section

/-- A344998: a(n) = A342001(n) * A344753(n).

Offset 1, canonical program `A344998.P3443638615018705273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A344753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344998 (n : ℕ) : ℤ :=
  A344998.P3443638615018705273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A344753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345001.P11556338326385216766

`A001065(n+1)+A168036(n+1)`
-/

namespace A345001.P11556338326385216766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A168036 (n + 1)

end

end A345001.P11556338326385216766

noncomputable section

/-- A345001: a(n) = sigma(n) + n' - 2n, where n' is the arithmetic derivative of n (A003415) and sigma is the sum of divisors (A000203).

Offset 1, canonical program `A345001.P11556338326385216766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168036, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345001 (n : ℕ) : ℤ :=
  A345001.P11556338326385216766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168036, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345048.P15501208074800543925

`A342001(n+1)*A051709(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345048.P15501208074800543925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) * A051709 (n + 1)

end

end A345048.P15501208074800543925

noncomputable section

/-- A345048: a(n) = A342001(n) * A051709(n).

Offset 1, canonical program `A345048.P15501208074800543925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051709, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345048 (n : ℕ) : ℤ :=
  A345048.P15501208074800543925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051709, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346244.P12938821840467746322

`n+1-A342001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346244.P12938821840467746322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A342001 (n + 1)

end

end A346244.P12938821840467746322

noncomputable section

/-- A346244: a(n) = n - A342001(n).

Offset 1, canonical program `A346244.P12938821840467746322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346244 (n : ℕ) : ℤ :=
  A346244.P12938821840467746322.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347129.P12459740348261300707

`A347130(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347129.P12459740348261300707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347130 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347129.P12459740348261300707

noncomputable section

/-- A347129: a(n) = A347130(n) / A003557(n), where A347130 is the Dirichlet convolution of the identity function with the arithmetic derivative of n.

Offset 1, canonical program `A347129.P12459740348261300707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347129 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347129.P12459740348261300707.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347954.P10515140487385531382

`∑{d}[n+1, A003602(#)*A342001((n+1)/#)]`
-/

namespace A347954.P10515140487385531382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347954.P10515140487385531382

noncomputable section

/-- A347954: Dirichlet convolution of A003602 with A342001.

Offset 1, canonical program `A347954.P10515140487385531382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347954 (n : ℕ) : ℤ :=
  A347954.P10515140487385531382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347961.P14259934700239685963

`∑{d}[n+1, A342001(#)*A342001((n+1)/#)]`
-/

namespace A347961.P14259934700239685963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342001 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347961.P14259934700239685963

noncomputable section

/-- A347961: Dirichlet convolution of A342001 with itself.

Offset 1, canonical program `A347961.P14259934700239685963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347961 (n : ℕ) : ℤ :=
  A347961.P14259934700239685963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347963.P2568942602520050035

`∑{d}[n+1, A003557(#)*A342001((n+1)/#)]`
-/

namespace A347963.P2568942602520050035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347963.P2568942602520050035

noncomputable section

/-- A347963: Dirichlet convolution of A342001 with A003557.

Offset 1, canonical program `A347963.P2568942602520050035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347963 (n : ℕ) : ℤ :=
  A347963.P2568942602520050035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348279.P7409364406162416181

`∑{d}[n+1, A068720(#)/2]`
-/

namespace A348279.P7409364406162416181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A068720 d : ℚ) / 2

end

end A348279.P7409364406162416181

noncomputable section

/-- A348279: a(n) = Sum_{d|n} d*d', where d' is the arithmetic derivative of d (A003415).

Offset 1, canonical program `A348279.P7409364406162416181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348279.P7409364406162416181.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348304.P16790100513106976712

`∑{d}[n+1, A068346(#)]`
-/

namespace A348304.P16790100513106976712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068346 d

end

end A348304.P16790100513106976712

noncomputable section

/-- A348304: a(n) = Sum_{d|n} d'', where d'' is the second arithmetic derivative of d (A068346).

Offset 1, canonical program `A348304.P16790100513106976712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348304 (n : ℕ) : ℤ :=
  A348304.P16790100513106976712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348493.P12922612347308619464

`A003415(n+1)/A348492(n+1)`
-/

namespace A348493.P12922612347308619464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ)

end

end A348493.P12922612347308619464

noncomputable section

/-- A348493: a(n) = A003415(n) / gcd(A003415(n), A018804(n)), where A003415 is the arithmetic derivative and A018804 is Pillai's arithmetical function.

Offset 1, canonical program `A348493.P12922612347308619464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A348492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348493 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348493.P12922612347308619464.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A348492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348494.P11005774710442910739

`A348492(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348494.P11005774710442910739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A348494.P11005774710442910739

noncomputable section

/-- A348494: a(n) = A348492(n) / A003557(n), where A348492 is the GCD of the arithmetic derivative (A003415) and Pillai's arithmetical function (A018804).

Offset 1, canonical program `A348494.P11005774710442910739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348494 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348494.P11005774710442910739.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348497.P15920549700664225963

`gcd(A003415(n+1), A347130(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348497.P15920549700664225963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A347130 (n + 1))

end

end A348497.P15920549700664225963

noncomputable section

/-- A348497: a(n) = gcd(A003415(n), A347130(n)), where A003415 is the arithmetic derivative and A347130 is its Dirichlet convolution with the identity function.

Offset 1, canonical program `A348497.P15920549700664225963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348497 (n : ℕ) : ℤ :=
  (A348497.P15920549700664225963.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348975.P14334171170777144493

`A003415(n+1)+A003958(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348975.P14334171170777144493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + A003958 (n + 1) - (n + 1 : ℤ)

end

end A348975.P14334171170777144493

noncomputable section

/-- A348975: a(n) = A003415(n) + A003958(n) - n, where A003415 is the arithmetic derivative and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348975.P14334171170777144493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348975 (n : ℕ) : ℤ :=
  A348975.P14334171170777144493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351570.P16087539898957203616

`A003415(A351568(n+1))`
-/

namespace A351570.P16087539898957203616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A351568 (n + 1)).toNat

end

end A351570.P16087539898957203616

noncomputable section

/-- A351570: Arithmetic derivative of the sum of the divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351570.P16087539898957203616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A351568, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351570 (n : ℕ) : ℤ :=
  A351570.P16087539898957203616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A351568, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351573.P12299179014479245270

`A003415(A350389(n+1))`
-/

namespace A351573.P12299179014479245270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350389 (n + 1)).toNat

end

end A351573.P12299179014479245270

noncomputable section

/-- A351573: Arithmetic derivative of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A351573.P12299179014479245270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351573 (n : ℕ) : ℤ :=
  A351573.P12299179014479245270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358680.P17815025508061281044

`A353494(n)+A353495(n)`
-/

namespace A358680.P17815025508061281044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n + A353495 n

end

end A358680.P17815025508061281044

noncomputable section

/-- A358680: a(n) = 1 if the arithmetic derivative of n is even, 0 otherwise.

Offset 0, canonical program `A358680.P17815025508061281044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680 (n : ℕ) : ℤ :=
  A358680.P17815025508061281044.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358771.P5761548446586358589

`C(A129283(n)+2-n, 3)%2`
-/

namespace A358771.P5761548446586358589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129283 n + (2 - (n : ℤ))).toNat 3 % 2

end

end A358771.P5761548446586358589

noncomputable section

/-- A358771: a(n) = 1 if the arithmetic derivative of n is of the form 4k+1, otherwise 0.

Offset 0, canonical program `A358771.P5761548446586358589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358771 (n : ℕ) : ℤ :=
  (A358771.P5761548446586358589.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358772.P7530290515183113547

`eq[1, A353493(n)]`
-/

namespace A358772.P7530290515183113547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358772.P7530290515183113547

noncomputable section

/-- A358772: Numbers whose arithmetic derivative is of the form 4k+1, cf. A003415.

Offset 1, canonical program `A358772.P7530290515183113547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358772 (n : ℕ) : ℤ :=
  (A358772.P7530290515183113547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359552.P1693999533399603662

`C(A085731(n+1), n+1)`
-/

namespace A359552.P1693999533399603662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085731 (n + 1)).toNat (n + 1)

end

end A359552.P1693999533399603662

noncomputable section

/-- A359552: Multiplicative with a(p^e) = 1 if e == 0 mod p, otherwise 0.

Offset 1, canonical program `A359552.P1693999533399603662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552 (n : ℕ) : ℤ :=
  (A359552.P1693999533399603662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360109.P9303785803174765081

`A166486(n)*A353494(n)`
-/

namespace A360109.P9303785803174765081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A353494 n

end

end A360109.P9303785803174765081

noncomputable section

/-- A360109: a(n) = 1 if n is not multiple of 4, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A360109.P9303785803174765081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109 (n : ℕ) : ℤ :=
  A360109.P9303785803174765081.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360157.P14177147188931133787

`A068068(A066990(n+1)/(A073353(n+1)-(n+1)))`
-/

namespace A360157.P14177147188931133787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (SequenceMachineLib.roundAway ((A066990 (n + 1) : ℚ) / (A073353 (n + 1) - (n + 1 : ℤ) : ℚ))).toNat

end

end A360157.P14177147188931133787

noncomputable section

/-- A360157: a(n) is the number of unitary divisors of n that are odd squares.

Offset 1, canonical program `A360157.P14177147188931133787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157 (n : ℕ) : ℤ :=
  A360157.P14177147188931133787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365298.P3848956683567557331

`A078615(n+1)/A066990(A003557(n+1))`
-/

namespace A365298.P3848956683567557331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (A066990 (A003557 (n + 1)).toNat : ℚ)

end

end A365298.P3848956683567557331

noncomputable section

/-- A365298: a(n) is the smallest number k such that k*n is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A365298.P3848956683567557331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365298 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365298.P3848956683567557331.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368921.P16218200472489161701

`A003415(n)-A068346(n)`
-/

namespace A368921.P16218200472489161701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - A068346 n

end

end A368921.P16218200472489161701

noncomputable section

/-- A368921: a(n) = n' - n'', where n' is the arithmetic derivative of n, A003415(n) and n'' is its second arithmetic derivative, A068346(n).

Offset 0, canonical program `A368921.P16218200472489161701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368921 (n : ℕ) : ℤ :=
  A368921.P16218200472489161701.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368994.P10252783783940313295

`A121262(A342001(n+1))`
-/

namespace A368994.P10252783783940313295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A342001 (n + 1)).toNat

end

end A368994.P10252783783940313295

noncomputable section

/-- A368994: a(n) = 1 if A342001(k) is a multiple of four, and 0 otherwise.

Offset 1, canonical program `A368994.P10252783783940313295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368994 (n : ℕ) : ℤ :=
  A368994.P10252783783940313295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369008.P206606723966136315

`A085731(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369008.P206606723966136315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085731 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A369008.P206606723966136315

noncomputable section

/-- A369008: a(n) = A085731(n) / A003557(n).

Offset 1, canonical program `A369008.P206606723966136315`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A085731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369008.P206606723966136315.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A085731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369048.P3645363535030871227

`ceil(A168036(n)/record[xor(7, n)])`
-/

namespace A369048.P3645363535030871227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A369048.P3645363535030871227

noncomputable section

/-- A369048: a(n) = 1 if the arithmetic derivative of n is greater than n, otherwise 0.

Offset 0, canonical program `A369048.P3645363535030871227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048 (n : ℕ) : ℤ :=
  A369048.P3645363535030871227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369465.P18253036522274647247

`A003415(A000265(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369465.P18253036522274647247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000265 (n + 1)).toNat

end

end A369465.P18253036522274647247

noncomputable section

/-- A369465: Arithmetic derivative of the odd part of n: a(n) = A003415(A000265(n)).

Offset 1, canonical program `A369465.P18253036522274647247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369465 (n : ℕ) : ℤ :=
  A369465.P18253036522274647247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369658.P8096457835264758582

`A011655(n)*A359430(n)`
-/

namespace A369658.P8096457835264758582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A359430 n

end

end A369658.P8096457835264758582

noncomputable section

/-- A369658: a(n) = 1 if n is not multiple of 3, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A369658.P8096457835264758582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369658 (n : ℕ) : ℤ :=
  A369658.P8096457835264758582.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369669.P5620005508573429478

`gcd(A003415(n), A068346(n))`
-/

namespace A369669.P5620005508573429478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A068346 n)

end

end A369669.P5620005508573429478

noncomputable section

/-- A369669: The greatest common divisor of the first and the second arithmetic derivative of n.

Offset 0, canonical program `A369669.P5620005508573429478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369669 (n : ℕ) : ℤ :=
  (A369669.P5620005508573429478.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369968.P13152354729471573061

`A011558(n)*A369967(n)`
-/

namespace A369968.P13152354729471573061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n * A369967 n

end

end A369968.P13152354729471573061

noncomputable section

/-- A369968: a(n) = 1 if n is not multiple of 5, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A369968.P13152354729471573061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369968 (n : ℕ) : ℤ :=
  A369968.P13152354729471573061.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370122.P7977747716848007061

`A359430(A003415(n))`
-/

namespace A370122.P7977747716848007061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (A003415 n).toNat

end

end A370122.P7977747716848007061

noncomputable section

/-- A370122: a(n) = 1 if the second arithmetic derivative of n is a multiple of 3, otherwise 0.

Offset 0, canonical program `A370122.P7977747716848007061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A359430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370122 (n : ℕ) : ℤ :=
  A370122.P7977747716848007061.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A359430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373143.P15888518406424866869

`A359430(n+1)*A372573(n+1)`
-/

namespace A373143.P15888518406424866869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (n + 1) * A372573 (n + 1)

end

end A373143.P15888518406424866869

noncomputable section

/-- A373143: a(n) = 1 if both A003415(n) and A276085(n) are multiples of 3, otherwise 0, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373143.P15888518406424866869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, A372573, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373143 (n : ℕ) : ℤ :=
  A373143.P15888518406424866869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, A372573, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373371.P4434712578752274140

`A359430((n+1)/A038500(n+1))`
-/

namespace A373371.P4434712578752274140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A373371.P4434712578752274140

noncomputable section

/-- A373371: a(n) = 1 if the sum of prime factors with repetition is a multiple of 3, otherwise 0.

Offset 1, canonical program `A373371.P4434712578752274140`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373371 (n : ℕ) : ℤ :=
  A373371.P4434712578752274140.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373374.P7659164950999126342

`A059841(A373364(n+1))`
-/

namespace A373374.P7659164950999126342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A373364 (n + 1)).toNat

end

end A373374.P7659164950999126342

noncomputable section

/-- A373374: a(n) = 1 if both A001414(n) and A003415(n) are even, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373374.P7659164950999126342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373374 (n : ℕ) : ℤ :=
  A373374.P7659164950999126342.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373477.P8315579709806562220

`A079978(A373364(n+1))`
-/

namespace A373477.P8315579709806562220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373364 (n + 1)).toNat

end

end A373477.P8315579709806562220

noncomputable section

/-- A373477: a(n) = 1 if A001414(n) and A003415(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373477.P8315579709806562220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373477 (n : ℕ) : ℤ :=
  A373477.P8315579709806562220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373481.P1918728620852161106

`C(A373364(n+1), A001414(n+1))`
-/

namespace A373481.P1918728620852161106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373364 (n + 1)).toNat (A001414 (n + 1)).toNat

end

end A373481.P1918728620852161106

noncomputable section

/-- A373481: a(n) = 1 if A003415(n) is a multiple of A001414(n), otherwise 0, where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 1, canonical program `A373481.P1918728620852161106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373481 (n : ℕ) : ℤ :=
  (A373481.P1918728620852161106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375031.P13943005656695956466

`eq[2, A375033(n+1)]+1`
-/

namespace A375031.P13943005656695956466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375031.P13943005656695956466

noncomputable section

/-- A375031: Numbers whose prime factorization has at least one exponent that equals 2 and no higher even exponent.

Offset 1, canonical program `A375031.P13943005656695956466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A375031 (n : ℕ) : ℤ :=
  (A375031.P13943005656695956466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A375031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231864.P18222772313538243149

`∑[(A300252(n+1)+A300251(n+1))²]`
-/

namespace A231864.P18222772313538243149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A300252 (n + 1) + A300251 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P18222772313538243149

noncomputable section

/-- A231864: Partial sums of the second power of arithmetic derivative function A003415.

Offset 1, canonical program `A231864.P18222772313538243149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231864 (n : ℕ) : ℤ :=
  A231864.P18222772313538243149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242343.P2225175868314659616

`A000217(eq[2, A300252(A133263(n))])`
-/

namespace A242343.P2225175868314659616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300252 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242343.P2225175868314659616

noncomputable section

/-- A242343: Triangular numbers T such that (T+2) is semiprime.

Offset 1, canonical program `A242343.P2225175868314659616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A242343 (n : ℕ) : ℤ :=
  A242343.P2225175868314659616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A242343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324899.P2367865667595697050

`lt[1, A353493(2*n)]²`
-/

namespace A324899.P2367865667595697050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A324899.P2367865667595697050

noncomputable section

/-- A324899: Odd numbers k for which sigma(k) == 3 (mod 4).

Offset 1, canonical program `A324899.P2367865667595697050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. -/
def A324899 (n : ℕ) : ℤ :=
  (A324899.P2367865667595697050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. -/
def A324899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327862.P13198743302065105987

`lt[0, A353495(n)]`
-/

namespace A327862.P13198743302065105987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327862.P13198743302065105987

noncomputable section

/-- A327862: Numbers whose arithmetic derivative is of the form 4k+2, cf. A003415.

Offset 1, canonical program `A327862.P13198743302065105987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6202 terms. -/
def A327862 (n : ℕ) : ℤ :=
  (A327862.P13198743302065105987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6202 terms. -/
def A327862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327863.P4607904759122385892

`eq[1, A359430(n)]`
-/

namespace A327863.P4607904759122385892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327863.P4607904759122385892

noncomputable section

/-- A327863: Numbers whose arithmetic derivative is a multiple of 3, cf. A003415.

Offset 1, canonical program `A327863.P4607904759122385892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327863 (n : ℕ) : ℤ :=
  (A327863.P4607904759122385892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327864.P823315764509377038

`eq[0, A353493(n)]`
-/

namespace A327864.P823315764509377038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327864.P823315764509377038

noncomputable section

/-- A327864: Numbers whose arithmetic derivative is a multiple of 4, cf. A003415.

Offset 1, canonical program `A327864.P823315764509377038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327864 (n : ℕ) : ℤ :=
  (A327864.P823315764509377038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327865.P18409360037918019854

`eq[1, A369967(n)]`
-/

namespace A327865.P18409360037918019854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327865.P18409360037918019854

noncomputable section

/-- A327865: Numbers whose arithmetic derivative is a multiple of 5, cf. A003415.

Offset 1, canonical program `A327865.P18409360037918019854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9433 terms. -/
def A327865 (n : ℕ) : ℤ :=
  (A327865.P18409360037918019854.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9433 terms. -/
def A327865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328234.P5040501548362449687

`eq[1, A342003(n+2)]+2`
-/

namespace A328234.P5040501548362449687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A328234.P5040501548362449687

noncomputable section

/-- A328234: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117) > 1.

Offset 1, canonical program `A328234.P5040501548362449687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328234 (n : ℕ) : ℤ :=
  (A328234.P5040501548362449687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328393.P15555907351680932415

`eq[A342003(n+2)², A342003(n+2)]+2`
-/

namespace A328393.P15555907351680932415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A328393.P15555907351680932415

noncomputable section

/-- A328393: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117).

Offset 1, canonical program `A328393.P15555907351680932415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328393 (n : ℕ) : ℤ :=
  (A328393.P15555907351680932415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328393.provenance : SequenceMachineLib.Provenance := .conjectured

